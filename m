Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E28CE009C3; Wed, 25 Nov 2015 14:38:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB0EE007C9
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 14:38:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tAPMcD4A002467
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Nov 2015 14:38:13 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Wed, 25 Nov 2015 14:38:12 -0800
To: Michael Habibi <mikehabibi@gmail.com>
References: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
	<5654D545.1090408@windriver.com> <5655CD70.9010109@windriver.com>
	<CAOsp8o95H4gnBN9oCn=AYdX91gecJ-Sqw9yQDW3nouoKu7uNMQ@mail.gmail.com>
	<CAOsp8o-9MdG3sFpT-fpfs9imi4UFRJrPRDPMOvAcafoJS94cxw@mail.gmail.com>
	<CAOsp8o_3mbD=ns1pWZdHPAtn0Z7VRyHdbTn00xg69v6rLpJ5FQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56563853.8090304@windriver.com>
Date: Wed, 25 Nov 2015 16:38:11 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o_3mbD=ns1pWZdHPAtn0Z7VRyHdbTn00xg69v6rLpJ5FQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Cross-compiling python fails with new custom tuning
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
X-List-Received-Date: Wed, 25 Nov 2015 22:38:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On 11/25/15 10:11 AM, Michael Habibi wrote:
> Well, I'm wrong yet again. A 'which python2.7' shows that it's pointing to a
> native version of Python:
> 
> *| which python2.7*
> *|
> /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/python2.7*
> |
> _PYTHON_PROJECT_BASE=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build
> _PYTHON_HOST_PLATFORM=linux2-x86_64
> PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2
> python2.7 -S -m sysconfig --generate-posix-vars ;\
> |       if test $? -ne 0 ; then \
> |               echo "generate-posix-vars failed" ; \
> |               rm -f ./pybuilddir.txt ; \
> |               exit 1 ; \
> |       fi
> | Illegal instruction (core dumped)
> | make: *** [sharedmods] Error 132
> 
> I guess one of the environmental variables being passed in is screwing up what
> it's doing. Unfortunately I don't know enough about the inner workings of Python
> to be of much help moving forward. I gave it my best shot!

The problem I tracked down was:

PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7

This is full of .so objects when loaded cause the illegal instruction.

I came up with a patch that I thought was going to fix it, but it's triggered
other failures.

http://lists.openembedded.org/pipermail/openembedded-core/2015-November/113341.html

Just to be clear.. this does NOT work properly in many cases.  But might give
you or someone else a clue as to how to possibly fix it.

--Mark

