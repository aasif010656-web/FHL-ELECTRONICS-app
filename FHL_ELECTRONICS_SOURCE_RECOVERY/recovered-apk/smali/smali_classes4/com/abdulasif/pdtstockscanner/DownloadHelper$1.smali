.class Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdulasif/pdtstockscanner/DownloadHelper;->openUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

.field final synthetic val$dest:Ljava/io/File;

.field final synthetic val$dm:Landroid/app/DownloadManager;

.field final synthetic val$toast:Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/abdulasif/pdtstockscanner/DownloadHelper;Landroid/app/DownloadManager;Ljava/io/File;Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    iput-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$dm:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$dest:Ljava/io/File;

    iput-object p4, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$toast:Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;

    iput-object p5, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$urlStr:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 62
    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    iget-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    invoke-static {p2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->-$$Nest$fgetdownloadId(Lcom/abdulasif/pdtstockscanner/DownloadHelper;)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    return-void

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 68
    :goto_1
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 69
    const/4 p2, 0x1

    new-array p2, p2, [J

    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    invoke-static {v0}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->-$$Nest$fgetdownloadId(Lcom/abdulasif/pdtstockscanner/DownloadHelper;)J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 70
    iget-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$dm:Landroid/app/DownloadManager;

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 71
    nop

    .line 72
    const/16 p2, 0x10

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 75
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_2
    const/16 p1, 0x8

    if-ne p2, p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    iget-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$dest:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->-$$Nest$mlaunchInstaller(Lcom/abdulasif/pdtstockscanner/DownloadHelper;Ljava/io/File;)V

    .line 79
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$toast:Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;

    const-string p2, "Download complete. Opening installer..."

    invoke-virtual {p1, p2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->say(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$toast:Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;

    const-string p2, "Download failed, opening browser..."

    invoke-virtual {p1, p2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->say(Ljava/lang/String;)V

    .line 83
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->val$urlStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    iget-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$1;->this$0:Lcom/abdulasif/pdtstockscanner/DownloadHelper;

    invoke-static {p2}, Lcom/abdulasif/pdtstockscanner/DownloadHelper;->-$$Nest$fgetactivity(Lcom/abdulasif/pdtstockscanner/DownloadHelper;)Lcom/abdulasif/pdtstockscanner/MainActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/abdulasif/pdtstockscanner/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    goto :goto_2

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    const-string p2, "DownloadHelper"

    const-string v0, "fallback failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_2
    return-void
.end method
