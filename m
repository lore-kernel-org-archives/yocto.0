Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A60CE00406; Wed,  2 Dec 2015 12:18:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A25C0E00349
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 12:18:53 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2015 12:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,374,1444719600"; d="scan'208";a="699000248"
Received: from lilenlim-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.174.188])
	by orsmga003.jf.intel.com with ESMTP; 02 Dec 2015 12:18:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Habibi <mikehabibi@gmail.com>
Date: Thu, 03 Dec 2015 09:18:47 +1300
Message-ID: <3766251.1tjm3ahZJD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAOsp8o8KV9PPS03KZq7jCgRrB6xWO4NZuurDpStKpVF_yRSpBA@mail.gmail.com>
References: <CAOsp8o8KV9PPS03KZq7jCgRrB6xWO4NZuurDpStKpVF_yRSpBA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_fetch hanging - any way to see debugging?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Dec 2015 20:18:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Wed, 02 Dec 2015 09:41:41 Michael Habibi wrote:
> I'm struggling with some network proxy issues and pulling down linux-yocto.
> I left my build running overnight and it simply hung at do_fetch. I tried
> using -v and -DDD but it doesn't actually show any output from the do_fetch
> recipe. I looked at the do_fetch logs and it doesn't have anything useful.
> Here are the last lines:
> 
> DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.g
> it.linux-yocto-4.1.git.tar.gz
> 
> 2015-12-02 09:21:15 ERROR 404: Not Found.
> 
> DEBUG: Trying Upstream
> DEBUG: Fetcher accessed the network with the command git -c
> core.fsyncobjectfiles=0 clone --bare --mirror
> http://git.yoctoproject.org/git/linux-yocto-4.1.git
> /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoct
> o-4.1.git DEBUG: Running export
> PATH="/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/x86
> _64-linux/usr/bin/x86_64-diags-linux:/projects/yocto-git/build/tmp/sysroots/
> continental/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroots/x86_
> 64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bi
> n:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/yocto-g
> it/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/projects
> /yocto-git/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sb
> in:/bin:/usr/games:/usr/local/games:/home/habibim/bin"; export
> HOME="/home/habibim"; git -c core.fsyncobjectfiles=0 clone --bare --mirror
> http://git.yoctoproject.org/git/linux-yocto-4.1.git
> /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoct
> o-4.1.git
> 
> I looked at a log where this succeeded, and it didn't have much more
> information:
> 
> DEBUG: Running export
> PATH="/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/x86
> _64-linux/usr/bin/x86_64-poky-linux:/projects/yocto-git/build/tmp/sysroots/g
> enericx86-64/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroots/x86
> _64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/b
> in:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/yocto-
> git/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/project
> s/yocto-git/bitbake/bin:/projects/my-distro/scripts:/projects/my-distro/bitb
> ake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/ga
> mes:/usr/local/games"; export HOME="/home/habibim"; git -c
> core.fsyncobjectfiles=0 branch --contains
> aed902160251d69cc28d1e69a4f692e8ea8fa13b --list yocto-4.1 2> /dev/null | wc
> -l
> DEBUG: Python function base_do_fetch finished
> DEBUG: Python function do_fetch finished
> 
> Note that I am using a bbappend file for my custom machine:
> 
> KBRANCH_continental  = "standard/base"
> KMACHINE_continental ?= "common-pc-64"
> COMPATIBLE_MACHINE_continental = "continental"
> 
> # 4.1.13 rev tag
> LINUX_VERSION_continental = "4.1.13"
> SRCREV_machine_continental ?= "1f2ce4a2e7aea3a2123b17aff62a80553df31e21"
> 
> # Use http protocol
> SRC_URI_continental = "git://
> git.yoctoproject.org/git/linux-yocto-4.1.git;protocol=http;name=machine;bran
> ch=${KBRANCH} "
> 
> If I comment out my overrides for SRCREV and SRC_URI, it simply pulls the
> cache (somehow I managed to pull this down before). But if I use my
> overrides (to grab a newer kernel, and to use the http protocol), it will
> simply hang indefinitely. Any way I can debug what's happening?

If it's hung here it may be because the proxy you are behind is trying to 
download and scan the file in its entirety before it allows it to be passed 
through to your download process - we've seen this before. If that's what's 
happening there's not much we can do about that beyond increasing the timeout, 
because such proxies usually do not send anything back to the client in the 
way of status. If you need to you can set FETCHCMD_wget such that the -T 
option specifies a longer timeout value.

FWIW you should be able to see exactly which wget command line is being 
executed in the fetch log - you could try run this outside of the bitbake 
environment without the -nv switch to get more information (you'd need to 
ensure the proxy environment variables are set though or you wouldn't be 
replicating the same conditions).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

