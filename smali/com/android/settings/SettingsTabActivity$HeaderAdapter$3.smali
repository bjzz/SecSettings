.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 1665
    if-eqz p1, :cond_1

    const v0, 0x7f0b0449

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1666
    const v0, 0x7f0b0093

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1667
    .local v8, position:I
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    .line 1669
    .local v7, header:Landroid/preference/PreferenceActivity$Header;
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1670
    iget v5, v7, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1671
    .local v5, titleRes:I
    iget v6, v7, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1672
    .local v6, shortTitleRes:I
    if-nez v5, :cond_0

    .line 1673
    iget v5, v7, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1674
    const/4 v6, 0x0

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    #getter for: Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->access$200(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity;

    iget-object v1, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v7, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsTabActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1682
    .end local v5           #titleRes:I
    .end local v6           #shortTitleRes:I
    .end local v7           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v8           #position:I
    :cond_1
    :goto_0
    return-void

    .line 1678
    .restart local v7       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v8       #position:I
    :cond_2
    iget-object v0, v7, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;->this$0:Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    #getter for: Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->access$200(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity;

    iget-object v1, v7, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
