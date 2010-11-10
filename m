Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E3DE4C80BCF
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 08:40:32 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAAEeRdw003991;
	Wed, 10 Nov 2010 14:40:27 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03358-09; Wed, 10 Nov 2010 14:40:19 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAAEeA2G003972
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 14:40:13 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <13D7650B-314D-4B59-8374-EB632FC33394@kernel.crashing.org>
References: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
	<625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>
	<401A3267-606A-4A1E-9F45-18F75B6B3FB7@kernel.crashing.org>
	<1289395789.1272.260.camel@rex>
	<D10D6A3E-F997-489A-8921-83E5B33EE764@kernel.crashing.org>
	<1289397029.1272.315.camel@rex>
	<13D7650B-314D-4B59-8374-EB632FC33394@kernel.crashing.org>
Date: Wed, 10 Nov 2010 22:40:07 +0800
Message-ID: <1289400007.1272.445.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 14:40:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-10 at 08:22 -0600, Kumar Gala wrote:
> On Nov 10, 2010, at 7:50 AM, Richard Purdie wrote:
> 
> > On Wed, 2010-11-10 at 07:31 -0600, Kumar Gala wrote:
> >> On Nov 10, 2010, at 7:29 AM, Richard Purdie wrote:
> >> 
> >>> On Wed, 2010-11-10 at 06:32 -0600, Kumar Gala wrote:
> >>>> ERROR: Task failed: Fetch failed: Unable to fetch URL cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123 from any source.
> >>>> NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Failed
> >>>> ERROR: Task 211 (virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb, do_fetch) failed with 1
> >>>> ERROR: 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb' failed
> >>>> 
> >>>> Attached is the full log.
> >>> 
> >>> Are you behind some kind of proxy/firewall? Its interesting its a cvs
> >>> based recipe that is failing so it could be your cvs setup.
> >> 
> >> Yes, behind a proxy/firewall.  cvs is not normally allowed out.
> >> 
> >>> You could try placing
> >>> http://autobuilder.pokylinux.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz
> >>> 
> >>> into the downloads directory manually and touching the
> >>> config_cvs.sv.gnu.org__20080123.tar.gz.md5 file there to show the
> >>> fetcher the fetch is complete. If that works it would suggest the mirror
> >>> fallback code in the fetcher isn't working as intended.
> >> 
> >> I'm new to this, where would my download dir be?
> > 
> > It defaults to "build/downloads" so in the build directory unless you
> > changed it in local.conf.
> 
> Looks like that makes things work, so appears as if fallback code in the fetcher is having issues.
> 
> See the issue again with another pkg:
> 
> NOTE: Fetch cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7
> ERROR: Task failed: Fetch failed: Unable to fetch URL cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7 from any source.
> ERROR: Task 1217 (virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb, do_fetch) failed with 1
> ERROR: 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb' failed

I don't have any fix for the fetcher ready straight away but this sounds
like a testcase we can reproduce. We actually have some plans to do a
redesign of the fetcher code to address issues like this amongst other
reasons.

I did have a quick look at my downloads directory and saw these files:

apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
yaffs2_cvs.aleph1.co.uk__20071107.tar.gz
config_cvs.sv.gnu.org__20080123.tar.gz                   

which I think are the only cvs checkouts we use. You don't need the
yaffs2 one so if you download the other, your build should proceed.

Cheers,

Richard


