Return-Path: <laurentiu.palcu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E169BE016BE
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 05:12:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Oct 2013 05:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1050,1371106800"; d="scan'208";a="415124755"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.41])
	by orsmga002.jf.intel.com with ESMTP; 07 Oct 2013 05:12:46 -0700
Date: Mon, 7 Oct 2013 15:12:45 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Message-ID: <20131007121245.GC9225@lpalcu-linux>
References: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
	<524ECE1A.7060409@horus.es>
	<CAMCfZKGMJ-66GbWcWOJ5YWY5iyw9QSfO_znX3Bdd70jgjLu9Cg@mail.gmail.com>
	<524ED272.6020008@horus.es>
	<CAMCfZKFwMdDdo7R9APFOAesfSW50UxOMQP+qZ+D=1tL4PLg0nA@mail.gmail.com>
	<CAMCfZKG8QZPsWMueduTEant+iGtXQT=ypPcGm9jhLJgb1gaq6Q@mail.gmail.com>
	<20131007070515.GB9225@lpalcu-linux>
	<CAMCfZKGX7Giu3DhcXTofSbSQF4voERZEvTQZyBZg4kSp2ewnfg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMCfZKGX7Giu3DhcXTofSbSQF4voERZEvTQZyBZg4kSp2ewnfg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-toolchain-qt with Qt Creator
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
X-List-Received-Date: Mon, 07 Oct 2013 12:12:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Diego,

On Mon, Oct 07, 2013 at 08:18:00AM -0300, Diego Sueiro wrote:
> 2013/10/7 Laurentiu Palcu <laurentiu.palcu@intel.com>
> 
>     Hi Diego,
>     It's a little more complicated than that. After building the toolchain,
>     all binaries have the default absolute path to the dynamic loader
>     (/opt/poky/...) hardcoded in the elf INTERP section. This is easy to
>     change. However, other binaries may or may not have other hardcoded
>     paths to search for different things (like configs, etc.). Most of these
>     could be easily fixed by providing the binary with an option or setting
>     an environment variable to instruct it where to find what it needs. Take
>     for example the gcc --sysroot option. By default gcc will search for the
>     sysroot in the default location (starting with /opt/poky), but providing
>     a --sysroot option, we override this default path.
> 
>     So, even though, for relocation, changing the INTERP section may suffice
>     for most of the binaries, some may need more tweaking.
> 
>     A quick search on google brought me to this page:
>     http://qt-project.org/doc/qt-4.8/qmake-environment-reference.html
> 
>     It turns out that QMAKESPEC environment variable is what QT creator
>     looks at to be able to locate qmake.conf. So, perhaps, we need to add
>     this to the environment file and the problem should be fixed...
> 
>     Can you please test this?
> 
>     Thanks,
>     Laurentiu
> 
> 
> 
> Laurentiu,
> 
> Thanks for the explanation.
> 
> I took a look at environment-setup-armv7a-vfp-neon-poky-linux-gnueabi file and
> it is already exporting the QMAKESPEC variable to the right path.
Stupid me, I should've looked in the meta-toolchain-qt.inc first. Yes,
it appears to be set...

> Maybe this variable is overridden by another one or by Qt Creator based on some
> INTERP.
> 
> I did a "grep -r \/poky\/1\.4\.2 ./*" on the toolchain (installed outside
> default path) and this is the results:
> 
>     http://pastebin.com/us9p5vVp
> 
> 
> 
> Unfortunately I don't have enough knowledge to track this.
Would you please file a bug on this? I'll have a look as soon as I find
some time.

Thanks,
Laurentiu
> 
> 
> Regards,
> 
> --
> *dS
> Diego Sueiro
>  

