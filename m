Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB965E0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:56:43 -0800 (PST)
Received: from mail147-ch1-R.bigfish.com (10.43.68.254) by
	CH1EHSOBE012.bigfish.com (10.43.70.62) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 18:56:42 +0000
Received: from mail147-ch1 (localhost [127.0.0.1])	by
	mail147-ch1-R.bigfish.com (Postfix) with ESMTP id B79EF22019B;
	Wed, 14 Nov 2012 18:56:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -5
X-BigFish: VPS-5(zzbb2dI98dI9371I1432I1447Izz1de0h1202h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh1155h)
Received-SPF: pass (mail147-ch1: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail147-ch1 (localhost.localdomain [127.0.0.1]) by mail147-ch1
	(MessageSwitch) id 1352919400613104_18124;
	Wed, 14 Nov 2012 18:56:40 +0000 (UTC)
Received: from CH1EHSMHS043.bigfish.com (snatpool3.int.messaging.microsoft.com
	[10.43.68.226])	by mail147-ch1.bigfish.com (Postfix) with ESMTP id
	8A12F3601FD;	Wed, 14 Nov 2012 18:56:40 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	CH1EHSMHS043.bigfish.com (10.43.69.252) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Wed, 14 Nov 2012 18:56:40 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAEIude1013125;
	Wed, 14 Nov 2012 18:56:39 GMT
Received: from mail1x.sjc.in.sel.sony.com (mailx.bc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAEIucMH020459
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 14 Nov 2012 18:56:39 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAEIubZ8030867;	Wed, 14 Nov 2012 18:56:37 GMT
Message-ID: <50A3E99A.20908@am.sony.com>
Date: Wed, 14 Nov 2012 10:57:30 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
	<50A3E650.5010900@am.sony.com> <50A3E7F1.3090306@linux.intel.com>
In-Reply-To: <50A3E7F1.3090306@linux.intel.com>
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
X-List-Received-Date: Wed, 14 Nov 2012 18:56:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/14/2012 10:50 AM, Darren Hart wrote:
> runqemu doesn't quite know what to make of poky-tiny :-) Try the following:
> 
> $ qemu-system-i386 -kernel path/to/kernel -initrd path/to/image.cpio.gz
> -nographic -append "console=ttyS0 root=/dev/ram0"

Ahh.  That's helpful.  Thanks.

> I really need to get the poky-tiny docs going... right after I finish
> these kernel docs I guess... anyone want to volunteer?

I'd be happy to write some stuff up.  It wouldn't
be exhaustive, but I could document what I've found out about
(the LIBC_FEATURE stuff, and some of the dependencies I've found,
as well as invocation tips and some of the differences between
the poky default and poky-tiny packages and features).

Where would you like it?  Is there a wiki page or a doc already started?

>>>
>>>>
>>>> Has anyone seen this type of error before, or can provide some
>>>> hints of what to check or adjust to fix this?
>>>
>>> Yup, it's wide characters being required by diffutils and being excluded
>>> by the poky-tiny DISTRO_FEATURES_LIBC assignment. If supported by
>>> diffutils, we might be able to test ENABLE_WIDEC in diffutils and
>>> configure accordingly (see the ncurses recipes for an example).
>>
>> I'll poke around.  I'm curious why poky-tiny core-image-minimal built
>> OK, but core-image-minimal-initramfs didn't.  I didn't expect
>> any difference in target-side binaries between the two - only some
>> changes in the image build steps.
>>
>> Thanks for the tips.  I'll check it out.
> 
> Let me know what you find out. I thought the initramfs had the installer
> in it, but maybe that's included by some other mechanism.

Will do.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


