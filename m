Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75D9B4C800B2
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 11:07:09 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Aug 2011 09:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,311,1309762800"; d="scan'208";a="35047779"
Received: from unknown (HELO helios.localnet) ([10.255.18.43])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2011 09:07:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 3 Aug 2011 17:07:07 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
MIME-Version: 1.0
Message-Id: <201108031707.07245.paul.eggleton@linux.intel.com>
Subject: Autobuilder issue status
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
X-List-Received-Date: Wed, 03 Aug 2011 16:07:09 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

Richard requested a summary of the current issues shown up on the autobuilder, 
here it is:

1. sstate not getting cleared (autobuilder script fix needed - maybe just 
delete the whole sstate-cache dir?)
http://autobuilder.yoctoproject.org:8010/builders/crownbay-
noemgd/builds/27/steps/shell/logs/stdio

2. jasperforest and sugarbay need fixing for tune file changes:
I have a first-pass patch for this, just a matter of fixing up the machine .conf 
files for these two layers.
http://autobuilder.yoctoproject.org:8010/builders/jasperforest/builds/29/steps/shell_10/logs/stdio

3. glibc-utils PREFERRED_PROVIDER clash:
(There's a patch merged in master for this already)
http://autobuilder.yoctoproject.org:8010/builders/nightly-
external/builds/57/steps/shell_6/logs/stdio

4. manifest file missing in sdk build:
http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
toolchain/builds/52/steps/shell_7/logs/stdio

5. libXinerama missing when building gtk+ 
Not sure if this is a result of previous errors?
http://autobuilder.yoctoproject.org:8010/builders/nightly-
internal/builds/50/steps/shell_21/logs/stdio

6. "perl isn't executable!":
http://autobuilder.yoctoproject.org:8010/builders/nightly-
external/builds/60/steps/shell_26/logs/stdio

7. -live images still being built:
Beth was fixing (has fixed?) this. It did bring up an interesting issue in that 
-k makes the build look like it succeeded - have filed bug #1322 for this one.
http://autobuilder.yoctoproject.org:8010/builders/crownbay-
noemgd/builds/27/steps/shell_10/logs/stdio

8. meta-toolchain "/bin/sh" dependency errors:
Richard thinks he knows what's wrong here but is unsure of the fix.
http://autobuilder.yoctoproject.org:8010/builders/nightly-external-
toolchain/builds/55/steps/shell_14/logs/stdio

9. aclocal .m4 file issue (bug #861)
Richard has some potential suggestions, actual fix still needed though.
http://autobuilder.yoctoproject.org:8010/builders/nightly-
external/builds/60/steps/shell_14/logs/stdio

10. beagleboard libzypp failure
Richard has a patch for part of it, would like Mark to look into the rest:
http://bugzilla.pokylinux.org/show_bug.cgi?id=1313

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

