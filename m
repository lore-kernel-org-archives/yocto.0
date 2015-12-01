Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85D17E008C8; Mon, 30 Nov 2015 16:07:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2325FE00855
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 16:07:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tB107dXB009775
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Nov 2015 16:07:39 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Mon, 30 Nov 2015 16:07:38 -0800
To: Michael Habibi <mikehabibi@gmail.com>
References: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
	<5654D545.1090408@windriver.com> <5655CD70.9010109@windriver.com>
	<CAOsp8o95H4gnBN9oCn=AYdX91gecJ-Sqw9yQDW3nouoKu7uNMQ@mail.gmail.com>
	<CAOsp8o-9MdG3sFpT-fpfs9imi4UFRJrPRDPMOvAcafoJS94cxw@mail.gmail.com>
	<CAOsp8o_3mbD=ns1pWZdHPAtn0Z7VRyHdbTn00xg69v6rLpJ5FQ@mail.gmail.com>
	<56563853.8090304@windriver.com>
	<CAOsp8o_Lq84VaGiMvrvBA3SmtTro5PteV4x5xLBz_GgBXdRp=A@mail.gmail.com>
	<CAOsp8o8Ji4o+9fHn__CdUz-vLJ854-waeskU5YrWM4_f1baD3g@mail.gmail.com>
	<CAOsp8o97or-VJZsmic1G4UnRoT32yeZ0LbMxuhvHyCtn5sYg3Q@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <565CE4C9.3010600@windriver.com>
Date: Mon, 30 Nov 2015 18:07:37 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <CAOsp8o97or-VJZsmic1G4UnRoT32yeZ0LbMxuhvHyCtn5sYg3Q@mail.gmail.com>
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
X-List-Received-Date: Tue, 01 Dec 2015 00:07:46 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This is the patch that we ended up using:

http://lists.openembedded.org/pipermail/openembedded-core/2015-November/113457.html

http://lists.openembedded.org/pipermail/openembedded-core/2015-November/113456.html

http://lists.openembedded.org/pipermail/openembedded-core/2015-November/113458.html

