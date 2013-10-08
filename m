Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 868D3E0169B
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 10:31:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Oct 2013 10:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1057,1371106800"; d="scan'208";a="416086988"
Received: from unknown (HELO helios.localnet) ([10.252.120.174])
	by orsmga002.jf.intel.com with ESMTP; 08 Oct 2013 10:30:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ryan Kirkpatrick <linux@rkirkpat.net>
Date: Tue, 08 Oct 2013 18:30:58 +0100
Message-ID: <6281089.irBXZr162j@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.00.1309261742510.27991@magellan.rkirkpat.net>
References: <alpine.DEB.2.00.1309201728360.21975@magellan.rkirkpat.net>
	<alpine.DEB.2.00.1309261742510.27991@magellan.rkirkpat.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Mono 2.10.8.1 (meta-mono) Corelib not in sync with runtime...
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
X-List-Received-Date: Tue, 08 Oct 2013 17:31:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ryan,

On Thursday 26 September 2013 18:04:03 Ryan Kirkpatrick wrote:
> On Fri, 20 Sep 2013, Ryan Kirkpatrick wrote:
> > I am trying to get Mono 2.10 working on a core-image-basic running on
> > qemux86 machine. I am using pokay-dylan-9.0.2 on a Debian 6.0.7 system for
> > the builds and been able to build and run images without issue. Yet, when
> > I went to add the meta-mono layer from git.yoctoporject.org, I started
> > running into problems.
> > 
> > Corlib not in sync with this runtime: expected corlib version 96, found
> > 100. Loaded from: /usr/lib/mono/2.0/mscorlib.dll
> > Download a newer corlib or a newer runtime at
> > http://www.go-mono.com/daily.
> 
> I dug into the mono build and figured out that I had a version mismatch
> between 'mono' (builds the runtime for the target) and 'mono-native'
> (builds a runtime for the build system and uses it to build the corlib).
> The key was defining both of the following in local.conf, not just the
> first line which is all I had originally.
> 
> PREFERRED_VERSION_mono = "2.10.8.1"
> PREFERRED_VERSION_mono-native = "2.10.8.1"
> 
> Anyway, attached is a patch against meta-mono (from
> git://git.yoctoproject.org/meta-mono) that makes these changes:
>  - Adds a comment to the README about the two configs above.
>  - Reconfigures mono to be built without X support, skip as desired.
>  - A few packaging tweaks, namely moving the bulky *.mdb (Mono debug
>    databases) to the -dbg package.
>  - Adjustment to QA packaging checks to resolve errors encountered.
>  - Moved the mono-2.10.8.1 folder in meta-mono/recipes/mono to
>    meta-mono/recipes/mono/files so the contents can be found.
>  - Quick fix to mono-xsp recipe to avoid parsing error, probably not the
>    fix to make if mono-xsp was going to be built (but I am not).
> 
> Hope that helps some one, it does myself as I can now run Mono apps in my
> qemux86 target. Next challenge is to do the same with a qemuarm target
> (actual hardware comes later :)!

Have you sent these fixes to the layer maintainer - Autif Khan 
(autif.mlist@gmail.com) ? It would be good to get those integrated.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

