.class Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CaptivePortalWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/CaptivePortalWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Dismiss Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 95
    if-eqz p3, :cond_0

    .line 96
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #calls: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->createSslOnErrorDialog(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$300(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 99
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    const-string v1, "shouldoverride"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$000()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #getter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    new-instance v1, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    #setter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #getter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    :goto_0
    const-string v0, "SetupWizard --> CaptivePortalWebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v3

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #getter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #setter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    new-instance v1, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    iget-object v2, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    invoke-direct {v1, v2, v4}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;-><init>(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$1;)V

    #setter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$102(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CustomWebViewClient;->this$0:Lcom/android/settings/wifi/CaptivePortalWebViewActivity;

    #getter for: Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->mCaptiveCheckTask:Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;
    invoke-static {v0}, Lcom/android/settings/wifi/CaptivePortalWebViewActivity;->access$100(Lcom/android/settings/wifi/CaptivePortalWebViewActivity;)Lcom/android/settings/wifi/CaptivePortalWebViewActivity$CaptivePortalCheckTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method