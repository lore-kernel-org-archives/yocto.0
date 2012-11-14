Return-Path: <tim.bird@am.sony.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE7EE003D6
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:42:46 -0800 (PST)
Received: from mail226-tx2-R.bigfish.com (10.9.14.253) by
	TX2EHSOBE008.bigfish.com (10.9.40.28) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 18:42:45 +0000
Received: from mail226-tx2 (localhost [127.0.0.1])	by
	mail226-tx2-R.bigfish.com (Postfix) with ESMTP id 816AF2400A3;
	Wed, 14 Nov 2012 18:42:45 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -6
X-BigFish: VPS-6(zzbb2dI98dI9371I1432I1447I14ffIzz1de0h1202h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh1155h)
Received-SPF: pass (mail226-tx2: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail226-tx2 (localhost.localdomain [127.0.0.1]) by mail226-tx2
	(MessageSwitch) id 1352918563580715_12110;
	Wed, 14 Nov 2012 18:42:43 +0000 (UTC)
Received: from TX2EHSMHS032.bigfish.com (unknown [10.9.14.246])	by
	mail226-tx2.bigfish.com (Postfix) with ESMTP id 81D6694004D;
	Wed, 14 Nov 2012 18:42:43 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	TX2EHSMHS032.bigfish.com (10.9.99.132) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 14 Nov 2012 18:42:41 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAEIgdGV003932;
	Wed, 14 Nov 2012 18:42:40 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail1.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAEIgcvJ000844
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 14 Nov 2012 18:42:39 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAEIgau4020565;	Wed, 14 Nov 2012 18:42:36 GMT
Message-ID: <50A3E650.5010900@am.sony.com>
Date: Wed, 14 Nov 2012 10:43:28 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
In-Reply-To: <50A3CB53.5040101@linux.intel.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem compiling diffutils on poky-tiny in danny
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
X-List-Received-Date: Wed, 14 Nov 2012 18:42:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/14/2012 08:48 AM, Darren Hart wrote:
> 
> 
> On 11/13/2012 05:11 PM, Tim Bird wrote:
>> Hi all,
>>
>> I'm using DISTRO=poky-tiny and trying to build:
>>  $ bitbake core-image-minimal-initramfs
>>
>> I get the following error trying to compile diffutils:
>>
>> ...
>> i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcwidth.o wcwidth.c
>> In file included from wcwidth.c:23:0:
>> ./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
>> ./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
>> ...
> 
> 
> Is there an option to build diffutils without wide character support?
> This is something tiny does away with and frequent point of failure
> when trying to build additional packages with it.

I'll see if I can find something.

> 
>> See the attached compile log for details.
>>
>> Has anyone done this recently?  Is this one of the supported images for
>> this distro (poky-tiny)?
> 
> 
> I don't build that target as I use the cpio.gz from core-image-minimal
> as an initial ramdisk. Is there a particular reason you want to build
> "core-image-minimal-initramfs" specifically?

Building poky-tiny with core-image-minimal worked fine.  I didn't understand
that this built multiple images (including a cpio.gz), and thought that
the default method of building a cpio.gz was to build the <image-name>-initramfs
image.  So, no, I don't have a particular reason to do this.

Also, I'm not sure I am doing the startup initialization with runqemu
correctly.  I wouldn't have expected any rootfs to be used for this image,
but the default invocation of runqemu uses one.  An example shows use of
a 'ramfs' parameter.  I think I need to dig into runqemu and verify
args are appropriate for an initramfs.

> 
>>
>> Has anyone seen this type of error before, or can provide some
>> hints of what to check or adjust to fix this?
> 
> Yup, it's wide characters being required by diffutils and being excluded
> by the poky-tiny DISTRO_FEATURES_LIBC assignment. If supported by
> diffutils, we might be able to test ENABLE_WIDEC in diffutils and
> configure accordingly (see the ncurses recipes for an example).

I'll poke around.  I'm curious why poky-tiny core-image-minimal built
OK, but core-image-minimal-initramfs didn't.  I didn't expect
any difference in target-side binaries between the two - only some
changes in the image build steps.

Thanks for the tips.  I'll check it out.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


