.class public Lcom/android/settings/dormantmode/DormantModeCustomListDel;
.super Landroid/app/ListFragment;
.source "DormantModeCustomListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private static mlistView:Landroid/widget/ListView;

.field private static selected_id:I


# instance fields
.field builder:Landroid/net/Uri$Builder;

.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mEmptyScreen:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 59
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->builder:Landroid/net/Uri$Builder;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 199
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 200
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 201
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 202
    sget-object v2, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 205
    return-void
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 290
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02011c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 295
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    .locals 3
    .parameter "index"

    .prologue
    .line 63
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;-><init>()V

    .line 65
    .local v1, f:Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "selected_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public customlistdelete()V
    .locals 9

    .prologue
    .line 305
    sget-object v7, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 307
    .local v5, selectedItem:[J
    array-length v7, v5

    if-eqz v7, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 312
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 315
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-wide v7, v5, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 317
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 320
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 322
    :cond_0
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v4, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "dormant"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "custom_list"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 329
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 347
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 336
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 341
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #i:I
    :cond_2
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    .line 113
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mEmptyScreen:Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mCustomListDel:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 122
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0401aa

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    .line 129
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 130
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 131
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 134
    invoke-virtual {p0, v8}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->setHasOptionsMenu(Z)V

    .line 136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->performClick()Z

    .line 195
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->ToggleAllCheck(Z)V

    .line 196
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    .line 77
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 158
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v5, 0x7f090195

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {p1, v2, v3, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    const v0, 0x7f090a6f

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 214
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    .line 215
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    .line 224
    :goto_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 226
    return-void

    .line 217
    :cond_0
    const v0, 0x7f120001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    .line 219
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f090a6f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 220
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    .line 221
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const v0, 0x7f040083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 141
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 143
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 144
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 165
    sget v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    if-eq v0, v4, :cond_1

    .line 166
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    sget v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 167
    sput v4, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->selected_id:I

    .line 168
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 169
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 170
    :cond_0
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 172
    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 175
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 179
    :cond_2
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mButtonSellectAll:Landroid/view/View;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 275
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 263
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->customlistdelete()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 271
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
        0x7f0b0672 -> :sswitch_1
        0x7f0b0673 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 103
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 104
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f02011e

    const v5, 0x7f02011c

    const v4, 0x7f020118

    const/4 v3, 0x0

    .line 230
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 234
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 237
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 238
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 240
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 244
    :cond_2
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 248
    :cond_3
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 249
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 252
    :cond_4
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 90
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    .line 92
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 94
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 98
    :cond_0
    return-void
.end method
