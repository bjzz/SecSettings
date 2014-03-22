.class public Lcom/android/settings/motion/MotionView;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAcceptAnimationImage:[I

.field private mAirClipAnimationImage:[I

.field private mAirGlanceViewAnimationImage:[I

.field private mAirItemMoveAnimationImage:[I

.field private mAirMotionScrollAnimationImage:[I

.field private mAirNoteSwapAnimationImage:[I

.field private mAirWebNavigateAnimationImage:[I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCameraShortCutDialog:Landroid/app/AlertDialog;

.field private mCurrentDB:Ljava/lang/String;

.field private mCurrentMotion:I

.field private mCurrentText:Ljava/lang/String;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOutAnimationImage:[I

.field private mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTitle:Ljava/lang/String;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorial:Landroid/preference/Preference;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 102
    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 103
    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 104
    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 107
    iput v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 108
    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    .line 113
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    .line 115
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUnlockCameraShortCut:[I

    .line 121
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    .line 125
    new-array v0, v3, [I

    const v1, 0x7f0205fc

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    .line 126
    new-array v0, v3, [I

    const v1, 0x7f0205fc

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    .line 127
    new-array v0, v3, [I

    const v1, 0x7f0205fc

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    .line 130
    new-array v0, v3, [I

    const v1, 0x7f0200c3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    .line 131
    new-array v0, v3, [I

    const v1, 0x7f020025

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    .line 132
    new-array v0, v3, [I

    const v1, 0x7f020025

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    .line 133
    new-array v0, v3, [I

    const v1, 0x7f020021

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    .line 134
    new-array v0, v3, [I

    const v1, 0x7f020025

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirItemMoveAnimationImage:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x7f020018

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirClipAnimationImage:[I

    .line 136
    new-array v0, v3, [I

    const v1, 0x7f020017

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    .line 142
    new-instance v0, Lcom/android/settings/motion/MotionView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionView$1;-><init>(Lcom/android/settings/motion/MotionView;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 111
    nop

    :array_0
    .array-data 0x4
        0x37t 0x3t 0x2t 0x7ft
        0x38t 0x3t 0x2t 0x7ft
        0x39t 0x3t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_1
    .array-data 0x4
        0x57t 0x3t 0x2t 0x7ft
        0x58t 0x3t 0x2t 0x7ft
        0x59t 0x3t 0x2t 0x7ft
        0x5at 0x3t 0x2t 0x7ft
        0x5bt 0x3t 0x2t 0x7ft
    .end array-data

    .line 113
    :array_2
    .array-data 0x4
        0x33t 0x3t 0x2t 0x7ft
        0x34t 0x3t 0x2t 0x7ft
        0x35t 0x3t 0x2t 0x7ft
        0x36t 0x3t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0x23t 0x3t 0x2t 0x7ft
        0x24t 0x3t 0x2t 0x7ft
        0x25t 0x3t 0x2t 0x7ft
        0x26t 0x3t 0x2t 0x7ft
        0x27t 0x3t 0x2t 0x7ft
        0x28t 0x3t 0x2t 0x7ft
        0x29t 0x3t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_4
    .array-data 0x4
        0x44t 0x3t 0x2t 0x7ft
        0x45t 0x3t 0x2t 0x7ft
        0x44t 0x3t 0x2t 0x7ft
        0x45t 0x3t 0x2t 0x7ft
    .end array-data

    .line 116
    :array_5
    .array-data 0x4
        0x2ct 0x3t 0x2t 0x7ft
        0x2dt 0x3t 0x2t 0x7ft
        0x2ct 0x3t 0x2t 0x7ft
        0x2dt 0x3t 0x2t 0x7ft
    .end array-data

    .line 117
    :array_6
    .array-data 0x4
        0x3dt 0x3t 0x2t 0x7ft
        0x3et 0x3t 0x2t 0x7ft
        0x3ft 0x3t 0x2t 0x7ft
    .end array-data

    .line 118
    :array_7
    .array-data 0x4
        0x60t 0x3t 0x2t 0x7ft
        0x61t 0x3t 0x2t 0x7ft
        0x62t 0x3t 0x2t 0x7ft
    .end array-data

    .line 119
    :array_8
    .array-data 0x4
        0x30t 0x3t 0x2t 0x7ft
        0x31t 0x3t 0x2t 0x7ft
        0x32t 0x3t 0x2t 0x7ft
    .end array-data

    .line 120
    :array_9
    .array-data 0x4
        0x42t 0x3t 0x2t 0x7ft
        0x43t 0x3t 0x2t 0x7ft
    .end array-data

    .line 121
    :array_a
    .array-data 0x4
        0x52t 0x3t 0x2t 0x7ft
        0x53t 0x3t 0x2t 0x7ft
        0x54t 0x3t 0x2t 0x7ft
        0x55t 0x3t 0x2t 0x7ft
    .end array-data

    .line 122
    :array_b
    .array-data 0x4
        0x4at 0x3t 0x2t 0x7ft
        0x4bt 0x3t 0x2t 0x7ft
        0x4ct 0x3t 0x2t 0x7ft
        0x4dt 0x3t 0x2t 0x7ft
        0x4et 0x3t 0x2t 0x7ft
        0x4ft 0x3t 0x2t 0x7ft
        0x50t 0x3t 0x2t 0x7ft
        0x51t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/motion/MotionView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionView;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startTryActually()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private setArguments()V
    .locals 9

    .prologue
    const v8, 0x7f090e65

    const v7, 0x7f090e64

    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 519
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    .line 520
    const-string v2, "sensitivity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 521
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    .line 527
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 531
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 533
    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 546
    const-string v0, "MotionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e44

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    const/16 v0, 0x44d

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 550
    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToZoomAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 552
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e6b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 691
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 692
    const-string v0, "sensitivity_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 693
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sensitivity_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    iget v1, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/SensitivityPreference;->setMotion(I)V

    .line 700
    :cond_3
    return-void

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e45

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    const/16 v0, 0x44e

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 556
    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTiltToScrollListAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 558
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e47

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 561
    const/16 v0, 0x4b2

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 562
    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 564
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 565
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 569
    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e46

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 570
    const/16 v0, 0x4b1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 571
    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 573
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 574
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 576
    :cond_8
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e48

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 579
    const/16 v0, 0x515

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 580
    const-string v0, "motion_shake"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mShakeToUpdateAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 583
    const/4 v0, 0x1

    .line 585
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.swift.app.kiesair"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_1
    if-eqz v0, :cond_a

    .line 590
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 593
    :goto_2
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e66

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 586
    :catch_0
    move-exception v0

    move v0, v1

    .line 587
    goto :goto_1

    .line 592
    :cond_a
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e70

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_2

    .line 594
    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e49

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 595
    const/16 v0, 0x579

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 596
    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 598
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e73

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e67

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 600
    :cond_c
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e4a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 601
    const/16 v0, 0x5dd

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 602
    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 605
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 606
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e75

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 610
    :goto_3
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e68

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 609
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e75

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e76

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    goto :goto_3

    .line 611
    :cond_e
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e4b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 612
    const/16 v0, 0x641

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 613
    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTurnOverToMuteAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 615
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e77

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e6a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 617
    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e86

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 618
    const/16 v0, 0x5de

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 619
    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mPickUpToCallOutAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 621
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e69

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 623
    :cond_10
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ea4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 624
    const/16 v0, 0x6a5

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 625
    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUnlockCameraShortCut:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 627
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ea8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090ea7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 629
    :cond_11
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e8e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 630
    const/16 v0, 0x709

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 631
    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 633
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e97

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e96

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 635
    :cond_12
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e90

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 636
    const/16 v0, 0x70a

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 637
    const-string v0, "surface_palm_touch"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfacePalmTouchAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 639
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e99

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e98

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 641
    :cond_13
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090e94

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 642
    const/16 v0, 0x70b

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 643
    const-string v0, "surface_tap_and_twist"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 645
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090e9c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090e9b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 647
    :cond_14
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ee3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 648
    const/16 v0, 0x76d

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 649
    const-string v0, "air_motion_glance_view"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirGlanceViewAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 651
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ee4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090efe

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 653
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ee5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 654
    const/16 v0, 0x76e

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 655
    const-string v0, "air_motion_web_navigate"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirWebNavigateAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 657
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ee6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f00

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 659
    :cond_16
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ee7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 660
    const/16 v0, 0x76f

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 661
    const-string v0, "air_motion_note_swap"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirNoteSwapAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 663
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ee8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f01

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 665
    :cond_17
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ee9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 666
    const/16 v0, 0x770

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 667
    const-string v0, "air_motion_scroll"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 668
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirMotionScrollAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 669
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f02

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 671
    :cond_18
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090eed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 672
    const/16 v0, 0x771

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 673
    const-string v0, "air_motion_item_move"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirItemMoveAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 675
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090eee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f07

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 677
    :cond_19
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ef0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 678
    const/16 v0, 0x772

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 679
    const-string v0, "air_motion_clip"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirClipAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 681
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f12

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 683
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090ef3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    const/16 v0, 0x773

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 685
    const-string v0, "air_motion_call_accept"

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAirCallAcceptAnimationImage:[I

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    .line 687
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ef4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    const v1, 0x7f090f15

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0
.end method

.method private showCameraShortCutDialog()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090ea6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e41

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion/MotionView$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$2;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090195

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 266
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionView$3;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 271
    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e85

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e84

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090e83

    new-instance v3, Lcom/android/settings/motion/MotionView$4;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionView$4;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090195

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 298
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionView$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$5;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 304
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 347
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e81

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e80

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09079f

    new-instance v2, Lcom/android/settings/motion/MotionView$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$9;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e82

    new-instance v2, Lcom/android/settings/motion/MotionView$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionView$8;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 364
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionView$10;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionView$10;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 370
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 504
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 374
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_1

    .line 375
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v2, "MotionTest"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 457
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x44e

    if-ne v2, v3, :cond_3

    .line 381
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 382
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    :goto_1
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 385
    :cond_2
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 388
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_4

    .line 389
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 390
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 392
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x4b2

    if-ne v2, v3, :cond_5

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v2, "MotionTest"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 398
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x515

    if-ne v2, v3, :cond_6

    .line 406
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 407
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 409
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x579

    if-ne v2, v3, :cond_8

    .line 410
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 411
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 412
    const-string v2, "com.android.jcontacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :goto_2
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 414
    :cond_7
    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 417
    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5dd

    if-ne v2, v3, :cond_9

    .line 418
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 419
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 421
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x5de

    if-ne v2, v3, :cond_a

    .line 422
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 423
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 425
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x6a5

    if-ne v2, v3, :cond_b

    .line 426
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 427
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 429
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x641

    if-ne v2, v3, :cond_d

    .line 430
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 431
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v6, :cond_c

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 432
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showUseRingDialog()V

    goto/16 :goto_0

    .line 434
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/motion/MotionView;->startTryActually(Z)V

    goto/16 :goto_0

    .line 436
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_d
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x709

    if-eq v2, v3, :cond_0

    .line 438
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70a

    if-eq v2, v3, :cond_0

    .line 440
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x70b

    if-eq v2, v3, :cond_0

    .line 442
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76d

    if-ne v2, v3, :cond_e

    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto glance view try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 444
    :cond_e
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76e

    if-ne v2, v3, :cond_f

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air web navigate try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 446
    :cond_f
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x76f

    if-ne v2, v3, :cond_10

    .line 447
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air note swap try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 448
    :cond_10
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x770

    if-ne v2, v3, :cond_11

    .line 449
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air scroll try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 450
    :cond_11
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x771

    if-ne v2, v3, :cond_12

    .line 451
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air item move try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 452
    :cond_12
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x772

    if-ne v2, v3, :cond_13

    .line 453
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air clip try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 454
    :cond_13
    iget v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v3, 0x773

    if-ne v2, v3, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "goto air call accept try view"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter "useRing"

    .prologue
    .line 460
    iget v1, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v2, 0x641

    if-ne v1, v2, :cond_0

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 466
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const-string v0, "MotionView"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 470
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 477
    :cond_2
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    .line 479
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    .line 481
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 484
    :cond_3
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v1, 0x579

    if-ne v0, v1, :cond_5

    .line 485
    iget v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 486
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 234
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 236
    return-void
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 705
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 709
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mMotionDialog:Landroid/app/AlertDialog;

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 713
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 717
    iput-object v1, p0, Lcom/android/settings/motion/MotionView;->mCameraShortCutDialog:Landroid/app/AlertDialog;

    .line 720
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->setArguments()V

    .line 169
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 217
    const-string v0, "MotionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 221
    :pswitch_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0}, Lcom/android/settings/motion/SensitivityPreference;->showTutorialDialog()V

    goto :goto_0

    .line 226
    :pswitch_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    const-string v3, "MotionView"

    const-string v4, "onCheckChanged"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v3, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    const/16 v4, 0x6a5

    if-ne v3, v4, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "master_motion"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    .local v0, motionState:I
    if-nez v0, :cond_1

    .line 179
    if-ne p2, v1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->showCameraShortCutDialog()V

    .line 187
    .end local v0           #motionState:I
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v1, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 184
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    .line 159
    const-string v0, "sensitivity"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/motion/SensitivityPreference;

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mSensitivity:Lcom/android/settings/motion/SensitivityPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/motion/SensitivityPreference;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 161
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/motion/MotionView;->mCurrentMotion:I

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->stopAnimation()V

    .line 213
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->showGuideDialog()V

    .line 245
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateCheckedUI()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->updateAnimation()V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/motion/MotionView;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionView;->allDialogDismiss()V

    .line 312
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 313
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040073

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 314
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b007e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 315
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b014f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mAnimationView:Landroid/widget/ImageView;

    .line 317
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mTutorial:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    const v4, 0x7f090e7a

    new-instance v5, Lcom/android/settings/motion/MotionView$6;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$6;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090195

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    .line 336
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 337
    iget-object v4, p0, Lcom/android/settings/motion/MotionView;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/MotionView$7;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionView$7;-><init>(Lcom/android/settings/motion/MotionView;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/motion/MotionView;->startAnimation()V

    .line 343
    return-void
.end method
