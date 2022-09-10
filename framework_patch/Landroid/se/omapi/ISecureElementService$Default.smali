.method public isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z
    .registers 5
    .param p1, "reader"  # Ljava/lang/String;
    .param p2, "aid"  # [B
    .param p3, "packageNames"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method