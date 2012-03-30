Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224F7E006C7
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 03:27:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Mar 2012 03:27:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="125192638"
Received: from unknown (HELO helios.localnet) ([10.252.123.235])
	by azsmga001.ch.intel.com with ESMTP; 30 Mar 2012 03:27:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: John Toomey <john.toomey@linux.intel.com>
Date: Fri, 30 Mar 2012 11:27:06 +0100
Message-ID: <1872334.hxlsnlFPh9@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <2917058.nSOBk0kvaU@helios>
References: <4F68A6F6.8080900@linux.intel.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc.
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
X-List-Received-Date: Fri, 30 Mar 2012 10:27:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 March 2012 20:05:52 Paul Eggleton wrote:
> On Thursday 29 March 2012 14:20:44 John Toomey wrote:
> > On 20/03/2012 16:56, Khem Raj wrote:
> > > go into the uclibc build tree and like kernel or busybox it will have
> > > a .config and grok that. If this is disabled then enable it in
> > > uClibc.distro file under uclibc recipes dir and rebuild uclibc.
> > > ideally these are distro knobs but for tests you can try it
> > > file ( uclibc uses kconfig )
> > 
> > I am unable to find a .config file in the uclibc build tree, can you be
> > more specific about the path i might find it at?
> > 
> > UCLIBC_HAS_RESOLVER_SUPPORT=y doesnt seem to be present in the
> > uClibc.distro file, i added it and tried running the build again with no
> > success. Is there anything else I can try?
> 
> OK, so I just gave this build a try. You can find the configuration actually
> used in the build in TMPDIR/work/i586-poky-linux-uclibc/uclibc-0.9.32-
> r4.3/git/.config  (directory names may vary slightly depending on your
> build configuration).
> 
> With master, when I checked my version of that file,
> UCLIBC_HAS_RESOLVER_SUPPORT=y is set, so apparently this feature is getting
> enabled by default. However, when I did the same on edison (which uses
> uclibc 0.9.32 as opposed to 0.9.33) that setting is not present. Digging
> around I'm beginning to wonder if this option was perhaps added in uclibc
> 0.9.33, which if true would explain why it is not present when building
> uclibc in edison; but does that mean the underlying functionality was added
> in that version or just the option?

More detective work - the dn_comp() function was indeed not in uclibc until 
0.9.33; also, the reference to dn_comp() was added in the following commit to 
iputils:

http://www.linux-
ipv6.org/gitweb/gitweb.cgi?p=gitroot/iputils.git;a=commitdiff;h=ac3fe58bc1939c8ed3cf34c30f713dfe82b27ce5

So I guess you have a few options:

1) Avoid using iputils altogether - you can get very basic versions of the 
utilities in iputils from busybox. Looks like on the face of it nothing 
depends on iputils but it is pulled in via task-core-basic (which is pulled in 
by core-image-basic).

2) Upgrade to uclibc 0.9.33 (can be done in a separate layer on top of edison)

3) Patch iputils to remove the call to this function and any others that 
aren't in uclibc 0.9.32

4) Patch iputils to not build ping6

5) Build an older version of iputils

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

