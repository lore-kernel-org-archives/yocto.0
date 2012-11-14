Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E41E0032E
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 13:47:02 -0800 (PST)
Received: from mail45-va3-R.bigfish.com (10.7.14.252) by
	VA3EHSOBE007.bigfish.com (10.7.40.11) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 21:47:01 +0000
Received: from mail45-va3 (localhost [127.0.0.1])	by mail45-va3-R.bigfish.com
	(Postfix) with ESMTP id 242111C0117;
	Wed, 14 Nov 2012 21:47:01 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -5
X-BigFish: VPS-5(zzbb2dI98dI9371I148cI1432Izz1de0h1202h1d1ah1d2ahzz8275dhz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1155h)
Received-SPF: pass (mail45-va3: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail45-va3 (localhost.localdomain [127.0.0.1]) by mail45-va3
	(MessageSwitch) id 1352929619513158_4706;
	Wed, 14 Nov 2012 21:46:59 +0000 (UTC)
Received: from VA3EHSMHS033.bigfish.com (unknown [10.7.14.239])	by
	mail45-va3.bigfish.com (Postfix) with ESMTP id 7960C2A0092;
	Wed, 14 Nov 2012 21:46:59 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	VA3EHSMHS033.bigfish.com (10.7.99.43) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 14 Nov 2012 21:46:59 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAELkwxL022847;
	Wed, 14 Nov 2012 21:46:58 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail3.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAELkuUg018142
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 14 Nov 2012 21:46:57 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAELkuWl024614;	Wed, 14 Nov 2012 21:46:56 GMT
Message-ID: <50A41184.2050705@am.sony.com>
Date: Wed, 14 Nov 2012 13:47:48 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <50A2EFC0.3090908@am.sony.com> <50A3CB53.5040101@linux.intel.com>
	<50A3E650.5010900@am.sony.com>
	<50A3E7F1.3090306@linux.intel.com> <50A3E99A.20908@am.sony.com>
	<50A3EB5D.1080606@linux.intel.com>
In-Reply-To: <50A3EB5D.1080606@linux.intel.com>
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
X-List-Received-Date: Wed, 14 Nov 2012 21:47:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/14/2012 11:05 AM, Darren Hart wrote:
> On 11/14/2012 10:57 AM, Tim Bird wrote:
>> On 11/14/2012 10:50 AM, Darren Hart wrote:
>>> runqemu doesn't quite know what to make of poky-tiny :-) Try the following:
>>>
>>> $ qemu-system-i386 -kernel path/to/kernel -initrd path/to/image.cpio.gz
>>> -nographic -append "console=ttyS0 root=/dev/ram0"
>>
>> Ahh.  That's helpful.  Thanks.

This is working now.  Thanks.

BTW - how do I stop the kernel/emulator?
There's no 'shutdown', and 'halt' and 'reboot' don't do anything.
Is there a key sequence to get back to the qemu monitor??

>>> I really need to get the poky-tiny docs going... right after I finish
>>> these kernel docs I guess... anyone want to volunteer?
>>
>> I'd be happy to write some stuff up.  It wouldn't
>> be exhaustive, but I could document what I've found out about
>> (the LIBC_FEATURE stuff, and some of the dependencies I've found,
>> as well as invocation tips and some of the differences between
>> the poky default and poky-tiny packages and features).
>>
>> Where would you like it?  Is there a wiki page or a doc already started?
> 
> Not yet, how about here:
> 
> https://wiki.yoctoproject.org/wiki/Projects/Poky-Tiny
> 
> And we'll link to it here:
> 
> https://wiki.yoctoproject.org/wiki/Projects
> 
> Thanks for volunteering, very much appreciated!

There's some initial stuff there now.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


