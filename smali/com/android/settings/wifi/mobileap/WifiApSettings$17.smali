.class Lcom/android/settings/wifi/mobileap/WifiApSettings$17;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1268
    return-void
.end method