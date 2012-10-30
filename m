Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe006.messaging.microsoft.com [216.32.180.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D1F7E00533
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:08:11 -0700 (PDT)
Received: from mail184-va3-R.bigfish.com (10.7.14.239) by
	VA3EHSOBE003.bigfish.com (10.7.40.23) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 18:08:08 +0000
Received: from mail184-va3 (localhost [127.0.0.1])	by
	mail184-va3-R.bigfish.com (Postfix) with ESMTP id CF75E20639	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:08:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zz4015Izz1202h1d1ah1d2ahzzz2fh2a8h668h839hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh1155h)
Received-SPF: pass (mail184-va3: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail184-va3 (localhost.localdomain [127.0.0.1]) by mail184-va3
	(MessageSwitch) id 1351620486570701_13064;
	Tue, 30 Oct 2012 18:08:06 +0000 (UTC)
Received: from VA3EHSMHS014.bigfish.com (unknown [10.7.14.246])	by
	mail184-va3.bigfish.com (Postfix) with ESMTP id 7E8AF24014B	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:08:06 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	VA3EHSMHS014.bigfish.com (10.7.99.24) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Tue, 30 Oct 2012 18:08:04 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	q9UI83Pt026211	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:08:04 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail4.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q9UI82j1005876
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:08:03 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q9UI82n9010286	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 18:08:02 GMT
Message-ID: <50901799.2090408@am.sony.com>
Date: Tue, 30 Oct 2012 11:08:25 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: supported IMAGE_FSTYPES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Oct 2012 18:08:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

I am in the process of creating my own distro, and trying to figure out
all the different build variables.  This is a pretty daunting task
for a yocto project/Poky newbie.

Is there some place where the possible values for IMAGE_FSTYPE are
documented?  The Poky reference manual has this helpful sentence:
"Formats of root filesystem images that you want to have created."
However, it does not describe the possible values this variable
should have.

At the root of the poky source dir, doing a 'find -type f -print 0 | xargs -0 grep IMAGE_FSTYPES'
seems to reveal the following used or checked-for image types:
 jffs2 sdimg tar.bz2 ubi ext3 ext2 cpio.gz live vmdk

It appears the cpio.gz corresponds to an image suitable for an initramfs.
jffs2, ext2, ext3, ubi and tar.bz2 appear self-explanatory.
I have a pretty good idea that vmdk is somehow related to the
virtual build image.

What does 'live' do?

Wait a sec...

Reading meta/classes/image_types.bbclass I just found IMAGE_TYPES,
which says it is "available to request which values are suitable
for IMAGE_FSTYPES".

This has the following definition in denzil:
IMAGE_TYPES = "jffs2 sum.jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz
ext2.lzma btrfs live squashfs squashfs-lzma ubi tar tar.gz tar.bz2 tar.xz
cpio cpio.gz cpio.xz cpio.lzma vmdk"

How does one query this variable?  Other than reading the source, is
there a way to know that such variables (which list the allowed values
for other variables) exist?

I apologize if these are newbie questions.

Thanks,
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


