Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe002.messaging.microsoft.com [216.32.180.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2520E0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 14:08:52 -0700 (PDT)
Received: from mail81-va3-R.bigfish.com (10.7.14.240) by
	VA3EHSOBE003.bigfish.com (10.7.40.23) with Microsoft SMTP Server id
	14.1.225.23; Fri, 15 Jun 2012 21:07:41 +0000
Received: from mail81-va3 (localhost [127.0.0.1])	by mail81-va3-R.bigfish.com
	(Postfix) with ESMTP id E8EF24C01E9;
	Fri, 15 Jun 2012 21:07:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -3
X-BigFish: VPS-3(zzbb2dI98dI9371Izz1202hzzz2fh2a8h668h839h93fhd25hf0ah)
Received-SPF: pass (mail81-va3: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail81-va3 (localhost.localdomain [127.0.0.1]) by mail81-va3
	(MessageSwitch) id 1339794456613711_20867;
	Fri, 15 Jun 2012 21:07:36 +0000 (UTC)
Received: from VA3EHSMHS026.bigfish.com (unknown [10.7.14.236])	by
	mail81-va3.bigfish.com (Postfix) with ESMTP id 8423F24004A;
	Fri, 15 Jun 2012 21:07:36 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	VA3EHSMHS026.bigfish.com (10.7.99.36) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Fri, 15 Jun 2012 21:07:35 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5FL8jap013564
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 15 Jun 2012 21:08:45 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail3.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5FL8hCw012253
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 15 Jun 2012 21:08:44 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q5FL8Xwb027250;	Fri, 15 Jun 2012 21:08:33 GMT
Message-ID: <4FDBA4B8.8000703@am.sony.com>
Date: Fri, 15 Jun 2012 14:10:16 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
In-Reply-To: <4FD98EA6.1050403@r-finger.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 21:08:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 06/14/2012 12:11 AM, Tomas Frydrych wrote:
> A system that runs nothing but a shell is really not useful for anything
> all, everyone using it will be adding some sort of services, so the
> question of how the extending works (or does not work), needs to be in
> the forefront of the design. My main reservation is that you are
> suggesting to break one of the basic premisses behind the whole
> ecosystem, namely that if I add a package that provides a service to an
> image, I get that service running; 'fix by documentation' is never a fix.

I didn't address this in my other response, and I
think it's a valid observation.  I agree that
everyone will want to add something to the init,
and that 'fix by documentation' is, in general, a
poor solution.

I don't have any good solution here (one that scales,
or is likely to be adopted widely.)  You don't really
need documentation, if you have the few lines of shell
script that are necessary to start a service in minimal
mode.  The standard init scripts handle lots of interactions
with other services and runtime conditions.  This is why
they are bloated (and the abstractions in them are
almost incomprehensible to read.)

At Sony we've tried various things - like automatically
stripping init scripts of uncalled branches, removing
conditionals that don't apply, etc.  We've also looked
at automatically converting init scripts to C code, to
speed up execution.  You still end up with gobs of code
that doesn't apply to your situation getting executed
at boot time, an overly-complicated test scenario, and a
certain fragility in the overall init system.

One of our early efforts, getting busybox
to not fork commands in init scripts that it had as
builtins, proved to be a significant feature that is still
valuable today to improve boot time.

What we have settled on as a generic solution is basically
what I described in response to Darren's initial post.
You have a list of the short shell snippets required to start
commonly-used services in /etc/rc.local.  These
are commented out by default, but a developer or product
team can uncomment them to enable the associated services.
This keeps everything in one place and provides developers
the commands needed to start things.  Customization to
handle interactions or special cases can proceed from
there.  It's not ideal, in that a developer may have to
re-create or rediscover some configuration, setting, or
start sequence to handle a more complicated usage scenario.
But in order to hit our targets for size or boot time, it
has been helpful to do things this way.  The developer is
forced to manually enable each service, and the start
sequence, commands and command parameters are obvious
from the script.  (This is rarely true of init scripts).

If anyone has good ideas or other experience for
the init sequence for highly customized,
resource-constrained products, I'd like to hear about
them.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


