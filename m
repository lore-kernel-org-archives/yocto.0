Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A15BBE00A73; Wed, 25 Nov 2015 07:45:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
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
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96DE0E009EF
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 07:45:54 -0800 (PST)
Received: by lfdl133 with SMTP id l133so65028300lfd.2
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 07:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mA89NtuvPrV7QZV4wEPUb0l0153KBZP2Rx7JhAcNed8=;
	b=hJu2liesqxLvgvZNNZcJ3UW6irSep3885NaMB/OwVhMZL1rxwe727o/ZZ4Is/E0x+3
	3t9YCuoniwFK/zysQLhVpZHV8dXYoZogvMSNTO2oOOvMBSPt2V0ht2xsksK9KccYXfj4
	LwdiKqfvqLru09EX6jPKzslzhAdD9pnvXjljft38BkiLAJuUW7LP9NFdIfXZ3iBhawZj
	A6H5FiuzMTs/imMaewk1yCCxPC+Yq9tMl0E9mrcKog/vO3Wh0Iee3tvdTD1wxjGi5wEP
	n36L9DktLT455m9jUSuhqwZ89hNcqo+6ana6FiC5MoHpOfKyHY2MfLkkBgTqZPdJhF0H
	VtVQ==
MIME-Version: 1.0
X-Received: by 10.25.27.147 with SMTP id b141mr13158817lfb.87.1448466353589;
	Wed, 25 Nov 2015 07:45:53 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Wed, 25 Nov 2015 07:45:53 -0800 (PST)
In-Reply-To: <5655CD70.9010109@windriver.com>
References: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
	<5654D545.1090408@windriver.com> <5655CD70.9010109@windriver.com>
Date: Wed, 25 Nov 2015 09:45:53 -0600
Message-ID: <CAOsp8o95H4gnBN9oCn=AYdX91gecJ-Sqw9yQDW3nouoKu7uNMQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 25 Nov 2015 15:45:58 -0000
Content-Type: multipart/alternative; boundary=001a1140135079952705255f5acc

--001a1140135079952705255f5acc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

For what it's worth, this is the offending portion of Makefile.pre:452:

# Create build directory and generate the sysconfig build-time data there.
# pybuilddir.txt contains the name of the build dir and is used for
# sys.path fixup -- see Modules/getpath.c.
# Since this step runs before shared modules are built, try to avoid
bootstrap
# problems by creating a dummy pybuilddir.txt just to allow interpreter
# initialization to succeed.  It will be overwritten by generate-posix-vars
# or removed in case of failure.
pybuilddir.txt: $(BUILDPYTHON)
=E2=86=92 @echo "none" > ./pybuilddir.txt
=E2=86=92 $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig --generate-posix=
-vars ;\
=E2=86=92 if test $$? -ne 0 ; then \
=E2=86=92 =E2=86=92 echo "generate-posix-vars failed" ; \
=E2=86=92 =E2=86=92 rm -f ./pybuilddir.txt ; \
=E2=86=92 =E2=86=92 exit 1 ; \
=E2=86=92 fi

I don't know enough about the Python build to understand what it's trying
to do, but perhaps replacing PYTHON_FOR_BUILD with HOSTPYTHON may be
acceptable?

I'm surprised this seems to work for other people, since this should be
failing for anyone using Python on a target platform different from their
host.

