.class Lcom/android/settings/PenAirViewEnabler$4;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler$4;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$4;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->updateSwitch()V

    return-void
.end method