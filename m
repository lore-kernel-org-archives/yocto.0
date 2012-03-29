Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5606BE013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:05:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2012 12:05:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123216771"
Received: from unknown (HELO helios.localnet) ([10.252.123.242])
	by orsmga001.jf.intel.com with ESMTP; 29 Mar 2012 12:05:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 20:05:52 +0100
Message-ID: <2917058.nSOBk0kvaU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F7461AC.7050202@linux.intel.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com>
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 29 Mar 2012 19:05:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 March 2012 14:20:44 John Toomey wrote:
> On 20/03/2012 16:56, Khem Raj wrote:
> > go into the uclibc build tree and like kernel or busybox it will have
> > a .config and grok that. If this is disabled then enable it in
> > uClibc.distro file under uclibc recipes dir and rebuild uclibc.
> > ideally these are distro knobs but for tests you can try it
> > file ( uclibc uses kconfig )
> 
> I am unable to find a .config file in the uclibc build tree, can you be
> more specific about the path i might find it at?
> 
> UCLIBC_HAS_RESOLVER_SUPPORT=y doesnt seem to be present in the
> uClibc.distro file, i added it and tried running the build again with no
> success. Is there anything else I can try?

OK, so I just gave this build a try. You can find the configuration actually 
used in the build in TMPDIR/work/i586-poky-linux-uclibc/uclibc-0.9.32-
r4.3/git/.config  (directory names may vary slightly depending on your build 
configuration). 

With master, when I checked my version of that file, 
UCLIBC_HAS_RESOLVER_SUPPORT=y is set, so apparently this feature is getting 
enabled by default. However, when I did the same on edison (which uses uclibc 
0.9.32 as opposed to 0.9.33) that setting is not present. Digging around I'm 
beginning to wonder if this option was perhaps added in uclibc 0.9.33, which 
if true would explain why it is not present when building uclibc in edison; 
but does that mean the underlying functionality was added in that version or 
just the option?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

