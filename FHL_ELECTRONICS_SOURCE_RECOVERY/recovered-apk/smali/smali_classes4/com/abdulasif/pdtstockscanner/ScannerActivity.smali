.class public Lcom/abdulasif/pdtstockscanner/ScannerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScannerActivity.java"


# instance fields
.field private camera:Landroidx/camera/core/Camera;

.field private cameraExecutor:Ljava/util/concurrent/ExecutorService;

.field private cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private isTorchOn:Z

.field private previewView:Landroidx/camera/view/PreviewView;

.field private scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;


# direct methods
.method public static synthetic $r8$lambda$9ZSzzUZWh1HpMkOrMvtFk4PmYSw(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->lambda$startCamera$2(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DSI_v40foXeyGHYQE0OznXNEHHU(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAGn_JmFlSfn2AFBh0FHHRsTJF8(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->lambda$bindPreview$5(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WB2v_OwC41IFeReyWyzyx4QRu5s(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->lambda$bindPreview$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oVOYpsU5WLBT9f34yt4E1HMtQxw(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->isTorchOn:Z

    return-void
.end method

.method private allPermissionsGranted()Z
    .locals 1

    .line 69
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bindPreview(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 7
    .param p1, "cameraProvider"    # Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 85
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v0}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v0

    .line 86
    .local v0, "preview":Landroidx/camera/core/Preview;
    new-instance v1, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v1}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v1

    .line 90
    .local v1, "cameraSelector":Landroidx/camera/core/CameraSelector;
    new-instance v3, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v3}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 91
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageAnalysis$Builder;->setBackpressureStrategy(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v3

    .line 94
    .local v3, "imageAnalysis":Landroidx/camera/core/ImageAnalysis;
    iget-object v5, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;)V

    invoke-virtual {v3, v5, v6}, Landroidx/camera/core/ImageAnalysis;->setAnalyzer(Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageAnalysis$Analyzer;)V

    .line 117
    iget-object v5, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->previewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v5}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 118
    const/4 v5, 0x2

    new-array v5, v5, [Landroidx/camera/core/UseCase;

    aput-object v0, v5, v4

    aput-object v3, v5, v2

    invoke-virtual {p1, p0, v1, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->camera:Landroidx/camera/core/Camera;

    .line 119
    return-void
.end method

.method private synthetic lambda$bindPreview$3(Ljava/util/List;)V
    .locals 3
    .param p1, "barcodes"    # Ljava/util/List;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/barcode/common/Barcode;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, "data":Landroid/content/Intent;
    const-string v2, "BARCODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->finish()V

    .line 110
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static synthetic lambda$bindPreview$4(Landroidx/camera/core/ImageProxy;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .param p0, "image"    # Landroidx/camera/core/ImageProxy;
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 111
    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method

.method private synthetic lambda$bindPreview$5(Landroidx/camera/core/ImageProxy;)V
    .locals 4
    .param p1, "image"    # Landroidx/camera/core/ImageProxy;

    .line 96
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImage()Landroid/media/Image;

    move-result-object v0

    .line 97
    .local v0, "mediaImage":Landroid/media/Image;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromMediaImage(Landroid/media/Image;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object v1

    .line 99
    .local v1, "inputImage":Lcom/google/mlkit/vision/common/InputImage;
    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    invoke-interface {v2, v1}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda4;-><init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;)V

    .line 100
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda5;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 112
    .end local v1    # "inputImage":Lcom/google/mlkit/vision/common/InputImage;
    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 115
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->toggleTorch()V

    return-void
.end method

.method private synthetic lambda$startCamera$2(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .param p1, "cameraProviderFuture"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .line 76
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    iput-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->cameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 77
    invoke-direct {p0, v0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->bindPreview(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private startCamera()V
    .locals 3

    .line 73
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 74
    .local v0, "cameraProviderFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/camera/lifecycle/ProcessCameraProvider;>;"
    new-instance v1, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 81
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 82
    return-void
.end method

.method private toggleTorch()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->camera:Landroidx/camera/core/Camera;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-boolean v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->isTorchOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->isTorchOn:Z

    .line 124
    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->camera:Landroidx/camera/core/Camera;

    invoke-interface {v0}, Landroidx/camera/core/Camera;->getCameraControl()Landroidx/camera/core/CameraControl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->isTorchOn:Z

    invoke-interface {v0, v1}, Landroidx/camera/core/CameraControl;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/abdulasif/pdtstockscanner/R$layout;->activity_scanner:I

    invoke-virtual {p0, v0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->setContentView(I)V

    .line 47
    sget v0, Lcom/abdulasif/pdtstockscanner/R$id;->previewView:I

    invoke-virtual {p0, v0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/PreviewView;

    iput-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->previewView:Landroidx/camera/view/PreviewView;

    .line 48
    sget v0, Lcom/abdulasif/pdtstockscanner/R$id;->btn_close:I

    invoke-virtual {p0, v0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 49
    .local v0, "btnClose":Landroid/widget/ImageButton;
    sget v1, Lcom/abdulasif/pdtstockscanner/R$id;->btn_torch:I

    invoke-virtual {p0, v1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 51
    .local v1, "btnTorch":Landroid/widget/ImageButton;
    new-instance v2, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v2, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    new-instance v2, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    invoke-direct {v2}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;-><init>()V

    const/4 v3, 0x0

    new-array v4, v3, [I

    .line 57
    invoke-virtual {v2, v3, v4}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->setBarcodeFormats(I[I)Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions$Builder;->build()Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    move-result-object v2

    .line 59
    .local v2, "options":Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;
    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/BarcodeScanning;->getClient(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    move-result-object v3

    iput-object v3, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->scanner:Lcom/google/mlkit/vision/barcode/BarcodeScanner;

    .line 61
    invoke-direct {p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->allPermissionsGranted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->startCamera()V

    goto :goto_0

    .line 64
    :cond_0
    const-string v3, "android.permission.CAMERA"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {p0, v3, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 66
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->cameraExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 132
    return-void
.end method
