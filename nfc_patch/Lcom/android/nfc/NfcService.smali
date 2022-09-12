.field mCookieUpToDate:J

.method public constructor <init>(Landroid/app/Application;)V
    .registers 31
    .param p1, "nfcApplication"  # Landroid/app/Application;

    #在iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mNfcStateCheck:Z上方补充
    .line 405
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    return-void
.end method