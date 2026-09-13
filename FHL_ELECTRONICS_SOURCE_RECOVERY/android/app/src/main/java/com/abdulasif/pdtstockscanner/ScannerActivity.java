package com.abdulasif.pdtstockscanner;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Preview;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.core.content.ContextCompat;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.mlkit.vision.barcode.BarcodeScanning;
import com.google.mlkit.vision.barcode.BarcodeScanner;
import com.google.mlkit.vision.common.InputImage;

/**
 * Reconstructed from the APK's ScannerActivity smali: CameraX preview, ML Kit
 * barcode detection, a close button and a torch button.
 */
public class ScannerActivity extends AppCompatActivity {
    public static final String EXTRA_BARCODE = "barcode";
    private PreviewView previewView;
    private ProcessCameraProvider provider;
    private BarcodeScanner scanner;
    private Camera camera;
    private boolean delivered;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.activity_scanner);
        previewView = findViewById(R.id.previewView);
        ((Button) findViewById(R.id.closeButton)).setOnClickListener(v -> finish());
        ((Button) findViewById(R.id.torchButton)).setOnClickListener(v -> toggleTorch());
        scanner = BarcodeScanning.getClient();
        if (ContextCompat.checkSelfPermission(this, android.Manifest.permission.CAMERA) == PackageManager.PERMISSION_GRANTED) startCamera();
        else requestPermissions(new String[]{android.Manifest.permission.CAMERA}, 1001);
    }

    @Override public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] results) {
        super.onRequestPermissionsResult(requestCode, permissions, results);
        if (requestCode == 1001 && results.length > 0 && results[0] == PackageManager.PERMISSION_GRANTED) startCamera(); else finish();
    }

    private void startCamera() {
        ListenableFuture<ProcessCameraProvider> future = ProcessCameraProvider.getInstance(this);
        future.addListener(() -> { try { provider = future.get(); bindPreview(); } catch (Exception e) { finish(); } }, ContextCompat.getMainExecutor(this));
    }

    private void bindPreview() {
        Preview preview = new Preview.Builder().build();
        preview.setSurfaceProvider(previewView.getSurfaceProvider());
        ImageAnalysis analysis = new ImageAnalysis.Builder().setBackpressureStrategy(ImageAnalysis.STRATEGY_KEEP_ONLY_LATEST).build();
        analysis.setAnalyzer(ContextCompat.getMainExecutor(this), this::analyze);
        provider.unbindAll();
        camera = provider.bindToLifecycle(this, CameraSelector.DEFAULT_BACK_CAMERA, preview, analysis);
    }

    private void analyze(ImageProxy imageProxy) {
        if (delivered || imageProxy.getImage() == null) { imageProxy.close(); return; }
        InputImage image = InputImage.fromMediaImage(imageProxy.getImage(), imageProxy.getImageInfo().getRotationDegrees());
        scanner.process(image).addOnSuccessListener(codes -> {
            if (!delivered && !codes.isEmpty() && codes.get(0).getRawValue() != null) {
                delivered = true;
                Intent data = new Intent();
                data.putExtra(EXTRA_BARCODE, codes.get(0).getRawValue());
                setResult(RESULT_OK, data);
                finish();
            }
        }).addOnCompleteListener(task -> imageProxy.close());
    }

    private void toggleTorch() { if (camera != null && camera.getCameraInfo().hasFlashUnit()) camera.getCameraControl().enableTorch(true); }
    @Override protected void onDestroy() { if (scanner != null) scanner.close(); super.onDestroy(); }
}
