.class Lcom/abdulasif/pdtstockscanner/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdulasif/pdtstockscanner/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$M4O1KrV0ufZ7oTr2KKx1pcv7SgQ(Lcom/abdulasif/pdtstockscanner/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->lambda$startNativeScanner$0()V

    return-void
.end method

.method constructor <init>(Lcom/abdulasif/pdtstockscanner/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/abdulasif/pdtstockscanner/MainActivity;

    .line 63
    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$startNativeScanner$0()V
    .locals 3

    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-class v2, Lcom/abdulasif/pdtstockscanner/ScannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-static {v1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->-$$Nest$fgetscannerLauncher(Lcom/abdulasif/pdtstockscanner/MainActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public installApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "base64Data"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    :try_start_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "decodedBytes":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v2}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-string v4, "com.abdulasif.pdtstockscanner.fixed.fileprovider"

    invoke-static {v3, v4, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "contentUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "installIntent":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v5, v4}, Lcom/abdulasif/pdtstockscanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public shareFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "base64Data"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    :try_start_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 101
    .local v0, "decodedBytes":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v2}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 106
    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-string v4, "com.abdulasif.pdtstockscanner.fixed.fileprovider"

    invoke-static {v3, v4, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 107
    .local v3, "contentUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    iget-object v5, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-string v6, "Share Excel Report"

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/abdulasif/pdtstockscanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "decodedBytes":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v4    # "shareIntent":Landroid/content/Intent;
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startNativeScanner()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/MainActivity$1;->this$0:Lcom/abdulasif/pdtstockscanner/MainActivity;

    new-instance v1, Lcom/abdulasif/pdtstockscanner/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/abdulasif/pdtstockscanner/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/abdulasif/pdtstockscanner/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public stopNativeScanner()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 75
    return-void
.end method
