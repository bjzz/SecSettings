.class Lcom/android/settings/FingerAirViewHelp$7;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;

.field final synthetic val$tutorial_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iput-object p2, p0, Lcom/android/settings/FingerAirViewHelp$7;->val$tutorial_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "information_preview"

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mHelpType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$100(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mIsKMenutree:Z
    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$200(Lcom/android/settings/FingerAirViewHelp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0, v2}, Lcom/android/settings/FingerAirViewHelp;->enableAirViewAndInforPreview(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$400(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$7;->val$tutorial_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/FingerAirViewHelp;->startTryActually(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$7;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$300(Lcom/android/settings/FingerAirViewHelp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