On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 11/24/15 3:23 PM, Mark Hatle wrote:
> > My guess is that there is a bug in the python integration where it's no=
t
> > realizing the host and target are different systems, so it's trying to
> run a
> > target program on your host.  Your host isn't haswell, so... Illegal
> Instruction
> > -- and the system stops.
>
> Just an FYI, I hit the same problem today.  I suspect it is the host
> trying to
> run target software and I'm looking into it.
>
> --Mark
>
> > The alternative would be something is running QEMU to execute a target
> binary
> > and QEMU doesn't have instruction support -- but that doesn't look like
> the case
> > here.
> >
> > --Mark
> >
> > On 11/24/15 3:06 PM, Michael Habibi wrote:
> >> All,
> >>
> >> I added a new machine definition with tuning parameters for haswell
> >> microarchitectures (basically just duplicated corei7 but tuned it for
> haswell).
> >> This seems to work correctly, but failed when running do_install for
> python
> >> toward the end of the build process. I am running with the Yocto 2.0
> framework,
> >> with very minimal changes to create a new distribution and machine for
> our
> >> custom embedded device. Note I had this distro configuration working
> before, and
> >> the only difference is I added a new machine with this tuning.
> >>
> >> I believe the issue is because, as part of the do_install step for
> Python, it
> >> attempts to run python on the local host, despite being cross-compiled=
.
> However,
> >> it is tuned for a processor that my host machine doesn't run, so I get
> an
> >> instruction exception.
> >>
> >> Did I do something weird? I figure python would be configured for
> >> cross-compiling and therefore wouldn't try to run the target version o=
n
> the
> >> host, even for sanity tests. Here is the output of the failure:
> >>
> >> $ tail -20
> >>
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/te=
mp/log.do_install.17258
> >>
> >> x86_64-diags-linux-ar rc libpython2.7.a Modules/threadmodule.o
> >>  Modules/signalmodule.o  Modules/posixmodule.o  Modules/errnomodule.o
> >>  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o
> >>  Modules/_weakref.o  Modules/zipimport.o  Modules/symtablemodule.o
> >>  Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
> >> x86_64-diags-linux-ranlib libpython2.7.a
> >> Modules/posixmodule.o: In function `posix_tmpnam':
> >>
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Py=
thon-2.7.9/Modules/posixmodule.c:7575:
> >> warning: the use of `tmpnam_r' is dangerous, better use `mkstemp'
> >> Modules/posixmodule.o: In function `posix_tempnam':
> >>
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Py=
thon-2.7.9/Modules/posixmodule.c:7522:
> >> warning: the use of `tempnam' is dangerous, better use `mkstemp'
> >> x86_64-diags-linux-gcc  -m64 -march=3Dhaswell -mtune=3Dhaswell -mfpmat=
h=3Dsse
> -mavx2
> >> --sysroot=3D/projects/yocto-git/build/tmp/sysroots/continental -Wl,-O1
> >> -Wl,--hash-style=3Dgnu -Wl,--as-needed -Xlinker -export-dynamic -o pyt=
hon
> \
> >>                         Modules/python.o \
> >>                         -L. -lpython2.7 -lpthread -ldl  -lpthread
> -lutil   -lm
> >>
> _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-l=
inux/python/2.7.9-r1/build
> >> _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
> >>
> PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/pytho=
n/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/=
work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-g=
it/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat=
-linux2
> >> python2.7 -S -m sysconfig --generate-posix-vars ;\
> >>         if test $? -ne 0 ; then \
> >>                 echo "generate-posix-vars failed" ; \
> >>                 rm -f ./pybuilddir.txt ; \
> >>                 exit 1 ; \
> >>         fi
> >> Illegal instruction (core dumped)
> >> make: *** [sharedmods] Error 132
> >> WARNING: exit code 1 from a shell command.
> >> ERROR: oe_runmake failed
> >> ERROR: Function failed: do_install (log file is located at
> >>
> /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/te=
mp/log.do_install.17258)
> >>
> >> Here is my tune-haswell.inc (ignore some copy/paste comment issues
> right now =3D):
> >>
> >> # Settings for the GCC(1) cpu-type "haswell":
> >> #
> >> #     Intel Core i7 CPU with 64-bit extensions, MOVBE, MMX, SSE, SSE2,
> SSE3,=C2=B7
> >> #     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCLMUL, FSGSBASE,
> >> #     RDRND, FMA, BMI, BMI2 and F16C instruction set support.
> >> #
> >> # This tune is recommended for Intel Nehalem and Silvermont (e.g. Bay
> Trail) CPUs
> >> # (and beyond).
> >> #
> >> DEFAULTTUNE ?=3D "haswell"
> >>
> >> # Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS
> >> require conf/machine/include/tune-corei7.inc
> >>
> >> # Extra tune features
> >> TUNEVALID[haswell] =3D "Enable haswell specific processor optimization=
s"
> >> TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "haswell", "
> >> -march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2", "", d)}"
> >>
> >> # Extra tune selections
> >> AVAILTUNES +=3D "haswell"
> >> TUNE_FEATURES_tune-haswell =3D "${TUNE_FEATURES_tune-x86-64} haswell"
> >> BASE_LIB_tune-haswell =3D "lib"
> >> TUNE_PKGARCH_tune-haswell =3D "haswell"
> >> PACKAGE_EXTRA_ARCHS_tune-haswell =3D "${PACKAGE_EXTRA_ARCHS_tune-corei=
7}
> haswell"
> >>
> >>
> >>
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1140135079952705255f5acc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For what it&#39;s worth, this is the offending portion of =
Makefile.pre:452:<div><br></div><div><div># Create build directory and gene=
rate the sysconfig build-time data there.</div><div># pybuilddir.txt contai=
ns the name of the build dir and is used for</div><div># sys.path fixup -- =
see Modules/getpath.c.</div><div># Since this step runs before shared modul=
es are built, try to avoid bootstrap</div><div># problems by creating a dum=
my pybuilddir.txt just to allow interpreter</div><div># initialization to s=
ucceed.=C2=A0 It will be overwritten by generate-posix-vars</div><div># or =
removed in case of failure.</div><div>pybuilddir.txt: $(BUILDPYTHON)</div><=
div>=E2=86=92 @echo &quot;none&quot; &gt; ./pybuilddir.txt</div><div>=E2=86=
=92 $(RUNSHARED) $(PYTHON_FOR_BUILD) -S -m sysconfig --generate-posix-vars =
;\</div><div>=E2=86=92 if test $$? -ne 0 ; then \</div><div>=E2=86=92 =E2=
=86=92 echo &quot;generate-posix-vars failed&quot; ; \</div><div>=E2=86=92 =
=E2=86=92 rm -f ./pybuilddir.txt ; \</div><div>=E2=86=92 =E2=86=92 exit 1 ;=
 \</div><div>=E2=86=92 fi</div></div><div><br></div><div>I don&#39;t know e=
