Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22683E00D5F; Tue, 16 Jan 2018 03:39:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DEF5E00A9C
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 03:39:47 -0800 (PST)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jan 2018 03:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,368,1511856000"; d="scan'208";a="10933694"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga006.jf.intel.com with ESMTP; 16 Jan 2018 03:39:47 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id 3A01E580328;
	Tue, 16 Jan 2018 03:39:46 -0800 (PST)
Date: Tue, 16 Jan 2018 11:58:13 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Message-ID: <20180116095813.zpydtrfdpvwo3coe@linux.intel.com>
References: <HE1PR0402MB3323F718FF6A3560C625ADCCC4EA0@HE1PR0402MB3323.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <HE1PR0402MB3323F718FF6A3560C625ADCCC4EA0@HE1PR0402MB3323.eurprd04.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: NeoMutt/20170421 (1.8.2)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wic- optimizing an image containing a large empty partition
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jan 2018 11:39:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Jan 16, 2018 at 09:22:07AM +0000, Martin Siegumfeldt wrote:
> Hi,
> 
> 
> I am trying to optimize an image having a fairly large empty partition with regards to file size - wks file:
> 
> 
> martin@martin-Precision-5510:~/work/z7000-distro_wic/meta-z7000$ cat scripts/lib/wic/canned-wks/gs-boot-rootfs.wks
> part --ondisk mmcblk --size 4
> part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4096 --size 64 --fsoptions ro
> part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4096
> part /mnt/data --ondisk mmcblk0 --fstype=ext4 --label data --size 1024
> 
> Now, generating the map file indicates that bmap-tools is capable of significantly reducing the data transfer:
> 
> martin@martin-Precision-5510:~/work/z7000-distro_wic/build/tmp-glibc/deploy/images/zynq-soft-zedboard$ cat  z7000-base-image-zynq-soft-zedboard.wic.bmap
> <?xml version="1.0" ?>
> <!-- This file contains the block map for an image file, which is basically
>      a list of useful (mapped) block numbers in the image file. In other words,
>      it lists only those blocks which contain data (boot sector, partition
>      table, file-system metadata, files, directories, extents, etc). These
>      blocks have to be copied to the target device. The other blocks do not
>      contain any useful data and do not have to be copied to the target
>      device.
> 
>      The block map an optimization which allows to copy or flash the image to
>      the image quicker than copying of flashing the entire image. This is
>      because with bmap less data is copied: <MappedBlocksCount> blocks instead
>      of <BlocksCount> blocks.
> 
>      Besides the machine-readable data, this file contains useful commentaries
>      which contain human-readable information like image size, percentage of
>      mapped data, etc.
> 
>      The 'version' attribute is the block map file format version in the
>      'major.minor' format. The version major number is increased whenever an
>      incompatible block map format change is made. The minor number changes
>      in case of minor backward-compatible changes. -->
> 
> <bmap version="2.0">
>     <!-- Image size in bytes: 1.2 GiB -->
>     <ImageSize> 1257452544 </ImageSize>
> 
>     <!-- Size of a block in bytes -->
>     <BlockSize> 4096 </BlockSize>
> 
>     <!-- Count of blocks in the image file -->
>     <BlocksCount> 306996 </BlocksCount>
> 
>     <!-- Count of mapped blocks: 42.1 MiB or 3.5%    -->
>     <MappedBlocksCount> 10765  </MappedBlocksCount>
> 
>     <!-- Type of checksum used in this file -->
>     <ChecksumType> sha256 </ChecksumType>
> 
>     <!-- The checksum of this bmap file. When it is calculated, the value of
>          the checksum has be zero (all ASCII "0" symbols).  -->
>     <BmapFileChecksum> d41d210e8efdf32597e566360a2f701e706f3b04bcf2418bb0c50a1f8a8d6c72 </BmapFileChecksum>
> 
>     <!-- The block map which consists of elements which may either be a
>          range of blocks or a single block. The 'chksum' attribute
>          (if present) is the checksum of this blocks range. -->
>     <BlockMap>
>         <Range chksum="4e1c836ffaf1a23f316382f5d7eff44a0fc5a43ac681fa11e100e55b73e8bc7b"> 0-6 </Range>
>         <Range chksum="b795c68a5cde6a8ab0b7b541f2094792f4746fb0f9e5b794024895b5c72a42ea"> 2048-2347 </Range>
>         <Range chksum="073c303254e96b44400b7df159fdd8cfcc48cad90f77ab14cf157eaaaf94d810"> 23552-23620 </Range>
>         <Range chksum="b34201ffa94456444c5bc8e546e3805fc58961403c0a444ce039f21eb894c05c"> 23622-23688 </Range>
>         <Range chksum="731c02b87191f90e37683778e6c8817c03cf2b3e6ac1159c1bb7934700709e8b"> 23957-25600 </Range>
>         <Range chksum="e1dd56bc7566dda92807ce28582f3f5ead589d7dfbf4beca9c6f928238f73ede"> 25664-29696 </Range>
>         <Range chksum="2ccb999e7b63cad77d1891c93424d301cff5dd1c2f25813b96f243d425592770"> 29760-31744 </Range>
>         <Range chksum="06986ccd4f1319028200fbfb9dccb72fabd4e18abf4195cfbe288ac09436630c"> 32768-33792 </Range>
>         <Range chksum="8cdfec001877d4b6bb41d1caf814aadfc67cabef160a0a442fbb98dfc4190424"> 33856-35389 </Range>
>         <Range chksum="f9ca40694ee8b587e20fcfb2a803055f16a6cb1b348a90badae9c13860cff8a0"> 37888 </Range>
>         <Range chksum="b05058de59ab0182064323d297a3c6fba42772f3da4f48fa9f60dc58f4b386e3"> 41984 </Range>
>         <Range chksum="2abc48348f9551bd05258553014f8c389970d30381e3dc64547a0a7b6f48af14"> 44851-44917 </Range>
>         <Range chksum="71899ad8e3fa013443678f384e219f1064e74687fb34861036aa8e4567e12e9a"> 44920-44921 </Range>
>         <Range chksum="cc80e24228a48b279bcd626dae16181c317b56acfb8fc56dc7b1f83463966166"> 44923-44925 </Range>
>         <Range chksum="3efa6bcb59cd77722327d11d040bf51e983e004c8d826e4ddf7f9b94b0cc754b"> 44932-44933 </Range>
>         <Range chksum="3c3ea8e0f3eb5a88321bde760d9328826b1cd87df92260cd3bac65d8bfa094e0"> 53124-53130 </Range>
>         <Range chksum="74ad14376b2177e6fea86a2784711a8f8b78beb9766b958271b9fb1bf7cec3a5"> 77619-77621 </Range>
>         <Range chksum="1196698d6f64c5e133a6f91030a245f16ee741acbf59e469d23137d502f50e22"> 143155-143157 </Range>
>         <Range chksum="d5fda096a9876c5afec2744a95bb4583ce30adf58d64b47f4bf5f69309d4603e"> 175923-175924 </Range>
>         <Range chksum="78019a98ed57a2c423406c7e5e97f4615e1ace27be573c0526d0e5b9221b07de"> 208691-208693 </Range>
>         <Range chksum="c7e487ba8a927afdc9ea5edd468afc4875cfed37f4587636b1b253a1005b82e1"> 274227-274229 </Range>
>         <Range chksum="7784ef4f0c425eb5578559102faaa99c4fba0ab2c2ff7dbe5fcc3c9e731a97a7"> 306992-306995 </Range>
>     </BlockMap>
> </bmap>
> 
> Unfortunately, my HW does not integrate an SD card (that could have been flashed using bmap-tools) and we currently flash the soldered eMMC using dfu-util. In this case all 1.2 GB are transferred, which I consider fairly suboptimal compared to the above reported 42 MB 😞.
>
After briefly looking around at dfu-util and .dfu format description I'd
suggest to convert wic images into .dfu using either information from
.bmap or wic filemap API(wrapper around FIEMAP ioctl or the 'SEEK_HOLE
/ SEEK_DATA' features of the file seek syscall) and then use dfu-util to
upload an image to the target media.

> In the past we maintained a custom image class that simply skipped creating the empty ext4 partition and left it to be created upon the first boot. I could probably live with this approach, but I don't really see an easy way of achieveing this using wic - perhaps I missed it? However, if possible, my preference would be to generate the partition during the build and not at runtime.

Can you elaborate on this a bit more? My guess is that you want to create unformatted
partition, but I'm not sure I understand how that can help in this
particular case.

> 
> I see some history of sparse images related to wic,  but the works appears reverted?
>
Can you point me out to the reverted commits?

wic images are sparse. Here is an example of 94M sparse image with
allocated size 16M:

$ ls -lhs
./tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20180116091809.rootfs.wic
16M -rw-r--r-- 2 ed users 94M Jan 16 11:22
./tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64-20180116091809.rootfs.wic


--
Regards,
Ed

