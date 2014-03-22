.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
.super Landroid/os/AsyncTask;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private isCaptive:Z

.field private isWiFiConnAvailable:Z

.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 64
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isWiFiConnAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectivityUtils;->isCaptivePortalNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    .line 68
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isWiFiConnAvailable:Z

    if-nez v0, :cond_0

    .line 45
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Internet connection Unavilable "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->isCaptive:Z

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, "Page is still captive portal, doing nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, " Has Internet connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