nough about the Python build to understand what it&#39;s trying to do, but =
perhaps replacing PYTHON_FOR_BUILD with HOSTPYTHON may be acceptable?</div>=
<div><br></div><div>I&#39;m surprised this seems to work for other people, =
since this should be failing for anyone using Python on a target platform d=
ifferent from their host.</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Wed, Nov 25, 2015 at 9:02 AM, Mark Hatle <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">=
mark.hatle@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On 11/24/15 3:23 PM, Mark Hatle wrote:<br>
&gt; My guess is that there is a bug in the python integration where it&#39=
;s not<br>
&gt; realizing the host and target are different systems, so it&#39;s tryin=
g to run a<br>
&gt; target program on your host.=C2=A0 Your host isn&#39;t haswell, so... =
Illegal Instruction<br>
&gt; -- and the system stops.<br>
<br>
Just an FYI, I hit the same problem today.=C2=A0 I suspect it is the host t=
rying to<br>
run target software and I&#39;m looking into it.<br>
<br>
--Mark<br>
<br>
&gt; The alternative would be something is running QEMU to execute a target=
 binary<br>
&gt; and QEMU doesn&#39;t have instruction support -- but that doesn&#39;t =
look like the case<br>
&gt; here.<br>
&gt;<br>
&gt; --Mark<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; On 11/24/15 3:06 PM, Michael Habibi wrote:<br>
&gt;&gt; All,<br>
&gt;&gt;<br>
&gt;&gt; I added a new machine definition with tuning parameters for haswel=
l<br>
&gt;&gt; microarchitectures (basically just duplicated corei7 but tuned it =
for haswell).<br>
&gt;&gt; This seems to work correctly, but failed when running do_install f=
or python<br>
&gt;&gt; toward the end of the build process. I am running with the Yocto 2=
.0 framework,<br>
&gt;&gt; with very minimal changes to create a new distribution and machine=
 for our<br>
&gt;&gt; custom embedded device. Note I had this distro configuration worki=
ng before, and<br>
&gt;&gt; the only difference is I added a new machine with this tuning.<br>
&gt;&gt;<br>
&gt;&gt; I believe the issue is because, as part of the do_install step for=
 Python, it<br>
&gt;&gt; attempts to run python on the local host, despite being cross-comp=
iled. However,<br>
&gt;&gt; it is tuned for a processor that my host machine doesn&#39;t run, =
so I get an<br>
&gt;&gt; instruction exception.<br>
&gt;&gt;<br>
&gt;&gt; Did I do something weird? I figure python would be configured for<=
br>
&gt;&gt; cross-compiling and therefore wouldn&#39;t try to run the target v=
ersion on the<br>
&gt;&gt; host, even for sanity tests. Here is the output of the failure:<br=
>
&gt;&gt;<br>
&gt;&gt; $ tail -20<br>
&gt;&gt; /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.=
9-r1/temp/log.do_install.17258<br>
&gt;&gt;<br>
&gt;&gt; x86_64-diags-linux-ar rc libpython2.7.a Modules/threadmodule.o<br>
&gt;&gt;=C2=A0 Modules/signalmodule.o=C2=A0 Modules/posixmodule.o=C2=A0 Mod=
ules/errnomodule.o<br>
&gt;&gt;=C2=A0 Modules/pwdmodule.o=C2=A0 Modules/_sre.o=C2=A0 Modules/_code=
csmodule.o<br>
&gt;&gt;=C2=A0 Modules/_weakref.o=C2=A0 Modules/zipimport.o=C2=A0 Modules/s=
ymtablemodule.o<br>
&gt;&gt;=C2=A0 Modules/md5module.o Modules/md5.o=C2=A0 Modules/xxsubtype.o<=
br>
&gt;&gt; x86_64-diags-linux-ranlib libpython2.7.a<br>
&gt;&gt; Modules/posixmodule.o: In function `posix_tmpnam&#39;:<br>
&gt;&gt; /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.=
9-r1/Python-2.7.9/Modules/posixmodule.c:7575:<br>
&gt;&gt; warning: the use of `tmpnam_r&#39; is dangerous, better use `mkste=
mp&#39;<br>
&gt;&gt; Modules/posixmodule.o: In function `posix_tempnam&#39;:<br>
&gt;&gt; /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.=
9-r1/Python-2.7.9/Modules/posixmodule.c:7522:<br>
&gt;&gt; warning: the use of `tempnam&#39; is dangerous, better use `mkstem=
p&#39;<br>
&gt;&gt; x86_64-diags-linux-gcc=C2=A0 -m64 -march=3Dhaswell -mtune=3Dhaswel=
l -mfpmath=3Dsse -mavx2<br>
&gt;&gt; --sysroot=3D/projects/yocto-git/build/tmp/sysroots/continental -Wl=
,-O1<br>
&gt;&gt; -Wl,--hash-style=3Dgnu -Wl,--as-needed -Xlinker -export-dynamic -o=
 python \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Modules/python.o \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0-L. -lpython2.7 -lpthread -ldl=C2=A0 -lpthread -lut=
