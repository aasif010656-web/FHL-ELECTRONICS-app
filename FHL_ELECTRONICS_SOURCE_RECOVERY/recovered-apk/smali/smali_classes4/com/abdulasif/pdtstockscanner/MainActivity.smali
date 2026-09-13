.class public Lcom/abdulasif/pdtstockscanner/MainActivity;
.super Lcom/getcapacitor/BridgeActivity;
.source "MainActivity.java"


# instance fields
.field private scannerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sUMEaLGVbzncnU5uOQcoLGotuQw(Lcom/abdulasif/pdtstockscanner/MainActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetscannerLauncher(Lcom/abdulasif/pdtstockscanner/MainActivity;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/abdulasif/pdtstockscanner/MainActivity;->scannerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/getcapacitor/BridgeActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/activity/result/ActivityResult;)V
    .locals 2
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 55
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BARCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "code":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/abdulasif/pdtstockscanner/MainActivity;->onBarcodeScanned(Ljava/lang/String;)V

    .line 59
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onBarcodeScanned(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .line 80
    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "escapedCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if(typeof window.lookupBarcode===\'function\') window.lookupBarcode(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/getcapacitor/BridgeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/abdulasif/pdtstockscanner/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/abdulasif/pdtstockscanner/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/abdulasif/pdtstockscanner/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/abdulasif/pdtstockscanner/MainActivity;->scannerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 63
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/abdulasif/pdtstockscanner/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/abdulasif/pdtstockscanner/MainActivity$1;-><init>(Lcom/abdulasif/pdtstockscanner/MainActivity;)V

    const-string v2, "AndroidNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    invoke-direct {v1, p0}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;-><init>(Lcom/abdulasif/pdtstockscanner/MainActivity;)V

    const-string v2, "UpdateBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 77
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 92
    const/16 v0, 0x18

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "if(typeof window.volumeKeyPressed===\'function\') window.volumeKeyPressed(\'up\');"

    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 94
    return v1

    .line 96
    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v3, "if(typeof window.volumeKeyPressed===\'function\') window.volumeKeyPressed(\'down\');"

    invoke-virtual {v0, v3, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 98
    return v1

    .line 100
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/getcapacitor/BridgeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