> 
> On Wed, Nov 25, 2015 at 10:01 AM, Michael Habibi <mikehabibi@gmail.com
> <mailto:mikehabibi@gmail.com>> wrote:
> 
>     Ah sorry, I misspoke. I walked through the Makefile and configure scripts a
>     bit more, and $(PYTHON_FOR_BUILD) should in fact be a host version of
>     Python. It seems it's not being configured correctly. Either the path is
>     setup wrong and python2.7 is not pointing to the right version, or python2.7
>     needs to be pointing to the absolute path instead of relying on $PATH.
> 
> 
> 
> 
>     On Wed, Nov 25, 2015 at 9:45 AM, Michael Habibi <mikehabibi@gmail.com
>     <mailto:mikehabibi@gmail.com>> wrote:
> 
>         For what it's worth, this is the offending portion of Makefile.pre:452:
> 
>         # Create build directory and generate the sysconfig build-time data there.
>         # pybuilddir.txt contains the name of the build dir and is used for
>         # sys.path fixup -- see Modules/getpath.c.
>         # Since this step runs before shared modules are built, try to avoid
>         bootstrap
>         # problems by creating a dummy pybuilddir.txt just to allow interpreter
>         # initialization to succeed.  It will be overwritten by generate-posix-vars
>         # or removed in case of failure.
>         pybuilddir.txt: $(BUILDPYTHON)
>         → @echo "none" > ./pybuilddir.txt
>         → $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig --generate-posix-vars ;\
>         → if test $$? -ne 0 ; then \
>         → → echo "generate-posix-vars failed" ; \
>         → → rm -f ./pybuilddir.txt ; \
>         → → exit 1 ; \
>         → fi
> 
>         I don't know enough about the Python build to understand what it's
>         trying to do, but perhaps replacing PYTHON_FOR_BUILD with HOSTPYTHON may
>         be acceptable?
> 
>         I'm surprised this seems to work for other people, since this should be
>         failing for anyone using Python on a target platform different from
>         their host.
> 
>         On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle <mark.hatle@windriver.com
>         <mailto:mark.hatle@windriver.com>> wrote:
> 
>             On 11/24/15 3:23 PM, Mark Hatle wrote:
>             > My guess is that there is a bug in the python integration where
>             it's not
>             > realizing the host and target are different systems, so it's
>             trying to run a
>             > target program on your host.  Your host isn't haswell, so...
>             Illegal Instruction
>             > -- and the system stops.
> 
>             Just an FYI, I hit the same problem today.  I suspect it is the host
>             trying to
>             run target software and I'm looking into it.
> 
>             --Mark
> 
>             > The alternative would be something is running QEMU to execute a
>             target binary
>             > and QEMU doesn't have instruction support -- but that doesn't look
>             like the case
>             > here.
>             >
>             > --Mark
>             >
>             > On 11/24/15 3:06 PM, Michael Habibi wrote:
>             >> All,
>             >>
>             >> I added a new machine definition with tuning parameters for haswell
>             >> microarchitectures (basically just duplicated corei7 but tuned it
>             for haswell).
>             >> This seems to work correctly, but failed when running do_install
>             for python
>             >> toward the end of the build process. I am running with the Yocto
>             2.0 framework,
>             >> with very minimal changes to create a new distribution and
>             machine for our
>             >> custom embedded device. Note I had this distro configuration
>             working before, and
>             >> the only difference is I added a new machine with this tuning.
>             >>
>             >> I believe the issue is because, as part of the do_install step
>             for Python, it
>             >> attempts to run python on the local host, despite being
>             cross-compiled. However,
>             >> it is tuned for a processor that my host machine doesn't run, so
>             I get an
>             >> instruction exception.
>             >>
>             >> Did I do something weird? I figure python would be configured for
>             >> cross-compiling and therefore wouldn't try to run the target
>             version on the
>             >> host, even for sanity tests. Here is the output of the failure:
>             >>
>             >> $ tail -20
>             >>
>             /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258
>             >>
>             >> x86_64-diags-linux-ar rc libpython2.7.a Modules/threadmodule.o
>             >>  Modules/signalmodule.o  Modules/posixmodule.o  Modules/errnomodule.o
>             >>  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o
>             >>  Modules/_weakref.o  Modules/zipimport.o  Modules/symtablemodule.o
>             >>  Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
>             >> x86_64-diags-linux-ranlib libpython2.7.a
>             >> Modules/posixmodule.o: In function `posix_tmpnam':
>             >>
>             /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7575:
>             >> warning: the use of `tmpnam_r' is dangerous, better use `mkstemp'
>             >> Modules/posixmodule.o: In function `posix_tempnam':
>             >>
>             /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7522:
>             >> warning: the use of `tempnam' is dangerous, better use `mkstemp'
>             >> x86_64-diags-linux-gcc  -m64 -march=haswell -mtune=haswell
>             -mfpmath=sse -mavx2
>             >> --sysroot=/projects/yocto-git/build/tmp/sysroots/continental -Wl,-O1
>             >> -Wl,--hash-style=gnu -Wl,--as-needed -Xlinker -export-dynamic -o
>             python \
>             >>                         Modules/python.o \
>             >>                         -L. -lpython2.7 -lpthread -ldl  -lpthread
>             -lutil   -lm
>             >>
>             _PYTHON_PROJECT_BASE=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build
>             >> _PYTHON_HOST_PLATFORM=linux2-x86_64
>             >>
>             PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2
>             >> python2.7 -S -m sysconfig --generate-posix-vars ;\
>             >>         if test $? -ne 0 ; then \
>             >>                 echo "generate-posix-vars failed" ; \
>             >>                 rm -f ./pybuilddir.txt ; \
>             >>                 exit 1 ; \
>             >>         fi
>             >> Illegal instruction (core dumped)
>             >> make: *** [sharedmods] Error 132
>             >> WARNING: exit code 1 from a shell command.
>             >> ERROR: oe_runmake failed
>             >> ERROR: Function failed: do_install (log file is located at
>             >>
>             /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258)
>             >>
>             >> Here is my tune-haswell.inc (ignore some copy/paste comment
>             issues right now =):
>             >>
>             >> # Settings for the GCC(1) cpu-type "haswell":
>             >> #
>             >> #     Intel Core i7 CPU with 64-bit extensions, MOVBE, MMX, SSE,
>             SSE2, SSE3,·
>             >> #     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCLMUL,
>             FSGSBASE,
>             >> #     RDRND, FMA, BMI, BMI2 and F16C instruction set support.
>             >> #
>             >> # This tune is recommended for Intel Nehalem and Silvermont (e.g.
>             Bay Trail) CPUs
>             >> # (and beyond).
>             >> #
>             >> DEFAULTTUNE ?= "haswell"
>             >>
>             >> # Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS
>             >> require conf/machine/include/tune-corei7.inc
>             >>
>             >> # Extra tune features
>             >> TUNEVALID[haswell] = "Enable haswell specific processor
>             optimizations"
>             >> TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "haswell", "
>             >> -march=haswell -mtune=haswell -mfpmath=sse -mavx2", "", d)}"
>             >>
>             >> # Extra tune selections
>             >> AVAILTUNES += "haswell"
>             >> TUNE_FEATURES_tune-haswell = "${TUNE_FEATURES_tune-x86-64} haswell"
>             >> BASE_LIB_tune-haswell = "lib"
>             >> TUNE_PKGARCH_tune-haswell = "haswell"
>             >> PACKAGE_EXTRA_ARCHS_tune-haswell =
>             "${PACKAGE_EXTRA_ARCHS_tune-corei7} haswell"
>             >>
>             >>
>             >>
>             >
> 
>             --
>             _______________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 


