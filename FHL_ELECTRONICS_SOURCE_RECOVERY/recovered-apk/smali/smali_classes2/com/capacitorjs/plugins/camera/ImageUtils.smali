.class public Lcom/capacitorjs/plugins/camera/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctOrientation(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/capacitorjs/plugins/camera/ExifWrapper;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "exif"    # Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0, p2}, Lcom/capacitorjs/plugins/camera/ImageUtils;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 76
    .local v0, "orientation":I
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v1, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 79
    invoke-virtual {p3}, Lcom/capacitorjs/plugins/camera/ExifWrapper;->resetOrientation()V

    .line 80
    invoke-static {p1, v1}, Lcom/capacitorjs/plugins/camera/ImageUtils;->transform(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-object p1
.end method

.method public static getExifData(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Lcom/capacitorjs/plugins/camera/ExifWrapper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 110
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 112
    .local v1, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    new-instance v2, Lcom/capacitorjs/plugins/camera/ExifWrapper;

    invoke-direct {v2, v1}, Lcom/capacitorjs/plugins/camera/ExifWrapper;-><init>(Landroidx/exifinterface/media/ExifInterface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v0, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 112
    :cond_0
    :goto_1
    return-object v2

    .line 116
    .end local v1    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 113
    :catch_1
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Error loading exif data from image"

    invoke-static {v2, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v1    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 118
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 119
    :goto_2
    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    .line 122
    :cond_1
    :goto_3
    new-instance v1, Lcom/capacitorjs/plugins/camera/ExifWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/capacitorjs/plugins/camera/ExifWrapper;-><init>(Landroidx/exifinterface/media/ExifInterface;)V

    return-object v1

    .line 116
    :goto_4
    if-eqz v0, :cond_2

    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 119
    :goto_5
    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_5

    .line 121
    :cond_2
    :goto_6
    throw v1
.end method

.method private static getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 90
    .local v1, "iStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v2, "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v3, "orientation":I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 95
    const/16 v0, 0x5a

    goto :goto_0

    .line 96
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 97
    const/16 v0, 0xb4

    goto :goto_0

    .line 98
    :cond_1
    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 99
    const/16 v0, 0x10e

    .line 101
    .end local v2    # "exifInterface":Landroidx/exifinterface/media/ExifInterface;
    .end local v3    # "orientation":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 103
    .end local v1    # "iStream":Ljava/io/InputStream;
    :cond_3
    return v0

    .line 89
    .restart local v1    # "iStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2
.end method

.method public static resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "desiredMaxWidth"    # I
    .param p2, "desiredMaxHeight"    # I

    .line 26
    invoke-static {p0, p1, p2}, Lcom/capacitorjs/plugins/camera/ImageUtils;->resizePreservingAspectRatio(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static resizePreservingAspectRatio(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "desiredMaxWidth"    # I
    .param p2, "desiredMaxHeight"    # I

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 39
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 42
    .local v1, "height":I
    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p2

    .line 43
    .local v2, "maxHeight":I
    :goto_0
    if-nez p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, p1

    .line 46
    .local v3, "maxWidth":I
    :goto_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    .line 47
    .local v4, "newWidth":F
    int-to-float v5, v1

    mul-float v5, v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 49
    .local v5, "newHeight":F
    int-to-float v6, v2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 50
    mul-int v6, v0, v2

    div-int/2addr v6, v1

    int-to-float v4, v6

    .line 51
    int-to-float v5, v2

    .line 53
    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method private static transform(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 63
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
