!!  - GDALDataTypeUnion() -> FUNCTION gdaldatatypeunion()
!!  - GDALGetDataTypeSize() -> FUNCTION gdalgetdatatypesize()
!!  - GDALDataTypeIsComplex() -> FUNCTION gdaldatatypeiscomplex()
!!  - GDALGetDataTypeName() -> FUNCTION gdalgetdatatypename()
!!  - GDALGetDataTypeByName() -> FUNCTION gdalgetdatatypebyname()
!!  - GDALGetPaletteInterpretationName() -> FUNCTION gdalgetpaletteinterpretationname()
!!  - GDALGetColorInterpretationName() -> FUNCTION gdalgetcolorinterpretationname()
!!  - GDALGetColorInterpretationByName() -> FUNCTION gdalgetcolorinterpretationbyname()
!!  - GDALAllRegister() -> SUBROUTINE gdalallregister()
!!  - GDALCreate() -> FUNCTION gdalcreate()
!!  - GDALCreateCopy() -> FUNCTION gdalcreatecopy()
!!  - GDALIdentifyDriver() -> FUNCTION gdalidentifydriver()
!!  - GDALOpen() -> FUNCTION gdalopen()
!!  - GDALOpenShared() -> FUNCTION gdalopenshared()
!!  - GDALGetDriverByName() -> FUNCTION gdalgetdriverbyname()
!!  - GDALGetDriverCount() -> FUNCTION gdalgetdrivercount()
!!  - GDALGetDriver() -> FUNCTION gdalgetdriver()
!!  - GDALDestroyDriver() -> SUBROUTINE gdaldestroydriver()
!!  - GDALRegisterDriver() -> FUNCTION gdalregisterdriver()
!!  - GDALDeregisterDriver() -> SUBROUTINE gdalderegisterdriver()
!!  - GDALDestroyDriverManager() -> SUBROUTINE gdaldestroydrivermanager()
!!  - GDALDeleteDataset() -> FUNCTION gdaldeletedataset()
!!  - GDALRenameDataset() -> FUNCTION gdalrenamedataset()
!!  - GDALCopyDatasetFiles() -> FUNCTION gdalcopydatasetfiles()
!!  - GDALValidateCreationOptions() -> FUNCTION gdalvalidatecreationoptions()
!!  - GDALGetDriverShortName() -> FUNCTION gdalgetdrivershortname()
!!  - GDALGetDriverLongName() -> FUNCTION gdalgetdriverlongname()
!!  - GDALGetDriverHelpTopic() -> FUNCTION gdalgetdriverhelptopic()
!!  - GDALGetDriverCreationOptionList() -> FUNCTION gdalgetdrivercreationoptionlist()
!!  - GDALInvGeoTransform() -> FUNCTION gdalinvgeotransform()
!!  - GDALGetMetadata() -> FUNCTION gdalgetmetadata()
!!  - GDALSetMetadata() -> FUNCTION gdalsetmetadata()
!!  - GDALGetMetadataItem() -> FUNCTION gdalgetmetadataitem()
!!  - GDALSetMetadataItem() -> FUNCTION gdalsetmetadataitem()
!!  - GDALGetDescription() -> FUNCTION gdalgetdescription()
!!  - GDALSetDescription() -> SUBROUTINE gdalsetdescription()
!!  - GDALGetDatasetDriver() -> FUNCTION gdalgetdatasetdriver()
!!  - GDALGetFileList() -> FUNCTION gdalgetfilelist()
!!  - GDALClose() -> SUBROUTINE gdalclose()
!!  - GDALGetRasterXSize() -> FUNCTION gdalgetrasterxsize()
!!  - GDALGetRasterYSize() -> FUNCTION gdalgetrasterysize()
!!  - GDALGetRasterCount() -> FUNCTION gdalgetrastercount()
!!  - GDALGetRasterBand() -> FUNCTION gdalgetrasterband()
!!  - GDALAddBand() -> FUNCTION gdaladdband()
!!  - GDALBeginAsyncReader() -> FUNCTION gdalbeginasyncreader()
!!  - GDALEndAsyncReader() -> SUBROUTINE gdalendasyncreader()
!!  - GDALDatasetRasterIO() -> FUNCTION gdaldatasetrasterio()
!!  - GDALDatasetAdviseRead() -> FUNCTION gdaldatasetadviseread()
!!  - GDALGetProjectionRef() -> FUNCTION gdalgetprojectionref()
!!  - GDALSetProjection() -> FUNCTION gdalsetprojection()
!!  - GDALGetGeoTransform() -> FUNCTION gdalgetgeotransform()
!!  - GDALSetGeoTransform() -> FUNCTION gdalsetgeotransform()
!!  - GDALGetGCPCount() -> FUNCTION gdalgetgcpcount()
!!  - GDALGetGCPProjection() -> FUNCTION gdalgetgcpprojection()
!!  - GDALGetInternalHandle() -> FUNCTION gdalgetinternalhandle()
!!  - GDALReferenceDataset() -> FUNCTION gdalreferencedataset()
!!  - GDALDereferenceDataset() -> FUNCTION gdaldereferencedataset()
!!  - GDALBuildOverviews() -> FUNCTION gdalbuildoverviews()
!!  - GDALGetAccess() -> FUNCTION gdalgetaccess()
!!  - GDALFlushCache() -> SUBROUTINE gdalflushcache()
!!  - GDALCreateDatasetMaskBand() -> FUNCTION gdalcreatedatasetmaskband()
!!  - GDALDatasetCopyWholeRaster() -> FUNCTION gdaldatasetcopywholeraster()
!!  - GDALRasterBandCopyWholeRaster() -> FUNCTION gdalrasterbandcopywholeraster()
!!  - GDALRegenerateOverviews() -> FUNCTION gdalregenerateoverviews()
!!  - GDALGetRasterDataType() -> FUNCTION gdalgetrasterdatatype()
!!  - GDALRasterAdviseRead() -> FUNCTION gdalrasteradviseread()
!!  - GDALRasterIO() -> FUNCTION gdalrasterio()
!!  - GDALGetRasterBandXSize() -> FUNCTION gdalgetrasterbandxsize()
!!  - GDALGetRasterBandYSize() -> FUNCTION gdalgetrasterbandysize()
!!  - GDALGetRasterAccess() -> FUNCTION gdalgetrasteraccess()
!!  - GDALGetBandNumber() -> FUNCTION gdalgetbandnumber()
!!  - GDALGetBandDataset() -> FUNCTION gdalgetbanddataset()
!!  - GDALGetRasterColorInterpretation() -> FUNCTION gdalgetrastercolorinterpretation()
!!  - GDALSetRasterColorInterpretation() -> FUNCTION gdalsetrastercolorinterpretation()
!!  - GDALGetRasterColorTable() -> FUNCTION gdalgetrastercolortable()
!!  - GDALSetRasterColorTable() -> FUNCTION gdalsetrastercolortable()
!!  - GDALHasArbitraryOverviews() -> FUNCTION gdalhasarbitraryoverviews()
!!  - GDALGetOverviewCount() -> FUNCTION gdalgetoverviewcount()
!!  - GDALGetOverview() -> FUNCTION gdalgetoverview()
!!  - GDALSetRasterNoDataValue() -> FUNCTION gdalsetrasternodatavalue()
!!  - GDALGetRasterCategoryNames() -> FUNCTION gdalgetrastercategorynames()
!!  - GDALGetRasterStatistics() -> FUNCTION gdalgetrasterstatistics()
!!  - GDALComputeRasterStatistics() -> FUNCTION gdalcomputerasterstatistics()
!!  - GDALSetRasterStatistics() -> FUNCTION gdalsetrasterstatistics()
!!  - GDALGetRasterUnitType() -> FUNCTION gdalgetrasterunittype()
!!  - GDALSetRasterUnitType() -> FUNCTION gdalsetrasterunittype()
!!  - GDALSetRasterOffset() -> FUNCTION gdalsetrasteroffset()
!!  - GDALSetRasterScale() -> FUNCTION gdalsetrasterscale()
!!  - GDALComputeRasterMinMax() -> SUBROUTINE gdalcomputerasterminmax()
!!  - GDALFlushRasterCache() -> FUNCTION gdalflushrastercache()
!!  - GDALGetRasterHistogram() -> FUNCTION gdalgetrasterhistogram()
!!  - GDALSetDefaultHistogram() -> FUNCTION gdalsetdefaulthistogram()
!!  - GDALGetRandomRasterSample() -> FUNCTION gdalgetrandomrastersample()
!!  - GDALGetRasterSampleOverview() -> FUNCTION gdalgetrastersampleoverview()
!!  - GDALFillRaster() -> FUNCTION gdalfillraster()
!!  - GDALComputeBandStats() -> FUNCTION gdalcomputebandstats()
!!  - GDALOverviewMagnitudeCorrection() -> FUNCTION gdaloverviewmagnitudecorrection()
!!  - GDALGetDefaultRAT() -> FUNCTION gdalgetdefaultrat()
!!  - GDALSetDefaultRAT() -> FUNCTION gdalsetdefaultrat()
!!  - GDALAddDerivedBandPixelFunc() -> FUNCTION gdaladdderivedbandpixelfunc()
!!  - GDALGetMaskBand() -> FUNCTION gdalgetmaskband()
!!  - GDALGetMaskFlags() -> FUNCTION gdalgetmaskflags()
!!  - GDALCreateMaskBand() -> FUNCTION gdalcreatemaskband()
!!  - GDALARGetNextUpdatedRegion() -> FUNCTION gdalargetnextupdatedregion()
!!  - GDALARLockBuffer() -> FUNCTION gdalarlockbuffer()
!!  - GDALARUnlockBuffer() -> SUBROUTINE gdalarunlockbuffer()
!!  - GDALSwapWords() -> SUBROUTINE gdalswapwords()
!!  - GDALCopyWords() -> SUBROUTINE gdalcopywords()
!!  - GDALCopyBits() -> SUBROUTINE gdalcopybits()
!!  - GDALLoadWorldFile() -> FUNCTION gdalloadworldfile()
!!  - GDALReadWorldFile() -> FUNCTION gdalreadworldfile()
!!  - GDALWriteWorldFile() -> FUNCTION gdalwriteworldfile()
!!  - GDALLoadOziMapFile() -> FUNCTION gdalloadozimapfile()
!!  - GDALReadOziMapFile() -> FUNCTION gdalreadozimapfile()
!!  - GDALLoadTabFile() -> FUNCTION gdalloadtabfile()
!!  - GDALReadTabFile() -> FUNCTION gdalreadtabfile()
!!  - GDALLoadRPBFile() -> FUNCTION gdalloadrpbfile()
!!  - GDALLoadRPCFile() -> FUNCTION gdalloadrpcfile()
!!  - GDALWriteRPBFile() -> FUNCTION gdalwriterpbfile()
!!  - GDALLoadIMDFile() -> FUNCTION gdalloadimdfile()
!!  - GDALWriteIMDFile() -> FUNCTION gdalwriteimdfile()
!!  - GDALDecToDMS() -> FUNCTION gdaldectodms()
!!  - GDALPackedDMSToDec() -> FUNCTION gdalpackeddmstodec()
!!  - GDALDecToPackedDMS() -> FUNCTION gdaldectopackeddms()
!!  - GDALExtractRPCInfo() -> FUNCTION gdalextractrpcinfo()
!!  - GDALCreateColorTable() -> FUNCTION gdalcreatecolortable()
!!  - GDALDestroyColorTable() -> SUBROUTINE gdaldestroycolortable()
!!  - GDALCloneColorTable() -> FUNCTION gdalclonecolortable()
!!  - GDALGetPaletteInterpretation() -> FUNCTION gdalgetpaletteinterpretation()
!!  - GDALGetColorEntryCount() -> FUNCTION gdalgetcolorentrycount()
!!  - GDALGetColorEntry() -> FUNCTION gdalgetcolorentry()
!!  - GDALGetColorEntryAsRGB() -> FUNCTION gdalgetcolorentryasrgb()
!!  - GDALSetColorEntry() -> SUBROUTINE gdalsetcolorentry()
!!  - GDALCreateColorRamp() -> SUBROUTINE gdalcreatecolorramp()
!!  - GDALSetCacheMax() -> SUBROUTINE gdalsetcachemax()
!!  - GDALGetCacheMax() -> FUNCTION gdalgetcachemax()
!!  - GDALGetCacheUsed() -> FUNCTION gdalgetcacheused()
!!  - GDALSetCacheMax64() -> SUBROUTINE gdalsetcachemax64()
!!  - GDALGetCacheMax64() -> FUNCTION gdalgetcachemax64()
!!  - GDALGetCacheUsed64() -> FUNCTION gdalgetcacheused64()
!!  - GDALFlushCacheBlock() -> FUNCTION gdalflushcacheblock()
