.class public Lcom/android/settings/infamous/Device;
.super Landroid/preference/PreferenceActivity;
.source "Device.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 0
    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/android/settings/infamous/Device;->addPreferencesFromResource(I)V

    return-void
.end method
