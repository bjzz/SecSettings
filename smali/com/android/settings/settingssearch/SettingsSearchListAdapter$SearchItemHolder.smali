.class Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;
.super Ljava/lang/Object;
.source "SettingsSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchItemHolder"
.end annotation


# instance fields
.field checkboxMenuType:Landroid/widget/CheckBox;

.field ivMenuIcon:Landroid/widget/ImageView;

.field switchMenuType:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

.field tvMenuSummary:Landroid/widget/TextView;

.field tvMenuTitlte:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/settingssearch/SettingsSearchListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchListAdapter$SearchItemHolder;->this$0:Lcom/android/settings/settingssearch/SettingsSearchListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
