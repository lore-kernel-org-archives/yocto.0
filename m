Return-Path: <tim.bird@am.sony.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe005.messaging.microsoft.com [216.32.180.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8602EE00533
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:10:54 -0700 (PDT)
Received: from mail79-co1-R.bigfish.com (10.243.78.250) by
	CO1EHSOBE001.bigfish.com (10.243.66.64) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 18:10:53 +0000
Received: from mail79-co1 (localhost [127.0.0.1])	by mail79-co1-R.bigfish.com
	(Postfix) with ESMTP id 8D3D2B4017D	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 18:10:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail01.sonyusa.com;
	EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zz4015Izz1202h1d1ah1d2ahzzz2fh2a8h668h839hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh1155h)
Received-SPF: pass (mail79-co1: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail79-co1 (localhost.localdomain [127.0.0.1]) by mail79-co1
	(MessageSwitch) id 1351620651133220_17042;
	Tue, 30 Oct 2012 18:10:51 +0000 (UTC)
Received: from CO1EHSMHS001.bigfish.com (unknown [10.243.78.235])	by
	mail79-co1.bigfish.com (Postfix) with ESMTP id 1CFEE3800AE	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:10:51 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	CO1EHSMHS001.bigfish.com (10.243.66.11) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Tue, 30 Oct 2012 18:10:03 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	q9UIA2Fs002229	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:10:02 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail.sgo.in.sel.sony.com
	[43.134.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q9UI61Jw026314
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 18:06:02 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q9UI61bR008127	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 18:06:01 GMT
Message-ID: <50901720.1080304@am.sony.com>
Date: Tue, 30 Oct 2012 11:06:24 -0700
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
X-List-Received-Date: Tue, 30 Oct 2012 18:10:54 -0000
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
I have a pretty good idea thaat vmdk is somehow related to the
virtual build image.

What does 'live' do?

Wait a sec...

Reading meta/classes/image_types.bbclass I just found IMAGE_TYPES,
which says it is available for requesting which values are suitable
for IMAGE_FSTYPES.

This has the following:
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


