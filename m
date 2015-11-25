Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45BADE009EF; Wed, 25 Nov 2015 14:58:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8AFEE007C9
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 14:58:40 -0800 (PST)
Received: by lfs39 with SMTP id 39so75201051lfs.3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 14:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D7vh5gC35Kbnwr4O8PMonWmkxC1tGf624GOPBhwMTf4=;
	b=lPDyVUwHjUxM0M1X+s6rSMIl1Bj9H++nZa5z/z79FNc1IfF4jgM9I/GD4lR8ZGnqHA
	nv/6CJ1pNdVJN8pgu8flBPKQcFQr9qQHmfEHUAjQ5zzlU3OJYmwyksq9XvAHb4Yn+UYN
	B+ZxCCEruWqrCmmCRuuDPtk124SOGYl3wkLp/OWa2m6ThP+cuWFNhLE+YhFpTKZRhwgG
	vbaQIPryjT82maspacSWL6Wfn4CqK6zR9ANRtQD+piDzFONqwHyKMnPheWKv77rAZ7Pj
	d2kZJcfGfsiyZv/mQVLTfD790cExRwgsx7LoS2UNIbqS88CCiw4HPXOnhsr7lfIChblX
	Hs5A==
MIME-Version: 1.0
X-Received: by 10.112.16.135 with SMTP id g7mr17244183lbd.80.1448492319386;
	Wed, 25 Nov 2015 14:58:39 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Wed, 25 Nov 2015 14:58:39 -0800 (PST)
In-Reply-To: <56563853.8090304@windriver.com>
References: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
	<5654D545.1090408@windriver.com> <5655CD70.9010109@windriver.com>
	<CAOsp8o95H4gnBN9oCn=AYdX91gecJ-Sqw9yQDW3nouoKu7uNMQ@mail.gmail.com>
	<CAOsp8o-9MdG3sFpT-fpfs9imi4UFRJrPRDPMOvAcafoJS94cxw@mail.gmail.com>
	<CAOsp8o_3mbD=ns1pWZdHPAtn0Z7VRyHdbTn00xg69v6rLpJ5FQ@mail.gmail.com>
	<56563853.8090304@windriver.com>
Date: Wed, 25 Nov 2015 16:58:39 -0600
Message-ID: <CAOsp8o_Lq84VaGiMvrvBA3SmtTro5PteV4x5xLBz_GgBXdRp=A@mail.gmail.com>
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
X-List-Received-Date: Wed, 25 Nov 2015 22:58:49 -0000
Content-Type: multipart/alternative; boundary=001a11c3c7782832820525656612

--001a11c3c7782832820525656612
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Mark,

I ran the same command, including the offending PYTHONPATH, from the shell
without error. Any reason why that would work, despite it not working from
within the Makefile? I was thinking it was another environment variable
that was causing the issue (one that's not set in my bash environment by
default). My $PATH didn't have python-native so I called it using an
absolute path, but otherwise it's the same command run from the Makefile
(parsed, of course):

bash$
_PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-lin=
ux/python/2.7.9-r1/build
_PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/=
2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/wo=
rk/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git=
/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-l=
inux2
/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-native/p=
ython2.7
-S -m sysconfig --generate-posix-vars
bash$ ls pybuilddir.txt
pybuilddir.txt

Maybe I'm missing something.


