.class Lcom/android/settings/TetherSettings$3;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-object v0, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    #calls: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;I)V

    .line 567
    return-void
.end method
