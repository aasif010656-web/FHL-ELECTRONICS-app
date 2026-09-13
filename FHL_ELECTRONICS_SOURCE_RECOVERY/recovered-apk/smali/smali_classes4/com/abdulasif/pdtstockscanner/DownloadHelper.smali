.class public Lcom/abdulasif/pdtstockscanner/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;
    }
.end annotation


# instance fields
.field private final activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

.field private downloadId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/abdulasif/pdtstockscanner/DownloadHelper;)Lcom/abdulasif/pdtstockscanner/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadId(Lcom/abdulasif/pdtstockscanner/DownloadHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->downloadId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mlaunchInstaller(Lcom/abdulasif/pdtstockscanner/DownloadHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->launchInstaller(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/abdulasif/pdtstockscanner/MainActivity;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->downloadId:J

    .line 21
    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    .line 22
    return-void
.end method

.method private launchInstaller(Ljava/io/File;)V
    .locals 6

    .line 127
    const-string v0, "application/vnd.android.package-archive"

    const-string v1, "android.intent.action.VIEW"

    const/high16 v2, 0x10000000

    :try_start_0
    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-string v4, "com.abdulasif.pdtstockscanner.fixed.fileprovider"

    invoke-static {v3, v4, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 129
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v3, v4}, Lcom/abdulasif/pdtstockscanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v3

    .line 135
    const-string v4, "install intent failed"

    const-string v5, "DownloadHelper"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {p1, v3}, Lcom/abdulasif/pdtstockscanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    goto :goto_0

    .line 142
    :catchall_1
    move-exception p1

    .line 143
    const-string v0, "fallback install failed"

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    return-void
.end method


# virtual methods
.method public openUpdate(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 27
    const-string v0, "FHL_ELECTRONICS_update.apk"

    const-string v1, "DownloadHelper"

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openUpdate called with: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v2}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    new-instance v6, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;

    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-direct {v6, p1, v2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 33
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const-string v2, "download"

    invoke-virtual {p1, v2}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/DownloadManager;

    .line 34
    if-nez v4, :cond_0

    .line 35
    const-string p1, "Download service unavailable."

    invoke-virtual {v6, p1}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->say(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    return-void

    .line 39
    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [J

    iget-wide v8, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->downloadId:J

    aput-wide v8, v3, p1

    invoke-virtual {v4, v3}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v3

    :goto_0
    nop

    .line 42
    :try_start_2
    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v3}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    .line 43
    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v3}, Lcom/abdulasif/pdtstockscanner/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 44
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 47
    :goto_1
    :try_start_4
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 48
    const-string v8, "FHL ELECTRONICS Update"

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 49
    const-string v8, "Downloading update..."

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 50
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 51
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setDestinationFromUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 52
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 53
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 55
    const-string p1, "Starting download..."

    invoke-virtual {v6, p1}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->say(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->downloadId:J

    .line 58
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;-><init>(Lcom/abdulasif/pdtstockscanner/DownloadHelper;Landroid/app/DownloadManager;Ljava/io/File;Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;Ljava/lang/String;)V

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    .line 93
    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, p1, v3}, Lcom/abdulasif/pdtstockscanner/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->activity:Lcom/abdulasif/pdtstockscanner/MainActivity;

    invoke-virtual {v2, v0, p1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 99
    :goto_2
    goto :goto_3

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    const-string v0, "openUpdate error"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_3
    return-void
.end method
