.class Lcom/android/settings/LaunchApplication$DefaultAppPreference;
.super Landroid/preference/Preference;
.source "LaunchApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LaunchApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAppPreference"
.end annotation


# instance fields
.field packageName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/LaunchApplication;


# direct methods
.method public constructor <init>(Lcom/android/settings/LaunchApplication;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040126

    invoke-virtual {p0, v0}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setLayoutResource(I)V

    invoke-virtual {p0, p3}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p5, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0b02e6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v3, v3, Lcom/android/settings/LaunchApplication;->mClearClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    invoke-virtual {v3}, Lcom/android/settings/LaunchApplication;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    const-string v4, "com.sec.android.kiosk"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const v3, 0x7f0b02e5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->this$0:Lcom/android/settings/LaunchApplication;

    iget-object v3, v3, Lcom/android/settings/LaunchApplication;->mApplicationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/LaunchApplication$DefaultAppPreference;->packageName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
