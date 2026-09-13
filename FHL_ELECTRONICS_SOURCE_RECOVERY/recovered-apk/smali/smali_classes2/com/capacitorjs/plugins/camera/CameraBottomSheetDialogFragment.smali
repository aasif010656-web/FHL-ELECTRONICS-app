.class public Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "CameraBottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;,
        Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;
    }
.end annotation


# instance fields
.field private canceledListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;

.field private mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;

.field private title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$mwnP0zJKQebo3xCPcX1ghp_1z9M(Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->lambda$setupDialog$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$1;-><init>(Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;)V

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    return-void
.end method

.method private synthetic lambda$setupDialog$0(ILandroid/view/View;)V
    .locals 1
    .param p1, "optionIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->selectedListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;->onSelected(I)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->dismiss()V

    .line 106
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 45
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->canceledListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;->onCanceled()V

    .line 48
    :cond_0
    return-void
.end method

.method setOptions(Ljava/util/List;Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;)V
    .locals 0
    .param p2, "selectedListener"    # Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;
    .param p3, "canceledListener"    # Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;",
            "Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->options:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->selectedListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;

    .line 39
    iput-object p3, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->canceledListener:Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;

    .line 40
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 17
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "style"    # I

    .line 65
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 67
    iget-object v1, v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->options:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 73
    .local v1, "w":Landroid/view/Window;
    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .local v2, "scale":F
    const/high16 v3, 0x41800000    # 16.0f

    .line 76
    .local v3, "layoutPaddingDp16":F
    const/high16 v4, 0x41400000    # 12.0f

    .line 77
    .local v4, "layoutPaddingDp12":F
    const/high16 v5, 0x41000000    # 8.0f

    .line 78
    .local v5, "layoutPaddingDp8":F
    mul-float v6, v3, v2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 79
    .local v6, "layoutPaddingPx16":I
    mul-float v8, v4, v2

    add-float/2addr v8, v7

    float-to-int v8, v8

    .line 80
    .local v8, "layoutPaddingPx12":I
    mul-float v9, v5, v2

    add-float/2addr v9, v7

    float-to-int v7, v9

    .line 82
    .local v7, "layoutPaddingPx8":I
    new-instance v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .local v9, "parentLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v10, "layout":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-virtual {v10, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    new-instance v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v11, "ttv":Landroid/widget/TextView;
    const-string v12, "#757575"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {v11, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    iget-object v12, v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v13, v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->options:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 94
    move v13, v12

    .line 96
    .local v13, "optionIndex":I
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v14, "tv":Landroid/widget/TextView;
    const-string v15, "#000000"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v14, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    iget-object v15, v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->options:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v15, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v15, v0, v13}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;I)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    .end local v13    # "optionIndex":I
    .end local v14    # "tv":Landroid/widget/TextView;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 111
    .end local v12    # "i":I
    :cond_1
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getRootView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v9}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 116
    .local v12, "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    .line 118
    .local v14, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<Landroid/view/View;>;"
    instance-of v15, v14, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v15, :cond_2

    .line 119
    move-object v15, v14

    check-cast v15, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 120
    .local v15, "bottomSheetBehavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<Landroid/view/View;>;"
    move-object/from16 v16, v1

    .end local v1    # "w":Landroid/view/Window;
    .local v16, "w":Landroid/view/Window;
    iget-object v1, v0, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->mBottomSheetBehaviorCallback:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v15, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 121
    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_1

    .line 118
    .end local v15    # "bottomSheetBehavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<Landroid/view/View;>;"
    .end local v16    # "w":Landroid/view/Window;
    .restart local v1    # "w":Landroid/view/Window;
    :cond_2
    move-object/from16 v16, v1

    .line 123
    .end local v1    # "w":Landroid/view/Window;
    .restart local v16    # "w":Landroid/view/Window;
    :goto_1
    return-void

    .line 67
    .end local v2    # "scale":F
    .end local v3    # "layoutPaddingDp16":F
    .end local v4    # "layoutPaddingDp12":F
    .end local v5    # "layoutPaddingDp8":F
    .end local v6    # "layoutPaddingPx16":I
    .end local v7    # "layoutPaddingPx8":I
    .end local v8    # "layoutPaddingPx12":I
    .end local v9    # "parentLayout":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .end local v10    # "layout":Landroid/widget/LinearLayout;
    .end local v11    # "ttv":Landroid/widget/TextView;
    .end local v12    # "params":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<Landroid/view/View;>;"
    .end local v16    # "w":Landroid/view/Window;
    :cond_3
    move-object/from16 v13, p1

    .line 68
    :goto_2
    return-void
.end method
