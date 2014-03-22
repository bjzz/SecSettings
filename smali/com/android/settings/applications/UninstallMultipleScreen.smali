.class public Lcom/android/settings/applications/UninstallMultipleScreen;
.super Landroid/app/Activity;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/content/pm/IPackageDeleteObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;,
        Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;,
        Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final UNINSTALL_COMPLETE:I

.field private mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

.field private mAppListView:Landroid/widget/ListView;

.field private mDone:Landroid/view/MenuItem;

.field private mDownloadedAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private volatile mResultCode:I

.field private mSelectAllButton:Landroid/widget/CheckBox;

.field private selectedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uninstallPkgCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mResultCode:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->UNINSTALL_COMPLETE:I

    .line 69
    const-string v0, "UninstallMultipleScreen"

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->uninstallPkgCount:I

    .line 172
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$2;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    .line 260
    return-void
.end method

.method private UninstallPackages(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 192
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    .line 193
    .local v0, observer:Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/applications/UninstallMultipleScreen;->UninstallPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    return-object v0
.end method

.method private getInstalledApps()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v4, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 245
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 246
    .local v2, p:Landroid/content/pm/PackageInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 244
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    new-instance v1, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    .line 250
    .local v1, newInfo:Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$902(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$802(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionName:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$1002(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    #setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionCode:I
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$1102(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;I)I

    .line 254
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    #setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$1202(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v1           #newInfo:Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .end local v2           #p:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method

.method private showConfirmationDialog()V
    .locals 6

    .prologue
    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090034

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900cd

    new-instance v3, Lcom/android/settings/applications/UninstallMultipleScreen$4;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$4;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090195

    new-instance v3, Lcom/android/settings/applications/UninstallMultipleScreen$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$3;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 234
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f0401ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 90
    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 92
    const v0, 0x7f0b0484

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getInstalledApps()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090033

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/applications/UninstallMultipleScreen$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$1;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 133
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const v1, 0x7f0b067d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;

    .line 135
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->showConfirmationDialog()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b067c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    return-void
.end method
