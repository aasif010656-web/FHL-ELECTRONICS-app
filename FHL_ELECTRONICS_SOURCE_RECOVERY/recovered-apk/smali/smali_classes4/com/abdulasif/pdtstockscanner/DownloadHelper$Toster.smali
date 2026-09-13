.class Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdulasif/pdtstockscanner/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Toster"
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final main:Landroid/os/Handler;

.field msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->main:Landroid/os/Handler;

    .line 109
    iput-object p2, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->ctx:Landroid/content/Context;

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 122
    return-void
.end method

.method say(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->msg:Ljava/lang/String;

    .line 114
    iget-object p1, p0, Lcom/abdulasif/pdtstockscanner/DownloadHelper$Toster;->main:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
