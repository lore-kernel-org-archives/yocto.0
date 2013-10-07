Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEB4FE016BB
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 00:05:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Oct 2013 00:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1048,1371106800"; d="scan'208";a="406399967"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.41])
	by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2013 00:05:16 -0700
Date: Mon, 7 Oct 2013 10:05:15 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Message-ID: <20131007070515.GB9225@lpalcu-linux>
References: <CAMCfZKEZy-+xNxwnoOjt+wonqJq8RNQDpqFrYLdkPQj8ZP2yAw@mail.gmail.com>
	<524ECE1A.7060409@horus.es>
	<CAMCfZKGMJ-66GbWcWOJ5YWY5iyw9QSfO_znX3Bdd70jgjLu9Cg@mail.gmail.com>
	<524ED272.6020008@horus.es>
	<CAMCfZKFwMdDdo7R9APFOAesfSW50UxOMQP+qZ+D=1tL4PLg0nA@mail.gmail.com>
	<CAMCfZKG8QZPsWMueduTEant+iGtXQT=ypPcGm9jhLJgb1gaq6Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMCfZKG8QZPsWMueduTEant+iGtXQT=ypPcGm9jhLJgb1gaq6Q@mail.gmail.com>
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
X-List-Received-Date: Mon, 07 Oct 2013 07:05:41 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Diego,

On Fri, Oct 04, 2013 at 05:26:06PM -0300, Diego Sueiro wrote:
> Folks,
> 
> I've found the issue.
> I was installing the poky toolchain outside the default path (/opt/opky/1.4.2).
> After installing on default path, Qt creator was enable to find the right QT
> version. I compiled an example and loaded it on board without any issues.
> 
> I discovered it before seeing an warning message from Qt creator saying that it
> could not find the qmake.conf on /opt/opky/1.4.2/<...>/usr/mkspec/default/
> qmake.conf.
> 
> Lesson learned: don't change the default toolchain insatallation path,
> otherwise something will not work properly.
> 
> Can someone explain this behavior? Since you can choose a path to install the
> toolchain it must have to work out of the box.
It's a little more complicated than that. After building the toolchain,
all binaries have the default absolute path to the dynamic loader
(/opt/poky/...) hardcoded in the elf INTERP section. This is easy to
change. However, other binaries may or may not have other hardcoded
paths to search for different things (like configs, etc.). Most of these
could be easily fixed by providing the binary with an option or setting
an environment variable to instruct it where to find what it needs. Take
for example the gcc --sysroot option. By default gcc will search for the
sysroot in the default location (starting with /opt/poky), but providing
a --sysroot option, we override this default path.

So, even though, for relocation, changing the INTERP section may suffice
for most of the binaries, some may need more tweaking.

A quick search on google brought me to this page:
http://qt-project.org/doc/qt-4.8/qmake-environment-reference.html

It turns out that QMAKESPEC environment variable is what QT creator
looks at to be able to locate qmake.conf. So, perhaps, we need to add
this to the environment file and the problem should be fixed...

Can you please test this?

Thanks,
Laurentiu

