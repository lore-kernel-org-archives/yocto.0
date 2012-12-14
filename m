Return-Path: <tim.bird@am.sony.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe003.messaging.microsoft.com [213.199.154.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE4EE00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 14:10:20 -0800 (PST)
Received: from mail90-am1-R.bigfish.com (10.3.201.226) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Fri, 14 Dec 2012 22:10:19 +0000
Received: from mail90-am1 (localhost [127.0.0.1])	by mail90-am1-R.bigfish.com
	(Postfix) with ESMTP id 446B9C0318	for <yocto@yoctoproject.org>;
	Fri, 14 Dec 2012 22:10:19 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1de0h1202h1e76h1d1ah1d2ahzz8275bhz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h1155h)
Received-SPF: pass (mail90-am1: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail90-am1 (localhost.localdomain [127.0.0.1]) by mail90-am1
	(MessageSwitch) id 1355523017878380_4296;
	Fri, 14 Dec 2012 22:10:17 +0000 (UTC)
Received: from AM1EHSMHS006.bigfish.com (unknown [10.3.201.251])	by
	mail90-am1.bigfish.com (Postfix) with ESMTP id CE8FB2E0059	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 22:10:17 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	AM1EHSMHS006.bigfish.com (10.3.207.106) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Fri, 14 Dec 2012 22:10:17 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	qBEMAFjZ012283	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 22:10:16 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail4.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBEMAEBT010660
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 22:10:15 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qBEMAE9O013173	for <yocto@yoctoproject.org>;
	Fri, 14 Dec 2012 22:10:14 GMT
Message-ID: <50CBA44C.4030009@am.sony.com>
Date: Fri, 14 Dec 2012 14:12:28 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
In-Reply-To: <50CB9004.60908@windriver.com>
X-OriginatorOrg: am.sony.com
Subject: Re: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 22:10:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 12/14/2012 12:45 PM, Mark Hatle wrote:
> On 12/14/12 1:46 PM, Burton, Ross wrote:
>> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
>>> "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
>>> can generate the toolchain installer using bitbake meta-toolchain."
>>>
>>> After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
>>>
>>> It might be good to put this acronym somewhere in the manual.
>>> (I'm still not sure if I need GMAE or not...)
>>
>> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
>>
>> A stealth plan of mine is to remove every trace of GMAE from Yocto.
>> It was an initiative Poky was involved with back in the OpenedHand
>> days that didn't really take off, and we're still carrying pieces of
>> it.
> 
> I get this question a lot.  With the ability (new in 1.3) to build an SDK based 
> on the contents of any arbitrary image.. the meta-toolchain-gmae is simply not 
> necessary.
> 
> bitbake -c populate_sdk <image recipe>

Aha.  Thanks very much.

Is this the preferred way to get a toolchain out of yocto?
That's exactly what I'm working on at the moment (well, after
fixing up some toolchain build issues I've encountered after
messing around a bit with the toolchain recipes...;-)

 -- Tim


=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


