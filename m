Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 184174C801D0
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 18:18:00 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jun 2011 16:17:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,440,1304319600"; d="scan'208";a="24030378"
Received: from swold-mobl.jf.intel.com (HELO [10.24.0.56]) ([10.24.0.56])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2011 16:17:50 -0700
Message-ID: <4E0A611D.9040604@linux.intel.com>
Date: Tue, 28 Jun 2011 16:17:49 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
References: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
In-Reply-To: <CFBC532374C38D45810FA00BC2D2C204016E851A48@irsmsx502.ger.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting pseudo from yocto/poky toolchain working with my	build
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
X-List-Received-Date: Tue, 28 Jun 2011 23:18:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Bryan,

Honestly this is not something we have tried, since we use the tools 
built during the bitbake process itself.  The tools generated for the
SDK are configured differently. I understand what you are trying to do here.

Have you tried a clean generic build, ie not using the 
environment-setup-i586* script or ASSUME_PROVIDED.

Did you look at the www.yoctoproject.org Quickstart Doc?  It looks like 
you might have.

Some additional comments below.

Sau!

On 06/28/2011 10:29 AM, O'donoghue, Bryan wrote:
> Greetings list.
>
> Having a bit of an issue getting pseudo working when building poky-image-minimal @ poky-bernard-5.0.1
>
> I'm running Debian 6.0.1. I've attempted to set up as many of the native packages as possible, to reduce compile time and I'm also using the yocto supplied gcc toolchain.
>
> http://yoctoproject.org/downloads/yocto-1.0/toolchain/
>
> root@wintermute# apt-get install sed wget cvs subversion git-core coreutils unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk python-pysqlite2 diffstat help2man make gcc build-essential g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff git-core automake autoconf psyco quilt libtool gettext tcl sqlite3 libsqlite3-dev
>
> I've installed /opt/poky/1.0/environment-setup-i586-poky-linux.
> I've downloaded poky-bernard-5.0.1.tar.bz2 and extracted it to ~/Development/yocto
>
> I do the following
>
> 1.
>
> source poky-bernard-5.0.1/poky-init-build-env poky-5.0.1-build
>
> 2.
>
> vim conf/local.conf
>
> ------------------------
>
> INHERIT += rm_work
>
> ASSUME_PROVIDED += "m4-native tcl-native gettext-native libtool-native quilt-native autoconf-native automake-native perl-native sqlite3-native tar-replacement-native pseudo-native"
>
> CVS_PROXY_HOST = "http://aaa.bbb.com"
> CVS_PROXY_PORT = "1984"
>
>
> 3.
>
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ source /opt/poky/1.0/environment-setup-i586-poky-linux
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ $CC -v
> Using built-in specs.
> COLLECT_GCC=i586-poky-linux-gcc
> COLLECT_LTO_WRAPPER=/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/lto-wrapper
> Target: i586-poky-linux
>
> <snip>
> Thread model: posix
> gcc version 4.5.1 (GCC)
>
>
> 4.
>
> bitbake -v -k poky-image-minimal
>
> 5.
>
> I'm having a bit of difficulty with pseudo in the build though. I've tried building pseudo - which chokes on sqlite3 - and then I thought it might be an idea to use the pseudo that comes with the toolchain provided on the website.
>

I would be good to get the failure information, my guess is that the 
host version of sqlite3 is not what psuedo needs, so it's failing
> 5a.
>
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ which pseudo
> /opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin/pseudo
>
>
> bitbake doesn't pick it up though
>
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ bitbake -v -k poky-image-minimal
> Pseudo is not present but is required, building this first before the main build
>
> <snip>
>
> NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun and 0 failed.
> /home/deckard/Development/yocto/poky-bernard-5.0.1/scripts/bitbake: line 55: /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/usr/bin/pseudo: No such file or directory
>
There are some tests in bitbake for pseudo, I would be good to see your 
full log, to understand what tasks ran and did not run,
>
> 5b.
>
> I try to set that explicitly by setting PSEUDOBINDIR
>
> export PSEUDOBINDIR=/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin
>
> Same error.
>
>
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ export PSEUDOBINDIR=/opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin
> deckard@wintermute:~/Development/yocto/poky-5.0.1-build$ bitbake -v -k poky-image-minimal
> Pseudo is not present but is required, building this first before the main build
> <snip>
>
> /home/deckard/Development/yocto/poky-bernard-5.0.1/scripts/bitbake: line 55: /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/i686-linux/usr/bin/pseudo: No such file or directory
>
> Is there a way to get bitbake to recognize the pseudo in /opt/poky/1.0/sysroots/i686-pokysdk-linux/usr/bin/pseudo without modifying the bitbake script - or am I taking the wrong approach here ?
>
> 6.
>
> I've tried building pseudo but, get errors with using sqlite3-native == /home/deckard/Development/yocto/poky-5.0.1-build/tmp/sysroots/ as opposed to /usr/include/sqlite3.h - and errors with building sqlite3 of a different sort.
>
>
> Is there a solution that's evading me here ?
>
> My preference obviously is to use as many native packages as possible to reduce disk space, and cycles.
>
This is probably not possible, given the potential differences in 
configuration for what Yocto needs. This may have been possible with 
past releases, but as you discovered not at this point.


Sau!

> Any pointers appreciated.
>
>
> Bryan
> -------------------------------------------------------------
> Intel Ireland Limited (Branch)
> Collinstown Industrial Park, Leixlip, County Kildare, Ireland
> Registered Number: E902934
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

