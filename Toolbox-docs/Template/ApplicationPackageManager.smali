.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;


# virtual methods
.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosAttestationBL(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 5

    sget-object v0, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriosFeatures(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method
