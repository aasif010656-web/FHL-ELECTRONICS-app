.class public final synthetic Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/abdulasif/pdtstockscanner/ScannerActivity;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;->f$0:Lcom/abdulasif/pdtstockscanner/ScannerActivity;

    iput-object p2, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;->f$0:Lcom/abdulasif/pdtstockscanner/ScannerActivity;

    iget-object v1, p0, Lcom/abdulasif/pdtstockscanner/ScannerActivity$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1}, Lcom/abdulasif/pdtstockscanner/ScannerActivity;->$r8$lambda$9ZSzzUZWh1HpMkOrMvtFk4PmYSw(Lcom/abdulasif/pdtstockscanner/ScannerActivity;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