il=C2=A0 =C2=A0-lm<br>
&gt;&gt; _PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-=
diags-linux/python/2.7.9-r1/build<br>
&gt;&gt; _PYTHON_HOST_PLATFORM=3Dlinux2-x86_64<br>
&gt;&gt; PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linu=
x/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/bui=
ld/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/=
yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/L=
ib/plat-linux2<br>
&gt;&gt; python2.7 -S -m sysconfig --generate-posix-vars ;\<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test $? -ne 0 ; then \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo =
&quot;generate-posix-vars failed&quot; ; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f=
 ./pybuilddir.txt ; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0exit =
1 ; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt; Illegal instruction (core dumped)<br>
&gt;&gt; make: *** [sharedmods] Error 132<br>
&gt;&gt; WARNING: exit code 1 from a shell command.<br>
&gt;&gt; ERROR: oe_runmake failed<br>
&gt;&gt; ERROR: Function failed: do_install (log file is located at<br>
&gt;&gt; /projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.=
9-r1/temp/log.do_install.17258)<br>
&gt;&gt;<br>
&gt;&gt; Here is my tune-haswell.inc (ignore some copy/paste comment issues=
 right now =3D):<br>
&gt;&gt;<br>
&gt;&gt; # Settings for the GCC(1) cpu-type &quot;haswell&quot;:<br>
&gt;&gt; #<br>
&gt;&gt; #=C2=A0 =C2=A0 =C2=A0Intel Core i7 CPU with 64-bit extensions, MOV=
BE, MMX, SSE, SSE2, SSE3,=C2=B7<br>
&gt;&gt; #=C2=A0 =C2=A0 =C2=A0SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES=
, PCLMUL, FSGSBASE,<br>
&gt;&gt; #=C2=A0 =C2=A0 =C2=A0RDRND, FMA, BMI, BMI2 and F16C instruction se=
t support.<br>
&gt;&gt; #<br>
&gt;&gt; # This tune is recommended for Intel Nehalem and Silvermont (e.g. =
Bay Trail) CPUs<br>
&gt;&gt; # (and beyond).<br>
&gt;&gt; #<br>
&gt;&gt; DEFAULTTUNE ?=3D &quot;haswell&quot;<br>
&gt;&gt;<br>
&gt;&gt; # Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS<br>
&gt;&gt; require conf/machine/include/tune-corei7.inc<br>
&gt;&gt;<br>
&gt;&gt; # Extra tune features<br>
&gt;&gt; TUNEVALID[haswell] =3D &quot;Enable haswell specific processor opt=
imizations&quot;<br>
&gt;&gt; TUNE_CCARGS .=3D &quot;${@bb.utils.contains(&quot;TUNE_FEATURES&qu=
ot;, &quot;haswell&quot;, &quot;<br>
&gt;&gt; -march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2&quot;, &qu=
ot;&quot;, d)}&quot;<br>
&gt;&gt;<br>
&gt;&gt; # Extra tune selections<br>
&gt;&gt; AVAILTUNES +=3D &quot;haswell&quot;<br>
&gt;&gt; TUNE_FEATURES_tune-haswell =3D &quot;${TUNE_FEATURES_tune-x86-64} =
haswell&quot;<br>
&gt;&gt; BASE_LIB_tune-haswell =3D &quot;lib&quot;<br>
&gt;&gt; TUNE_PKGARCH_tune-haswell =3D &quot;haswell&quot;<br>
&gt;&gt; PACKAGE_EXTRA_ARCHS_tune-haswell =3D &quot;${PACKAGE_EXTRA_ARCHS_t=
une-corei7} haswell&quot;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1140135079952705255f5acc--
