.class public Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickGlanceAdvancedSettings.java"


# instance fields
.field private mBattery:Landroid/preference/CheckBoxPreference;

.field private mCurrentMusic:Landroid/preference/CheckBoxPreference;

.field private mMissedCall:Landroid/preference/CheckBoxPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUnreadMessage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700b9

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->addPreferencesFromResource(I)V

    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mBattery:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mMissedCall:Landroid/preference/CheckBoxPreference;

    const-string v0, "unread_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    const-string v0, "current_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_notification"

    iget-object v4, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mBattery:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "glance_view_battery_charging_info"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mNotification:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "glance_view_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mMissedCall:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "glance_view_missed_call"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "glance_view_new_message"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "glance_view_now_playing_music"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method
