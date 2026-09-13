.class public Lcom/capacitorjs/plugins/camera/CameraPlugin;
.super Lcom/getcapacitor/Plugin;
.source "CameraPlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "Camera"
    permissions = {
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "camera"
            strings = {
                "android.permission.CAMERA"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "photos"
            strings = {}
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "saveGallery"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE",
                "android.permission.WRITE_EXTERNAL_STORAGE"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "readExternalStorage"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE"
            }
        .end subannotation
    }
.end annotation


# static fields
.field static final CAMERA:Ljava/lang/String; = "camera"

.field private static final IMAGE_EDIT_ERROR:Ljava/lang/String; = "Unable to edit image"

.field private static final IMAGE_FILE_SAVE_ERROR:Ljava/lang/String; = "Unable to create photo on disk"

.field private static final IMAGE_GALLERY_SAVE_ERROR:Ljava/lang/String; = "Unable to save the image in the gallery"

.field private static final IMAGE_PROCESS_NO_FILE_ERROR:Ljava/lang/String; = "Unable to process image, file not found on disk"

.field private static final INVALID_RESULT_TYPE_ERROR:Ljava/lang/String; = "Invalid resultType option"

.field private static final NO_CAMERA_ACTIVITY_ERROR:Ljava/lang/String; = "Unable to resolve camera activity"

.field private static final NO_CAMERA_ERROR:Ljava/lang/String; = "Device doesn\'t have a camera available"

.field private static final NO_PHOTO_ACTIVITY_ERROR:Ljava/lang/String; = "Unable to resolve photo activity"

.field private static final PERMISSION_DENIED_ERROR_CAMERA:Ljava/lang/String; = "User denied access to camera"

.field static final PHOTOS:Ljava/lang/String; = "photos"

.field static final READ_EXTERNAL_STORAGE:Ljava/lang/String; = "readExternalStorage"

.field static final SAVE_GALLERY:Ljava/lang/String; = "saveGallery"

.field private static final UNABLE_TO_PROCESS_IMAGE:Ljava/lang/String; = "Unable to process image"

.field private static final USER_CANCELLED:Ljava/lang/String; = "User cancelled photos app"


# instance fields
.field private imageEditedFileSavePath:Ljava/lang/String;

.field private imageFileSavePath:Ljava/lang/String;

.field private imageFileUri:Landroid/net/Uri;

.field private imagePickedContentUri:Landroid/net/Uri;

.field private isEdited:Z

.field private isFirstRequest:Z

.field private isSaved:Z

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private pickMedia:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lcom/capacitorjs/plugins/camera/CameraSettings;