On 11/30/15 5:12 PM, Michael Habibi wrote:
> OK I've dug into this further today, and here are some findings:
> 
> With my patch (which is similar to yours), it fails do_compile/package_qa
> because of poisoned system directories during the compilation steps. This
> approach seems to be a bust. Originally when I tested it, I hacked up the
> Makefile and only re-ran do_install onward, and didn't re-run do_compile
> (because I had to create the patch). Once I created the patch and re-ran from
> clean, I got some errors.
> 
> It appears the only reason it is using that directory in PYTHONPATH at all (the
> one generated from the shell command and pybuilddir.txt) is for a potential
> sysconfig file in there. I tracked it down to a comment in a bug on Python's bug
> tracker:
> 
> http://bugs.python.org/issue15484#msg180577
> 
> If we change that directory, it will pull in the sysconfig settings from the
> native Python configure (probably defaults to native sysconfig settings because
> the PATH doesn't include the overrides), and then do some really bad things. The
> question then became: in the unmodified build, why does do_install fail but
> do_compile doesn't? They both seem to be using sharedmods recipe which uses
> $PYTHONPATH. The answer is that when we run do_compile the first time around,
> the offending *.so's are not generated yet, and thus are not included by
> python-native. The second time around (in do_install), the *.so's are in the
> path and so python-native will use them and override its own.
> 
> My latest experiment is to remove that location altogether from PYTHONPATH and
> see if it works (neither the shell-generated directory in python-cross, nor the
> lib-dynload directory from python-native). The compile works the first time
> through despite there being no sysconfig data, so I'm wondering if the install
> step will also work without finding any data. python-native should continue to
> work with its internal settings to find modules and libraries.
> 
> To be continued tomorrow, I'm sure...
> 
> On Mon, Nov 30, 2015 at 11:37 AM, Michael Habibi <mikehabibi@gmail.com
> <mailto:mikehabibi@gmail.com>> wrote:
> 
>     Mark, I am continuing to look at this. I hope you don't mind if I keep
>     updating this thread with my investigation.
> 
>     First, I figured out my confusion. I was associating the wrong Makefile
>     command with the illegal instruction. It was actually the command under the
>     recipe for 'sharedmods', but it was silenced in the Makefile so I assumed it
>     was another line. You're right that the path with the *.so's is the
>     offending path. I've scoured online patches and can't understand how this
>     mechanism works outside of Yocto. I figure people trying to compile for ARM
>     would have similar issues. There seems to be a fundamental problem with how
>     Python sets up PYTHONPATH using the pybuilddir file and $abs_builddir.
>     However, other people seem to have successfully built python for other
>     architectures, so I'm still confused.
> 
>     I hardcoded a fix for PYTHONPATH to use the host lib-dynload directory, and
>     the python recipe successfully passed. Can you elaborate on the issues you
>     were having with your patch? The only difference is that I maintained the
>     other two directories in $PYTHONPATH,
>     e.g. $(srcdir)/Lib:$(srcdir)/Lib/plat-$(MACHDEP), and only replaced the
>     offending one.
> 
>     On Wed, Nov 25, 2015 at 4:58 PM, Michael Habibi <mikehabibi@gmail.com
>     <mailto:mikehabibi@gmail.com>> wrote:
> 
>         Mark,
> 
>         I ran the same command, including the offending PYTHONPATH, from the
>         shell without error. Any reason why that would work, despite it not
>         working from within the Makefile? I was thinking it was another
>         environment variable that was causing the issue (one that's not set in
>         my bash environment by default). My $PATH didn't have python-native so I
>         called it using an absolute path, but otherwise it's the same command
>         run from the Makefile (parsed, of course):
> 
>         bash$
>         _PYTHON_PROJECT_BASE=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build
>         _PYTHON_HOST_PLATFORM=linux2-x86_64
>         PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2
>         /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/python2.7
>         -S -m sysconfig --generate-posix-vars
>         bash$ ls pybuilddir.txt
>         pybuilddir.txt
> 
>         Maybe I'm missing something.
> 
> 
>         On Wed, Nov 25, 2015 at 4:38 PM, Mark Hatle <mark.hatle@windriver.com
>         <mailto:mark.hatle@windriver.com>> wrote:
> 
>             On 11/25/15 10:11 AM, Michael Habibi wrote:
>             > Well, I'm wrong yet again. A 'which python2.7' shows that it's pointing to a
>             > native version of Python:
>             >
>             > *| which python2.7*
>             > *|
>             >
>             /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/python2.7*
>             > |
>             > _PYTHON_PROJECT_BASE=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build
>             > _PYTHON_HOST_PLATFORM=linux2-x86_64
>             > PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2
>             > python2.7 -S -m sysconfig --generate-posix-vars ;\
>             > |       if test $? -ne 0 ; then \
>             > |               echo "generate-posix-vars failed" ; \
>             > |               rm -f ./pybuilddir.txt ; \
>             > |               exit 1 ; \
>             > |       fi
>             > | Illegal instruction (core dumped)
>             > | make: *** [sharedmods] Error 132
>             >
>             > I guess one of the environmental variables being passed in is screwing up what
>             > it's doing. Unfortunately I don't know enough about the inner workings of Python
>             > to be of much help moving forward. I gave it my best shot!
> 
>             The problem I tracked down was:
> 
>             PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7
> 
>             This is full of .so objects when loaded cause the illegal instruction.
> 
>             I came up with a patch that I thought was going to fix it, but it's
>             triggered
>             other failures.
> 
>             http://lists.openembedded.org/pipermail/openembedded-core/2015-November/113341.html
> 
>             Just to be clear.. this does NOT work properly in many cases.  But
>             might give
>             you or someone else a clue as to how to possibly fix it.
> 
>             --Mark
> 
>             >
>             > On Wed, Nov 25, 2015 at 10:01 AM, Michael Habibi <mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>
>             > <mailto:mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>>> wrote:
>             >
>             >     Ah sorry, I misspoke. I walked through the Makefile and configure scripts a
>             >     bit more, and $(PYTHON_FOR_BUILD) should in fact be a host version of
>             >     Python. It seems it's not being configured correctly. Either the path is
>             >     setup wrong and python2.7 is not pointing to the right version, or python2.7
>             >     needs to be pointing to the absolute path instead of relying on $PATH.
>             >
>             >
>             >
>             >
>             >     On Wed, Nov 25, 2015 at 9:45 AM, Michael Habibi <mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>
>             >     <mailto:mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>>>
>             wrote:
>             >
>             >         For what it's worth, this is the offending portion of
>             Makefile.pre:452:
>             >
>             >         # Create build directory and generate the sysconfig
>             build-time data there.
>             >         # pybuilddir.txt contains the name of the build dir and is
>             used for
>             >         # sys.path fixup -- see Modules/getpath.c.
>             >         # Since this step runs before shared modules are built,
>             try to avoid
>             >         bootstrap
>             >         # problems by creating a dummy pybuilddir.txt just to
>             allow interpreter
>             >         # initialization to succeed.  It will be overwritten by
>             generate-posix-vars
>             >         # or removed in case of failure.
>             >         pybuilddir.txt: $(BUILDPYTHON)
>             >         → @echo "none" > ./pybuilddir.txt
>             >         → $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig
>             --generate-posix-vars ;\
>             >         → if test $$? -ne 0 ; then \
>             >         → → echo "generate-posix-vars failed" ; \
>             >         → → rm -f ./pybuilddir.txt ; \
>             >         → → exit 1 ; \
>             >         → fi
>             >
>             >         I don't know enough about the Python build to understand
>             what it's
>             >         trying to do, but perhaps replacing PYTHON_FOR_BUILD with
>             HOSTPYTHON may
>             >         be acceptable?
>             >
>             >         I'm surprised this seems to work for other people, since
>             this should be
>             >         failing for anyone using Python on a target platform
>             different from
>             >         their host.
>             >
>             >         On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle
>             <mark.hatle@windriver.com <mailto:mark.hatle@windriver.com>
>             >         <mailto:mark.hatle@windriver.com
>             <mailto:mark.hatle@windriver.com>>> wrote:
>             >
>             >             On 11/24/15 3:23 PM, Mark Hatle wrote:
>             >             > My guess is that there is a bug in the python
>             integration where
>             >             it's not
>             >             > realizing the host and target are different systems,
>             so it's
>             >             trying to run a
>             >             > target program on your host.  Your host isn't
>             haswell, so...
>             >             Illegal Instruction
>             >             > -- and the system stops.
>             >
>             >             Just an FYI, I hit the same problem today.  I suspect
>             it is the host
>             >             trying to
>             >             run target software and I'm looking into it.
>             >
>             >             --Mark
>             >
>             >             > The alternative would be something is running QEMU
>             to execute a
>             >             target binary
>             >             > and QEMU doesn't have instruction support -- but
>             that doesn't look
>             >             like the case
>             >             > here.
>             >             >
>             >             > --Mark
>             >             >
>             >             > On 11/24/15 3:06 PM, Michael Habibi wrote:
>             >             >> All,
>             >             >>
>             >             >> I added a new machine definition with tuning
>             parameters for haswell
>             >             >> microarchitectures (basically just duplicated
>             corei7 but tuned it
>             >             for haswell).
>             >             >> This seems to work correctly, but failed when
>             running do_install
>             >             for python
>             >             >> toward the end of the build process. I am running
>             with the Yocto
>             >             2.0 framework,
>             >             >> with very minimal changes to create a new
>             distribution and
>             >             machine for our
>             >             >> custom embedded device. Note I had this distro
>             configuration
>             >             working before, and
>             >             >> the only difference is I added a new machine with
>             this tuning.
>             >             >>
>             >             >> I believe the issue is because, as part of the
>             do_install step
>             >             for Python, it
>             >             >> attempts to run python on the local host, despite being
>             >             cross-compiled. However,
>             >             >> it is tuned for a processor that my host machine
>             doesn't run, so
>             >             I get an
>             >             >> instruction exception.
>             >             >>
>             >             >> Did I do something weird? I figure python would be
>             configured for
>             >             >> cross-compiling and therefore wouldn't try to run
>             the target
>             >             version on the
>             >             >> host, even for sanity tests. Here is the output of
>             the failure:
>             >             >>
>             >             >> $ tail -20
>             >             >>
>             >           
>              /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258
>             >             >>
>             >             >> x86_64-diags-linux-ar rc libpython2.7.a
>             Modules/threadmodule.o
>             >             >>  Modules/signalmodule.o  Modules/posixmodule.o 
>             Modules/errnomodule.o
>             >             >>  Modules/pwdmodule.o  Modules/_sre.o 
>             Modules/_codecsmodule.o
>             >             >>  Modules/_weakref.o  Modules/zipimport.o 
>             Modules/symtablemodule.o
>             >             >>  Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
>             >             >> x86_64-diags-linux-ranlib libpython2.7.a
>             >             >> Modules/posixmodule.o: In function `posix_tmpnam':
>             >             >>
>             >           
>              /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7575:
>             >             >> warning: the use of `tmpnam_r' is dangerous, better
>             use `mkstemp'
>             >             >> Modules/posixmodule.o: In function `posix_tempnam':
>             >             >>
>             >           
>              /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7522:
>             >             >> warning: the use of `tempnam' is dangerous, better
>             use `mkstemp'
>             >             >> x86_64-diags-linux-gcc  -m64 -march=haswell
>             -mtune=haswell
>             >             -mfpmath=sse -mavx2
>             >             >>
>             --sysroot=/projects/yocto-git/build/tmp/sysroots/continental -Wl,-O1
>             >             >> -Wl,--hash-style=gnu -Wl,--as-needed -Xlinker
>             -export-dynamic -o
>             >             python \
>             >             >>                         Modules/python.o \
>             >             >>                         -L. -lpython2.7 -lpthread
>             -ldl  -lpthread
>             >             -lutil   -lm
>             >             >>
>             >           
>              _PYTHON_PROJECT_BASE=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build
>             >             >> _PYTHON_HOST_PLATFORM=linux2-x86_64
>             >             >>
>             >           
>              PYTHONPATH=/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2
>             >             >> python2.7 -S -m sysconfig --generate-posix-vars ;\
>             >             >>         if test $? -ne 0 ; then \
>             >             >>                 echo "generate-posix-vars failed" ; \
>             >             >>                 rm -f ./pybuilddir.txt ; \
>             >             >>                 exit 1 ; \
>             >             >>         fi
>             >             >> Illegal instruction (core dumped)
>             >             >> make: *** [sharedmods] Error 132
>             >             >> WARNING: exit code 1 from a shell command.
>             >             >> ERROR: oe_runmake failed
>             >             >> ERROR: Function failed: do_install (log file is
>             located at
>             >             >>
>             >           
>              /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258)
>             >             >>
>             >             >> Here is my tune-haswell.inc (ignore some copy/paste
>             comment
>             >             issues right now =):
>             >             >>
>             >             >> # Settings for the GCC(1) cpu-type "haswell":
>             >             >> #
>             >             >> #     Intel Core i7 CPU with 64-bit extensions,
>             MOVBE, MMX, SSE,
>             >             SSE2, SSE3,·
>             >             >> #     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2,
>             AES, PCLMUL,
>             >             FSGSBASE,
>             >             >> #     RDRND, FMA, BMI, BMI2 and F16C instruction
>             set support.
>             >             >> #
>             >             >> # This tune is recommended for Intel Nehalem and
>             Silvermont (e.g.
>             >             Bay Trail) CPUs
>             >             >> # (and beyond).
>             >             >> #
>             >             >> DEFAULTTUNE ?= "haswell"
>             >             >>
>             >             >> # Pull in the previous tune in to pull in
>             PACKAGE_EXTRA_ARCHS
>             >             >> require conf/machine/include/tune-corei7.inc
>             >             >>
>             >             >> # Extra tune features
>             >             >> TUNEVALID[haswell] = "Enable haswell specific processor
>             >             optimizations"
>             >             >> TUNE_CCARGS .=
>             "${@bb.utils.contains("TUNE_FEATURES", "haswell", "
>             >             >> -march=haswell -mtune=haswell -mfpmath=sse -mavx2",
>             "", d)}"
>             >             >>
>             >             >> # Extra tune selections
>             >             >> AVAILTUNES += "haswell"
>             >             >> TUNE_FEATURES_tune-haswell =
>             "${TUNE_FEATURES_tune-x86-64} haswell"
>             >             >> BASE_LIB_tune-haswell = "lib"
>             >             >> TUNE_PKGARCH_tune-haswell = "haswell"
>             >             >> PACKAGE_EXTRA_ARCHS_tune-haswell =
>             >             "${PACKAGE_EXTRA_ARCHS_tune-corei7} haswell"
>             >             >>
>             >             >>
>             >             >>
>             >             >
>             >
>             >             --
>             >             _______________________________________________
>             >             yocto mailing list
>             >             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>             >             https://lists.yoctoproject.org/listinfo/yocto
>             >
>             >
>             >
>             >
> 
> 
> 
> 


