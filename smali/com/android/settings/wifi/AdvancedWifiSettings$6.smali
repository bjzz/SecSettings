.class Lcom/android/settings/wifi/AdvancedWifiSettings$6;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1000(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1139
    return-void
.end method
