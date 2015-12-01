Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FDFBE008C8; Mon, 30 Nov 2015 16:29:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD7CE00855
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 16:29:38 -0800 (PST)
Received: by lfaz4 with SMTP id z4so219717902lfa.0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 16:29:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bLHu8mJ25+nM7dnUWcnt2MtapWcI9OiT1SCa/7zqx4g=;
	b=qJWs/RNe0JMpH/CFUxo39n5XH3ADuIX5+9cPmC1riV6ywoaBt0zpbRgjJ3jJxrN2YJ
	rTNg9NM1ipuHV+rRUBVIVaRLxKD6YHcreuSzsCwsv+NtHdpLy1Ib9TwJtM4VAIuHAfm+
	pHcAcGNkmBjbHxby6vKt5yYyZ0bu1YgiU49+1j+XDbrbZAbNpMi8YDESrTU+HdPDo+oP
	DBsvk7XK49C09Ij50SZIvGTkv0I/k2rE8kg8daeb6mC/VBUABp2SMfab58U4at5NyO2F
	htpLgNj04XqToLWOoZrByMfcK7tqIURhlCatQkPHqYvgGYr0B7usMV//xS0awo8Tnl5F
	Uq4g==
MIME-Version: 1.0
X-Received: by 10.25.137.7 with SMTP id l7mr18188490lfd.63.1448929776996; Mon,
	30 Nov 2015 16:29:36 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Mon, 30 Nov 2015 16:29:36 -0800 (PST)
In-Reply-To: <565CE4C9.3010600@windriver.com>
References: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
	<5654D545.1090408@windriver.com> <5655CD70.9010109@windriver.com>
	<CAOsp8o95H4gnBN9oCn=AYdX91gecJ-Sqw9yQDW3nouoKu7uNMQ@mail.gmail.com>
	<CAOsp8o-9MdG3sFpT-fpfs9imi4UFRJrPRDPMOvAcafoJS94cxw@mail.gmail.com>
	<CAOsp8o_3mbD=ns1pWZdHPAtn0Z7VRyHdbTn00xg69v6rLpJ5FQ@mail.gmail.com>
	<56563853.8090304@windriver.com>
	<CAOsp8o_Lq84VaGiMvrvBA3SmtTro5PteV4x5xLBz_GgBXdRp=A@mail.gmail.com>
	<CAOsp8o8Ji4o+9fHn__CdUz-vLJ854-waeskU5YrWM4_f1baD3g@mail.gmail.com>
	<CAOsp8o97or-VJZsmic1G4UnRoT32yeZ0LbMxuhvHyCtn5sYg3Q@mail.gmail.com>
	<565CE4C9.3010600@windriver.com>
Date: Mon, 30 Nov 2015 18:29:36 -0600
Message-ID: <CAOsp8o9qtTe9abyw5E-VtJ7O6f3ZbPAGoEeT0NYMBK1=LE=ZQQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Tue, 01 Dec 2015 00:29:42 -0000
Content-Type: multipart/alternative; boundary=001a113fc260a99b730525cb403e

--001a113fc260a99b730525cb403e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Mark, great! I was literally about to try double-stacking the PATH next
(since removing both didn't work for reasons that became obvious after
running the experiment), so that it would grab the *.so's from
python-native and then the sysconfig from the python-cross. Looks like I
may need to subscribe to that list so I'm aware of these patches!

I'm not sure what the streams look like (I can't visualize it yet), but is
this change in any Yocto branch yet, or does it need to get pulled by
someone? I can merge it locally, but just curious how the OE-Core and Yocto
repos are related.

