.method public isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z
    .registers 9
    .param p1, "reader"  # Ljava/lang/String;
    .param p2, "aid"  # [B
    .param p3, "packageNames"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.se.omapi.ISecureElementService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Landroid/se/omapi/ISecureElementService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 228
    .local v2, "_status":Z
    if-eqz v2, :cond_35

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    return-object v3

    .line 233
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move-object v2, v3

    .line 237
    .local v2, "_result":[Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    nop

    .line 240
    return-object v2

    .line 237
    .end local v2  # "_result":[Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw v2
.end method