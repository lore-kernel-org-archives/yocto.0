Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A084E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 17:56:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2011 17:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,446,1315206000"; d="scan'208";a="80669005"
Received: from unknown (HELO envy.home) ([10.255.15.215])
	by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2011 17:56:27 -0700
Message-ID: <4EB1E5F1.3050106@linux.intel.com>
Date: Wed, 02 Nov 2011 17:53:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.2
Subject: Help diagnosing a build failure involving ncurses, gettext, and eglibc
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
X-List-Received-Date: Thu, 03 Nov 2011 00:56:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I ran into various issues trying to add mtd-utils to an image today. As
I worked through the issues, I found after fixing a couple things, I was
more guessing and grasping at straws than anything else. I'll recount
what I did, and if anyone can offer a better approach to what I did that
would have resulted in a more deterministic result, I'd appreciate it
very much.

I copied meta-tiny to a new layer. I disabled uclibc (so I'm building
with eglibc). I added mtd-utils from OE and used the DEPENDS line using
util-linux (and not util-linux-ng which we don't have in yocto). This
resulted in ncurses failing the qa configure with host contamination
with the widec headers. I first attempted to enable widechar support in
my DISTRO_FEATURES_LIBC, and rebuild eglibc. This didn't solve the
problem. This turns out to be due to ncurses configuring in widechar
support regardless of whether or not you plan to use it (it does a widec
and a narrowc configure and only builds and installs widec if you set
ENABLE_WIDEC="true". I set that to false and hacked out the widec config
step which allowed ncurses to build. I'll send a proper fix for this
tomorrow.

The next failure was with gettext compilation. Several errors about
wchar related functions being redefined in incompatible ways. I thought
this might be related to DISTRO_FEATURES_LIBC changes I made, so I
commented them all out and rebuilt eglibc so it should be using the
default Poky distro configuration for eglibc (which I assumed gettext
was known to compile with). Gettext would still not compile, claiming
the redefined functions were first defined in /usr/include/wchar.h.
Confused, thinking I had just rebuilt eglibc, I did another cleanall of
eglibc and gettext and a rebuild. Same result.

Not trusting the sanity of my tmp tree at this point, I deleted tmp and
pseudodone and rebuilt the image. Everything succeeded and my final
image with mtd-utils included was built.

I tried to capture my complete log, but screen froze on me while trying
to paste the buffer into a log :( So besides writing a bitbake wrapper
to ensure I record ALL my bitbake sessions for reference, what would you
recommend I change in the above process? What could I have done to
either avoid deleting tmp or to have identified a possible bug that
required me to delete tmp?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