On Mon, Nov 30, 2015 at 6:07 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> This is the patch that we ended up using:
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-November/1=
13457.html
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-November/1=
13456.html
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-November/1=
13458.html
>
> On 11/30/15 5:12 PM, Michael Habibi wrote:
> > OK I've dug into this further today, and here are some findings:
> >
> > With my patch (which is similar to yours), it fails do_compile/package_=
qa
> > because of poisoned system directories during the compilation steps. Th=
is
> > approach seems to be a bust. Originally when I tested it, I hacked up t=
he
> > Makefile and only re-ran do_install onward, and didn't re-run do_compil=
e
> > (because I had to create the patch). Once I created the patch and re-ra=
n
> from
> > clean, I got some errors.
> >
> > It appears the only reason it is using that directory in PYTHONPATH at
> all (the
> > one generated from the shell command and pybuilddir.txt) is for a
> potential
> > sysconfig file in there. I tracked it down to a comment in a bug on
> Python's bug
> > tracker:
> >
> > http://bugs.python.org/issue15484#msg180577
> >
> > If we change that directory, it will pull in the sysconfig settings fro=
m
> the
> > native Python configure (probably defaults to native sysconfig settings
> because
> > the PATH doesn't include the overrides), and then do some really bad
> things. The
> > question then became: in the unmodified build, why does do_install fail
> but
> > do_compile doesn't? They both seem to be using sharedmods recipe which
> uses
> > $PYTHONPATH. The answer is that when we run do_compile the first time
> around,
> > the offending *.so's are not generated yet, and thus are not included b=
y
> > python-native. The second time around (in do_install), the *.so's are i=
n
> the
> > path and so python-native will use them and override its own.
> >
> > My latest experiment is to remove that location altogether from
> PYTHONPATH and
> > see if it works (neither the shell-generated directory in python-cross,
> nor the
> > lib-dynload directory from python-native). The compile works the first
> time
> > through despite there being no sysconfig data, so I'm wondering if the
> install
> > step will also work without finding any data. python-native should
> continue to
> > work with its internal settings to find modules and libraries.
> >
> > To be continued tomorrow, I'm sure...
> >
> > On Mon, Nov 30, 2015 at 11:37 AM, Michael Habibi <mikehabibi@gmail.com
> > <mailto:mikehabibi@gmail.com>> wrote:
> >
> >     Mark, I am continuing to look at this. I hope you don't mind if I
> keep
> >     updating this thread with my investigation.
> >
> >     First, I figured out my confusion. I was associating the wrong
> Makefile
> >     command with the illegal instruction. It was actually the command
> under the
> >     recipe for 'sharedmods', but it was silenced in the Makefile so I
> assumed it
> >     was another line. You're right that the path with the *.so's is the
> >     offending path. I've scoured online patches and can't understand ho=
w
> this
> >     mechanism works outside of Yocto. I figure people trying to compile
> for ARM
> >     would have similar issues. There seems to be a fundamental problem
> with how
> >     Python sets up PYTHONPATH using the pybuilddir file and
> $abs_builddir.
> >     However, other people seem to have successfully built python for
> other
> >     architectures, so I'm still confused.
> >
> >     I hardcoded a fix for PYTHONPATH to use the host lib-dynload
> directory, and
> >     the python recipe successfully passed. Can you elaborate on the
> issues you
> >     were having with your patch? The only difference is that I
> maintained the
> >     other two directories in $PYTHONPATH,
> >     e.g. $(srcdir)/Lib:$(srcdir)/Lib/plat-$(MACHDEP), and only replaced
> the
> >     offending one.
> >
> >     On Wed, Nov 25, 2015 at 4:58 PM, Michael Habibi <
> mikehabibi@gmail.com
> >     <mailto:mikehabibi@gmail.com>> wrote:
> >
> >         Mark,
> >
> >         I ran the same command, including the offending PYTHONPATH, fro=
m
> the
> >         shell without error. Any reason why that would work, despite it
> not
> >         working from within the Makefile? I was thinking it was another
> >         environment variable that was causing the issue (one that's not
> set in
> >         my bash environment by default). My $PATH didn't have
> python-native so I
> >         called it using an absolute path, but otherwise it's the same
> command
> >         run from the Makefile (parsed, of course):
> >
> >         bash$
> >
>  _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-=
linux/python/2.7.9-r1/build
> >         _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >
>  PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pyth=
on/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp=
/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-=
git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/pla=
t-linux2
> >
>  /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-nativ=
e/python2.7
> >         -S -m sysconfig --generate-posix-vars
> >         bash$ ls pybuilddir.txt
> >         pybuilddir.txt
> >
> >         Maybe I'm missing something.
> >
> >
> >         On Wed, Nov 25, 2015 at 4:38 PM, Mark Hatle <
> mark.hatle@windriver.com
> >         <mailto:mark.hatle@windriver.com>> wrote:
> >
> >             On 11/25/15 10:11 AM, Michael Habibi wrote:
> >             > Well, I'm wrong yet again. A 'which python2.7' shows that
> it's pointing to a
> >             > native version of Python:
> >             >
> >             > *| which python2.7*
> >             > *|
> >             >
> >
>  /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-nativ=
e/python2.7*
> >             > |
> >             >
> _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-l=
inux/python/2.7.9-r1/build
> >             > _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >             >
> PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pytho=
n/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/=
work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-g=
it/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat=
-linux2
> >             > python2.7 -S -m sysconfig --generate-posix-vars ;\
> >             > |       if test $? -ne 0 ; then \
> >             > |               echo "generate-posix-vars failed" ; \
> >             > |               rm -f ./pybuilddir.txt ; \
> >             > |               exit 1 ; \
> >             > |       fi
> >             > | Illegal instruction (core dumped)
> >             > | make: *** [sharedmods] Error 132
> >             >
> >             > I guess one of the environmental variables being passed i=
n
> is screwing up what
> >             > it's doing. Unfortunately I don't know enough about the
> inner workings of Python
> >             > to be of much help moving forward. I gave it my best shot=
!
> >
> >             The problem I tracked down was:
> >
> >
>  PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pyth=
on/2.7.9-r1/build/build/lib.linux2-x86_64-2.7
> >
> >             This is full of .so objects when loaded cause the illegal
> instruction.
> >
> >             I came up with a patch that I thought was going to fix it,
> but it's
> >             triggered
> >             other failures.
> >
> >
> http://lists.openembedded.org/pipermail/openembedded-core/2015-November/1=
13341.html
> >
> >             Just to be clear.. this does NOT work properly in many
> cases.  But
> >             might give
> >             you or someone else a clue as to how to possibly fix it.
> >
> >             --Mark
> >
> >             >
> >             > On Wed, Nov 25, 2015 at 10:01 AM, Michael Habibi <
> mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>
> >             > <mailto:mikehabibi@gmail.com <mailto:mikehabibi@gmail.com=
>>>
> wrote:
> >             >
> >             >     Ah sorry, I misspoke. I walked through the Makefile
> and configure scripts a
> >             >     bit more, and $(PYTHON_FOR_BUILD) should in fact be a
> host version of
> >             >     Python. It seems it's not being configured correctly.
> Either the path is
> >             >     setup wrong and python2.7 is not pointing to the righ=
t
> version, or python2.7
> >             >     needs to be pointing to the absolute path instead of
> relying on $PATH.
> >             >
> >             >
> >             >
> >             >
> >             >     On Wed, Nov 25, 2015 at 9:45 AM, Michael Habibi <
> mikehabibi@gmail.com <mailto:mikehabibi@gmail.com>
> >             >     <mailto:mikehabibi@gmail.com <mailto:
> mikehabibi@gmail.com>>>
> >             wrote:
> >             >
> >             >         For what it's worth, this is the offending portio=
n
> of
> >             Makefile.pre:452:
> >             >
> >             >         # Create build directory and generate the sysconf=
ig
> >             build-time data there.
> >             >         # pybuilddir.txt contains the name of the build
> dir and is
> >             used for
> >             >         # sys.path fixup -- see Modules/getpath.c.
> >             >         # Since this step runs before shared modules are
> built,
> >             try to avoid
> >             >         bootstrap
> >             >         # problems by creating a dummy pybuilddir.txt jus=
t
> to
> >             allow interpreter
> >             >         # initialization to succeed.  It will be
> overwritten by
> >             generate-posix-vars
> >             >         # or removed in case of failure.
> >             >         pybuilddir.txt: $(BUILDPYTHON)
> >             >         =E2=86=92 @echo "none" > ./pybuilddir.txt
> >             >         =E2=86=92 $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m =
sysconfig
> >             --generate-posix-vars ;\
> >             >         =E2=86=92 if test $$? -ne 0 ; then \
> >             >         =E2=86=92 =E2=86=92 echo "generate-posix-vars fai=
led" ; \
> >             >         =E2=86=92 =E2=86=92 rm -f ./pybuilddir.txt ; \
> >             >         =E2=86=92 =E2=86=92 exit 1 ; \
> >             >         =E2=86=92 fi
> >             >
> >             >         I don't know enough about the Python build to
> understand
> >             what it's
> >             >         trying to do, but perhaps replacing
> PYTHON_FOR_BUILD with
> >             HOSTPYTHON may
> >             >         be acceptable?
> >             >
> >             >         I'm surprised this seems to work for other people=
,
> since
> >             this should be
> >             >         failing for anyone using Python on a target
> platform
> >             different from
> >             >         their host.
> >             >
> >             >         On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle
> >             <mark.hatle@windriver.com <mailto:mark.hatle@windriver.com>
> >             >         <mailto:mark.hatle@windriver.com
> >             <mailto:mark.hatle@windriver.com>>> wrote:
> >             >
> >             >             On 11/24/15 3:23 PM, Mark Hatle wrote:
> >             >             > My guess is that there is a bug in the pyth=
on
> >             integration where
> >             >             it's not
> >             >             > realizing the host and target are different
> systems,
> >             so it's
> >             >             trying to run a
> >             >             > target program on your host.  Your host isn=
't
> >             haswell, so...
> >             >             Illegal Instruction
> >             >             > -- and the system stops.
> >             >
> >             >             Just an FYI, I hit the same problem today.  I
> suspect
> >             it is the host
> >             >             trying to
> >             >             run target software and I'm looking into it.
> >             >
> >             >             --Mark
> >             >
> >             >             > The alternative would be something is
> running QEMU
> >             to execute a
> >             >             target binary
> >             >             > and QEMU doesn't have instruction support -=
-
> but
> >             that doesn't look
> >             >             like the case
> >             >             > here.
> >             >             >
> >             >             > --Mark
> >             >             >
> >             >             > On 11/24/15 3:06 PM, Michael Habibi wrote:
> >             >             >> All,
> >             >             >>
> >             >             >> I added a new machine definition with tuni=
ng
> >             parameters for haswell
> >             >             >> microarchitectures (basically just
> duplicated
> >             corei7 but tuned it
> >             >             for haswell).
> >             >             >> This seems to work correctly, but failed
> when
> >             running do_install
> >             >             for python
> >             >             >> toward the end of the build process. I am
> running
> >             with the Yocto
> >             >             2.0 framework,
> >             >             >> with very minimal changes to create a new
> >             distribution and
> >             >             machine for our
> >             >             >> custom embedded device. Note I had this
> distro
> >             configuration
> >             >             working before, and
> >             >             >> the only difference is I added a new
> machine with
> >             this tuning.
> >             >             >>
> >             >             >> I believe the issue is because, as part of
> the
> >             do_install step
> >             >             for Python, it
> >             >             >> attempts to run python on the local host,
> despite being
> >             >             cross-compiled. However,
> >             >             >> it is tuned for a processor that my host
> machine
> >             doesn't run, so
> >             >             I get an
> >             >             >> instruction exception.
> >             >             >>
> >             >             >> Did I do something weird? I figure python
> would be
> >             configured for
> >             >             >> cross-compiling and therefore wouldn't try
> to run
> >             the target
> >             >             version on the
> >             >             >> host, even for sanity tests. Here is the
> output of
> >             the failure:
> >             >             >>
> >             >             >> $ tail -20
> >             >             >>
> >             >
> >
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/te=
mp/log.do_install.17258
> >             >             >>
> >             >             >> x86_64-diags-linux-ar rc libpython2.7.a
> >             Modules/threadmodule.o
> >             >             >>  Modules/signalmodule.o
> Modules/posixmodule.o
> >             Modules/errnomodule.o
> >             >             >>  Modules/pwdmodule.o  Modules/_sre.o
> >             Modules/_codecsmodule.o
> >             >             >>  Modules/_weakref.o  Modules/zipimport.o
> >             Modules/symtablemodule.o
> >             >             >>  Modules/md5module.o Modules/md5.o
> Modules/xxsubtype.o
> >             >             >> x86_64-diags-linux-ranlib libpython2.7.a
> >             >             >> Modules/posixmodule.o: In function
> `posix_tmpnam':
> >             >             >>
> >             >
> >
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Py=
thon-2.7.9/Modules/posixmodule.c:7575:
> >             >             >> warning: the use of `tmpnam_r' is
> dangerous, better
> >             use `mkstemp'
> >             >             >> Modules/posixmodule.o: In function
> `posix_tempnam':
> >             >             >>
> >             >
> >
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Py=
thon-2.7.9/Modules/posixmodule.c:7522:
> >             >             >> warning: the use of `tempnam' is dangerous=
,
> better
> >             use `mkstemp'
> >             >             >> x86_64-diags-linux-gcc  -m64 -march=3Dhasw=
ell
> >             -mtune=3Dhaswell
> >             >             -mfpmath=3Dsse -mavx2
> >             >             >>
> >             --sysroot=3D/projects/yocto-git/build/tmp/sysroots/continen=
tal
> -Wl,-O1
> >             >             >> -Wl,--hash-style=3Dgnu -Wl,--as-needed
> -Xlinker
> >             -export-dynamic -o
> >             >             python \
> >             >             >>                         Modules/python.o \
> >             >             >>                         -L. -lpython2.7
> -lpthread
> >             -ldl  -lpthread
> >             >             -lutil   -lm
> >             >             >>
> >             >
> >
> _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-l=
inux/python/2.7.9-r1/build
> >             >             >> _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >             >             >>
> >             >
> >
> PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pytho=
n/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/=
work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-g=
it/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat=
-linux2
> >             >             >> python2.7 -S -m sysconfig
> --generate-posix-vars ;\
> >             >             >>         if test $? -ne 0 ; then \
> >             >             >>                 echo "generate-posix-vars
> failed" ; \
> >             >             >>                 rm -f ./pybuilddir.txt ; \
> >             >             >>                 exit 1 ; \
> >             >             >>         fi
> >             >             >> Illegal instruction (core dumped)
> >             >             >> make: *** [sharedmods] Error 132
> >             >             >> WARNING: exit code 1 from a shell command.
> >             >             >> ERROR: oe_runmake failed
> >             >             >> ERROR: Function failed: do_install (log
> file is
> >             located at
> >             >             >>
> >             >
> >
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/te=
mp/log.do_install.17258)
> >             >             >>
> >             >             >> Here is my tune-haswell.inc (ignore some
> copy/paste
> >             comment
> >             >             issues right now =3D):
> >             >             >>
> >             >             >> # Settings for the GCC(1) cpu-type
> "haswell":
> >             >             >> #
> >             >             >> #     Intel Core i7 CPU with 64-bit
> extensions,
> >             MOVBE, MMX, SSE,
> >             >             SSE2, SSE3,=C2=B7
> >             >             >> #     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX,
> AVX2,
> >             AES, PCLMUL,
> >             >             FSGSBASE,
> >             >             >> #     RDRND, FMA, BMI, BMI2 and F16C
> instruction
> >             set support.
> >             >             >> #
> >             >             >> # This tune is recommended for Intel
> Nehalem and
> >             Silvermont (e.g.
> >             >             Bay Trail) CPUs
> >             >             >> # (and beyond).
> >             >             >> #
> >             >             >> DEFAULTTUNE ?=3D "haswell"
> >             >             >>
> >             >             >> # Pull in the previous tune in to pull in
> >             PACKAGE_EXTRA_ARCHS
> >             >             >> require conf/machine/include/tune-corei7.i=
nc
> >             >             >>
> >             >             >> # Extra tune features
> >             >             >> TUNEVALID[haswell] =3D "Enable haswell
> specific processor
> >             >             optimizations"
> >             >             >> TUNE_CCARGS .=3D
> >             "${@bb.utils.contains("TUNE_FEATURES", "haswell", "
> >             >             >> -march=3Dhaswell -mtune=3Dhaswell -mfpmath=
=3Dsse
> -mavx2",
> >             "", d)}"
> >             >             >>
> >             >             >> # Extra tune selections
> >             >             >> AVAILTUNES +=3D "haswell"
> >             >             >> TUNE_FEATURES_tune-haswell =3D
> >             "${TUNE_FEATURES_tune-x86-64} haswell"
> >             >             >> BASE_LIB_tune-haswell =3D "lib"
> >             >             >> TUNE_PKGARCH_tune-haswell =3D "haswell"
> >             >             >> PACKAGE_EXTRA_ARCHS_tune-haswell =3D
> >             >             "${PACKAGE_EXTRA_ARCHS_tune-corei7} haswell"
> >             >             >>
> >             >             >>
> >             >             >>
> >             >             >
> >             >
> >             >             --
> >             >             _____________________________________________=
__
> >             >             yocto mailing list
> >             >             yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org>
> >             <mailto:yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org>>
> >             >             https://lists.yoctoproject.org/listinfo/yocto
> >             >
> >             >
> >             >
> >             >
> >
> >
> >
> >
>
>

