Return-Path: <v.vogelhuber@digitalendoscopy.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AF05E00CFF; Fri, 17 Nov 2017 08:21:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.100.132.223 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 75 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Nov 2017 08:21:27 PST
Received: from mx-relay23-hz1.antispameurope.com
	(mx-relay23-hz1.antispameurope.com [94.100.132.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F8C2E00CEC
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 08:21:27 -0800 (PST)
Received: from host-80-81-19-29.customer.m-online.net ([80.81.19.29]) by
	mx-relay23-hz1.antispameurope.com; Fri, 17 Nov 2017 17:20:10 +0100
Received: from DE028.digitendos.de (192.168.20.186) by srv-msx01.digitendos.de
	(192.168.20.14) with Microsoft SMTP Server (TLS) id 15.0.516.32;
	Fri, 17 Nov 2017 17:19:54 +0100
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Nov 2017 17:19:47 +0100
Message-ID: <20171117161948.9700-1-v.vogelhuber@digitalendoscopy.de>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Originating-IP: [192.168.20.186]
X-ClientProxiedBy: srv-msx01.digitendos.de (192.168.20.14) To
	srv-msx01.digitendos.de (192.168.20.14)
X-TM-AS-Product-Ver: SMEX-11.1.0.1291-8.100.1062-23470.005
X-TM-AS-Result: No--3.316500-8.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-cloud-security-sender: v.vogelhuber@digitalendoscopy.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-relay23-hz1.antispameurope.com with 4A1BA101323B6
X-cloud-security-connect: host-80-81-19-29.customer.m-online.net[80.81.19.29],
	TLS=1, IP=80.81.19.29
X-cloud-security: scantime:.1292
Subject: Allow specifying sub directories for rootfs when using wic -e
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Nov 2017 16:21:29 -0000
Content-Type: text/plain

I currently have an image with six different partitions. See the 
following partition configuration:

># bootloader
>part /boot/EFI --source bootimg-efi --sourceparams="loader=systemd-boot" --ondisk mmcblk --fstype=vfat --label boot --active --align 1024 --size 20 --overhead-factor=1.0 --uuid="1EFC2AC2-449B-6ABB-AA63-7EA004446DF1"
>
>#--use-uuid
># primary / recovery image
>part / --source rootfs --rootfs-dir=image --exclude-path opt/something/ opt/else/ opt/somemore/ --ondisk mmcblk --fstype=ext4 --label primary_rootfs --align 1024 --size 768 --overhead-factor=1.0 --uuid="2779D408-1362-AEF5-AEB1-00BF5674C065"
>part /recovery --source rootfs --rootfs-dir=image-recovery --ondisk mmcblk --fstype=ext4 --label recovery_rootfs --align 1024 --size 640 --overhead-factor=1.0 --uuid="528B6F25-5143-47B3-8D12-391820EAF1CF"
>
># additional partitions
>part /opt/something --source rootfs --rootfs-dir=image --rootfs-subdir=opt/something --ondisk mmcblk --fstype=ext4 --label persist --align 1024 --size 64 --overhead-factor=1.0 --use-uuid
>part /opt/else --source rootfs --rootfs-dir=image --rootfs-subdir=opt/else --ondisk mmcblk --fstype=ext4 --label de --align 1024 --size 256 --overhead-factor=1.0 --use-uuid
>part /opt/somemore --source rootfs --rootfs-dir=image --rootfs-subdir=opt/somemore --ondisk mmcblk --fstype=ext4 --label data --align 1024 --size 1700 --overhead-factor=1.0 --use-uuid
>
>bootloader --timeout=0 --ptable gpt --configfile="disk.cfg"

My problem is now that if I use the wic -e option to specify an image 
name as rootfs-dir I can not extract subdirectories from the rootfs 
to different partitions. Or at least I didn't found out a way.
That's why I added a rootfs-subdir option to wic that allows appending 
a rootfs dir to the one received by IMAGE_ROOTFS. I read something 
about spliting should be done on recipe level 
(https://lists.yoctoproject.org/pipermail/yocto/2016-March/029301.html), 
but I couldn't figure out how that should be done and that patch seems 
much easier for me.

