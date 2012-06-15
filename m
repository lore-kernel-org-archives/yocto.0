Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34DFDE0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 12:47:39 -0700 (PDT)
Received: from mail84-va3-R.bigfish.com (10.7.14.238) by
	VA3EHSOBE002.bigfish.com (10.7.40.22) with Microsoft SMTP Server id
	14.1.225.23; Fri, 15 Jun 2012 19:46:28 +0000
Received: from mail84-va3 (localhost [127.0.0.1])	by mail84-va3-R.bigfish.com
	(Postfix) with ESMTP id 18A9CC00FF;
	Fri, 15 Jun 2012 19:46:28 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail02.sonyusa.com;
	EFVD:NLI
X-SpamScore: -5
X-BigFish: VPS-5(zzbb2dI98dI9371I1454I1432Izz1202hzzz2fh2a8h668h839h93fhd25hf0ah)
Received-SPF: pass (mail84-va3: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail84-va3 (localhost.localdomain [127.0.0.1]) by mail84-va3
	(MessageSwitch) id 1339789586488902_16337;
	Fri, 15 Jun 2012 19:46:26 +0000 (UTC)
Received: from VA3EHSMHS030.bigfish.com (unknown [10.7.14.253])	by
	mail84-va3.bigfish.com (Postfix) with ESMTP id 69E9F2E0048;
	Fri, 15 Jun 2012 19:46:26 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	VA3EHSMHS030.bigfish.com (10.7.99.40) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Fri, 15 Jun 2012 19:46:25 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5FJlZRv007910
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 15 Jun 2012 19:47:35 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail3.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q5FJlXAc018756
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 15 Jun 2012 19:47:34 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q5FJlNRp001807;	Fri, 15 Jun 2012 19:47:23 GMT
Message-ID: <4FDB91B1.2010706@am.sony.com>
Date: Fri, 15 Jun 2012 12:49:05 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <4FD93175.7070202@linux.intel.com>
	<4FD98EA6.1050403@r-finger.com>	<4FDA530E.3090508@linux.intel.com>
	<4FDAD6D1.4050605@r-finger.com>
In-Reply-To: <4FDAD6D1.4050605@r-finger.com>
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
X-List-Received-Date: Fri, 15 Jun 2012 19:47:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 06/14/2012 11:31 PM, Tomas Frydrych wrote:
> Hi Darren,
> 
> On 14/06/12 22:09, Darren Hart wrote:
>> This solution improves the kick-the-tires
>> experience with poky-tiny, without pulling in all of init, 
> 
> I think you really should quantify what 'all of init' means, without
> this you are addressing a problem that is merely perceived. Just a quick
> look shows that the sysvinit package is about 120KB unpacked, for that
> you get a solution that is tested, robust, and supported across Yocto.

120KB (of anything) is too much to add to a system that is targeted at
being a minimal starting point.  The mechanism added here to support
local customization is about 100 bytes (including the comment).

IMHO, the whole notion of starting with a big system and
subtracting what you don't want in order to create a minimal
system is the wrong approach.  This doesn't scale (down),
because Linux and distros just keep getting bigger, and
the work required to do this subtraction effort
to continue to hit arbitrarily small footprints is
getting harder and harder over time.

A better approach is to start as small as absolutely
possible, and build up from there.  For really small
system, it is less effort to add what you want to an
essentially empty system, than to go the other direction.

With regard to sysVinit - it's a great system for end users,
because it means that packages can slot their startup and
shutdown scripts into the filesystem automatically, and
it relieves the burden of managing this from the user.
The scripts have to be written to deal with myriad
interactions with other components, and they are
somewhat bloated because of this. However, for deeply
embedded, no such automation or bloat is desired.  For
super-constrained systems, you want to recognize and
control 100% of what's running on the system.

Just to give you context, I'm striving for a system that
runs in 1MB RAM.

> 
>> Again, we're talking about 14 lines of shell, so "init system" is
>> overstating it significantly.
> 
> Sure, but every new wheel starts exactly this way, and we are already
> discussing how to make it do things that sysvinit does for you :-)

I'm not.  If this approach doesn't work for you, then feel free to
use sysvinit, or busybox init, or some other system that is more
heavy-weight than this.  There are plenty of other choices.

I realize you said that with a smiley, so I'm not trying to be
dismissive or harsh, but I do think that if you want the features
of some other init system, then the right answer is to use them,
and not complain about this one.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


