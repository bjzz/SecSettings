.class Lcom/android/settings/SettingsEmergencyActivity$5;
.super Ljava/lang/Object;
.source "SettingsEmergencyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2034
    iput-object p1, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "index"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 2038
    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    .line 2063
    :goto_0
    :pswitch_0
    return-void

    .line 2044
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceBatteryLowHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1600(Lcom/android/settings/SettingsEmergencyActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsEmergencyActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 2051
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceLowMemoryHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1700(Lcom/android/settings/SettingsEmergencyActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsEmergencyActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 2058
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencyActivity$5;->this$0:Lcom/android/settings/SettingsEmergencyActivity;

    #getter for: Lcom/android/settings/SettingsEmergencyActivity;->mGlanceRoamingHeaders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencyActivity;->access$1800(Lcom/android/settings/SettingsEmergencyActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsEmergencyActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 2038
    :pswitch_data_0
    .packed-switch 0x7f0b0635
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method