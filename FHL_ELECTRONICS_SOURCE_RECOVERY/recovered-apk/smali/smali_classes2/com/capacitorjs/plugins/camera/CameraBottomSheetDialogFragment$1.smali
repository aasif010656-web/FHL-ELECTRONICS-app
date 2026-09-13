.class Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "CameraBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;

    .line 50
    iput-object p1, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$1;->this$0:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 59
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 53
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$1;->this$0:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->dismiss()V

    .line 56
    :cond_0
    return-void
.end method
