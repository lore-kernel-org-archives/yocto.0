Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 018A94C8086F
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 05:56:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2011 03:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="874636963"
Received: from unknown (HELO helios.localnet) ([10.255.16.87])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 03:56:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: yocto@yoctoproject.org
Date: Wed, 5 Jan 2011 11:56:08 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1294102657.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1294102657.git.elizabeth.flanagan@intel.com>
MIME-Version: 1.0
Message-Id: <201101051156.09408.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/1] Autobuilder fixes and added functionality
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
X-List-Received-Date: Wed, 05 Jan 2011 11:56:53 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 04 January 2011 00:58:43 Beth Flanagan wrote:
> Some minor fixes to the Autobuilder. I've reverted to Buildbot 0.8.2 for the
> time being, as well as fixed some issues with poky-autobuild-generate-
> sources-tarball.
> 
> There is also a nasty issue when you have easy_install installed on a
> system. The BB installer will attempt to install via easy_install, however,
> if the install directory does not exist, it fails to install. I now create
> the install directories beforehand.
> 
> This is actually something that should be fixed on the BB side, and when I
> have some time I'll look at it.
> 
> I've also added a --installbase option which does away with having to set
> all of the --(*)dir= options when you are trying to relocate the install
> from ~.

FYI I've attempted to install the autobuilder on my Fedora build box, however I ran into a few issues:

1) If you git clone poky-autobuilder into your home directory the install script falls over because it tries to create that same named directory by default. Of course you can override this path or clone it somewhere else but it would be nice if it could work out of the box.

2) The install script doesn't handle Python 2.7, but only due to paths. I have a patch for this which I'll post when your latest patches are merged.

3) BuildBot 0.8.2 unfortunately suffers from buildbot bug #1697 on my system, making it not very useful (as you can't view any of the build logs through the web interface). It's fixed in 0.8.3. More details:

   http://trac.buildbot.net/ticket/1697

4) Looking through the logs locally I found some disturbing output from poky, I guess I may have missed some configuration option, or otherwise something else is going badly wrong:

----- snip -----
NOTE: package quilt-native-0.48-r0: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Started
NOTE: package m4-native-1.4.15-r0: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package autoconf-native-2.65-r2: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package automake-native-1.11.1-r1: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package libtool-native-2.4-r0: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package zlib-native-1.2.5-r0: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
NOTE: package unifdef-native-2.6.18+git-r0: task do_unpack: Started
NOTE: package ncurses-native-5.7-r0: task do_fetch: Started
ERROR: Error, lockfile path is not writable!: /
ERROR: Function 'Unknown fetch Error: 1' failed
NOTE: package quilt-native-0.48-r0: task Unknown fetch Error: 1: Failed
----- snip -----

(Interesting also that the function / task names are being replaced with the result message, is this expected behaviour from poky?)

5) I did try with 0.8.3 earlier (i.e. without your patch), but I suspect I was hit by the git poller problem that 0.8.3p1 is supposed to fix as there were a lot of strange bitbake parsing errors. I also found that I needed to have python-jinja2 and python-setuptools installed, whereas with your latest patch using 0.8.2 it seemed to be installing local copies of these (along with twisted).

Cheers,
Paul

