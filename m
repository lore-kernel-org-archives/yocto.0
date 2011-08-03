Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC52F4C80B87
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 12:04:11 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73H499W027837;
	Wed, 3 Aug 2011 18:04:09 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27670-04; Wed,  3 Aug 2011 18:04:05 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73H44HX027831
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 3 Aug 2011 18:04:04 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201108031707.07245.paul.eggleton@linux.intel.com>
References: <201108031707.07245.paul.eggleton@linux.intel.com>
Date: Wed, 03 Aug 2011 18:03:46 +0100
Message-ID: <1312391026.2344.713.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Autobuilder issue status
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
X-List-Received-Date: Wed, 03 Aug 2011 17:04:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-03 at 17:07 +0100, Paul Eggleton wrote:
> Richard requested a summary of the current issues shown up on the autobuilder, 
> here it is:
> 
> 1. sstate not getting cleared (autobuilder script fix needed - maybe just 
> delete the whole sstate-cache dir?)
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell/logs/stdio

Beth needs to take a look at that one I suspect.

> 2. jasperforest and sugarbay need fixing for tune file changes:
> I have a first-pass patch for this, just a matter of fixing up the machine .conf 
> files for these two layers.
> http://autobuilder.yoctoproject.org:8010/builders/jasperforest/builds/29/steps/shell_10/logs/stdio

There is a fix in master to clean up the TARGET_ARCH* variables on
x86_64. If we could follow that through into meta-intel it should
resolve much of these kinds of issues.

> 3. glibc-utils PREFERRED_PROVIDER clash:
> (There's a patch merged in master for this already)
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/57/steps/shell_6/logs/stdio

Fix should be in master.

> 4. manifest file missing in sdk build:
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
> toolchain/builds/52/steps/shell_7/logs/stdio
> 
> 5. libXinerama missing when building gtk+ 
> Not sure if this is a result of previous errors?
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> internal/builds/50/steps/shell_21/logs/stdio
> 
> 6. "perl isn't executable!":
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/60/steps/shell_26/logs/stdio

I haven't looked at these three.

> 7. -live images still being built:
> Beth was fixing (has fixed?) this. It did bring up an interesting issue in that 
> -k makes the build look like it succeeded - have filed bug #1322 for this one.
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell_10/logs/stdio

Beth should have fixed the AB issue? The bug is a lower priority but
we'll get to that. I merged the change to make atom-pc generate live
images.

> 8. meta-toolchain "/bin/sh" dependency errors:
> Richard thinks he knows what's wrong here but is unsure of the fix.
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
> toolchain/builds/55/steps/shell_14/logs/stdio

Fix should be in master.

> 9. aclocal .m4 file issue (bug #861)
> Richard has some potential suggestions, actual fix still needed though.
> http://autobuilder.yoctoproject.org:8010/builders/nightly-
> external/builds/60/steps/shell_14/logs/stdio

Fix should be in master.

> 10. beagleboard libzypp failure
> Richard has a patch for part of it, would like Mark to look into the rest:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1313

Partial fix in master, waiting on the other part from Mark.

Cheers,

Richard


