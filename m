Return-Path: <tim.bird@am.sony.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7553AE003D6
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 13:57:30 -0800 (PST)
Received: from mail92-am1-R.bigfish.com (10.3.201.244) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 21:57:28 +0000
Received: from mail92-am1 (localhost [127.0.0.1])	by mail92-am1-R.bigfish.com
	(Postfix) with ESMTP id A24E52A017B;
	Wed, 14 Nov 2012 21:57:28 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail03.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1de0h1202h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1155h)
Received-SPF: pass (mail92-am1: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail92-am1 (localhost.localdomain [127.0.0.1]) by mail92-am1
	(MessageSwitch) id 1352930246894609_25142;
	Wed, 14 Nov 2012 21:57:26 +0000 (UTC)
Received: from AM1EHSMHS016.bigfish.com (unknown [10.3.201.231])	by
	mail92-am1.bigfish.com (Postfix) with ESMTP id D836F4C0082;
	Wed, 14 Nov 2012 21:57:26 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	AM1EHSMHS016.bigfish.com (10.3.207.154) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Wed, 14 Nov 2012 21:57:21 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAELvJK7028848;
	Wed, 14 Nov 2012 21:57:20 GMT
Received: from mail1x.sjc.in.sel.sony.com (mailx.sgo.in.sel.sony.com
	[43.134.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAELvIsV024802
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 14 Nov 2012 21:57:19 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAELvIWp031892;	Wed, 14 Nov 2012 21:57:18 GMT
Message-ID: <50A413F3.4060107@am.sony.com>
Date: Wed, 14 Nov 2012 13:58:11 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50A2EFC0.3090908@am.sony.com>
	<50A3CB53.5040101@linux.intel.com>	<50A3E650.5010900@am.sony.com>
	<50A3E7F1.3090306@linux.intel.com> <50A3E99A.20908@am.sony.com>
	<50A3EB5D.1080606@linux.intel.com> <50A41184.2050705@am.sony.com>
In-Reply-To: <50A41184.2050705@am.sony.com>
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
X-List-Received-Date: Wed, 14 Nov 2012 21:57:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/14/2012 01:47 PM, Tim Bird wrote:
> On 11/14/2012 11:05 AM, Darren Hart wrote:
>> On 11/14/2012 10:57 AM, Tim Bird wrote:
>>> On 11/14/2012 10:50 AM, Darren Hart wrote:
>>>> runqemu doesn't quite know what to make of poky-tiny :-) Try the following:
>>>>
>>>> $ qemu-system-i386 -kernel path/to/kernel -initrd path/to/image.cpio.gz
>>>> -nographic -append "console=ttyS0 root=/dev/ram0"
>>>
>>> Ahh.  That's helpful.  Thanks.
> 
> This is working now.  Thanks.
> 
> BTW - how do I stop the kernel/emulator?
> There's no 'shutdown', and 'halt' and 'reboot' don't do anything.
> Is there a key sequence to get back to the qemu monitor??

Never mind.  I figured it out.  It's 'ctrl-a <key>', with 'ctrl-a x'
to terminate the qemu session.

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


