Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767C2E011B7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 16:40:08 -0700 (PDT)
Received: from mail99-ch1-R.bigfish.com (216.32.181.171) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 23:40:16 +0000
Received: from mail99-ch1 (localhost.localdomain [127.0.0.1])	by
	mail99-ch1-R.bigfish.com (Postfix) with ESMTP id 6EF2E19F840A;
	Thu,  4 Aug 2011 23:40:16 +0000 (UTC)
X-SpamScore: -22
X-BigFish: VPS-22(zzbb2dK9371K936eK1432N98dK4015Lzz1202hzzz2fh668h839h93fh61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail99-ch1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail99-ch1 (localhost.localdomain [127.0.0.1]) by mail99-ch1
	(MessageSwitch) id 1312501216328474_5993;
	Thu,  4 Aug 2011 23:40:16 +0000 (UTC)
Received: from CH1EHSMHS034.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.245])	by mail99-ch1.bigfish.com (Postfix) with ESMTP id
	4BAD611B804F;	Thu,  4 Aug 2011 23:40:16 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by CH1EHSMHS034.bigfish.com
	(10.43.70.34) with Microsoft SMTP Server id 14.1.225.22;
	Thu, 4 Aug 2011 23:40:10 +0000
Received: from mail1x.sgo.in.sel.sony.com (mail2.sgo.in.sel.sony.com
	[43.130.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with ESMTP id p74Ne9rv030832;	Thu, 4 Aug 2011 23:40:10 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p74Ndwk9026708;	Thu, 4 Aug 2011 23:39:59 GMT
Message-ID: <4E3B2DC9.5050302@am.sony.com>
Date: Thu, 4 Aug 2011 16:39:53 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4E39E30B.3080206@am.sony.com> <1522642.ppiasj8dqr@perseus>	
	<4E3AEA40.8060200@am.sony.com>
	<1312489379.2135.20.camel@vorpal.jf.intel.com>
In-Reply-To: <1312489379.2135.20.camel@vorpal.jf.intel.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 23:40:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 08/04/2011 01:22 PM, Joshua Lock wrote:
> On Thu, 2011-08-04 at 11:51 -0700, Tim Bird wrote:
>> The only thing that looks suspicious to me is:
>>
>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
> 
> This is concerning and may cause problems later on. One possible factor
> here is SELINUX. Do you have that enabled? We've tried to ensure the
> system works with SELINUX but the policay may vary quite a bit from
> Fedora 12 to 14 (where I know a build with SELINUX has run).
I'm not running SELinux.  Another developer doing a build of 5.0.1
on an Ubuntu 11.04 platform had no problem with the cairo build, so
I'm going to guess it's my distro.

I changed to building poky-image-minimal (GUI is not needed for
what I'm doing at the moment), and it built, successfully, in
about 30 seconds.  99% of what was needed was already built.
The system booted in qemuarm, and I plan to do some more testing
of the runtime in the next little bit.

Thanks, all, for the help.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