--001a113fc260a99b730525cb403e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+TWFyaywgZ3JlYXQhIEkgd2FzIGxpdGVyYWxseSBhYm91dCB0byB0cnkg
ZG91YmxlLXN0YWNraW5nIHRoZSBQQVRIIG5leHQgKHNpbmNlIHJlbW92aW5nIGJvdGggZGlkbiYj
Mzk7dCB3b3JrIGZvciByZWFzb25zIHRoYXQgYmVjYW1lIG9idmlvdXMgYWZ0ZXIgcnVubmluZyB0
aGUgZXhwZXJpbWVudCksIHNvIHRoYXQgaXQgd291bGQgZ3JhYiB0aGUgKi5zbyYjMzk7cyBmcm9t
IHB5dGhvbi1uYXRpdmUgYW5kIHRoZW4gdGhlIHN5c2NvbmZpZyBmcm9tIHRoZSBweXRob24tY3Jv
c3MuIExvb2tzIGxpa2UgSSBtYXkgbmVlZCB0byBzdWJzY3JpYmUgdG8gdGhhdCBsaXN0IHNvIEkm
IzM5O20gYXdhcmUgb2YgdGhlc2UgcGF0Y2hlcyE8ZGl2Pjxicj48L2Rpdj48ZGl2PkkmIzM5O20g
bm90IHN1cmUgd2hhdCB0aGUgc3RyZWFtcyBsb29rIGxpa2UgKEkgY2FuJiMzOTt0IHZpc3VhbGl6
ZSBpdCB5ZXQpLCBidXQgaXMgdGhpcyBjaGFuZ2UgaW4gYW55IFlvY3RvIGJyYW5jaCB5ZXQsIG9y
IGRvZXMgaXQgbmVlZCB0byBnZXQgcHVsbGVkIGJ5IHNvbWVvbmU/IEkgY2FuIG1lcmdlIGl0IGxv
Y2FsbHksIGJ1dCBqdXN0IGN1cmlvdXMgaG93IHRoZSBPRS1Db3JlIGFuZCBZb2N0byByZXBvcyBh
cmUgcmVsYXRlZC48L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGJyPjxkaXYg
Y2xhc3M9ImdtYWlsX3F1b3RlIj5PbiBNb24sIE5vdiAzMCwgMjAxNSBhdCA2OjA3IFBNLCBNYXJr
IEhhdGxlIDxzcGFuIGRpcj0ibHRyIj4mbHQ7PGEgaHJlZj0ibWFpbHRvOm1hcmsuaGF0bGVAd2lu
ZHJpdmVyLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbTwvYT4m
Z3Q7PC9zcGFuPiB3cm90ZTo8YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHls
ZT0ibWFyZ2luOjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1s
ZWZ0OjFleCI+VGhpcyBpcyB0aGUgcGF0Y2ggdGhhdCB3ZSBlbmRlZCB1cCB1c2luZzo8YnI+DQo8
YnI+DQo8YSBocmVmPSJodHRwOi8vbGlzdHMub3BlbmVtYmVkZGVkLm9yZy9waXBlcm1haWwvb3Bl
bmVtYmVkZGVkLWNvcmUvMjAxNS1Ob3ZlbWJlci8xMTM0NTcuaHRtbCIgcmVsPSJub3JlZmVycmVy
IiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcvcGlwZXJtYWls
L29wZW5lbWJlZGRlZC1jb3JlLzIwMTUtTm92ZW1iZXIvMTEzNDU3Lmh0bWw8L2E+PGJyPg0KPGJy
Pg0KPGEgaHJlZj0iaHR0cDovL2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcvcGlwZXJtYWlsL29wZW5l
bWJlZGRlZC1jb3JlLzIwMTUtTm92ZW1iZXIvMTEzNDU2Lmh0bWwiIHJlbD0ibm9yZWZlcnJlciIg
dGFyZ2V0PSJfYmxhbmsiPmh0dHA6Ly9saXN0cy5vcGVuZW1iZWRkZWQub3JnL3BpcGVybWFpbC9v
cGVuZW1iZWRkZWQtY29yZS8yMDE1LU5vdmVtYmVyLzExMzQ1Ni5odG1sPC9hPjxicj4NCjxicj4N
CjxhIGhyZWY9Imh0dHA6Ly9saXN0cy5vcGVuZW1iZWRkZWQub3JnL3BpcGVybWFpbC9vcGVuZW1i
ZWRkZWQtY29yZS8yMDE1LU5vdmVtYmVyLzExMzQ1OC5odG1sIiByZWw9Im5vcmVmZXJyZXIiIHRh
cmdldD0iX2JsYW5rIj5odHRwOi8vbGlzdHMub3BlbmVtYmVkZGVkLm9yZy9waXBlcm1haWwvb3Bl
bmVtYmVkZGVkLWNvcmUvMjAxNS1Ob3ZlbWJlci8xMTM0NTguaHRtbDwvYT48YnI+DQo8ZGl2Pjxk
aXYgY2xhc3M9Img1Ij48YnI+DQpPbiAxMS8zMC8xNSA1OjEyIFBNLCBNaWNoYWVsIEhhYmliaSB3
cm90ZTo8YnI+DQomZ3Q7IE9LIEkmIzM5O3ZlIGR1ZyBpbnRvIHRoaXMgZnVydGhlciB0b2RheSwg
YW5kIGhlcmUgYXJlIHNvbWUgZmluZGluZ3M6PGJyPg0KJmd0Ozxicj4NCiZndDsgV2l0aCBteSBw
YXRjaCAod2hpY2ggaXMgc2ltaWxhciB0byB5b3VycyksIGl0IGZhaWxzIGRvX2NvbXBpbGUvcGFj
a2FnZV9xYTxicj4NCiZndDsgYmVjYXVzZSBvZiBwb2lzb25lZCBzeXN0ZW0gZGlyZWN0b3JpZXMg
ZHVyaW5nIHRoZSBjb21waWxhdGlvbiBzdGVwcy4gVGhpczxicj4NCiZndDsgYXBwcm9hY2ggc2Vl
bXMgdG8gYmUgYSBidXN0LiBPcmlnaW5hbGx5IHdoZW4gSSB0ZXN0ZWQgaXQsIEkgaGFja2VkIHVw
IHRoZTxicj4NCiZndDsgTWFrZWZpbGUgYW5kIG9ubHkgcmUtcmFuIGRvX2luc3RhbGwgb253YXJk
LCBhbmQgZGlkbiYjMzk7dCByZS1ydW4gZG9fY29tcGlsZTxicj4NCiZndDsgKGJlY2F1c2UgSSBo
YWQgdG8gY3JlYXRlIHRoZSBwYXRjaCkuIE9uY2UgSSBjcmVhdGVkIHRoZSBwYXRjaCBhbmQgcmUt
cmFuIGZyb208YnI+DQomZ3Q7IGNsZWFuLCBJIGdvdCBzb21lIGVycm9ycy48YnI+DQomZ3Q7PGJy
Pg0KJmd0OyBJdCBhcHBlYXJzIHRoZSBvbmx5IHJlYXNvbiBpdCBpcyB1c2luZyB0aGF0IGRpcmVj
dG9yeSBpbiBQWVRIT05QQVRIIGF0IGFsbCAodGhlPGJyPg0KJmd0OyBvbmUgZ2VuZXJhdGVkIGZy
b20gdGhlIHNoZWxsIGNvbW1hbmQgYW5kIHB5YnVpbGRkaXIudHh0KSBpcyBmb3IgYSBwb3RlbnRp
YWw8YnI+DQomZ3Q7IHN5c2NvbmZpZyBmaWxlIGluIHRoZXJlLiBJIHRyYWNrZWQgaXQgZG93biB0
byBhIGNvbW1lbnQgaW4gYSBidWcgb24gUHl0aG9uJiMzOTtzIGJ1Zzxicj4NCiZndDsgdHJhY2tl
cjo8YnI+DQomZ3Q7PGJyPg0KJmd0OyA8YSBocmVmPSJodHRwOi8vYnVncy5weXRob24ub3JnL2lz
c3VlMTU0ODQjbXNnMTgwNTc3IiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRw
Oi8vYnVncy5weXRob24ub3JnL2lzc3VlMTU0ODQjbXNnMTgwNTc3PC9hPjxicj4NCiZndDs8YnI+
DQomZ3Q7IElmIHdlIGNoYW5nZSB0aGF0IGRpcmVjdG9yeSwgaXQgd2lsbCBwdWxsIGluIHRoZSBz
eXNjb25maWcgc2V0dGluZ3MgZnJvbSB0aGU8YnI+DQomZ3Q7IG5hdGl2ZSBQeXRob24gY29uZmln
dXJlIChwcm9iYWJseSBkZWZhdWx0cyB0byBuYXRpdmUgc3lzY29uZmlnIHNldHRpbmdzIGJlY2F1
c2U8YnI+DQomZ3Q7IHRoZSBQQVRIIGRvZXNuJiMzOTt0IGluY2x1ZGUgdGhlIG92ZXJyaWRlcyks
IGFuZCB0aGVuIGRvIHNvbWUgcmVhbGx5IGJhZCB0aGluZ3MuIFRoZTxicj4NCiZndDsgcXVlc3Rp
b24gdGhlbiBiZWNhbWU6IGluIHRoZSB1bm1vZGlmaWVkIGJ1aWxkLCB3aHkgZG9lcyBkb19pbnN0
YWxsIGZhaWwgYnV0PGJyPg0KJmd0OyBkb19jb21waWxlIGRvZXNuJiMzOTt0PyBUaGV5IGJvdGgg
c2VlbSB0byBiZSB1c2luZyBzaGFyZWRtb2RzIHJlY2lwZSB3aGljaCB1c2VzPGJyPg0KJmd0OyAk
UFlUSE9OUEFUSC4gVGhlIGFuc3dlciBpcyB0aGF0IHdoZW4gd2UgcnVuIGRvX2NvbXBpbGUgdGhl
IGZpcnN0IHRpbWUgYXJvdW5kLDxicj4NCiZndDsgdGhlIG9mZmVuZGluZyAqLnNvJiMzOTtzIGFy
ZSBub3QgZ2VuZXJhdGVkIHlldCwgYW5kIHRodXMgYXJlIG5vdCBpbmNsdWRlZCBieTxicj4NCiZn
dDsgcHl0aG9uLW5hdGl2ZS4gVGhlIHNlY29uZCB0aW1lIGFyb3VuZCAoaW4gZG9faW5zdGFsbCks
IHRoZSAqLnNvJiMzOTtzIGFyZSBpbiB0aGU8YnI+DQomZ3Q7IHBhdGggYW5kIHNvIHB5dGhvbi1u
YXRpdmUgd2lsbCB1c2UgdGhlbSBhbmQgb3ZlcnJpZGUgaXRzIG93bi48YnI+DQomZ3Q7PGJyPg0K
Jmd0OyBNeSBsYXRlc3QgZXhwZXJpbWVudCBpcyB0byByZW1vdmUgdGhhdCBsb2NhdGlvbiBhbHRv
Z2V0aGVyIGZyb20gUFlUSE9OUEFUSCBhbmQ8YnI+DQomZ3Q7IHNlZSBpZiBpdCB3b3JrcyAobmVp
dGhlciB0aGUgc2hlbGwtZ2VuZXJhdGVkIGRpcmVjdG9yeSBpbiBweXRob24tY3Jvc3MsIG5vciB0
aGU8YnI+DQomZ3Q7IGxpYi1keW5sb2FkIGRpcmVjdG9yeSBmcm9tIHB5dGhvbi1uYXRpdmUpLiBU
aGUgY29tcGlsZSB3b3JrcyB0aGUgZmlyc3QgdGltZTxicj4NCiZndDsgdGhyb3VnaCBkZXNwaXRl
IHRoZXJlIGJlaW5nIG5vIHN5c2NvbmZpZyBkYXRhLCBzbyBJJiMzOTttIHdvbmRlcmluZyBpZiB0
aGUgaW5zdGFsbDxicj4NCiZndDsgc3RlcCB3aWxsIGFsc28gd29yayB3aXRob3V0IGZpbmRpbmcg
YW55IGRhdGEuIHB5dGhvbi1uYXRpdmUgc2hvdWxkIGNvbnRpbnVlIHRvPGJyPg0KJmd0OyB3b3Jr
IHdpdGggaXRzIGludGVybmFsIHNldHRpbmdzIHRvIGZpbmQgbW9kdWxlcyBhbmQgbGlicmFyaWVz
Ljxicj4NCiZndDs8YnI+DQomZ3Q7IFRvIGJlIGNvbnRpbnVlZCB0b21vcnJvdywgSSYjMzk7bSBz
dXJlLi4uPGJyPg0KJmd0Ozxicj4NCiZndDsgT24gTW9uLCBOb3YgMzAsIDIwMTUgYXQgMTE6Mzcg
QU0sIE1pY2hhZWwgSGFiaWJpICZsdDs8YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFpbC5j
b20iPm1pa2VoYWJpYmlAZ21haWwuY29tPC9hPjxicj4NCjwvZGl2PjwvZGl2PjxzcGFuIGNsYXNz
PSIiPiZndDsgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFpbC5jb20i
Pm1pa2VoYWJpYmlAZ21haWwuY29tPC9hPiZndDsmZ3Q7IHdyb3RlOjxicj4NCiZndDs8YnI+DQom
Z3Q7wqAgwqAgwqBNYXJrLCBJIGFtIGNvbnRpbnVpbmcgdG8gbG9vayBhdCB0aGlzLiBJIGhvcGUg
eW91IGRvbiYjMzk7dCBtaW5kIGlmIEkga2VlcDxicj4NCiZndDvCoCDCoCDCoHVwZGF0aW5nIHRo
aXMgdGhyZWFkIHdpdGggbXkgaW52ZXN0aWdhdGlvbi48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgRmlyc3QsIEkgZmlndXJlZCBvdXQgbXkgY29uZnVzaW9uLiBJIHdhcyBhc3NvY2lhdGluZyB0
aGUgd3JvbmcgTWFrZWZpbGU8YnI+DQomZ3Q7wqAgwqAgwqBjb21tYW5kIHdpdGggdGhlIGlsbGVn
YWwgaW5zdHJ1Y3Rpb24uIEl0IHdhcyBhY3R1YWxseSB0aGUgY29tbWFuZCB1bmRlciB0aGU8YnI+
DQomZ3Q7wqAgwqAgwqByZWNpcGUgZm9yICYjMzk7c2hhcmVkbW9kcyYjMzk7LCBidXQgaXQgd2Fz
IHNpbGVuY2VkIGluIHRoZSBNYWtlZmlsZSBzbyBJIGFzc3VtZWQgaXQ8YnI+DQomZ3Q7wqAgwqAg
wqB3YXMgYW5vdGhlciBsaW5lLiBZb3UmIzM5O3JlIHJpZ2h0IHRoYXQgdGhlIHBhdGggd2l0aCB0
aGUgKi5zbyYjMzk7cyBpcyB0aGU8YnI+DQomZ3Q7wqAgwqAgwqBvZmZlbmRpbmcgcGF0aC4gSSYj
Mzk7dmUgc2NvdXJlZCBvbmxpbmUgcGF0Y2hlcyBhbmQgY2FuJiMzOTt0IHVuZGVyc3RhbmQgaG93
IHRoaXM8YnI+DQomZ3Q7wqAgwqAgwqBtZWNoYW5pc20gd29ya3Mgb3V0c2lkZSBvZiBZb2N0by4g
SSBmaWd1cmUgcGVvcGxlIHRyeWluZyB0byBjb21waWxlIGZvciBBUk08YnI+DQomZ3Q7wqAgwqAg
wqB3b3VsZCBoYXZlIHNpbWlsYXIgaXNzdWVzLiBUaGVyZSBzZWVtcyB0byBiZSBhIGZ1bmRhbWVu
dGFsIHByb2JsZW0gd2l0aCBob3c8YnI+DQomZ3Q7wqAgwqAgwqBQeXRob24gc2V0cyB1cCBQWVRI
T05QQVRIIHVzaW5nIHRoZSBweWJ1aWxkZGlyIGZpbGUgYW5kICRhYnNfYnVpbGRkaXIuPGJyPg0K
Jmd0O8KgIMKgIMKgSG93ZXZlciwgb3RoZXIgcGVvcGxlIHNlZW0gdG8gaGF2ZSBzdWNjZXNzZnVs
bHkgYnVpbHQgcHl0aG9uIGZvciBvdGhlcjxicj4NCiZndDvCoCDCoCDCoGFyY2hpdGVjdHVyZXMs
IHNvIEkmIzM5O20gc3RpbGwgY29uZnVzZWQuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoEkg
aGFyZGNvZGVkIGEgZml4IGZvciBQWVRIT05QQVRIIHRvIHVzZSB0aGUgaG9zdCBsaWItZHlubG9h
ZCBkaXJlY3RvcnksIGFuZDxicj4NCiZndDvCoCDCoCDCoHRoZSBweXRob24gcmVjaXBlIHN1Y2Nl
c3NmdWxseSBwYXNzZWQuIENhbiB5b3UgZWxhYm9yYXRlIG9uIHRoZSBpc3N1ZXMgeW91PGJyPg0K
Jmd0O8KgIMKgIMKgd2VyZSBoYXZpbmcgd2l0aCB5b3VyIHBhdGNoPyBUaGUgb25seSBkaWZmZXJl
bmNlIGlzIHRoYXQgSSBtYWludGFpbmVkIHRoZTxicj4NCiZndDvCoCDCoCDCoG90aGVyIHR3byBk
aXJlY3RvcmllcyBpbiAkUFlUSE9OUEFUSCw8YnI+DQomZ3Q7wqAgwqAgwqBlLmcuICQoc3JjZGly
KS9MaWI6JChzcmNkaXIpL0xpYi9wbGF0LSQoTUFDSERFUCksIGFuZCBvbmx5IHJlcGxhY2VkIHRo
ZTxicj4NCiZndDvCoCDCoCDCoG9mZmVuZGluZyBvbmUuPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDC
oCDCoE9uIFdlZCwgTm92IDI1LCAyMDE1IGF0IDQ6NTggUE0sIE1pY2hhZWwgSGFiaWJpICZsdDs8
YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFpbC5jb20iPm1pa2VoYWJpYmlAZ21haWwuY29t
PC9hPjxicj4NCjwvc3Bhbj48c3BhbiBjbGFzcz0iIj4mZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptaWtlaGFiaWJpQGdtYWlsLmNvbSI+bWlrZWhhYmliaUBnbWFpbC5jb208
L2E+Jmd0OyZndDsgd3JvdGU6PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE1hcmss
PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEkgcmFuIHRoZSBzYW1lIGNvbW1hbmQs
IGluY2x1ZGluZyB0aGUgb2ZmZW5kaW5nIFBZVEhPTlBBVEgsIGZyb20gdGhlPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgc2hlbGwgd2l0aG91dCBlcnJvci4gQW55IHJlYXNvbiB3aHkgdGhhdCB3b3Vs
ZCB3b3JrLCBkZXNwaXRlIGl0IG5vdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdvcmtpbmcgZnJv
bSB3aXRoaW4gdGhlIE1ha2VmaWxlPyBJIHdhcyB0aGlua2luZyBpdCB3YXMgYW5vdGhlcjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoGVudmlyb25tZW50IHZhcmlhYmxlIHRoYXQgd2FzIGNhdXNpbmcg
dGhlIGlzc3VlIChvbmUgdGhhdCYjMzk7cyBub3Qgc2V0IGluPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgbXkgYmFzaCBlbnZpcm9ubWVudCBieSBkZWZhdWx0KS4gTXkgJFBBVEggZGlkbiYjMzk7dCBo
YXZlIHB5dGhvbi1uYXRpdmUgc28gSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNhbGxlZCBpdCB1
c2luZyBhbiBhYnNvbHV0ZSBwYXRoLCBidXQgb3RoZXJ3aXNlIGl0JiMzOTtzIHRoZSBzYW1lIGNv
bW1hbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBydW4gZnJvbSB0aGUgTWFrZWZpbGUgKHBhcnNl
ZCwgb2YgY291cnNlKTo8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYmFzaCQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBfUFlUSE9OX1BST0pFQ1RfQkFTRT0vcHJvamVjdHMveW9jdG8t
Z2l0L2J1aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3MtbGludXgvcHl0aG9uLzIuNy45LXIxL2J1
aWxkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgX1BZVEhPTl9IT1NUX1BMQVRGT1JNPWxpbnV4Mi14
ODZfNjQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBQWVRIT05QQVRIPS9wcm9qZWN0cy95b2N0by1n
aXQvYnVpbGQvdG1wL3dvcmsvaGFzd2VsbC1kaWFncy1saW51eC9weXRob24vMi43LjktcjEvYnVp
bGQvYnVpbGQvbGliLmxpbnV4Mi14ODZfNjQtMi43Oi9wcm9qZWN0cy95b2N0by1naXQvYnVpbGQv
dG1wL3dvcmsvaGFzd2VsbC1kaWFncy1saW51eC9weXRob24vMi43LjktcjEvUHl0aG9uLTIuNy45
L0xpYjovcHJvamVjdHMveW9jdG8tZ2l0L2J1aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3MtbGlu
dXgvcHl0aG9uLzIuNy45LXIxL1B5dGhvbi0yLjcuOS9MaWIvcGxhdC1saW51eDI8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAvcHJvamVjdHMveW9jdG8tZ2l0L2J1aWxkL3RtcC9zeXNyb290cy94ODZf
NjQtbGludXgvdXNyL2Jpbi9weXRob24tbmF0aXZlL3B5dGhvbjIuNzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoC1TIC1tIHN5c2NvbmZpZyAtLWdlbmVyYXRlLXBvc2l4LXZhcnM8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBiYXNoJCBscyBweWJ1aWxkZGlyLnR4dDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oHB5YnVpbGRkaXIudHh0PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE1heWJlIEkm
IzM5O20gbWlzc2luZyBzb21ldGhpbmcuPGJyPg0KJmd0Ozxicj4NCiZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBPbiBXZWQsIE5vdiAyNSwgMjAxNSBhdCA0OjM4IFBNLCBNYXJrIEhhdGxlICZs
dDs8YSBocmVmPSJtYWlsdG86bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tIj5tYXJrLmhhdGxlQHdp
bmRyaXZlci5jb208L2E+PGJyPg0KPC9zcGFuPjxkaXY+PGRpdiBjbGFzcz0iaDUiPiZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hcmsuaGF0bGVAd2luZHJpdmVy
LmNvbSI+bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tPC9hPiZndDsmZ3Q7IHdyb3RlOjxicj4NCiZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAxMS8yNS8xNSAxMDoxMSBBTSwgTWlj
aGFlbCBIYWJpYmkgd3JvdGU6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBXZWxs
LCBJJiMzOTttIHdyb25nIHlldCBhZ2Fpbi4gQSAmIzM5O3doaWNoIHB5dGhvbjIuNyYjMzk7IHNo
b3dzIHRoYXQgaXQmIzM5O3MgcG9pbnRpbmcgdG8gYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsgbmF0aXZlIHZlcnNpb24gb2YgUHl0aG9uOjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7ICp8IHdoaWNoIHB5
dGhvbjIuNyo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7ICp8PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoC9wcm9q
ZWN0cy95b2N0by1naXQvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYmluL3B5
dGhvbi1uYXRpdmUvcHl0aG9uMi43Kjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsg
fDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgX1BZVEhPTl9QUk9KRUNUX0JBU0U9
L3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90bXAvd29yay9oYXN3ZWxsLWRpYWdzLWxpbnV4L3B5
dGhvbi8yLjcuOS1yMS9idWlsZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgX1BZ
VEhPTl9IT1NUX1BMQVRGT1JNPWxpbnV4Mi14ODZfNjQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7IFBZVEhPTlBBVEg9L3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90bXAvd29yay9o
YXN3ZWxsLWRpYWdzLWxpbnV4L3B5dGhvbi8yLjcuOS1yMS9idWlsZC9idWlsZC9saWIubGludXgy
LXg4Nl82NC0yLjc6L3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90bXAvd29yay9oYXN3ZWxsLWRp
YWdzLWxpbnV4L3B5dGhvbi8yLjcuOS1yMS9QeXRob24tMi43LjkvTGliOi9wcm9qZWN0cy95b2N0
by1naXQvYnVpbGQvdG1wL3dvcmsvaGFzd2VsbC1kaWFncy1saW51eC9weXRob24vMi43LjktcjEv
UHl0aG9uLTIuNy45L0xpYi9wbGF0LWxpbnV4Mjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsgcHl0aG9uMi43IC1TIC1tIHN5c2NvbmZpZyAtLWdlbmVyYXRlLXBvc2l4LXZhcnMgO1w8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IHzCoCDCoCDCoCDCoGlmIHRlc3QgJD8g
LW5lIDAgOyB0aGVuIFw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IHzCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoGVjaG8gJnF1b3Q7Z2VuZXJhdGUtcG9zaXgtdmFycyBmYWlsZWQmcXVv
dDsgOyBcPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyB8wqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBybSAtZiAuL3B5YnVpbGRkaXIudHh0IDsgXDxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgfMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZXhpdCAxIDsgXDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgfMKgIMKgIMKgIMKgZmk8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7IHwgSWxsZWdhbCBpbnN0cnVjdGlvbiAoY29yZSBkdW1wZWQpPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyB8IG1ha2U6ICoqKiBbc2hhcmVkbW9kc10gRXJy
b3IgMTMyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsgSSBndWVzcyBvbmUgb2YgdGhlIGVudmlyb25tZW50YWwgdmFyaWFi
bGVzIGJlaW5nIHBhc3NlZCBpbiBpcyBzY3Jld2luZyB1cCB3aGF0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBpdCYjMzk7cyBkb2luZy4gVW5mb3J0dW5hdGVseSBJIGRvbiYjMzk7
dCBrbm93IGVub3VnaCBhYm91dCB0aGUgaW5uZXIgd29ya2luZ3Mgb2YgUHl0aG9uPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyB0byBiZSBvZiBtdWNoIGhlbHAgbW92aW5nIGZvcndh
cmQuIEkgZ2F2ZSBpdCBteSBiZXN0IHNob3QhPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoFRoZSBwcm9ibGVtIEkgdHJhY2tlZCBkb3duIHdhczo8YnI+DQomZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgUFlUSE9OUEFUSD0vcHJvamVjdHMveW9jdG8tZ2l0L2J1
aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3MtbGludXgvcHl0aG9uLzIuNy45LXIxL2J1aWxkL2J1
aWxkL2xpYi5saW51eDIteDg2XzY0LTIuNzxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBUaGlzIGlzIGZ1bGwgb2YgLnNvIG9iamVjdHMgd2hlbiBsb2FkZWQgY2F1c2UgdGhl
IGlsbGVnYWwgaW5zdHJ1Y3Rpb24uPGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoEkgY2FtZSB1cCB3aXRoIGEgcGF0Y2ggdGhhdCBJIHRob3VnaHQgd2FzIGdvaW5nIHRvIGZp
eCBpdCwgYnV0IGl0JiMzOTtzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdHJpZ2dlcmVk
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgb3RoZXIgZmFpbHVyZXMuPGJyPg0KJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0dHA6Ly9saXN0cy5vcGVuZW1i
ZWRkZWQub3JnL3BpcGVybWFpbC9vcGVuZW1iZWRkZWQtY29yZS8yMDE1LU5vdmVtYmVyLzExMzM0
MS5odG1sIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwOi8vbGlzdHMub3Bl
bmVtYmVkZGVkLm9yZy9waXBlcm1haWwvb3BlbmVtYmVkZGVkLWNvcmUvMjAxNS1Ob3ZlbWJlci8x
MTMzNDEuaHRtbDwvYT48YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSnVz
dCB0byBiZSBjbGVhci4uIHRoaXMgZG9lcyBOT1Qgd29yayBwcm9wZXJseSBpbiBtYW55IGNhc2Vz
LsKgIEJ1dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG1pZ2h0IGdpdmU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqB5b3Ugb3Igc29tZW9uZSBlbHNlIGEgY2x1ZSBhcyB0byBob3cg
dG8gcG9zc2libHkgZml4IGl0Ljxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAtLU1hcms8YnI+DQomZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgT24gV2VkLCBOb3YgMjUsIDIwMTUgYXQgMTA6
MDEgQU0sIE1pY2hhZWwgSGFiaWJpICZsdDs8YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFp
bC5jb20iPm1pa2VoYWJpYmlAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptaWtlaGFiaWJpQGdtYWlsLmNvbSI+bWlrZWhhYmliaUBnbWFpbC5jb208L2E+Jmd0Ozxicj4N
CjwvZGl2PjwvZGl2PjxzcGFuIGNsYXNzPSIiPiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFpbC5jb20iPm1pa2VoYWJp
YmlAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptaWtlaGFiaWJpQGdt
YWlsLmNvbSI+bWlrZWhhYmliaUBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7IHdyb3RlOjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqBBaCBzb3JyeSwgSSBtaXNzcG9rZS4gSSB3YWxrZWQgdGhyb3VnaCB0aGUg
TWFrZWZpbGUgYW5kIGNvbmZpZ3VyZSBzY3JpcHRzIGE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqBiaXQgbW9yZSwgYW5kICQoUFlUSE9OX0ZPUl9CVUlMRCkgc2hvdWxk
IGluIGZhY3QgYmUgYSBob3N0IHZlcnNpb24gb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqBQeXRob24uIEl0IHNlZW1zIGl0JiMzOTtzIG5vdCBiZWluZyBjb25maWd1
cmVkIGNvcnJlY3RseS4gRWl0aGVyIHRoZSBwYXRoIGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgc2V0dXAgd3JvbmcgYW5kIHB5dGhvbjIuNyBpcyBub3QgcG9pbnRp
bmcgdG8gdGhlIHJpZ2h0IHZlcnNpb24sIG9yIHB5dGhvbjIuNzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoG5lZWRzIHRvIGJlIHBvaW50aW5nIHRvIHRoZSBhYnNvbHV0
ZSBwYXRoIGluc3RlYWQgb2YgcmVseWluZyBvbiAkUEFUSC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgT24gV2VkLCBOb3YgMjUs
IDIwMTUgYXQgOTo0NSBBTSwgTWljaGFlbCBIYWJpYmkgJmx0OzxhIGhyZWY9Im1haWx0bzptaWtl
aGFiaWJpQGdtYWlsLmNvbSI+bWlrZWhhYmliaUBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOm1pa2VoYWJpYmlAZ21haWwuY29tIj5taWtlaGFiaWJpQGdtYWlsLmNvbTwv
YT4mZ3Q7PGJyPg0KPC9zcGFuPiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1pa2VoYWJpYmlAZ21haWwuY29tIj5taWtlaGFiaWJp
QGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWlrZWhhYmliaUBnbWFp
bC5jb20iPm1pa2VoYWJpYmlAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCjxkaXY+PGRp
diBjbGFzcz0iaDUiPiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHdyb3RlOjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBGb3Igd2hhdCBpdCYjMzk7cyB3b3J0aCwgdGhpcyBpcyB0aGUgb2ZmZW5kaW5n
IHBvcnRpb24gb2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBNYWtlZmlsZS5wcmU6NDUy
Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAjIENyZWF0ZSBidWlsZCBkaXJlY3RvcnkgYW5kIGdl
bmVyYXRlIHRoZSBzeXNjb25maWc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBidWlsZC10
aW1lIGRhdGEgdGhlcmUuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgIyBweWJ1aWxkZGlyLnR4dCBjb250YWlucyB0aGUgbmFtZSBvZiB0aGUgYnVpbGQgZGly
IGFuZCBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHVzZWQgZm9yPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIyBzeXMucGF0aCBmaXh1cCAtLSBz
ZWUgTW9kdWxlcy9nZXRwYXRoLmMuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgIyBTaW5jZSB0aGlzIHN0ZXAgcnVucyBiZWZvcmUgc2hhcmVkIG1vZHVsZXMg
YXJlIGJ1aWx0LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRyeSB0byBhdm9pZDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJvb3RzdHJhcDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCMgcHJvYmxlbXMgYnkg
Y3JlYXRpbmcgYSBkdW1teSBweWJ1aWxkZGlyLnR4dCBqdXN0IHRvPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgYWxsb3cgaW50ZXJwcmV0ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAjIGluaXRpYWxpemF0aW9uIHRvIHN1Y2NlZWQuwqAgSXQgd2ls
bCBiZSBvdmVyd3JpdHRlbiBieTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVyYXRl
LXBvc2l4LXZhcnM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAjIG9yIHJlbW92ZWQgaW4gY2FzZSBvZiBmYWlsdXJlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHB5YnVpbGRkaXIudHh0OiAkKEJVSUxEUFlUSE9OKTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoOKGkiBAZWNobyAm
cXVvdDtub25lJnF1b3Q7ICZndDsgLi9weWJ1aWxkZGlyLnR4dDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoOKGkiAkKFJVTlNIQVJFRCkgJChQWVRIT05fRk9S
X0JVSUxEKSAtUyAtbSBzeXNjb25maWc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAtLWdl
bmVyYXRlLXBvc2l4LXZhcnMgO1w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqDihpIgaWYgdGVzdCAkJD8gLW5lIDAgOyB0aGVuIFw8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqDihpIg4oaSIGVjaG8gJnF1b3Q7Z2VuZXJh
dGUtcG9zaXgtdmFycyBmYWlsZWQmcXVvdDsgOyBcPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKg4oaSIOKGkiBybSAtZiAuL3B5YnVpbGRkaXIudHh0IDsgXDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoOKGkiDihpIgZXhp
dCAxIDsgXDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoOKG
kiBmaTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBJIGRvbiYjMzk7dCBrbm93IGVub3VnaCBhYm91
dCB0aGUgUHl0aG9uIGJ1aWxkIHRvIHVuZGVyc3RhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqB3aGF0IGl0JiMzOTtzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgdHJ5aW5nIHRvIGRvLCBidXQgcGVyaGFwcyByZXBsYWNpbmcgUFlUSE9OX0ZPUl9C
VUlMRCB3aXRoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSE9TVFBZVEhPTiBtYXk8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBiZSBhY2NlcHRhYmxl
Pzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBJJiMzOTttIHN1cnByaXNlZCB0aGlzIHNlZW1zIHRv
IHdvcmsgZm9yIG90aGVyIHBlb3BsZSwgc2luY2U8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqB0aGlzIHNob3VsZCBiZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoGZhaWxpbmcgZm9yIGFueW9uZSB1c2luZyBQeXRob24gb24gYSB0YXJnZXQgcGxhdGZv
cm08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkaWZmZXJlbnQgZnJvbTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZWlyIGhvc3QuPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoE9uIFdlZCwgTm92IDI1LCAyMDE1IGF0IDk6MDIgQU0sIE1hcmsgSGF0
bGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hcmsu
aGF0bGVAd2luZHJpdmVyLmNvbSI+bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tPC9hPiAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb20iPm1hcmsuaGF0bGVA
d2luZHJpdmVyLmNvbTwvYT4mZ3Q7PGJyPg0KPC9kaXY+PC9kaXY+Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFyay5o
YXRsZUB3aW5kcml2ZXIuY29tIj5tYXJrLmhhdGxlQHdpbmRyaXZlci5jb208L2E+PGJyPg0KPGRp
dj48ZGl2IGNsYXNzPSJoNSI+Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tIj5tYXJrLmhhdGxlQHdpbmRyaXZl
ci5jb208L2E+Jmd0OyZndDsmZ3Q7IHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBPbiAxMS8yNC8xNSAzOjIzIFBNLCBNYXJrIEhhdGxlIHdyb3RlOjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgTXkgZ3Vlc3MgaXMgdGhh
dCB0aGVyZSBpcyBhIGJ1ZyBpbiB0aGUgcHl0aG9uPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgaW50ZWdyYXRpb24gd2hlcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBpdCYjMzk7cyBub3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IHJlYWxpemluZyB0aGUgaG9zdCBhbmQgdGFy
Z2V0IGFyZSBkaWZmZXJlbnQgc3lzdGVtcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBz
byBpdCYjMzk7czxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoHRyeWluZyB0byBydW4gYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgdGFyZ2V0IHByb2dyYW0gb24geW91ciBob3N0LsKgIFlv
dXIgaG9zdCBpc24mIzM5O3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBoYXN3ZWxsLCBz
by4uLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oElsbGVnYWwgSW5zdHJ1Y3Rpb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC0tIGFuZCB0aGUgc3lzdGVtIHN0b3BzLjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBKdXN0IGFuIEZZSSwgSSBoaXQgdGhlIHNhbWUgcHJvYmxlbSB0
b2RheS7CoCBJIHN1c3BlY3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpdCBpcyB0aGUg
aG9zdDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHRyeWluZyB0bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoHJ1biB0YXJnZXQgc29mdHdhcmUgYW5kIEkmIzM5O20gbG9va2luZyBpbnRvIGl0Ljxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAtLU1hcms8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyBUaGUgYWx0ZXJuYXRpdmUgd291bGQgYmUgc29tZXRoaW5nIGlzIHJ1bm5p
bmcgUUVNVTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIGV4ZWN1dGUgYTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRhcmdldCBiaW5h
cnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7IGFuZCBRRU1VIGRvZXNuJiMzOTt0IGhhdmUgaW5zdHJ1Y3Rpb24gc3VwcG9ydCAtLSBidXQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGF0IGRvZXNuJiMzOTt0IGxvb2s8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBsaWtlIHRoZSBj
YXNlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyBoZXJlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IC0tTWFyazxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IE9uIDExLzI0LzE1IDM6MDYgUE0sIE1pY2hhZWwgSGFiaWJp
IHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsmZ3Q7IEFsbCw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEkgYWRkZWQgYSBuZXcgbWFjaGluZSBkZWZpbml0
aW9uIHdpdGggdHVuaW5nPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgcGFyYW1ldGVycyBm
b3IgaGFzd2VsbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsmZ3Q7IG1pY3JvYXJjaGl0ZWN0dXJlcyAoYmFzaWNhbGx5IGp1c3QgZHVwbGlj
YXRlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNvcmVpNyBidXQgdHVuZWQgaXQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmb3IgaGFz
d2VsbCkuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyZndDsgVGhpcyBzZWVtcyB0byB3b3JrIGNvcnJlY3RseSwgYnV0IGZhaWxlZCB3aGVu
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgcnVubmluZyBkb19pbnN0YWxsPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZm9yIHB5dGhvbjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsm
Z3Q7IHRvd2FyZCB0aGUgZW5kIG9mIHRoZSBidWlsZCBwcm9jZXNzLiBJIGFtIHJ1bm5pbmc8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB3aXRoIHRoZSBZb2N0bzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoDIuMCBmcmFtZXdvcmssPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsg
d2l0aCB2ZXJ5IG1pbmltYWwgY2hhbmdlcyB0byBjcmVhdGUgYSBuZXc8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBkaXN0cmlidXRpb24gYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbWFjaGluZSBmb3Igb3VyPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgY3VzdG9tIGVt
YmVkZGVkIGRldmljZS4gTm90ZSBJIGhhZCB0aGlzIGRpc3Rybzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoGNvbmZpZ3VyYXRpb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqB3b3JraW5nIGJlZm9yZSwgYW5kPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgdGhlIG9ubHkgZGlm
ZmVyZW5jZSBpcyBJIGFkZGVkIGEgbmV3IG1hY2hpbmUgd2l0aDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHRoaXMgdHVuaW5nLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgSSBiZWxpZXZlIHRoZSBpc3N1ZSBpcyBi
ZWNhdXNlLCBhcyBwYXJ0IG9mIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRvX2lu
c3RhbGwgc3RlcDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoGZvciBQeXRob24sIGl0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgYXR0ZW1wdHMgdG8gcnVuIHB5dGhvbiBvbiB0aGUg
bG9jYWwgaG9zdCwgZGVzcGl0ZSBiZWluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNyb3NzLWNvbXBpbGVkLiBIb3dldmVyLDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGl0IGlz
IHR1bmVkIGZvciBhIHByb2Nlc3NvciB0aGF0IG15IGhvc3QgbWFjaGluZTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGRvZXNuJiMzOTt0IHJ1biwgc288YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBJIGdldCBhbjxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGluc3RydWN0aW9u
IGV4Y2VwdGlvbi48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsmZ3Q7IERpZCBJIGRvIHNvbWV0aGluZyB3ZWlyZD8gSSBmaWd1cmUg
cHl0aG9uIHdvdWxkIGJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgY29uZmlndXJlZCBm
b3I8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7Jmd0OyBjcm9zcy1jb21waWxpbmcgYW5kIHRoZXJlZm9yZSB3b3VsZG4mIzM5O3QgdHJ5IHRv
IHJ1bjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRoZSB0YXJnZXQ8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB2ZXJzaW9uIG9uIHRoZTxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsm
Z3Q7IGhvc3QsIGV2ZW4gZm9yIHNhbml0eSB0ZXN0cy4gSGVyZSBpcyB0aGUgb3V0cHV0IG9mPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhlIGZhaWx1cmU6PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAkIHRhaWwg
LTIwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIC9wcm9qZWN0cy95b2N0by1naXQvYnVpbGQvdG1wL3dvcmsvaGFzd2Vs
bC1kaWFncy1saW51eC9weXRob24vMi43LjktcjEvdGVtcC9sb2cuZG9faW5zdGFsbC4xNzI1ODxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyZndDsgeDg2XzY0LWRpYWdzLWxpbnV4LWFyIHJjIGxpYnB5dGhvbjIuNy5hPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgTW9kdWxlcy90aHJlYWRtb2R1bGUubzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7wqAgTW9kdWxl
cy9zaWduYWxtb2R1bGUub8KgIE1vZHVsZXMvcG9zaXhtb2R1bGUubzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoE1vZHVsZXMvZXJybm9tb2R1bGUubzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7wqAgTW9kdWxlcy9wd2Rtb2R1
bGUub8KgIE1vZHVsZXMvX3NyZS5vPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgTW9kdWxl
cy9fY29kZWNzbW9kdWxlLm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0O8KgIE1vZHVsZXMvX3dlYWtyZWYub8KgIE1vZHVsZXMvemlw
aW1wb3J0Lm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBNb2R1bGVzL3N5bXRhYmxlbW9k
dWxlLm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7Jmd0O8KgIE1vZHVsZXMvbWQ1bW9kdWxlLm8gTW9kdWxlcy9tZDUub8KgIE1vZHVsZXMv
eHhzdWJ0eXBlLm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7Jmd0OyB4ODZfNjQtZGlhZ3MtbGludXgtcmFubGliIGxpYnB5dGhvbjIuNy5h
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyZndDsgTW9kdWxlcy9wb3NpeG1vZHVsZS5vOiBJbiBmdW5jdGlvbiBgcG9zaXhfdG1wbmFtJiMz
OTs6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIC9wcm9qZWN0cy95b2N0by1naXQvYnVpbGQvdG1wL3dvcmsvaGFzd2Vs
bC1kaWFncy1saW51eC9weXRob24vMi43LjktcjEvUHl0aG9uLTIuNy45L01vZHVsZXMvcG9zaXht
b2R1bGUuYzo3NTc1Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDsmZ3Q7IHdhcm5pbmc6IHRoZSB1c2Ugb2YgYHRtcG5hbV9yJiMzOTsgaXMg
ZGFuZ2Vyb3VzLCBiZXR0ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB1c2UgYG1rc3Rl
bXAmIzM5Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsmZ3Q7IE1vZHVsZXMvcG9zaXhtb2R1bGUubzogSW4gZnVuY3Rpb24gYHBvc2l4X3Rl
bXBuYW0mIzM5Ozo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgL3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90bXAvd29y
ay9oYXN3ZWxsLWRpYWdzLWxpbnV4L3B5dGhvbi8yLjcuOS1yMS9QeXRob24tMi43LjkvTW9kdWxl
cy9wb3NpeG1vZHVsZS5jOjc1MjI6PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgd2FybmluZzogdGhlIHVzZSBvZiBgdGVtcG5hbSYj
Mzk7IGlzIGRhbmdlcm91cywgYmV0dGVyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdXNl
IGBta3N0ZW1wJiMzOTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7Jmd0OyB4ODZfNjQtZGlhZ3MtbGludXgtZ2NjwqAgLW02NCAtbWFyY2g9
aGFzd2VsbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoC1tdHVuZT1oYXN3ZWxsPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgLW1mcG1hdGg9
c3NlIC1tYXZ4Mjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgLS1zeXNyb290PS9w
cm9qZWN0cy95b2N0by1naXQvYnVpbGQvdG1wL3N5c3Jvb3RzL2NvbnRpbmVudGFsIC1XbCwtTzE8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
Jmd0OyAtV2wsLS1oYXNoLXN0eWxlPWdudSAtV2wsLS1hcy1uZWVkZWQgLVhsaW5rZXI8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAtZXhwb3J0LWR5bmFtaWMgLW88YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBweXRob24gXDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBNb2R1bGVzL3B5dGhvbi5vIFw8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLUwuIC1scHl0aG9uMi43IC1scHRo
cmVhZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoC1sZGzCoCAtbHB0aHJlYWQ8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAtbHV0aWzCoCDC
oC1sbTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCBfUFlUSE9OX1BST0pFQ1RfQkFTRT0vcHJvamVjdHMveW9jdG8tZ2l0
L2J1aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3MtbGludXgvcHl0aG9uLzIuNy45LXIxL2J1aWxk
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyZndDsgX1BZVEhPTl9IT1NUX1BMQVRGT1JNPWxpbnV4Mi14ODZfNjQ8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgUFlU
SE9OUEFUSD0vcHJvamVjdHMveW9jdG8tZ2l0L2J1aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3Mt
bGludXgvcHl0aG9uLzIuNy45LXIxL2J1aWxkL2J1aWxkL2xpYi5saW51eDIteDg2XzY0LTIuNzov
cHJvamVjdHMveW9jdG8tZ2l0L2J1aWxkL3RtcC93b3JrL2hhc3dlbGwtZGlhZ3MtbGludXgvcHl0
aG9uLzIuNy45LXIxL1B5dGhvbi0yLjcuOS9MaWI6L3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90
bXAvd29yay9oYXN3ZWxsLWRpYWdzLWxpbnV4L3B5dGhvbi8yLjcuOS1yMS9QeXRob24tMi43Ljkv
TGliL3BsYXQtbGludXgyPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyZndDsgcHl0aG9uMi43IC1TIC1tIHN5c2NvbmZpZyAtLWdlbmVyYXRl
LXBvc2l4LXZhcnMgO1w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgaWYgdGVzdCAkPyAtbmUgMCA7IHRoZW4g
XDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBlY2hvICZxdW90O2dlbmVyYXRlLXBvc2l4
LXZhcnMgZmFpbGVkJnF1b3Q7IDsgXDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBybSAt
ZiAuL3B5YnVpbGRkaXIudHh0IDsgXDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBleGl0
IDEgOyBcPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyZndDvCoCDCoCDCoCDCoCDCoGZpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgSWxsZWdhbCBpbnN0cnVjdGlvbiAoY29y
ZSBkdW1wZWQpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0OyZndDsgbWFrZTogKioqIFtzaGFyZWRtb2RzXSBFcnJvciAxMzI8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBXQVJO
SU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC48YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBFUlJPUjogb2VfcnVu
bWFrZSBmYWlsZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7Jmd0OyBFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBkb19pbnN0YWxsIChsb2cg
ZmlsZSBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGxvY2F0ZWQgYXQ8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgL3Byb2plY3RzL3lvY3RvLWdpdC9idWlsZC90bXAvd29yay9oYXN3ZWxsLWRpYWdzLWxpbnV4
L3B5dGhvbi8yLjcuOS1yMS90ZW1wL2xvZy5kb19pbnN0YWxsLjE3MjU4KTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgSGVy
ZSBpcyBteSB0dW5lLWhhc3dlbGwuaW5jIChpZ25vcmUgc29tZSBjb3B5L3Bhc3RlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgY29tbWVudDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGlzc3VlcyByaWdodCBub3cgPSk6PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAj
IFNldHRpbmdzIGZvciB0aGUgR0NDKDEpIGNwdS10eXBlICZxdW90O2hhc3dlbGwmcXVvdDs6PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZn
dDsgIzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsmZ3Q7ICPCoCDCoCDCoEludGVsIENvcmUgaTcgQ1BVIHdpdGggNjQtYml0IGV4dGVuc2lv
bnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgTU9WQkUsIE1NWCwgU1NFLDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFNTRTIsIFNTRTMs
wrc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7Jmd0OyAjwqAgwqAgwqBTU1NFMywgU1NFNC4xLCBTU0U0LjIsIFBPUENOVCwgQVZYLCBBVlgy
LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFFUywgUENMTVVMLDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEZTR1NCQVNFLDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7ICPC
oCDCoCDCoFJEUk5ELCBGTUEsIEJNSSwgQk1JMiBhbmQgRjE2QyBpbnN0cnVjdGlvbjxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNldCBzdXBwb3J0Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7ICM8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAjIFRoaXMgdHVu
ZSBpcyByZWNvbW1lbmRlZCBmb3IgSW50ZWwgTmVoYWxlbSBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBTaWx2ZXJtb250IChlLmcuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQmF5IFRyYWlsKSBDUFVzPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgIyAoYW5kIGJleW9u
ZCkuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyZndDsgIzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsmZ3Q7IERFRkFVTFRUVU5FID89ICZxdW90O2hhc3dlbGwmcXVvdDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsm
Z3Q7ICMgUHVsbCBpbiB0aGUgcHJldmlvdXMgdHVuZSBpbiB0byBwdWxsIGluPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgUEFDS0FHRV9FWFRSQV9BUkNIUzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IHJlcXVpcmUgY29uZi9t
YWNoaW5lL2luY2x1ZGUvdHVuZS1jb3JlaTcuaW5jPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAjIEV4dHJhIHR1bmUgZmVh
dHVyZXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7Jmd0OyBUVU5FVkFMSURbaGFzd2VsbF0gPSAmcXVvdDtFbmFibGUgaGFzd2VsbCBzcGVj
aWZpYyBwcm9jZXNzb3I8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBvcHRpbWl6YXRpb25zJnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgVFVORV9DQ0FSR1MgLj08YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDske0BiYi51dGlscy5jb250YWlucygmcXVvdDtU
VU5FX0ZFQVRVUkVTJnF1b3Q7LCAmcXVvdDtoYXN3ZWxsJnF1b3Q7LCAmcXVvdDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAtbWFy
Y2g9aGFzd2VsbCAtbXR1bmU9aGFzd2VsbCAtbWZwbWF0aD1zc2UgLW1hdngyJnF1b3Q7LDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90OyZxdW90OywgZCl9JnF1b3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0
OyAjIEV4dHJhIHR1bmUgc2VsZWN0aW9uczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEFWQUlMVFVORVMgKz0gJnF1b3Q7aGFzd2Vs
bCZxdW90Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsmZ3Q7IFRVTkVfRkVBVFVSRVNfdHVuZS1oYXN3ZWxsID08YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmcXVvdDske1RVTkVfRkVBVFVSRVNfdHVuZS14ODYtNjR9IGhhc3dlbGwm
cXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7Jmd0OyBCQVNFX0xJQl90dW5lLWhhc3dlbGwgPSAmcXVvdDtsaWImcXVvdDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBU
VU5FX1BLR0FSQ0hfdHVuZS1oYXN3ZWxsID0gJnF1b3Q7aGFzd2VsbCZxdW90Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IFBBQ0tB
R0VfRVhUUkFfQVJDSFNfdHVuZS1oYXN3ZWxsID08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDske1BBQ0tBR0VfRVhUUkFfQVJDSFNfdHVu
ZS1jb3JlaTd9IGhhc3dlbGwmcXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoC0tPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X188YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB5
b2N0byBtYWlsaW5nIGxpc3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqA8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86eW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4mZ3Q7PGJyPg0KPC9k
aXY+PC9kaXY+Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4gJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9saXN0aW5mby95b2N0byIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7PGJyPg0KJmd0Ozxicj4NCiZndDs8YnI+DQomZ3Q7PGJyPg0K
PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pjxicj48L2Rpdj4NCg==

--001a113fc260a99b730525cb403e--