> 
> 
> 
> 
> 
> 
> 
> Abraços,
> 
> --
> *dS
> Diego Sueiro
> 
> Administrador do Embarcados
> www.embarcados.com.br
> 
> Engenheiro de Controle e Automação
> UNIVERSIDADE FEDERAL DE ITAJUBÀ
> 
> /*long live rock 'n roll*/
> 
> 
> 2013/10/4 Diego Sueiro <diego.sueiro@gmail.com>
> 
>         Hello
>         Yocto dylan+ meta-toolchain-qt as Joerg's document says.
>         Best regards
> 
> 
>     Jose,
> 
>     I'm a little bit confused.
>     Did you compiled qt-everywhere-opensource-src-4.8.4 for your host machine
>     and added it's qmake to Qt creator?
>     Then add yocto sysroot, gdb and gcc to Qt creator?
>     Could you please pont me step-by-step how did you get it working?
> 
>     If add Yocto's qmake toolchain on Qt Creator I get the version error.
>    
>     DIego Sueiro
>    
>     2013/10/4 Jose Mª Ferreiro <jose.ferreiro@horus.es>
> 
> 
>         El 04/10/2013 16:30, Diego Sueiro escribió:
> 
>             2013/10/4 Jose Mª Ferreiro <jose.ferreiro@horus.es>
> 
>                 Hello Diego
> 
>                 We have had success doing a mix from these documents:
>                  - install host qt libraries: http://qt-project.org/doc/qt-4.8/
>                 install-x11.html
>                  - install host qt creator: http://labs.isee.biz/index.php/
>                 How_to_install_Qt_Creator#Configure_Yocto_SDK
>                  - yocto steps: https://community.freescale.com/thread/309578 ,
> 
>                 on a imx6Q Sabe Lite board being the host an Ubuntu 12.04.
> 
>                 Good luck
> 
> 
>             Jose,
> 
>             Thanks for the info.
> 
>             Which poky branch/version are you using?
>             Did you use the meta-toolchain from poky or the arm gcc from
>             Ubuntu?
> 
> 
>         Hello
> 
>         Yocto dylan+ meta-toolchain-qt as Joerg's document says.
> 
>         Best regards
> 
> 
>             Regards,
> 
>             --
>             *dS
>             Diego Sueiro
> 
>              
> 
> 
> 
>                 El 04/10/2013 14:45, Diego Sueiro escribió:
> 
>                     Folks,
> 
>                     After a lots of internet search, including this ML threads,
>                     i did not find any solution for this.
> 
>                     I'm having issues to integrate meta-toolchain-qt
>                     and meta-toolchain-qte with Qt Creator 2.8.1.
>                     I'm using this environment:
> 
>                         Build Configuration:
>                         BB_VERSION        = "1.18.0"
>                         BUILD_SYS         = "x86_64-linux"
>                         NATIVELSBSTRING   = "Ubuntu-12.10"
>                         TARGET_SYS        = "arm-poky-linux-gnueabi"
>                         MACHINE           = "beaglebone"
>                         DISTRO            = "poky"
>                         DISTRO_VERSION    = "1.4.2"
>                         TUNE_FEATURES     = "armv7a vfp neon"
>                         TARGET_FPU        = "vfp-neon"
>                         meta              
>                         meta-yocto        
>                         meta-yocto-bsp    =
>                         "dylan:560fa9ad8dd46f23cff7a2e88a3492c363314b29"
>                         meta-ti           =
>                         "dylan:24edd661d5e8fce3689bdd2c89e0105af8080152"
> 
> 
>                     When I configure the qmake path on Qt Creator I get the
>                     following message:
> 
>                         "Qt version is not properly installed please run make
>                         install"
> 
> 
>                     I've tried on dylan branch too, but no success.
> 
>                     So, I tried to use Angstrom's setup-scripts
>                     on angstrom-v2013.06-yocto1.4 branch. And it came with the
>                     issue related with "error while loading shared libraries:
>                     __vdso_time: invalid mode for dlopen(): Invalid argument".
>                     So, I switched to Fedora 19 and it has gone, but the
>                     invalid Qt version problem remains.
>                    
>                     I tried, without success, to compile by myself the 
>                     qt-everywhere-opensource-src-4.8 these toolchains:
> 
>                         angstrom-eglibc-x86_64-cortexa8hf-vfp-neon-toolchain-qte-v2013.06
>                         poky-eglibc-x86_64-arm-toolchain-qte-1.4.2
> 
>                    
>                     If someone could successfully use meta-toolchain-qte with
>                     Qt Creator, please point me the right directions to achieve
>                     this. 
> 
>                     I really need some help to get a qt4-embedded toolchain
>                     working.
>                    
>                     Kind Regards,
> 
>                     --
>                     *dS
>                     Diego Sueiro
> 
>                     /*long live rock 'n roll*/
> 
>                    
> 
>                     _______________________________________________
>                     yocto mailing list
>                     yocto@yoctoproject.org
>                     https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org
>                 https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 
> 
> 
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org
>         https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 
> 

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


