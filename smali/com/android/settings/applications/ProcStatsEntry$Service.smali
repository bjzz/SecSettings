.class public final Lcom/android/settings/applications/ProcStatsEntry$Service;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mDuration:J

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field final mProcess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$Service$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsEntry$Service$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 9
    .parameter "service"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget-object v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    .line 224
    iget-object v1, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 225
    iget-object v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    .line 226
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v1, v0

    move-object v2, p1

    move-wide v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 229
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mProcess:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    return-void
.end method
