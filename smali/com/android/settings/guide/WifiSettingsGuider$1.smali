.class Lcom/android/settings/guide/WifiSettingsGuider$1;
.super Landroid/os/Handler;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/WifiSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    #getter for: Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->access$000(Lcom/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