On Wed, Nov 25, 2015 at 4:38 PM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 11/25/15 10:11 AM, Michael Habibi wrote:
> > Well, I'm wrong yet again. A 'which python2.7' shows that it's pointing
> to a
> > native version of Python:
> >
> > *| which python2.7*
> > *|
> >
> /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-native=
/python2.7*
> > |
> >
> _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-l=
inux/python/2.7.9-r1/build
> > _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >
> PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pytho=
n/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/=
work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-g=
it/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat=
-linux2
> > python2.7 -S -m sysconfig --generate-posix-vars ;\
> > |       if test $? -ne 0 ; then \
> > |               echo "generate-posix-vars failed" ; \
> > |               rm -f ./pybuilddir.txt ; \
> > |               exit 1 ; \
> > |       fi
> > | Illegal instruction (core dumped)
> > | make: *** [sharedmods] Error 132
> >
> > I guess one of the environmental variables being passed in is screwing
> up what
> > it's doing. Unfortunately I don't know enough about the inner workings
> of Python
> > to be of much help moving forward. I gave it my best shot!
>
> The problem I tracked down was:
>
>
> PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pytho=
n/2.7.9-r1/build/build/lib.linux2-x86_64-2.7
>
> This is full of .so objects when loaded cause the illegal instruction.
>
> I came up with a patch that I thought was going to fix it, but it's
> triggered
> other failures.
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2015-November/1=
13341.html
>
> Just to be clear.. this does NOT work properly in many cases.  But might
> give
> you or someone else a clue as to how to possibly fix it.
>
> --Mark
>
> >
> > On Wed, Nov 25, 2015 at 10:01 AM, Michael Habibi <mikehabibi@gmail.com
> > <mailto:mikehabibi@gmail.com>> wrote:
> >
> >     Ah sorry, I misspoke. I walked through the Makefile and configure
> scripts a
> >     bit more, and $(PYTHON_FOR_BUILD) should in fact be a host version =
of
> >     Python. It seems it's not being configured correctly. Either the
> path is
> >     setup wrong and python2.7 is not pointing to the right version, or
> python2.7
> >     needs to be pointing to the absolute path instead of relying on
> $PATH.
> >
> >
> >
> >
> >     On Wed, Nov 25, 2015 at 9:45 AM, Michael Habibi <
> mikehabibi@gmail.com
> >     <mailto:mikehabibi@gmail.com>> wrote:
> >
> >         For what it's worth, this is the offending portion of
> Makefile.pre:452:
> >
> >         # Create build directory and generate the sysconfig build-time
> data there.
> >         # pybuilddir.txt contains the name of the build dir and is used
> for
> >         # sys.path fixup -- see Modules/getpath.c.
> >         # Since this step runs before shared modules are built, try to
> avoid
> >         bootstrap
> >         # problems by creating a dummy pybuilddir.txt just to allow
> interpreter
> >         # initialization to succeed.  It will be overwritten by
> generate-posix-vars
> >         # or removed in case of failure.
> >         pybuilddir.txt: $(BUILDPYTHON)
> >         =E2=86=92 @echo "none" > ./pybuilddir.txt
> >         =E2=86=92 $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig
> --generate-posix-vars ;\
> >         =E2=86=92 if test $$? -ne 0 ; then \
> >         =E2=86=92 =E2=86=92 echo "generate-posix-vars failed" ; \
> >         =E2=86=92 =E2=86=92 rm -f ./pybuilddir.txt ; \
> >         =E2=86=92 =E2=86=92 exit 1 ; \
> >         =E2=86=92 fi
> >
> >         I don't know enough about the Python build to understand what
> it's
> >         trying to do, but perhaps replacing PYTHON_FOR_BUILD with
> HOSTPYTHON may
> >         be acceptable?
> >
> >         I'm surprised this seems to work for other people, since this
> should be
> >         failing for anyone using Python on a target platform different
> from
> >         their host.
> >
> >         On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle <
> mark.hatle@windriver.com
> >         <mailto:mark.hatle@windriver.com>> wrote:
> >
> >             On 11/24/15 3:23 PM, Mark Hatle wrote:
> >             > My guess is that there is a bug in the python integration
> where
> >             it's not
> >             > realizing the host and target are different systems, so
> it's
> >             trying to run a
> >             > target program on your host.  Your host isn't haswell,
> so...
> >             Illegal Instruction
> >             > -- and the system stops.
> >
> >             Just an FYI, I hit the same problem today.  I suspect it is
> the host
> >             trying to
> >             run target software and I'm looking into it.
> >
> >             --Mark
> >
> >             > The alternative would be something is running QEMU to
> execute a
> >             target binary
> >             > and QEMU doesn't have instruction support -- but that
> doesn't look
> >             like the case
> >             > here.
> >             >
> >             > --Mark
> >             >
> >             > On 11/24/15 3:06 PM, Michael Habibi wrote:
> >             >> All,
> >             >>
> >             >> I added a new machine definition with tuning parameters
> for haswell
> >             >> microarchitectures (basically just duplicated corei7 but
> tuned it
> >             for haswell).
> >             >> This seems to work correctly, but failed when running
> do_install
> >             for python
> >             >> toward the end of the build process. I am running with
> the Yocto
> >             2.0 framework,
> >             >> with very minimal changes to create a new distribution a=
nd
> >             machine for our
> >             >> custom embedded device. Note I had this distro
> configuration
> >             working before, and
> >             >> the only difference is I added a new machine with this
> tuning.
> >             >>
> >             >> I believe the issue is because, as part of the do_instal=
l
> step
> >             for Python, it
> >             >> attempts to run python on the local host, despite being
> >             cross-compiled. However,
> >             >> it is tuned for a processor that my host machine doesn't
> run, so
> >             I get an
> >             >> instruction exception.
> >             >>
> >             >> Did I do something weird? I figure python would be
> configured for
> >             >> cross-compiling and therefore wouldn't try to run the
> target
> >             version on the
> >             >> host, even for sanity tests. Here is the output of the
> failure:
> >             >>
> >             >> $ tail -20
> >             >>
> >
>  /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/t=
emp/log.do_install.17258
> >             >>
> >             >> x86_64-diags-linux-ar rc libpython2.7.a
> Modules/threadmodule.o
> >             >>  Modules/signalmodule.o  Modules/posixmodule.o
> Modules/errnomodule.o
> >             >>  Modules/pwdmodule.o  Modules/_sre.o
> Modules/_codecsmodule.o
> >             >>  Modules/_weakref.o  Modules/zipimport.o
> Modules/symtablemodule.o
> >             >>  Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
> >             >> x86_64-diags-linux-ranlib libpython2.7.a
> >             >> Modules/posixmodule.o: In function `posix_tmpnam':
> >             >>
> >
>  /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/P=
ython-2.7.9/Modules/posixmodule.c:7575:
> >             >> warning: the use of `tmpnam_r' is dangerous, better use
> `mkstemp'
> >             >> Modules/posixmodule.o: In function `posix_tempnam':
> >             >>
> >
>  /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/P=
ython-2.7.9/Modules/posixmodule.c:7522:
> >             >> warning: the use of `tempnam' is dangerous, better use
> `mkstemp'
> >             >> x86_64-diags-linux-gcc  -m64 -march=3Dhaswell -mtune=3Dh=
aswell
> >             -mfpmath=3Dsse -mavx2
> >             >>
> --sysroot=3D/projects/yocto-git/build/tmp/sysroots/continental -Wl,-O1
> >             >> -Wl,--hash-style=3Dgnu -Wl,--as-needed -Xlinker
> -export-dynamic -o
> >             python \
> >             >>                         Modules/python.o \
> >             >>                         -L. -lpython2.7 -lpthread -ldl
> -lpthread
> >             -lutil   -lm
> >             >>
> >
>  _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-=
linux/python/2.7.9-r1/build
> >             >> _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >             >>
> >
>  PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pyth=
on/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp=
/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-=
git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/pla=
t-linux2
> >             >> python2.7 -S -m sysconfig --generate-posix-vars ;\
> >             >>         if test $? -ne 0 ; then \
> >             >>                 echo "generate-posix-vars failed" ; \
> >             >>                 rm -f ./pybuilddir.txt ; \
> >             >>                 exit 1 ; \
> >             >>         fi
> >             >> Illegal instruction (core dumped)
> >             >> make: *** [sharedmods] Error 132
> >             >> WARNING: exit code 1 from a shell command.
> >             >> ERROR: oe_runmake failed
> >             >> ERROR: Function failed: do_install (log file is located =
at
> >             >>
> >
>  /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/t=
emp/log.do_install.17258)
> >             >>
> >             >> Here is my tune-haswell.inc (ignore some copy/paste
> comment
> >             issues right now =3D):
> >             >>
> >             >> # Settings for the GCC(1) cpu-type "haswell":
> >             >> #
> >             >> #     Intel Core i7 CPU with 64-bit extensions, MOVBE,
> MMX, SSE,
> >             SSE2, SSE3,=C2=B7
> >             >> #     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES,
> PCLMUL,
> >             FSGSBASE,
> >             >> #     RDRND, FMA, BMI, BMI2 and F16C instruction set
> support.
> >             >> #
> >             >> # This tune is recommended for Intel Nehalem and
> Silvermont (e.g.
> >             Bay Trail) CPUs
> >             >> # (and beyond).
> >             >> #
> >             >> DEFAULTTUNE ?=3D "haswell"
> >             >>
> >             >> # Pull in the previous tune in to pull in
> PACKAGE_EXTRA_ARCHS
> >             >> require conf/machine/include/tune-corei7.inc
> >             >>
> >             >> # Extra tune features
> >             >> TUNEVALID[haswell] =3D "Enable haswell specific processo=
r
> >             optimizations"
> >             >> TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES",
> "haswell", "
> >             >> -march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2"=
, "",
> d)}"
> >             >>
> >             >> # Extra tune selections
> >             >> AVAILTUNES +=3D "haswell"
> >             >> TUNE_FEATURES_tune-haswell =3D
> "${TUNE_FEATURES_tune-x86-64} haswell"
> >             >> BASE_LIB_tune-haswell =3D "lib"
> >             >> TUNE_PKGARCH_tune-haswell =3D "haswell"
> >             >> PACKAGE_EXTRA_ARCHS_tune-haswell =3D
> >             "${PACKAGE_EXTRA_ARCHS_tune-corei7} haswell"
> >             >>
> >             >>
> >             >>
> >             >
> >
> >             --
> >             _______________________________________________
> >             yocto mailing list
> >             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >             https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> >
>
>

