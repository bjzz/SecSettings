.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "MenuPowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 106
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #calls: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V
    invoke-static {v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
