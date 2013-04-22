Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F08E006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 09:14:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Apr 2013 09:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,527,1363158000"; d="scan'208";a="299093803"
Received: from unknown (HELO [10.255.14.66]) ([10.255.14.66])
	by orsmga001.jf.intel.com with ESMTP; 22 Apr 2013 09:14:41 -0700
Message-ID: <1366647280.1627.7.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 22 Apr 2013 11:14:40 -0500
In-Reply-To: <alpine.DEB.2.02.1304221056510.7236@oneiric>
References: <alpine.DEB.2.02.1304221056510.7236@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: remaining comments on current BSP developers guide
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
X-List-Received-Date: Mon, 22 Apr 2013 16:14:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-04-22 at 12:00 -0400, Robert P. J. Day wrote:
> (again, someone up the food chain can decide what's worth
> processing.)
> 

Thanks for all your comments - I'll submit some patches to the docs when
I get a chance, but see below..

> 1.6.1 Common Features
> 
> * "Both tools [yocto-bsp and yocto-kernel] reside in the scripts/
> subdirectory of the Source Directory." no, they don't, they're in
> meta-yocto/scripts/, so simply sourcing oe-init-build-env isn't
> sufficient to add them to the search path, is it? (i'm guessing it
> used to be, but no longer.)
> 

Not sure what you're looking at to see that.  This is what I have:

[trz@empanada dylan-cur]$ pwd
/home/trz/yocto/dylan-cur
[trz@empanada dylan-cur]$ ls
bitbake        LICENSE   meta-intel     meta-yocto-bsp     README
build          meta      meta-skeleton  oe-init-build-env  README.hardware
documentation  meta-hob  meta-yocto     poky-extras        scripts
[trz@empanada dylan-cur]$ ls -al meta-yocto
total 24
drwxrwxr-x.  6 trz trz 4096 Apr 17 11:31 .
drwxrwxr-x. 14 trz trz 4096 Apr 17 14:20 ..
drwxrwxr-x.  2 trz trz 4096 Apr 17 11:31 classes
drwxrwxr-x.  3 trz trz 4096 Apr 17 11:31 conf
drwxrwxr-x.  5 trz trz 4096 Apr 17 11:31 recipes-core
drwxrwxr-x.  3 trz trz 4096 Apr 17 11:31 recipes-kernel
[trz@empanada dylan-cur]$ ls -al scripts/yocto*
-rwxrwxr-x. 1 trz trz  5302 Apr 17 11:31 scripts/yocto-bsp
-rwxrwxr-x. 1 trz trz 12957 Apr 17 11:31 scripts/yocto-kernel
-rwxrwxr-x. 1 trz trz  4840 Apr 17 11:31 scripts/yocto-layer


No scripts/ in meta-yocto, etc.  So things should work as expected with
sourcing oe-init-build-env, etc.

> 1.6.2 Creating a new BSP Layer ...
> 
>      $ yocto-bsp list karch
>      Architectures available:
>          qemu
>          x86_64
>          i386
>          powerpc
>          arm
>          mips
> 
>   but if you run that, you get the additional arch "layer". where's
> that coming from? is it a holdover from before there was a yocto-layer
> command? i never noticed that before now.
> 

Right, that's a bug - 'layer' does come from the new yocto-layer command
and shouldn't be there..

> * "Assuming you have sourced the environment ..." Again, you don't get
> these utilities in your PATH by sourcing the environment, you need to
> do that manually.
> 

See above..

Tom

> * "...pressing enter and providing an invalid response..." um, what is
> that supposed to say?
> 
> * Point 6.  Do you actually need to include the meta-yocto and
> meta-yocto-bsp layers in this new layer's bblayers.conf file? I don't
> see why but maybe I'm missing something obvious.
> 
> * also, typo "BBLAYERS = ?"
> 
>   i think that's everything.
> 
> rday
> 



