.class final Lcom/android/settings/applications/AppOpsState$OpsTemplate$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState$OpsTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .locals 1
    .parameter "source"

    .prologue
    .line 101
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsState$OpsTemplate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .locals 1
    .parameter "size"

    .prologue
    .line 105
    new-array v0, p1, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppOpsState$OpsTemplate$1;->newArray(I)[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method
