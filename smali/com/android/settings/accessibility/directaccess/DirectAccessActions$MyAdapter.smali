.class Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "DirectAccessActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 827
    const/4 v1, 0x0

    .line 829
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 830
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    .line 832
    .local v0, action:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    :cond_2
    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 845
    .end local v0           #action:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    .locals 6
    .parameter "position"

    .prologue
    .line 859
    const/4 v1, 0x0

    .line 860
    .local v1, filteredPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 861
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    .line 863
    .local v0, action:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 860
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 866
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    :cond_2
    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    if-ne v1, p1, :cond_3

    .line 875
    return-object v0

    .line 877
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    .end local v0           #action:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 825
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 888
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 892
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    .line 893
    .local v0, action:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;
    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessActions;

    #getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
