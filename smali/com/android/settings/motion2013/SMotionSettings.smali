.class public Lcom/android/settings/motion2013/SMotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

.field private airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

.field private mAirCommand:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionObserver:Landroid/database/ContentObserver;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandMotionObserver:Landroid/database/ContentObserver;

.field private mMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSideMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mSideMotionObserver:Landroid/database/ContentObserver;

.field private mSurface:Landroid/preference/SwitchPreferenceScreen;

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 65
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 66
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 67
    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 78
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionSettings$1;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$2;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    .line 104
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$3;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$4;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    .line 118
    new-instance v0, Lcom/android/settings/motion2013/SMotionSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$5;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/SMotionSettings;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionSettings;->showGuideDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    return-void
.end method

.method private broadcastAirMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 468
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 472
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 476
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 478
    :cond_2
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 562
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e92

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e91

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$13;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$12;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 579
    return-void
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 432
    move-object v0, p3

    .line 433
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/motion2013/SMotionSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/motion2013/SMotionSettings$11;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 462
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 463
    return-void
.end method

.method private showGuideDialog(Z)V
    .locals 15
    .parameter "showagain_checkbox_flag"

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 347
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040074

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 348
    .local v4, layout:Landroid/view/View;
    const v10, 0x7f0b007e

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 349
    .local v5, message:Landroid/widget/TextView;
    const v10, 0x7f0b014f

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 350
    .local v2, image:Landroid/widget/ImageView;
    const v10, 0x7f0b0147

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 351
    .local v1, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 352
    if-eqz p1, :cond_0

    .line 353
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 355
    :cond_0
    const v10, 0x7f0204ce

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 357
    .local v9, res:Landroid/content/res/Resources;
    const v10, 0x7f0e0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 358
    .local v8, proper_distance:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090efa

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090efc

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090efb

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, original_str:Ljava/lang/String;
    const-string v10, "ja"

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f090efa

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090efc

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f090efb

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 366
    :cond_1
    const v10, 0x7f02001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 367
    .local v6, message_str:Landroid/text/SpannableString;
    if-eqz v6, :cond_2

    .line 368
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v10, 0x7f090ef8

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 374
    const v10, 0x7f09079f

    new-instance v11, Lcom/android/settings/motion2013/SMotionSettings$7;

    invoke-direct {v11, p0, v1}, Lcom/android/settings/motion2013/SMotionSettings$7;-><init>(Lcom/android/settings/motion2013/SMotionSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 385
    iget-object v10, p0, Lcom/android/settings/motion2013/SMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 386
    return-void

    .line 370
    :cond_2
    const v10, 0x7f090ef9

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090ee1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090ee0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$9;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/motion2013/SMotionSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionSettings$8;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 418
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 420
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$10;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 427
    return-void
.end method


# virtual methods
.method public isAllAirMotionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 482
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 483
    .local v5, quickGlance:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 484
    .local v2, airScroll:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 485
    .local v3, airTurn:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 486
    .local v0, airMove:I
    const/4 v1, 0x0

    .line 488
    .local v1, airPin:I
    iget-object v8, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 490
    .local v4, callAccept:I
    or-int v8, v5, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v0

    or-int/2addr v8, v1

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public isAllHandMotionDisabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 527
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 530
    .local v0, palmSwipe:I
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, palmTouch:I
    const/4 v2, 0x0

    .line 535
    .local v2, tapAndTwist:I
    or-int v5, v0, v1

    or-int/2addr v5, v2

    if-ge v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public isAllMotionDisabled()Z
    .locals 17

    .prologue
    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 496
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 497
    .local v3, isTablet:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 499
    .local v4, isVoiceCapable:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_zooming"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 501
    .local v12, tiltZoom:I
    const/4 v11, 0x0

    .line 503
    .local v11, tiltScroll:I
    const/4 v6, 0x0

    .line 505
    .local v6, panMove:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pan_to_browse_image"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 507
    .local v5, panBrowse:I
    const/4 v9, 0x0

    .line 509
    .local v9, shake:I
    const/4 v2, 0x0

    .line 511
    .local v2, doubleTap:I
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 513
    .local v10, smartAlert:I
    :goto_0
    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_pick_up_to_call_out"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 515
    .local v1, directCall:I
    :goto_1
    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "motion_overturn"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 517
    .local v13, turnover:I
    :goto_2
    const/4 v8, 0x0

    .line 519
    .local v8, peekViewAlbumsList:I
    const/4 v7, 0x0

    .line 522
    .local v7, peekChapterPreview:I
    or-int v14, v12, v11

    or-int/2addr v14, v6

    or-int/2addr v14, v5

    or-int/2addr v14, v9

    or-int/2addr v14, v2

    or-int/2addr v14, v10

    or-int/2addr v14, v1

    or-int/2addr v14, v13

    or-int/2addr v14, v8

    or-int/2addr v14, v7

    const/4 v15, 0x1

    if-ge v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_3
    return v14

    .line 511
    .end local v1           #directCall:I
    .end local v7           #peekChapterPreview:I
    .end local v8           #peekViewAlbumsList:I
    .end local v10           #smartAlert:I
    .end local v13           #turnover:I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 513
    .restart local v10       #smartAlert:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 515
    .restart local v1       #directCall:I
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 522
    .restart local v7       #peekChapterPreview:I
    .restart local v8       #peekViewAlbumsList:I
    .restart local v13       #turnover:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_3
.end method

.method public isAllSideMotionDisabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 540
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_one_hand_operation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 541
    .local v0, oneHandOperation:I
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "side_motion_peek"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 542
    .local v1, peek:I
    or-int v4, v0, v1

    if-ge v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/SMotionSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionSettings$6;-><init>(Lcom/android/settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v4, 0x7f07009b

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->addPreferencesFromResource(I)V

    .line 131
    const-string v4, "air_motion"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 132
    const-string v4, "motion"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    const-string v4, "surface"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v4, "side_motion"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 135
    const-string v4, "air_view_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 136
    const-string v4, "header_air_command"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    .line 138
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    new-instance v4, Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/AirViewPreferenceEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    .line 143
    new-instance v4, Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v4, v5, v6}, Lcom/android/settings/AirCmdPreferenceEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 154
    .local v1, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    const v5, 0x7f090e3d

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirCommand:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 183
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mOpenDetailMenu:Z

    if-eqz v4, :cond_5

    sget v4, Lcom/android/settings/motion2013/SMotionSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, targetKey:Ljava/lang/String;
    sget v4, Lcom/android/settings/motion2013/SMotionSettings;->mSettingValue:I

    if-ne v4, v3, :cond_6

    .line 187
    .local v3, value:Z
    :goto_0
    const-string v4, "air_motion"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 189
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/SMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 201
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v2           #targetKey:Ljava/lang/String;
    .end local v3           #value:Z
    :cond_5
    :goto_1
    return-void

    .line 186
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v2       #targetKey:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    .restart local v3       #value:Z
    :cond_7
    const-string v4, "motion"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 191
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/SMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_8
    const-string v4, "surface"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 195
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2013/SMotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 228
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->dismissAllDialog()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->pause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->pause()V

    .line 233
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const v8, 0x7f090e8b

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v7, 0x7f090e80

    .line 273
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v4, p2

    .line 274
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    .line 275
    .local v3, value:I
    :goto_0
    const-string v4, "air_motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->showTalkBackDisableDialog()V

    .line 337
    .end local p2
    :cond_0
    :goto_1
    return v5

    .end local v3           #value:I
    .restart local p2
    :cond_1
    move v3, v6

    .line 274
    goto :goto_0

    .line 278
    .restart local v3       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllAirMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 283
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_engine"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v4, p2

    .line 286
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V

    .line 287
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 289
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "pref_air_motion_sensor_noti"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 290
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0, v5}, Lcom/android/settings/motion2013/SMotionSettings;->showGuideDialog(Z)V

    goto :goto_1

    .line 295
    .end local v0           #do_not_show_again:Z
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    .restart local p2
    :cond_4
    const-string v4, "motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 296
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 300
    const v4, 0x7f090e3f

    invoke-direct {p0, v7, v4, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto :goto_1

    .line 306
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 309
    .restart local p2
    :cond_7
    const-string v4, "surface"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 312
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionSettings;->makeTalkBackDisablePopup()V

    .line 314
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllHandMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 320
    invoke-direct {p0, v7, v8, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "surface_motion_engine"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 324
    .restart local p2
    :cond_a
    const-string v4, "side_motion"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->isAllSideMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 327
    const v4, 0x7f090eb1

    invoke-direct {p0, v7, v4, v1}, Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 329
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_side_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 333
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_side_motion"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 206
    const-string v0, "SMotionSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 210
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 211
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_motion"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 212
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "master_side_motion"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "master_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "master_side_motion"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airViewEnabler:Lcom/android/settings/AirViewPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewPreferenceEnabler;->resume()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings;->airCmdEnabler:Lcom/android/settings/AirCmdPreferenceEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCmdPreferenceEnabler;->resume()V

    .line 223
    return-void

    :cond_1
    move v0, v2

    .line 210
    goto :goto_0

    :cond_2
    move v0, v2

    .line 211
    goto :goto_1

    :cond_3
    move v0, v2

    .line 212
    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mAirMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mHandMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings;->mSideMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    return-void
.end method
