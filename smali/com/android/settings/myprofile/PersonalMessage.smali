.class public Lcom/android/settings/myprofile/PersonalMessage;
.super Landroid/app/Fragment;
.source "PersonalMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field mEditLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.myprofile.MyProfileActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 142
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/myprofile/PersonalMessage;

    .line 143
    .local v1, fragment:Lcom/android/settings/myprofile/PersonalMessage;
    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/settings/myprofile/PersonalMessage;

    .end local v1           #fragment:Lcom/android/settings/myprofile/PersonalMessage;
    invoke-direct {v1}, Lcom/android/settings/myprofile/PersonalMessage;-><init>()V

    .line 145
    .restart local v1       #fragment:Lcom/android/settings/myprofile/PersonalMessage;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 146
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 153
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #fragment:Lcom/android/settings/myprofile/PersonalMessage;
    :goto_0
    return-void

    .line 148
    .restart local v0       #fm:Landroid/app/FragmentManager;
    .restart local v1       #fragment:Lcom/android/settings/myprofile/PersonalMessage;
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 151
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #fragment:Lcom/android/settings/myprofile/PersonalMessage;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    .line 59
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090fde

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    .line 62
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarLayout:Landroid/view/View;

    .line 74
    .end local v0           #padding:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const v1, 0x7f0400f3

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    :goto_0
    const v1, 0x7f0b026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mEditLayout:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v1, p0, Lcom/android/settings/myprofile/PersonalMessage;->mEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object v0

    .line 87
    :cond_0
    const v1, 0x7f0400f2

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 122
    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 128
    .local v0, state:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/myprofile/PersonalMessage;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method
