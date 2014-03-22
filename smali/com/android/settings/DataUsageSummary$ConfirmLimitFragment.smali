.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2395
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 14
    .parameter "parent"

    .prologue
    .line 2400
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2451
    :goto_0
    return-void

    .line 2402
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2404
    .local v9, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v10

    #getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v10

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a

    mul-float/2addr v10, v11

    float-to-long v7, v10

    .line 2409
    .local v7, minLimitBytes:J
    const/4 v2, 0x5

    .line 2410
    .local v2, defaultLimitGB:I
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v2, 0x50

    .line 2413
    :cond_1
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3800()Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v2, 0x64

    .line 2417
    :cond_2
    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2418
    .local v1, currentTab:Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2419
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3100()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2420
    :cond_3
    const v10, 0x7f09139f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2424
    .local v6, message:Ljava/lang/CharSequence;
    :goto_1
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2443
    .local v4, limitBytes:J
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2444
    .local v0, args:Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2445
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2447
    new-instance v3, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2448
    .local v3, dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2449
    const/4 v10, 0x0

    invoke-virtual {v3, p0, v10}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2450
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v3, v10, v11}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2422
    .end local v0           #args:Landroid/os/Bundle;
    .end local v3           #dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_4
    const v10, 0x7f090af4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_1

    .line 2425
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_5
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2426
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3100()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2427
    :cond_6
    const v10, 0x7f09139f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2431
    .restart local v6       #message:Ljava/lang/CharSequence;
    :goto_3
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_2

    .line 2429
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_7
    const v10, 0x7f090af4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_3

    .line 2432
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_8
    const-string v10, "mobile"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2433
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3100()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2434
    :cond_9
    const v10, 0x7f09139f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2438
    .restart local v6       #message:Ljava/lang/CharSequence;
    :goto_4
    int-to-long v10, v2

    const-wide/32 v12, 0x40000000

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4       #limitBytes:J
    goto :goto_2

    .line 2436
    .end local v4           #limitBytes:J
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_a
    const v10, 0x7f090af4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #message:Ljava/lang/CharSequence;
    goto :goto_4

    .line 2440
    .end local v6           #message:Ljava/lang/CharSequence;
    :cond_b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 2464
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2466
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2467
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2469
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2471
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3100()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3700()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2472
    :cond_0
    const v5, 0x7f09139e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2477
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2479
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 2474
    :cond_1
    const v5, 0x7f090af2

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
