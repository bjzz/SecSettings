.class Lcom/android/settings/wifi/WifiSettings$28;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 3241
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 3243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiVzwDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$28;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mVzwDialog:Lcom/android/settings/wifi/WifiVzwDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2102(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiVzwDialog;)Lcom/android/settings/wifi/WifiVzwDialog;

    .line 3267
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 3268
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 3269
    sput v2, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    .line 3270
    sput v2, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 3271
    sput v2, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 3272
    const-string v0, "WifiSettings"

    const-string v1, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_0
    return-void
.end method
