Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21F9C4C803E4
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 16:48:29 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jul 2011 14:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,284,1309762800"; d="scan'208";a="33525443"
Received: from unknown (HELO [10.255.14.105]) ([10.255.14.105])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jul 2011 14:48:28 -0700
Message-ID: <4E31D93E.2000606@linux.intel.com>
Date: Thu, 28 Jul 2011 14:48:46 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Ourada, Paul" <Paul.Ourada@Covidien.com>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org><1311052872-10569-2-git-send-email-galak@kernel.crashing.org><CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com><4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>	<E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>
	<2A069A8019B2DF43BD330EE490B1EF527F2A16@TAMANS-BE04.thcg.net>
In-Reply-To: <2A069A8019B2DF43BD330EE490B1EF527F2A16@TAMANS-BE04.thcg.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Trying to create OpenDDS recipe
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
X-List-Received-Date: Thu, 28 Jul 2011 21:48:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Paul,

On 07/19/2011 07:41 AM, Ourada, Paul wrote:
> I hope this is the correct place to post this. If not, please let me
> know.

This is the right place. In the future please don't reply to an existing
post as your message then gets threaded with the one you replied to
(likely why you didn't receive a response so far - that I see anyway).

> 
> I'm trying to create a recipe for OpenDDS. The recipe works so far as
> fetching, unpacking, and configuration. Or it seems to. :) Part of the
> configuration piece is that it also pulls down ACE+TAO real-time CORBA.
> This part works fine as well.
> 
> I set S as follows to match the unpacking directories enforced by the
> tar file:
> 
> S = ${WORKINGDIR}/DDS
> 
> The package comes with a configuration script pre-built, and it expects
> to be told where glibc is. So, I write do_configure as follows:
> 
> EXTRA_OECONF = "-glibc=${STAGING_DIR}/${MACHINE}/usr"
> 
> do_configure() {
>     ${S}/configure ${EXTRA_OECONF}
> }
> 
> The problem that I run into is during compilation. I write the following
> for do_compile()
> 
> do_compile() {
>     oenote ${STAGING_DIR}
>     cd ${S} && make
> }

Is there a reason you are overriding configure and compile? These appear
to be autoconf projects, which should just work for recipes using
autotools.bbclass.

> 
> This works right up until there is a compile error in ACE+TAO. Of
> course, I build the entire DDS package, including ACE+TAO, with no
> hiccups in Ubuntu, so I understand that this is a
> cross-compile/environment issue.
> 
> The compile error is that it cannot find features.h, which is clearly in
> ${STAGING_LIBDIR}/${MACHINE}/usr/include. The compile command which is
> being executed is as follows (this is going to be ugly, let me know if
> there's a better way to include this, such as a pastebin somewhere):

This is better - the pastebin isn't as reliable, and having it inline to
review and for future reference is much preferred.

> 
> | make[1]: Entering directory
> `/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE
> _wrappers/TAO/TAO_IDL'
> | 
> | GNUmakefile:
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/TAO/TAO_IDL/GNUmakefile.TAO_IDL_EXE MAKEFLAGS=w
> | 
> | i586-poky-linux-g++ -march=i586
> --sysroot=/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86
> -fvisibility=hidden -fvisibility-inlines-hidden -W -Wall -Wpointer-arith
> -ggdb -pipe -D_REENTRANT -DACE_HAS_AIO_CALLS -D_GNU_SOURCE
> -I/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/AC
> E_wrappers -DACE_HAS_EXCEPTIONS -DACE_NO_INLINE -I../.. -Iinclude
> -Ibe_include -Ife -I.. -DTAO_IDL_PREPROCESSOR=\"i586-poky-linux-g++
> -march=i586 --sysroot=/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86\"
> -c -o .obj/driver/drv_preproc.o driver/drv_preproc.cpp
> | <command-line>:0:22: warning: missing terminating " character
> | In file included from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config-linux-common.h:30:0,
> |                  from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config-linux.h:14,
> |                  from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config.h:1,
> |                  from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config-macros.h:24,
> |                  from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config-lite.h:24,
> |                  from
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/os_include/os_limits.h:21,
> |                  from include/idl_defines.h:70,
> |                  from driver/drv_preproc.cpp:70:
> |
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
> wrappers/ace/config-posix.h:7:20: fatal error: unistd.h: No such file or
> directory

Do you see unistd.h under /opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86 ?


> | compilation terminated.
> | make[1]: *** [.obj/driver/drv_preproc.o] Error 1
> | make[1]: Leaving directory
> `/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE
> _wrappers/TAO/TAO_IDL'
> | make: *** [TAO_IDL_EXE] Error 2
> | ERROR: Function 'do_compile' failed (see
> /opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/temp
> /log.do_compile.17412 for further information)
> NOTE: package opendds-2.3-r0: task do_compile: Failed
> ERROR: Task 5
> (/opt/yocto/poky-bernard-5.0.1/meta/recipes-middleware/opendds/opendds_2
> .3.bb, do_compile) failed with exit code '1'
> 
> The thing that is puzzling me is that --sysroot seems to be pointing in
> the general direction of ${STAGING_DIR} and so the include directive,
> #include <features.h> should be good. I have checked, and features.h is
> in the /usr/include subdirectory there.

I see unistd.h missing, not features.h.

--
Darren

> 
> Does anyone have a clue they could lend me?
> 
> Thanks,
> 
> Paul E. Ourada
> Sr. Principal Software Engineer
> Covidien, Energy-based Devices
> 5920 Longbow Drive
> Boulder, CO 80301
> paul.ourada@covidien.com
> www.covidien.com
> Main: 303-530-2300
> Ofc: 303-581-6940
> Fax: 303-581-6741
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