# direct methods
.method public static synthetic $r8$lambda$7GVo7V4Fsoje8H3_8K-lWPl3T1w(Lcom/capacitorjs/plugins/camera/CameraPlugin;Ljava/util/List;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->lambda$openPhotos$2(Ljava/util/List;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7r8JnyAajpgfsettGJXQ3yH3ntU(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->lambda$showPrompt$0(Lcom/getcapacitor/PluginCall;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3Zoqvz-mhUyhE9-PCNGiU94zSE(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->lambda$openPhotos$4(Lcom/getcapacitor/PluginCall;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTjbhwXpo9A6PA35qcfl__8nKdQ(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->lambda$openPhotos$3(Lcom/getcapacitor/PluginCall;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isEdited:Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isFirstRequest:Z

    .line 114
    iput-boolean v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 116
    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    new-instance v0, Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-direct {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    return-void
.end method

.method private cameraPermissionsCallback(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/annotation/PermissionCallback;
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pickImages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openPhotos(Lcom/getcapacitor/PluginCall;Z)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getSource()Lcom/capacitorjs/plugins/camera/CameraSource;

    move-result-object v0

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraSource;->CAMERA:Lcom/capacitorjs/plugins/camera/CameraSource;

    if-ne v0, v1, :cond_1

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v1

    sget-object v2, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-eq v1, v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User denied camera permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "User denied access to camera"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 251
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->doShow(Lcom/getcapacitor/PluginCall;)V

    .line 255
    :goto_0
    return-void
.end method

.method private checkCameraPermissions(Lcom/getcapacitor/PluginCall;)Z
    .locals 10
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 202
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isPermissionDeclared(Ljava/lang/String;)Z

    move-result v1

    .line 203
    .local v1, "needCameraPerms":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v4

    sget-object v5, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 204
    .local v4, "hasCameraPerms":Z
    :goto_1
    const-string v5, "saveGallery"

    invoke-virtual {p0, v5}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v6

    sget-object v7, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 208
    .local v6, "hasGalleryPerms":Z
    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    const-string v9, "cameraPermissionsCallback"

    if-lt v7, v8, :cond_4

    .line 210
    if-nez v4, :cond_3

    .line 211
    invoke-virtual {p0, v0, p1, v9}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 212
    return v3

    .line 214
    :cond_3
    return v2

    .line 218
    :cond_4
    iget-object v7, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/capacitorjs/plugins/camera/CameraSettings;->isSaveToGallery()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_5

    if-nez v6, :cond_7

    :cond_5
    iget-boolean v7, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isFirstRequest:Z

    if-eqz v7, :cond_7

    .line 219
    iput-boolean v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isFirstRequest:Z

    .line 221
    if-eqz v1, :cond_6

    .line 222
    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "aliases":[Ljava/lang/String;
    goto :goto_3

    .line 224
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_6
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "aliases":[Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0, p1, v9}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 227
    return v3

    .line 230
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_7
    if-nez v4, :cond_8

    .line 231
    invoke-virtual {p0, v0, p1, v9}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 232
    return v3

    .line 234
    :cond_8
    return v2
.end method

.method private createEditIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 9
    .param p1, "origPhotoUri"    # Landroid/net/Uri;

    .line 862
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "editFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 864
    .local v1, "editUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v2, "editIntent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageEditedFileSavePath:Ljava/lang/String;

    .line 867
    const/4 v3, 0x3

    .line 868
    .local v3, "flags":I
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 869
    const-string v4, "output"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 873
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_0

    .line 874
    nop

    .line 875
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 876
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 877
    const-wide/32 v5, 0x10000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v4

    .local v4, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 879
    .end local v4    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->legacyQueryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 882
    .restart local v4    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 883
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 884
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 886
    :cond_1
    return-object v2

    .line 887
    .end local v0    # "editFile":Ljava/io/File;
    .end local v1    # "editUri":Landroid/net/Uri;
    .end local v2    # "editIntent":Landroid/content/Intent;
    .end local v3    # "flags":I
    .end local v4    # "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .line 888
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private deleteImageFile()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->isSaveToGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, "photoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 704
    .end local v0    # "photoFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private doShow(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 151
    sget-object v0, Lcom/capacitorjs/plugins/camera/CameraPlugin$1;->$SwitchMap$com$capacitorjs$plugins$camera$CameraSource:[I

    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getSource()Lcom/capacitorjs/plugins/camera/CameraSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capacitorjs/plugins/camera/CameraSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->showPrompt(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->showPhotos(Lcom/getcapacitor/PluginCall;)V

    .line 157
    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->showCamera(Lcom/getcapacitor/PluginCall;)V

    .line 154
    nop

    .line 162
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private editImage(Lcom/getcapacitor/PluginCall;Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bitmapOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 848
    const-string v0, "Unable to edit image"

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getTempImage(Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;

    move-result-object v1

    .line 849
    .local v1, "tempImage":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->createEditIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 850
    .local v2, "editIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 851
    const-string v3, "processEditedImage"

    invoke-virtual {p0, p1, v2, v3}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->startActivityForResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v1    # "tempImage":Landroid/net/Uri;
    .end local v2    # "editIntent":Landroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 855
    :catch_0
    move-exception v1

    .line 856
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 858
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private getContractForCall(Lcom/getcapacitor/PluginCall;)Landroidx/activity/result/contract/ActivityResultContract;
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/PluginCall;",
            ")",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    .local v0, "limit":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 351
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    invoke-direct {v1, v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    return-object v1

    .line 353
    :cond_0
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>()V

    return-object v1
.end method

.method private getLegacyParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getResultType(Ljava/lang/String;)Lcom/capacitorjs/plugins/camera/CameraResultType;
    .locals 4
    .param p1, "resultType"    # Ljava/lang/String;

    .line 294
    if-nez p1, :cond_0

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/capacitorjs/plugins/camera/CameraResultType;->valueOf(Ljava/lang/String;)Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid result type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", defaulting to base64"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraResultType;->BASE64:Lcom/capacitorjs/plugins/camera/CameraResultType;

    return-object v1
.end method

.method private getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 276
    new-instance v0, Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-direct {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;-><init>()V

    .line 277
    .local v0, "settings":Lcom/capacitorjs/plugins/camera/CameraSettings;
    const-string v1, "resultType"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getResultType(Ljava/lang/String;)Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setResultType(Lcom/capacitorjs/plugins/camera/CameraResultType;)V

    .line 278
    const/4 v1, 0x0

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 278
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "saveToGallery"

    invoke-virtual {p1, v4, v3}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setSaveToGallery(Z)V

    .line 279
    const-string v4, "allowEditing"

    invoke-virtual {p1, v4, v3}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setAllowEditing(Z)V

    .line 280
    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "quality"

    invoke-virtual {p1, v4, v3}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setQuality(I)V

    .line 281
    const-string v3, "width"

    invoke-virtual {p1, v3, v2}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setWidth(I)V

    .line 282
    const-string v3, "height"

    invoke-virtual {p1, v3, v2}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setHeight(I)V

    .line 283
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setShouldResize(Z)V

    .line 284
    const-string v1, "correctOrientation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setShouldCorrectOrientation(Z)V

    .line 286
    :try_start_0
    const-string v1, "source"

    sget-object v2, Lcom/capacitorjs/plugins/camera/CameraSource;->PROMPT:Lcom/capacitorjs/plugins/camera/CameraSource;

    invoke-virtual {v2}, Lcom/capacitorjs/plugins/camera/CameraSource;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/capacitorjs/plugins/camera/CameraSource;->valueOf(Ljava/lang/String;)Lcom/capacitorjs/plugins/camera/CameraSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setSource(Lcom/capacitorjs/plugins/camera/CameraSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/capacitorjs/plugins/camera/CameraSource;->PROMPT:Lcom/capacitorjs/plugins/camera/CameraSource;

    invoke-virtual {v0, v2}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setSource(Lcom/capacitorjs/plugins/camera/CameraSource;)V

    .line 290
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method private getTempFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 594
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "filename":Ljava/lang/String;
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 599
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private getTempImage(Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;
    .locals 6
    .param p1, "u"    # Landroid/net/Uri;
    .param p2, "bitmapOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 723
    const-string v0, "Unable to process image"

    const/4 v1, 0x0

    .line 724
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 726
    .local v2, "newUri":Landroid/net/Uri;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 727
    invoke-direct {p0, p1, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->saveImage(Landroid/net/Uri;Ljava/io/InputStream;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 729
    nop

    .line 731
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    :goto_0
    goto :goto_2

    .line 732
    :catch_0
    move-exception v3

    .line 733
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 729
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 731
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 734
    goto :goto_1

    .line 732
    :catch_1
    move-exception v4

    .line 733
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 736
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    throw v3

    .line 728
    :catch_2
    move-exception v3

    .line 729
    if-eqz v1, :cond_1

    .line 731
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 737
    :cond_1
    :goto_2
    return-object v2
.end method

.method private synthetic lambda$openPhotos$2(Ljava/util/List;Lcom/getcapacitor/PluginCall;)V
    .locals 7
    .param p1, "uris"    # Ljava/util/List;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 368
    const-string v0, "error"

    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 369
    .local v1, "ret":Lcom/getcapacitor/JSObject;
    new-instance v2, Lcom/getcapacitor/JSArray;

    invoke-direct {v2}, Lcom/getcapacitor/JSArray;-><init>()V

    .line 370
    .local v2, "photos":Lcom/getcapacitor/JSArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 372
    .local v4, "imageUri":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processPickedImages(Landroid/net/Uri;)Lcom/getcapacitor/JSObject;

    move-result-object v5

    .line 373
    .local v5, "processResult":Lcom/getcapacitor/JSObject;
    nop

    .line 374
    invoke-virtual {v5, v0}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 376
    invoke-virtual {v5, v0}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 377
    return-void

    .line 379
    :cond_0
    invoke-virtual {v2, v5}, Lcom/getcapacitor/JSArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .end local v5    # "processResult":Lcom/getcapacitor/JSObject;
    goto :goto_1

    .line 381
    :catch_0
    move-exception v5

    .line 382
    .local v5, "ex":Ljava/lang/SecurityException;
    const-string v6, "SecurityException"

    invoke-virtual {p2, v6}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 384
    .end local v4    # "imageUri":Landroid/net/Uri;
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :goto_1
    goto :goto_0

    .line 385
    :cond_1
    const-string v0, "photos"

    invoke-virtual {v1, v0, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 386
    invoke-virtual {p2, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 387
    return-void
.end method

.method private synthetic lambda$openPhotos$3(Lcom/getcapacitor/PluginCall;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "uris"    # Ljava/util/List;

    .line 364
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 366
    .local v0, "executor":Ljava/util/concurrent/Executor;
    new-instance v1, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/capacitorjs/plugins/camera/CameraPlugin;Ljava/util/List;Lcom/getcapacitor/PluginCall;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 389
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_0

    .line 390
    :cond_0
    const-string v0, "User cancelled photos app"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 393
    return-void
.end method

.method private synthetic lambda$openPhotos$4(Lcom/getcapacitor/PluginCall;Landroid/net/Uri;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 403
    if-eqz p2, :cond_0

    .line 404
    iput-object p2, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imagePickedContentUri:Landroid/net/Uri;

    .line 405
    invoke-direct {p0, p2, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processPickedImage(Landroid/net/Uri;Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 407
    :cond_0
    const-string v0, "User cancelled photos app"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 410
    return-void
.end method

.method private synthetic lambda$showPrompt$0(Lcom/getcapacitor/PluginCall;I)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "index"    # I

    .line 175
    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraSource;->PHOTOS:Lcom/capacitorjs/plugins/camera/CameraSource;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setSource(Lcom/capacitorjs/plugins/camera/CameraSource;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openPhotos(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 178
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraSource;->CAMERA:Lcom/capacitorjs/plugins/camera/CameraSource;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->setSource(Lcom/capacitorjs/plugins/camera/CameraSource;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openCamera(Lcom/getcapacitor/PluginCall;)V

    .line 182
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$showPrompt$1(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p0, "call"    # Lcom/getcapacitor/PluginCall;

    .line 183
    const-string v0, "User cancelled photos app"

    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    return-void
.end method

.method private legacyQueryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private openPhotos(Lcom/getcapacitor/PluginCall;Z)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "multiple"    # Z

    .line 359
    if-eqz p2, :cond_0

    .line 360
    nop

    .line 362
    :try_start_0
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContractForCall(Lcom/getcapacitor/PluginCall;)Landroidx/activity/result/contract/ActivityResultContract;

    move-result-object v0

    new-instance v1, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;)V

    .line 361
    invoke-direct {p0, v0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->registerActivityResultLauncher(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 395
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 396
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v1, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;)V

    .line 400
    invoke-direct {p0, v0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->registerActivityResultLauncher(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    .line 412
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 413
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "Unable to resolve photo activity"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 419
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method private prepareBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/capacitorjs/plugins/camera/ExifWrapper;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "exif"    # Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->isShouldCorrectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/capacitorjs/plugins/camera/ImageUtils;->correctOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/capacitorjs/plugins/camera/ExifWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->replaceBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 754
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->isShouldResize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/capacitorjs/plugins/camera/ImageUtils;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 756
    .restart local v0    # "newBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->replaceBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 759
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object p1
.end method

.method private processEditedImage(Lcom/getcapacitor/PluginCall;Landroidx/activity/result/ActivityResult;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "result"    # Landroidx/activity/result/ActivityResult;
    .annotation runtime Lcom/getcapacitor/annotation/ActivityCallback;
    .end annotation

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isEdited:Z

    .line 544
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    .line 545
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imagePickedContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, v0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processPickedImage(Landroid/net/Uri;Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processCameraImage(Lcom/getcapacitor/PluginCall;Landroidx/activity/result/ActivityResult;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processPickedImage(Lcom/getcapacitor/PluginCall;Landroidx/activity/result/ActivityResult;)V

    .line 556
    :goto_0
    return-void
.end method

.method private processPickedImage(Landroid/net/Uri;Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 463
    const-string v0, "Unable to process image"

    const/4 v1, 0x0

    .line 466
    .local v1, "imageStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 467
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 469
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 470
    const-string v3, "Unable to process bitmap"

    invoke-virtual {p2, v3}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-eqz v1, :cond_0

    .line 482
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v3

    .line 484
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, v2, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->returnResult(Lcom/getcapacitor/PluginCall;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 482
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 485
    :goto_1
    goto :goto_2

    .line 483
    :catch_1
    move-exception v2

    .line 484
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 480
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 477
    :catch_2
    move-exception v2

    .line 478
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v3, "No such image found"

    invoke-virtual {p2, v3, v2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_2

    .line 482
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 475
    :catch_3
    move-exception v2

    .line 476
    .local v2, "err":Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v3, "Out of memory"

    invoke-virtual {p2, v3}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 480
    .end local v2    # "err":Ljava/lang/OutOfMemoryError;
    if-eqz v1, :cond_2

    .line 482
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 488
    :cond_2
    :goto_2
    return-void

    .line 480
    :goto_3
    if-eqz v1, :cond_3

    .line 482
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 485
    goto :goto_4

    .line 483
    :catch_4
    move-exception v3

    .line 484
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v2
.end method

.method private processPickedImages(Landroid/net/Uri;)Lcom/getcapacitor/JSObject;
    .locals 12
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 491
    const-string v0, "No such image found"

    const-string v1, "error"

    const-string v2, "Unable to process image"

    const/4 v3, 0x0

    .line 492
    .local v3, "imageStream":Ljava/io/InputStream;
    new-instance v4, Lcom/getcapacitor/JSObject;

    invoke-direct {v4}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 494
    .local v4, "ret":Lcom/getcapacitor/JSObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 495
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 497
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 498
    const-string v6, "Unable to process bitmap"

    invoke-virtual {v4, v1, v6}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    nop

    .line 530
    if-eqz v3, :cond_0

    .line 532
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v4

    .line 502
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, p1}, Lcom/capacitorjs/plugins/camera/ImageUtils;->getExifData(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Lcom/capacitorjs/plugins/camera/ExifWrapper;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    .local v6, "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    :try_start_3
    invoke-direct {p0, v5, p1, v6}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->prepareBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/capacitorjs/plugins/camera/ExifWrapper;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v7

    .line 508
    nop

    .line 510
    :try_start_4
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 511
    .local v7, "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v9, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v9}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getQuality()I

    move-result v9

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 513
    invoke-direct {p0, p1, v7}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getTempImage(Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;

    move-result-object v8

    .line 514
    .local v8, "newUri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->copyExif(Ljava/lang/String;)V

    .line 515
    if-eqz v8, :cond_2

    .line 516
    const-string v9, "format"

    const-string v10, "jpeg"

    invoke-virtual {v4, v9, v10}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 517
    const-string v9, "exif"

    invoke-virtual {v6}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->toJson()Lcom/getcapacitor/JSObject;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 518
    const-string v9, "path"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 519
    const-string v9, "webPath"

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v11}, Lcom/getcapacitor/Bridge;->getLocalUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/getcapacitor/FileUtils;->getPortablePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    goto :goto_1

    .line 521
    :cond_2
    invoke-virtual {v4, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 523
    :goto_1
    nop

    .line 530
    if-eqz v3, :cond_3

    .line 532
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 535
    goto :goto_2

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-object v4

    .line 505
    .end local v7    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "newUri":Landroid/net/Uri;
    :catch_2
    move-exception v7

    .line 506
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 507
    nop

    .line 530
    if-eqz v3, :cond_4

    .line 532
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 535
    goto :goto_3

    .line 533
    :catch_3
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-object v4

    .line 530
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 526
    :catch_4
    move-exception v5

    .line 527
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v4, v1, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 528
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 530
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_5

    .line 532
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 535
    :goto_4
    goto :goto_5

    .line 533
    :catch_5
    move-exception v0

    .line 534
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 524
    :catch_6
    move-exception v0

    .line 525
    .local v0, "err":Ljava/lang/OutOfMemoryError;
    :try_start_a
    const-string v5, "Out of memory"

    invoke-virtual {v4, v1, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 530
    nop

    .end local v0    # "err":Ljava/lang/OutOfMemoryError;
    if-eqz v3, :cond_5

    .line 532
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_4

    .line 538
    :cond_5
    :goto_5
    return-object v4

    .line 530
    :goto_6
    if-eqz v3, :cond_6

    .line 532
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 535
    goto :goto_7

    .line 533
    :catch_7
    move-exception v1

    .line 534
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_7
    throw v0
.end method

.method private registerActivityResultLauncher(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 337
    .local p1, "contract":Landroidx/activity/result/contract/ActivityResultContract;, "Landroidx/activity/result/contract/ActivityResultContract<TI;TO;>;"
    .local p2, "callback":Landroidx/activity/result/ActivityResultCallback;, "Landroidx/activity/result/ActivityResultCallback<TO;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cap_activity_rq#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v1

    .line 340
    .local v1, "host":Ljava/lang/Object;
    instance-of v2, v1, Landroidx/activity/result/ActivityResultRegistryOwner;

    if-eqz v2, :cond_0

    .line 341
    move-object v2, v1

    check-cast v2, Landroidx/activity/result/ActivityResultRegistryOwner;

    invoke-interface {v2}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    return-object v2

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v2}, Lcom/getcapacitor/Bridge;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v2

    return-object v2

    .line 345
    .end local v1    # "host":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    return-object v1
.end method

.method private replaceBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "newBitmap"    # Landroid/graphics/Bitmap;

    .line 763
    if-eq p1, p2, :cond_0

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 766
    :cond_0
    move-object p1, p2

    .line 767
    return-object p1
.end method

.method private returnBase64(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "exif"    # Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .param p3, "bitmapOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 782
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 783
    .local v0, "byteArray":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, "encoded":Ljava/lang/String;
    new-instance v2, Lcom/getcapacitor/JSObject;

    invoke-direct {v2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 786
    .local v2, "data":Lcom/getcapacitor/JSObject;
    const-string v3, "format"

    const-string v4, "jpeg"

    invoke-virtual {v2, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 787
    const-string v3, "base64String"

    invoke-virtual {v2, v3, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 788
    const-string v3, "exif"

    invoke-virtual {p2}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->toJson()Lcom/getcapacitor/JSObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 789
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 790
    return-void
.end method

.method private returnDataUrl(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "exif"    # Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .param p3, "bitmapOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 771
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 772
    .local v0, "byteArray":[B
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "encoded":Ljava/lang/String;
    new-instance v2, Lcom/getcapacitor/JSObject;

    invoke-direct {v2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 775
    .local v2, "data":Lcom/getcapacitor/JSObject;
    const-string v3, "format"

    const-string v4, "jpeg"

    invoke-virtual {v2, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:image/jpeg;base64,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dataUrl"

    invoke-virtual {v2, v4, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 777
    const-string v3, "exif"

    invoke-virtual {p2}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->toJson()Lcom/getcapacitor/JSObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 778
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 779
    return-void
.end method

.method private returnFileURI(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "exif"    # Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "u"    # Landroid/net/Uri;
    .param p5, "bitmapOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 707
    invoke-direct {p0, p4, p5}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getTempImage(Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)Landroid/net/Uri;

    move-result-object v0

    .line 708
    .local v0, "newUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->copyExif(Ljava/lang/String;)V

    .line 709
    if-eqz v0, :cond_0

    .line 710
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 711
    .local v1, "ret":Lcom/getcapacitor/JSObject;
    const-string v2, "format"

    const-string v3, "jpeg"

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 712
    const-string v2, "exif"

    invoke-virtual {p2}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->toJson()Lcom/getcapacitor/JSObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 713
    const-string v2, "path"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 714
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v3}, Lcom/getcapacitor/Bridge;->getLocalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/getcapacitor/FileUtils;->getPortablePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "webPath"

    invoke-virtual {v1, v3, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 715
    const-string v2, "saved"

    iget-boolean v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 716
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 717
    .end local v1    # "ret":Lcom/getcapacitor/JSObject;
    goto :goto_0

    .line 718
    :cond_0
    const-string v1, "Unable to process image"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void
.end method

.method private returnResult(Lcom/getcapacitor/PluginCall;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 17
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "u"    # Landroid/net/Uri;

    .line 610
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v9}, Lcom/capacitorjs/plugins/camera/ImageUtils;->getExifData(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Lcom/capacitorjs/plugins/camera/ExifWrapper;

    move-result-object v10

    .line 612
    .local v10, "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    :try_start_0
    invoke-direct {v7, v1, v9, v10}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->prepareBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/capacitorjs/plugins/camera/ExifWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v11, v0

    .line 616
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 618
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v12, v0

    .line 619
    .local v12, "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getQuality()I

    move-result v1

    invoke-virtual {v11, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 621
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->isAllowEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isEdited:Z

    if-nez v0, :cond_0

    .line 622
    invoke-direct {v7, v8, v9, v12}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->editImage(Lcom/getcapacitor/PluginCall;Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)V

    .line 623
    return-void

    .line 626
    :cond_0
    const-string v0, "saveToGallery"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 627
    .local v13, "saveToGallery":Z
    if-eqz v13, :cond_8

    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageEditedFileSavePath:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 628
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    .line 630
    const-string v2, "Unable to save the image in the gallery"

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    .local v0, "fileToSavePath":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v3, "fileToSave":Ljava/io/File;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_6

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 635
    .local v4, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v6, "mime_type"

    const-string v14, "image/jpeg"

    invoke-virtual {v5, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v6, "relative_path"

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v5, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 641
    .local v6, "contentUri":Landroid/net/Uri;
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 643
    .local v14, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_5

    .line 647
    invoke-virtual {v4, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v15

    .line 648
    .local v15, "stream":Ljava/io/OutputStream;
    if-eqz v15, :cond_4

    .line 652
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v16, v4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .local v16, "resolver":Landroid/content/ContentResolver;
    iget-object v4, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getQuality()I

    move-result v4

    invoke-virtual {v11, v1, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 654
    .local v1, "inserted":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 655
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    .line 657
    .end local v1    # "inserted":Ljava/lang/Boolean;
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v15    # "stream":Ljava/io/OutputStream;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    goto :goto_2

    .line 649
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v6    # "contentUri":Landroid/net/Uri;
    .restart local v14    # "uri":Landroid/net/Uri;
    .restart local v15    # "stream":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v16, v4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to open output stream."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "saveToGallery":Z
    .end local p1    # "call":Lcom/getcapacitor/PluginCall;
    .end local p3    # "u":Landroid/net/Uri;
    throw v1

    .line 644
    .end local v15    # "stream":Ljava/io/OutputStream;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v10    # "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "saveToGallery":Z
    .restart local p1    # "call":Lcom/getcapacitor/PluginCall;
    .restart local p3    # "u":Landroid/net/Uri;
    :cond_5
    move-object/from16 v16, v4

    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Failed to create new MediaStore record."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "saveToGallery":Z
    .end local p1    # "call":Lcom/getcapacitor/PluginCall;
    .end local p3    # "u":Landroid/net/Uri;
    throw v1

    .line 658
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "contentUri":Landroid/net/Uri;
    .end local v14    # "uri":Landroid/net/Uri;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v10    # "exif":Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "saveToGallery":Z
    .restart local p1    # "call":Lcom/getcapacitor/PluginCall;
    .restart local p3    # "u":Landroid/net/Uri;
    :cond_6
    nop

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 661
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 658
    invoke-static {v1, v0, v4, v5}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "inserted":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 666
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 669
    .end local v0    # "fileToSavePath":Ljava/lang/String;
    .end local v1    # "inserted":Ljava/lang/String;
    .end local v3    # "fileToSave":Ljava/io/File;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1

    .line 672
    :catch_1
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 669
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 670
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    iput-boolean v1, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isSaved:Z

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_2
    nop

    .line 678
    :cond_8
    :goto_3
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getResultType()Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v0

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraResultType;->BASE64:Lcom/capacitorjs/plugins/camera/CameraResultType;

    if-ne v0, v1, :cond_9

    .line 679
    invoke-direct {v7, v8, v10, v12}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->returnBase64(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_4

    .line 680
    :cond_9
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getResultType()Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v0

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraResultType;->URI:Lcom/capacitorjs/plugins/camera/CameraResultType;

    if-ne v0, v1, :cond_a

    .line 681
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->returnFileURI(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_4

    .line 682
    :cond_a
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getResultType()Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v0

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraResultType;->DATAURL:Lcom/capacitorjs/plugins/camera/CameraResultType;

    if-ne v0, v1, :cond_b

    .line 683
    invoke-direct {v7, v8, v10, v12}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->returnDataUrl(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/camera/ExifWrapper;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_4

    .line 685
    :cond_b
    const-string v0, "Invalid resultType option"

    invoke-virtual {v8, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 688
    :goto_4
    iget-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/camera/CameraSettings;->getResultType()Lcom/capacitorjs/plugins/camera/CameraResultType;

    move-result-object v0

    sget-object v1, Lcom/capacitorjs/plugins/camera/CameraResultType;->URI:Lcom/capacitorjs/plugins/camera/CameraResultType;

    if-eq v0, v1, :cond_c

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->deleteImageFile()V

    .line 691
    :cond_c
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    .line 692
    iput-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileUri:Landroid/net/Uri;

    .line 693
    iput-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imagePickedContentUri:Landroid/net/Uri;

    .line 694
    iput-object v0, v7, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageEditedFileSavePath:Ljava/lang/String;

    .line 695
    return-void

    .line 613
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "saveToGallery":Z
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 614
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Unable to process image"

    invoke-virtual {v8, v2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private saveImage(Landroid/net/Uri;Ljava/io/InputStream;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getTempFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 574
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->writePhoto(Ljava/io/File;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_1

    .line 575
    :catch_0
    move-exception v1

    .line 577
    .local v1, "ex":Ljava/io/FileNotFoundException;
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getTempFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 578
    invoke-direct {p0, v0, p2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->writePhoto(Ljava/io/File;Ljava/io/InputStream;)V

    .line 580
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private showCamera(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 189
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "Device doesn\'t have a camera available"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 191
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openCamera(Lcom/getcapacitor/PluginCall;)V

    .line 194
    return-void
.end method

.method private showPhotos(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 197
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openPhotos(Lcom/getcapacitor/PluginCall;)V

    .line 198
    return-void
.end method

.method private showPrompt(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "promptLabelPhoto"

    const-string v2, "From Photos"

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "promptLabelPicture"

    const-string v2, "Take Picture"

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;

    invoke-direct {v1}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;-><init>()V

    .line 171
    .local v1, "fragment":Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;
    const-string v2, "promptLabelHeader"

    const-string v3, "Photo"

    invoke-virtual {p1, v2, v3}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 172
    new-instance v2, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda3;-><init>(Lcom/capacitorjs/plugins/camera/CameraPlugin;Lcom/getcapacitor/PluginCall;)V

    new-instance v3, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin$$ExternalSyntheticLambda4;-><init>(Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->setOptions(Ljava/util/List;Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnSelectedListener;Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment$BottomSheetOnCanceledListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "capacitorModalsActionSheet"

    invoke-virtual {v1, v2, v3}, Lcom/capacitorjs/plugins/camera/CameraBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private writePhoto(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 585
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 587
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 588
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 591
    return-void
.end method


# virtual methods
.method public getLimitedLibraryPhotos(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 147
    const-string v0, "not supported on android"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->unimplemented(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public getPermissionStates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PermissionState;",
            ">;"
        }
    .end annotation

    .line 824
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->getPermissionStates()Ljava/util/Map;

    move-result-object v0

    .line 827
    .local v0, "permissionStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/getcapacitor/PermissionState;>;"
    const-string v1, "camera"

    invoke-virtual {p0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isPermissionDeclared(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    sget-object v2, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_0
    const-string v1, "photos"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 832
    sget-object v2, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 837
    const-string v1, "readExternalStorage"

    .line 838
    .local v1, "alias":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/getcapacitor/PermissionState;

    const-string v3, "saveGallery"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .end local v1    # "alias":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getPhoto(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isEdited:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    .line 131
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->doShow(Lcom/getcapacitor/PluginCall;)V

    .line 132
    return-void
.end method

.method protected handleOnDestroy()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->pickMultipleMedia:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 925
    :cond_1
    return-void
.end method

.method public load()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 125
    return-void
.end method

.method public openCamera(Lcom/getcapacitor/PluginCall;)V
    .locals 6
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 306
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->checkCameraPermissions(Lcom/getcapacitor/PluginCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "appId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/capacitorjs/plugins/camera/CameraUtils;->createImageFile(Landroid/app/Activity;)Ljava/io/File;

    move-result-object v2

    .line 313
    .local v2, "photoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".fileprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileUri:Landroid/net/Uri;

    .line 316
    const-string v4, "output"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    nop

    .line 322
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "photoFile":Ljava/io/File;
    const-string v1, "processCameraImage"

    invoke-virtual {p0, p1, v0, v1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->startActivityForResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Unable to create photo on disk"

    invoke-virtual {p1, v2, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 319
    return-void

    .line 324
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v1, "Unable to resolve camera activity"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 327
    .end local v0    # "takePictureIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method public openPhotos(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openPhotos(Lcom/getcapacitor/PluginCall;Z)V

    .line 331
    return-void
.end method

.method public pickImages(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->openPhotos(Lcom/getcapacitor/PluginCall;Z)V

    .line 138
    return-void
.end method

.method public pickLimitedLibraryPhotos(Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 142
    const-string v0, "not supported on android"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->unimplemented(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public processCameraImage(Lcom/getcapacitor/PluginCall;Landroidx/activity/result/ActivityResult;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "result"    # Landroidx/activity/result/ActivityResult;
    .annotation runtime Lcom/getcapacitor/annotation/ActivityCallback;
    .end annotation

    .line 423
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    .line 424
    iget-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 425
    const-string v0, "Unable to process image, file not found on disk"

    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 426
    return-void

    .line 429
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "f":Ljava/io/File;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 431
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 432
    .local v2, "contentUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 434
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 435
    const-string v4, "User cancelled photos app"

    invoke-virtual {p1, v4}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 436
    return-void

    .line 439
    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->returnResult(Lcom/getcapacitor/PluginCall;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 440
    return-void
.end method

.method public processPickedImage(Lcom/getcapacitor/PluginCall;Landroidx/activity/result/ActivityResult;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "result"    # Landroidx/activity/result/ActivityResult;

    .line 443
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->getSettings(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->settings:Lcom/capacitorjs/plugins/camera/CameraSettings;

    .line 444
    invoke-virtual {p2}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 445
    .local v0, "data":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 446
    const-string v1, "User cancelled photos app"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 447
    return-void

    .line 450
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, "u":Landroid/net/Uri;
    iput-object v1, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imagePickedContentUri:Landroid/net/Uri;

    .line 454
    invoke-direct {p0, v1, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->processPickedImage(Landroid/net/Uri;Lcom/getcapacitor/PluginCall;)V

    .line 455
    return-void
.end method

.method protected requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .locals 3
    .param p1, "aliases"    # [Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;
    .param p3, "callbackName"    # Ljava/lang/String;

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "saveGallery"

    if-lt v0, v1, :cond_2

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 261
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "photos"

    aput-object v1, p1, v0

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_2

    .line 265
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 266
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 267
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    const-string v1, "readExternalStorage"

    aput-object v1, p1, v0

    .line 266
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "i":I
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public requestPermissions(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 798
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->isPermissionDeclared(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    invoke-super {p0, p1}, Lcom/getcapacitor/Plugin;->requestPermissions(Lcom/getcapacitor/PluginCall;)V

    goto :goto_2

    .line 804
    :cond_0
    const-string v1, "permissions"

    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;)Lcom/getcapacitor/JSArray;

    move-result-object v1

    .line 805
    .local v1, "providedPerms":Lcom/getcapacitor/JSArray;
    const/4 v2, 0x0

    .line 806
    .local v2, "permsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 808
    :try_start_0
    invoke-virtual {v1}, Lcom/getcapacitor/JSArray;->toList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 809
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 812
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "photos"

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    :cond_2
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->checkPermissions(Lcom/getcapacitor/PluginCall;)V

    goto :goto_2

    .line 817
    :cond_3
    const-string v0, "saveGallery"

    const-string v3, "checkPermissions"

    invoke-virtual {p0, v0, p1, v3}, Lcom/capacitorjs/plugins/camera/CameraPlugin;->requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 820
    .end local v1    # "providedPerms":Lcom/getcapacitor/JSArray;
    .end local v2    # "permsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void
.end method

.method protected restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .line 908
    const-string v0, "cameraImageFileSavePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "storedImageFileSavePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 910
    iput-object v0, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    .line 912
    :cond_0
    return-void
.end method

.method protected saveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 899
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 900
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 901
    const-string v1, "cameraImageFileSavePath"

    iget-object v2, p0, Lcom/capacitorjs/plugins/camera/CameraPlugin;->imageFileSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    return-object v0
.end method