--001a11c3c7782832820525656612
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Mark,<div><br></div><div>I ran the same command, including=
 the offending PYTHONPATH, from the shell without error. Any reason why tha=
t would work, despite it not working from within the Makefile? I was thinki=
ng it was another environment variable that was causing the issue (one that=
&#39;s not set in my bash environment by default). My $PATH didn&#39;t have=
 python-native so I called it using an absolute path, but otherwise it&#39;=
s the same command run from the Makefile (parsed, of course):</div><div><br=
></div><div><div>bash$ _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp=
/work/haswell-diags-linux/python/2.7.9-r1/build _PYTHON_HOST_PLATFORM=3Dlin=
ux2-x86_64 PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-li=
nux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/b=
uild/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/project=
s/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9=
/Lib/plat-linux2 /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bi=
n/python-native/python2.7 -S -m sysconfig --generate-posix-vars</div><div>b=
ash$ ls pybuilddir.txt</div><div>pybuilddir.txt</div></div><div><br></div><=
div>Maybe I&#39;m missing something.</div><div><br></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 25, 2015 at 4:3=
8 PM, Mark Hatle <span dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriv=
er.com" target=3D"_blank">mark.hatle@windriver.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><span class=3D"">On 11/25/15 10:11 AM, Mich=
ael Habibi wrote:<br>
&gt; Well, I&#39;m wrong yet again. A &#39;which python2.7&#39; shows that =
it&#39;s pointing to a<br>
&gt; native version of Python:<br>
&gt;<br>
</span>&gt; *| which python2.7*<br>
&gt; *|<br>
&gt; /projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/python-nat=
ive/python2.7*<br>
<span class=3D"">&gt; |<br>
&gt; _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diag=
s-linux/python/2.7.9-r1/build<br>
&gt; _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64<br>
&gt; PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/py=
thon/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/t=
mp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yoct=
o-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/p=
lat-linux2<br>
&gt; python2.7 -S -m sysconfig --generate-posix-vars ;\<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0if test $? -ne 0 ; then \<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;gen=
erate-posix-vars failed&quot; ; \<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f ./pybuil=
ddir.txt ; \<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit 1 ; \<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt; | Illegal instruction (core dumped)<br>
&gt; | make: *** [sharedmods] Error 132<br>
&gt;<br>
&gt; I guess one of the environmental variables being passed in is screwing=
 up what<br>
&gt; it&#39;s doing. Unfortunately I don&#39;t know enough about the inner =
workings of Python<br>
&gt; to be of much help moving forward. I gave it my best shot!<br>
<br>
</span>The problem I tracked down was:<br>
<br>
PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/=
2.7.9-r1/build/build/lib.linux2-x86_64-2.7<br>
<br>
This is full of .so objects when loaded cause the illegal instruction.<br>
<br>
I came up with a patch that I thought was going to fix it, but it&#39;s tri=
ggered<br>
other failures.<br>
<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2015-N=
ovember/113341.html" rel=3D"noreferrer" target=3D"_blank">http://lists.open=
embedded.org/pipermail/openembedded-core/2015-November/113341.html</a><br>
<br>
Just to be clear.. this does NOT work properly in many cases.=C2=A0 But mig=
ht give<br>
you or someone else a clue as to how to possibly fix it.<br>
<br>
--Mark<br>
<span class=3D""><br>
&gt;<br>
&gt; On Wed, Nov 25, 2015 at 10:01 AM, Michael Habibi &lt;<a href=3D"mailto=
:mikehabibi@gmail.com">mikehabibi@gmail.com</a><br>
</span><span class=3D"">&gt; &lt;mailto:<a href=3D"mailto:mikehabibi@gmail.=
com">mikehabibi@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ah sorry, I misspoke. I walked through the Makefile=
 and configure scripts a<br>
&gt;=C2=A0 =C2=A0 =C2=A0bit more, and $(PYTHON_FOR_BUILD) should in fact be=
 a host version of<br>
&gt;=C2=A0 =C2=A0 =C2=A0Python. It seems it&#39;s not being configured corr=
ectly. Either the path is<br>
&gt;=C2=A0 =C2=A0 =C2=A0setup wrong and python2.7 is not pointing to the ri=
ght version, or python2.7<br>
&gt;=C2=A0 =C2=A0 =C2=A0needs to be pointing to the absolute path instead o=
f relying on $PATH.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Wed, Nov 25, 2015 at 9:45 AM, Michael Habibi &lt=
;<a href=3D"mailto:mikehabibi@gmail.com">mikehabibi@gmail.com</a><br>
</span><div><div class=3D"h5">&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D=
"mailto:mikehabibi@gmail.com">mikehabibi@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0For what it&#39;s worth, this is the =
offending portion of Makefile.pre:452:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Create build directory and generate=
 the sysconfig build-time data there.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# pybuilddir.txt contains the name of=
 the build dir and is used for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# sys.path fixup -- see Modules/getpa=
th.c.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Since this step runs before shared =
modules are built, try to avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bootstrap<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# problems by creating a dummy pybuil=
ddir.txt just to allow interpreter<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# initialization to succeed.=C2=A0 It=
 will be overwritten by generate-posix-vars<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# or removed in case of failure.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pybuilddir.txt: $(BUILDPYTHON)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 @echo &quot;none&quot; &gt;=
 ./pybuilddir.txt<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 $(RUNSHARED) $(PYTHON_FOR_B=
UILD) -S -m sysconfig --generate-posix-vars ;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 if test $$? -ne 0 ; then \<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 =E2=86=92 echo &quot;genera=
te-posix-vars failed&quot; ; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 =E2=86=92 rm -f ./pybuilddi=
r.txt ; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 =E2=86=92 exit 1 ; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=86=92 fi<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I don&#39;t know enough about the Pyt=
hon build to understand what it&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0trying to do, but perhaps replacing P=
YTHON_FOR_BUILD with HOSTPYTHON may<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0be acceptable?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I&#39;m surprised this seems to work =
for other people, since this should be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0failing for anyone using Python on a =
target platform different from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0their host.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Wed, Nov 25, 2015 at 9:02 AM, Mark=
 Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@windriver=
.com</a><br>
</div></div><div><div class=3D"h5">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&l=
t;mailto:<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@windriver.c=
om</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 11/24/15 3:23 PM, Ma=
rk Hatle wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; My guess is that t=
here is a bug in the python integration where<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0it&#39;s not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; realizing the host=
 and target are different systems, so it&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0trying to run a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; target program on =
your host.=C2=A0 Your host isn&#39;t haswell, so...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Illegal Instruction<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -- and the system =
stops.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Just an FYI, I hit the =
same problem today.=C2=A0 I suspect it is the host<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0trying to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0run target software and=
 I&#39;m looking into it.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--Mark<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; The alternative wo=
uld be something is running QEMU to execute a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0target binary<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; and QEMU doesn&#39=
;t have instruction support -- but that doesn&#39;t look<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0like the case<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; here.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; --Mark<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On 11/24/15 3:06 P=
M, Michael Habibi wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; All,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; I added a new =
machine definition with tuning parameters for haswell<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; microarchitect=
ures (basically just duplicated corei7 but tuned it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for haswell).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; This seems to =
work correctly, but failed when running do_install<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for python<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; toward the end=
 of the build process. I am running with the Yocto<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02.0 framework,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; with very mini=
mal changes to create a new distribution and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0machine for our<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; custom embedde=
d device. Note I had this distro configuration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0working before, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; the only diffe=
rence is I added a new machine with this tuning.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; I believe the =
issue is because, as part of the do_install step<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for Python, it<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; attempts to ru=
n python on the local host, despite being<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cross-compiled. However=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; it is tuned fo=
r a processor that my host machine doesn&#39;t run, so<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I get an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; instruction ex=
ception.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; Did I do somet=
hing weird? I figure python would be configured for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; cross-compilin=
g and therefore wouldn&#39;t try to run the target<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0version on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; host, even for=
 sanity tests. Here is the output of the failure:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; $ tail -20<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/projects/yocto-git/bui=
ld/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; x86_64-diags-l=
inux-ar rc libpython2.7.a Modules/threadmodule.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 Modules/=
signalmodule.o=C2=A0 Modules/posixmodule.o=C2=A0 Modules/errnomodule.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 Modules/=
pwdmodule.o=C2=A0 Modules/_sre.o=C2=A0 Modules/_codecsmodule.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 Modules/=
_weakref.o=C2=A0 Modules/zipimport.o=C2=A0 Modules/symtablemodule.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 Modules/=
md5module.o Modules/md5.o=C2=A0 Modules/xxsubtype.o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; x86_64-diags-l=
inux-ranlib libpython2.7.a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; Modules/posixm=
odule.o: In function `posix_tmpnam&#39;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/projects/yocto-git/bui=
ld/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixm=
odule.c:7575:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; warning: the u=
se of `tmpnam_r&#39; is dangerous, better use `mkstemp&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; Modules/posixm=
odule.o: In function `posix_tempnam&#39;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/projects/yocto-git/bui=
ld/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modules/posixm=
odule.c:7522:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; warning: the u=
se of `tempnam&#39; is dangerous, better use `mkstemp&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; x86_64-diags-l=
inux-gcc=C2=A0 -m64 -march=3Dhaswell -mtune=3Dhaswell<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-mfpmath=3Dsse -mavx2<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; --sysroot=3D/p=
rojects/yocto-git/build/tmp/sysroots/continental -Wl,-O1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; -Wl,--hash-sty=
le=3Dgnu -Wl,--as-needed -Xlinker -export-dynamic -o<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0python \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Modules/python.o \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0-L. -lpython2.7 -lpthread -ldl=C2=A0 -lpthread<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-lutil=C2=A0 =C2=A0-lm<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_PYTHON_PROJECT_BASE=3D=
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/buil=
d<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; _PYTHON_HOST_P=
LATFORM=3Dlinux2-x86_64<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PYTHONPATH=3D/projects/=
yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/build/build/li=
b.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/work/haswell-diags-linux/=
python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git/build/tmp/work/haswell=
-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; python2.7 -S -=
m sysconfig --generate-posix-vars ;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0if test $? -ne 0 ; then \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;generate-posix-v=
ars failed&quot; ; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f ./pybuilddir.txt ; \<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit 1 ; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; Illegal instru=
ction (core dumped)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; make: *** [sha=
redmods] Error 132<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; WARNING: exit =
code 1 from a shell command.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; ERROR: oe_runm=
ake failed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; ERROR: Functio=
n failed: do_install (log file is located at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/projects/yocto-git/bui=
ld/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258)<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; Here is my tun=
e-haswell.inc (ignore some copy/paste comment<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0issues right now =3D):<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # Settings for=
 the GCC(1) cpu-type &quot;haswell&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #=C2=A0 =C2=A0=
 =C2=A0Intel Core i7 CPU with 64-bit extensions, MOVBE, MMX, SSE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0SSE2, SSE3,=C2=B7<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #=C2=A0 =C2=A0=
 =C2=A0SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCLMUL,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0FSGSBASE,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #=C2=A0 =C2=A0=
 =C2=A0RDRND, FMA, BMI, BMI2 and F16C instruction set support.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # This tune is=
 recommended for Intel Nehalem and Silvermont (e.g.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Bay Trail) CPUs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # (and beyond)=
.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; #<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; DEFAULTTUNE ?=
=3D &quot;haswell&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # Pull in the =
previous tune in to pull in PACKAGE_EXTRA_ARCHS<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; require conf/m=
achine/include/tune-corei7.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # Extra tune f=
eatures<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; TUNEVALID[hasw=
ell] =3D &quot;Enable haswell specific processor<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0optimizations&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; TUNE_CCARGS .=
=3D &quot;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quot;haswell&quo=
t;, &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; -march=3Dhaswe=
ll -mtune=3Dhaswell -mfpmath=3Dsse -mavx2&quot;, &quot;&quot;, d)}&quot;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; # Extra tune s=
elections<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; AVAILTUNES +=
=3D &quot;haswell&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; TUNE_FEATURES_=
tune-haswell =3D &quot;${TUNE_FEATURES_tune-x86-64} haswell&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; BASE_LIB_tune-=
haswell =3D &quot;lib&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; TUNE_PKGARCH_t=
une-haswell =3D &quot;haswell&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt; PACKAGE_EXTRA_=
ARCHS_tune-haswell =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;${PACKAGE_EXTRA_A=
RCHS_tune-corei7} haswell&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_______________________=
________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
</div></div>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a hre=
f=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://list=
s.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</blockquote></div><br></div>

--001a11c3c7782832820525656612--
