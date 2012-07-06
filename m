Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B15F3E006AD
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 13:13:23 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so10230988ggn.35
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2012 13:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QLOtZrlUeUF+v9u/553qOeAK1bxn7ClId7dRgYhi7vA=;
	b=G1Qlu0eI64Sj360hmAH4TCrnG0HOulhq6DSISmCBN+3h147AEmmZrSZesCUAem/fXF
	kzJL4sMnkviVMKrcxLgY4GVB+FHzCryDScK703sAPwOAWYI43OaI4BBO9iBqvIkYlsYF
	b66XBym5lhC+aLafMaaXWnJ5CS3JTSviE/GktQC7fu9bk7wDjEwAURn5OB4lAYhLBmOJ
	aF/VUyD+aupVz2N5KE7QIqjZzr+fEUZ1xydkVDhxRgNyUJ86MzPx+rB9p0pBgOHqPW9K
	1eefyK0jcaC1RiNWubs0VVW9y3aZjYVhsXZus3DuDh3I7G1gQk2fivKIJqKKswxJ0qjQ
	y1/w==
MIME-Version: 1.0
Received: by 10.60.30.101 with SMTP id r5mr32484432oeh.68.1341605602888; Fri,
	06 Jul 2012 13:13:22 -0700 (PDT)
Received: by 10.76.0.200 with HTTP; Fri, 6 Jul 2012 13:13:22 -0700 (PDT)
In-Reply-To: <1341604864.6761.138.camel@trz-ThinkPad-T420>
References: <4FF6F44B.6090605@gmail.com>
	<1341585872.6761.118.camel@trz-ThinkPad-T420>
	<4FF6FA72.3030101@gmail.com>
	<1341586756.6761.124.camel@trz-ThinkPad-T420>
	<4FF7220E.6030306@gmail.com>
	<1341599756.6761.132.camel@trz-ThinkPad-T420>
	<4FF73309.9050903@gmail.com>
	<1341601067.6761.135.camel@trz-ThinkPad-T420>
	<4FF74105.5030906@gmail.com>
	<1341604864.6761.138.camel@trz-ThinkPad-T420>
Date: Fri, 6 Jul 2012 16:13:22 -0400
Message-ID: <CANFv2EkB-65_wyiWGNFV-29TNs9WbXAz9j11UE=CPMYbEzEd=w@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on denzil - n450
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
X-List-Received-Date: Fri, 06 Jul 2012 20:13:24 -0000
Content-Type: multipart/alternative; boundary=e89a8fb20678638b3304c42ee55d

--e89a8fb20678638b3304c42ee55d
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 6, 2012 at 4:01 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

>  On Fri, 2012-07-06 at 15:48 -0400, jfabernathy wrote:
> > On 07/06/2012 02:57 PM, Tom Zanussi wrote:
> > > On Fri, 2012-07-06 at 14:48 -0400, jfabernathy wrote:
> > >> On 07/06/2012 02:35 PM, Tom Zanussi wrote:
> > >>> On Fri, 2012-07-06 at 13:36 -0400, jfabernathy wrote:
> > >>>> On 07/06/2012 10:59 AM, Tom Zanussi wrote:
> > >>>>> On Fri, 2012-07-06 at 10:47 -0400, jfabernathy wrote:
> > >>>>>> On 07/06/2012 10:44 AM, Tom Zanussi wrote:
> > >>>>>>> On Fri, 2012-07-06 at 10:20 -0400, jfabernathy wrote:
> > >>>>>>>> Something has changes very recently.  I was building with a
> fresh clone
> > >>>>>>>> of poky and meta-intel.  checked out Denzil on both. only
> modified to
> > >>>>>>>> support the meta-n450 layer, the parallel options and the local
> download
> > >>>>>>>> directory.
> > >>>>>>>>
> > >>>>>>> Are you using a local clone of the kernel i.e. using AUTOREV?
>  There are
> > >>>>>>> currently a few patches that you'd only get with AUTOREV that the
> > >>>>>>> offical SRCREVs in the recipe prevent from getting into normal
> builds at
> > >>>>>>> the moment.
> > >>>>>>>
> > >>>>>>> Tom
> > >>>>>> I have local kernels on the system, but I hope I'm not using
> them. The
> > >>>>>> last good build I did used a local kernel.  However, I started by
> > >>>>>> blowing away the poky dir and the /build dir.  I did a new clone
> of poky
> > >>>>>> and meta-intel and checkout the denzil branch in both (not tag)
> > >>>>>>
> > >>>>> Oh, I see now, 450 doesn't specify a kernel SRCREV like the other
> BSPs.
> > >>>>> You can fix that locally by changing the empty SRCREVs in the n450
> > >>>>> kernel recipe e.g.
> > >>>>>
> > >>>>> SRCREV_machine_pn-linux-yocto_n450 =
> 9d32bb075e349cc69c7af42b60f6715c5d8c972e
> > >>>>> SRCREV_meta_pn-linux-yocto_n450 ?=
>  ee78519365bdb25287703bbc31c06b193263c654
> > >>>>>
> > >>>>> This is exactly the reason it's not good to use floating kernel
> SRCREVs.
> > >>>> So this fixes the issue, but I just want to know how you knew which
> > >>>> commit strings to use is this case?  I finally found them, but not
> sure
> > >>>> why you pick these particular ones.
> > >>> Well, it's kind of a long story already.  Basically, there was a
> > >>> patchset yesterday that got partially pulled in, and part of that
> was a
> > >>> set of changes to the kernel.  If you have a hard-coded SRCREV, this
> > >>> isn't a problem, for the n450 that's not the case.
> > >>>
> > >>> So how I figured out which ones to use was that I looked at the n450
> > >>> machine branch and the meta branch and picked out the SRCREVs
> > >>> immediately preceding those changes.
> > >>>
> > >>> Tom
> > >> It's interesting. I got the standard build to complete without any
> > >> changes except the SRCREV statements. It booted on the Netbook just
> > >> fine, but without networking.  I went back to the bbappend file and
> added:
> > >>
> > >> SRC_URI += "file://my_wifi.cfg"
> > >>
> > >> Then created the my_wifi.cfg file to say:
> > >>
> > >> CONFIG_ATH9K_PCI=y
> > >>
> > >> after cleaning sstate and bitbake linux-yocto -c compile -f
> > >> successfully, I couldn't seem to continue.  That when I got the
> libperl
> > >> error again like I did originally before I added the SRCREV.
> > >>
> > > OK, I have no idea what happened there, but I can say that that if
> > > you're seeing that message, you're seeing commits that you shouldn't be
> > > according to the SRCREV i.e. that libperl message was itself added as
> > > part of the patchset:
> > >
> > >
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.2/commit/?h=standard/base&id=18ad076590b30347af31224304ee58986bd178cf
> > >
> > > Tom
> > >
> > So you're really not going to like hearing this :-)  I ran the default
> > n450 build from the tarball BSPs same libperl error.  I'm going to blow
> > everything away including my download directory and start from the
> > beginning of time.
> >
>
> Actually, that would be expected - the n450 BSP is using whatever the
> latest SRCREVs from the kernel, regardless of whether the BSP itself is
> in a tarball or from a git repo or whatever - it's still pointing at the
> same kernel either way, and getting the same commits...
>
> Tom
>
>
I went back and added the SRCREVs but that didn't fix it.  Maybe the
cleansstate doesn't clean enough up to allow me to continue.  I'll add the
srcrevs to the tarball version when I restart my testing.

But this time, I've poured me a Blanton's bourbon, so it should go much
better :-)

Jim A


>  > Jim A
> >
> >
> > >> Jim A
> > >>
> > >>>> Jim A
> > >>>>
> > >>>>> Tom
> > >>>>>
> > >>>>>> Jim A
> > >>>>>>
> > >>>>>>>> I got an error compiling the kernel.  It didn't fail yesterday
> early,
> > >>>>>>>> but now I get the same failure on Ubuntu 12.04 and Fedora 16.
> > >>>>>>>>
> > >>>>>>>> Jim A
> > >>>>>>>>
> > >>>>>>>>
> > >>>>>>>> NOTE: make -C
> > >>>>>>>>
> /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf
> > >>>>>>>> CC=i586-poky-linux-gcc  -m32    -march=core2 -msse3
> -mtune=generic
> > >>>>>>>> -mfpmath=sse --sysroot=/build/n450-denzil/tmp/sysroots/n450
> > >>>>>>>> LD=i586-poky-linux-ld
> --sysroot=/build/n450-denzil/tmp/sysroots/n450
> > >>>>>>>> prefix=/usr NO_NEWT=1 NO_DWARF=1
> > >>>>>>>> make: Entering directory
> > >>>>>>>>
> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
> > >>>>>>>> Makefile:493: libperl not found, disables Perl scripting
> support. Please
> > >>>>>>>> install libperl-dev or perl-devel
> > >>>>>>>> PERF_VERSION = 3.2.11.629.g382eda3
> > >>>>>>>> make: Leaving directory
> > >>>>>>>>
> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
> > >>>>>>>> make: Entering directory
> > >>>>>>>>
> `/build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
> > >>>>>>>> Makefile:493: libperl not found, disables Perl scripting
> support. Please
> > >>>>>>>> install libperl-dev or perl-devel
> > >>>>>>>>          GEN common-cmds.h
> > >>>>>>>>          * new build flags or prefix
> > >>>>>>>>          CC perf.o
> > >>>>>>>>          CC builtin-annotate.o
> > >>>>>>>>          CC builtin-bench.o
> > >>>>>>>>          CC bench/sched-messaging.o
> > >>>>>>>>          CC bench/sched-pipe.o
> > >>>>>>>>          CC bench/mem-memcpy.o
> > >>>>>>>>          CC builtin-diff.o
> > >>>>>>>>          CC builtin-evlist.o
> > >>>>>>>>          CC builtin-help.o
> > >>>>>>>>          CC builtin-sched.o
> > >>>>>>>>          CC builtin-buildid-list.o
> > >>>>>>>>          CC builtin-buildid-cache.o
> > >>>>>>>>          CC builtin-list.o
> > >>>>>>>>          CC builtin-record.o
> > >>>>>>>>          CC builtin-report.o
> > >>>>>>>>          CC builtin-stat.o
> > >>>>>>>>          CC builtin-timechart.o
> > >>>>>>>>          CC builtin-top.o
> > >>>>>>>>          CC builtin-script.o
> > >>>>>>>>          CC builtin-probe.o
> > >>>>>>>>          CC builtin-kmem.o
> > >>>>>>>>          CC builtin-lock.o
> > >>>>>>>>          CC builtin-kvm.o
> > >>>>>>>>          CC builtin-test.o
> > >>>>>>>>          CC builtin-inject.o
> > >>>>>>>>          CC util/abspath.o
> > >>>>>>>>          CC util/alias.o
> > >>>>>>>>          CC util/annotate.o
> > >>>>>>>>          CC util/build-id.o
> > >>>>>>>>          CC util/config.o
> > >>>>>>>>          CC util/ctype.o
> > >>>>>>>>          CC util/debugfs.o
> > >>>>>>>>          CC util/environment.o
> > >>>>>>>>          CC util/event.o
> > >>>>>>>>          CC util/evlist.o
> > >>>>>>>>          CC util/evsel.o
> > >>>>>>>>          CC util/exec_cmd.o
> > >>>>>>>>          CC util/help.o
> > >>>>>>>>          CC util/levenshtein.o
> > >>>>>>>>          CC util/parse-options.o
> > >>>>>>>>          CC util/parse-events.o
> > >>>>>>>>          CC util/path.o
> > >>>>>>>>          CC util/rbtree.o
> > >>>>>>>>          CC util/bitmap.o
> > >>>>>>>>          CC util/hweight.o
> > >>>>>>>>          CC util/run-command.o
> > >>>>>>>>          CC util/quote.o
> > >>>>>>>>          CC util/strbuf.o
> > >>>>>>>>          CC util/string.o
> > >>>>>>>>          CC util/strlist.o
> > >>>>>>>>          CC util/strfilter.o
> > >>>>>>>>          CC util/top.o
> > >>>>>>>>          CC util/usage.o
> > >>>>>>>>          CC util/wrapper.o
> > >>>>>>>>          CC util/sigchain.o
> > >>>>>>>>          CC util/symbol.o
> > >>>>>>>>          CC util/color.o
> > >>>>>>>>          CC util/pager.o
> > >>>>>>>>          CC util/header.o
> > >>>>>>>>          CC util/callchain.o
> > >>>>>>>>          CC util/values.o
> > >>>>>>>>          CC util/debug.o
> > >>>>>>>>          CC util/map.o
> > >>>>>>>>          CC util/pstack.o
> > >>>>>>>>          CC util/session.o
> > >>>>>>>>          CC util/thread.o
> > >>>>>>>>          CC util/thread_map.o
> > >>>>>>>>          CC util/trace-event-parse.o
> > >>>>>>>>          CC util/trace-event-read.o
> > >>>>>>>>          CC util/trace-event-info.o
> > >>>>>>>>          CC util/trace-event-scripting.o
> > >>>>>>>>          CC util/svghelper.o
> > >>>>>>>>          CC util/sort.o
> > >>>>>>>>          CC util/hist.o
> > >>>>>>>>          CC util/probe-event.o
> > >>>>>>>>          CC util/util.o
> > >>>>>>>>          CC util/xyarray.o
> > >>>>>>>>          CC util/cpumap.o
> > >>>>>>>>          CC util/cgroup.o
> > >>>>>>>>          CC arch/x86/util/header.o
> > >>>>>>>>          CC util/scripting-engines/trace-event-python.o
> > >>>>>>>>          CC scripts/python/Perf-Trace-Util/Context.o
> > >>>>>>>>          AR libperf.a
> > >>>>>>>>          LINK perf
> > >>>>>>>>          GEN perf-archive
> > >>>>>>>>          GEN python/perf.so
> > >>>>>>>> Traceback (most recent call last):
> > >>>>>>>>        File "util/setup.py", line 6, in <module>
> > >>>>>>>>          from distutils.command.build_ext   import build_ext
> as _build_ext
> > >>>>>>>>        File
> > >>>>>>>>
> "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/command/build_ext.py",
> > >>>>>>>> line 16, in <module>
> > >>>>>>>>          from distutils.sysconfig import customize_compiler,
> get_python_version
> > >>>>>>>>        File
> > >>>>>>>>
> "/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/sysconfig.py",
> > >>>>>>>> line 22, in <module>
> > >>>>>>>>          PREFIX = os.path.normpath(sys.prefix).replace(
> > >>>>>>>> os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
> > >>>>>>>> TypeError: expected a character buffer object
> > >>>>>>>> cp: cannot stat `python_ext_build/lib/perf.so': No such file or
> directory
> > >>>>>>>> make: *** [python/perf.so] Error 1
> > >>>>>>>> make: Leaving directory `/build/n450-denziERROR: Function
> failed:
> > >>>>>>>> do_compile_perf (see
> > >>>>>>>>
> /build/n450-denzil/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_compile_perf.7739
> > >>>>>>>> for further information)
> > >>>>>>>>
> l/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf'
> > >>>>>>>> ERROR: oe_runmake failed
> > >>>>>>>> _______________________________________________
> > >>>>>>>> yocto mailing list
> > >>>>>>>> yocto@yoctoproject.org
> > >>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
> > >>
> > >
> >
> >
>
>
>

--e89a8fb20678638b3304c42ee55d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Fri, Jul 6, 2012 at 4:01 PM, Tom Zanussi <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com" target=3D"_blank=
">tom.zanussi@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On Fri, 2012-07-06 at 15:48 -0400, jfabernathy wrote:<br>=
&gt; On 07/06/2012 02:57 PM, Tom Zanussi wrote:<br>&gt; &gt; On Fri, 2012-0=
7-06 at 14:48 -0400, jfabernathy wrote:<br>&gt; &gt;&gt; On 07/06/2012 02:3=
5 PM, Tom Zanussi wrote:<br>
&gt; &gt;&gt;&gt; On Fri, 2012-07-06 at 13:36 -0400, jfabernathy wrote:<br>=
&gt; &gt;&gt;&gt;&gt; On 07/06/2012 10:59 AM, Tom Zanussi wrote:<br>&gt; &g=
t;&gt;&gt;&gt;&gt; On Fri, 2012-07-06 at 10:47 -0400, jfabernathy wrote:<br=
>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; On 07/06/2012 10:44 AM, Tom Zanussi wrote:<br=
>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; On Fri, 2012-07-06 at 10:20 -0400, jfabe=
rnathy wrote:<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Something has change=
s very recently. =A0I was building with a fresh clone<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of poky and meta-intel. =A0checked ou=
t Denzil on both. only modified to<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=
 support the meta-n450 layer, the parallel options and the local download<b=
r>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; directory.<br>&gt; &gt;&gt;&gt;&gt;&g=
t;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Are you using a local c=
lone of the kernel i.e. using AUTOREV? =A0There are<br>&gt; &gt;&gt;&gt;&gt=
;&gt;&gt;&gt; currently a few patches that you&#39;d only get with AUTOREV =
that the<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; offical SRCREVs in the recipe prevent fro=
m getting into normal builds at<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; the mo=
ment.<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;=
&gt; Tom<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; I have local kernels on the system, but I hop=
e I&#39;m not using them. The<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt; last good bu=
ild I did used a local kernel. =A0However, I started by<br>&gt; &gt;&gt;&gt=
;&gt;&gt;&gt; blowing away the poky dir and the /build dir. =A0I did a new =
clone of poky<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt; and meta-intel and checkout the denzil branch=
 in both (not tag)<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt=
;&gt; Oh, I see now, 450 doesn&#39;t specify a kernel SRCREV like the other=
 BSPs.<br>
&gt; &gt;&gt;&gt;&gt;&gt; You can fix that locally by changing the empty SR=
CREVs in the n450<br>&gt; &gt;&gt;&gt;&gt;&gt; kernel recipe e.g.<br>&gt; &=
gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt; SRCREV_machine_pn-linux-yo=
cto_n450 =3D 9d32bb075e349cc69c7af42b60f6715c5d8c972e<br>
&gt; &gt;&gt;&gt;&gt;&gt; SRCREV_meta_pn-linux-yocto_n450 ?=3D =A0 =A0 =A0e=
e78519365bdb25287703bbc31c06b193263c654<br>&gt; &gt;&gt;&gt;&gt;&gt;<br>&gt=
; &gt;&gt;&gt;&gt;&gt; This is exactly the reason it&#39;s not good to use =
floating kernel SRCREVs.<br>
&gt; &gt;&gt;&gt;&gt; So this fixes the issue, but I just want to know how =
you knew which<br>&gt; &gt;&gt;&gt;&gt; commit strings to use is this case?=
 =A0I finally found them, but not sure<br>&gt; &gt;&gt;&gt;&gt; why you pic=
k these particular ones.<br>
&gt; &gt;&gt;&gt; Well, it&#39;s kind of a long story already. =A0Basically=
, there was a<br>&gt; &gt;&gt;&gt; patchset yesterday that got partially pu=
lled in, and part of that was a<br>&gt; &gt;&gt;&gt; set of changes to the =
kernel. =A0If you have a hard-coded SRCREV, this<br>
&gt; &gt;&gt;&gt; isn&#39;t a problem, for the n450 that&#39;s not the case=
.<br>&gt; &gt;&gt;&gt;<br>&gt; &gt;&gt;&gt; So how I figured out which ones=
 to use was that I looked at the n450<br>&gt; &gt;&gt;&gt; machine branch a=
nd the meta branch and picked out the SRCREVs<br>
&gt; &gt;&gt;&gt; immediately preceding those changes.<br>&gt; &gt;&gt;&gt;=
<br>&gt; &gt;&gt;&gt; Tom<br>&gt; &gt;&gt; It&#39;s interesting. I got the =
standard build to complete without any<br>&gt; &gt;&gt; changes except the =
SRCREV statements. It booted on the Netbook just<br>
&gt; &gt;&gt; fine, but without networking. =A0I went back to the bbappend =
file and added:<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; SRC_URI +=3D &quot;file:/=
/my_wifi.cfg&quot;<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Then created the my_wi=
fi.cfg file to say:<br>
&gt; &gt;&gt;<br>&gt; &gt;&gt; CONFIG_ATH9K_PCI=3Dy<br>&gt; &gt;&gt;<br>&gt=
; &gt;&gt; after cleaning sstate and bitbake linux-yocto -c compile -f<br>&=
gt; &gt;&gt; successfully, I couldn&#39;t seem to continue. =A0That when I =
got the libperl<br>
&gt; &gt;&gt; error again like I did originally before I added the SRCREV.<=
br>&gt; &gt;&gt;<br>&gt; &gt; OK, I have no idea what happened there, but I=
 can say that that if<br>&gt; &gt; you&#39;re seeing that message, you&#39;=
re seeing commits that you shouldn&#39;t be<br>
&gt; &gt; according to the SRCREV i.e. that libperl message was itself adde=
d as<br>&gt; &gt; part of the patchset:<br>&gt; &gt;<br>&gt; &gt; <a href=
=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.2/commit/?h=3Ds=
tandard/base&amp;id=3D18ad076590b30347af31224304ee58986bd178cf" target=3D"_=
blank">http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.2/commit/?h=
=3Dstandard/base&amp;id=3D18ad076590b30347af31224304ee58986bd178cf</a><br>
&gt; &gt;<br>&gt; &gt; Tom<br>&gt; &gt;<br>&gt; So you&#39;re really not go=
ing to like hearing this :-) =A0I ran the default<br>&gt; n450 build from t=
he tarball BSPs same libperl error. =A0I&#39;m going to blow<br>&gt; everyt=
hing away including my download directory and start from the<br>
&gt; beginning of time.<br>&gt;<br><br></div></div>Actually, that would be =
expected - the n450 BSP is using whatever the<br>latest SRCREVs from the ke=
rnel, regardless of whether the BSP itself is<br>in a tarball or from a git=
 repo or whatever - it&#39;s still pointing at the<br>
same kernel either way, and getting the same commits...<br><span class=3D"H=
OEnZb"><font color=3D"#888888"><br>Tom<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5"><br></div></div></blockquote>
<div>=A0</div>
<div>I went back and added the SRCREVs but that didn&#39;t fix it.=A0 Maybe=
 the cleansstate doesn&#39;t clean enough up to allow me to continue.=A0 I&=
#39;ll add the srcrevs to the tarball version when I restart my testing.=A0=
 </div>

<div>=A0</div>
<div>But this time, I&#39;ve poured me a Blanton&#39;s bourbon, so it shoul=
d go much better :-)</div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">&gt; Jim A<br>&gt;<br>&gt;<br>&gt; &gt;&gt; Jim A<br>&gt;=
 &gt;&gt;<br>&gt; &gt;&gt;&gt;&gt; Jim A<br>&gt; &gt;&gt;&gt;&gt;<br>&gt; &=
gt;&gt;&gt;&gt;&gt; Tom<br>&gt; &gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&g=
t;&gt;&gt; Jim A<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I go=
t an error compiling the kernel. =A0It didn&#39;t fail yesterday early,<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; but now I get the same failure on Ubu=
ntu 12.04 and Fedora 16.<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&=
gt; Jim A<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;=
&gt;&gt;&gt;&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; NOTE: make -C<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; /build/n450-denzil/tmp/work/n450-poky=
-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8=
b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf<br>&gt; &gt;&gt=
;&gt;&gt;&gt;&gt;&gt;&gt; CC=3Di586-poky-linux-gcc =A0-m32 =A0 =A0-march=3D=
core2 -msse3 -mtune=3Dgeneric<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; -mfpmath=3Dsse --sysroot=3D/build/n45=
0-denzil/tmp/sysroots/n450<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; LD=3Di5=
86-poky-linux-ld --sysroot=3D/build/n450-denzil/tmp/sysroots/n450<br>&gt; &=
gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; prefix=3D/usr NO_NEWT=3D1 NO_DWARF=3D1<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; make: Entering directory<br>&gt; &gt;=
&gt;&gt;&gt;&gt;&gt;&gt;&gt; `/build/n450-denzil/tmp/work/n450-poky-linux/l=
inux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab=
2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf&#39;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Makefile:493: libperl not found, disa=
bles Perl scripting support. Please<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; install libperl-dev or perl-devel<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; PERF_VERSION =3D 3.2.11.629.g382eda3<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; make: Leaving directory<br>&gt; &gt;&=
gt;&gt;&gt;&gt;&gt;&gt;&gt; `/build/n450-denzil/tmp/work/n450-poky-linux/li=
nux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2=
b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf&#39;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; make: Entering directory<br>&gt; &gt;=
&gt;&gt;&gt;&gt;&gt;&gt;&gt; `/build/n450-denzil/tmp/work/n450-poky-linux/l=
inux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab=
2b8d79ac56e8c9a85bad9ae7bca399c-r1/linux/tools/perf&#39;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Makefile:493: libperl not found, disa=
bles Perl scripting support. Please<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; install libperl-dev or perl-devel<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; =A0 =A0 =A0 =A0 =A0GEN common-cmds.h<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0* new build flags =
or prefix<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC pe=
rf.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin=
-annotate.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC =
builtin-bench.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC bench/sched-mes=
saging.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC ben=
ch/sched-pipe.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =
=A0CC bench/mem-memcpy.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-diff.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-evli=
st.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin=
-help.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC buil=
tin-sched.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-buildid=
-list.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC buil=
tin-buildid-cache.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =
=A0 =A0CC builtin-list.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-record.=
o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-re=
port.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC built=
in-stat.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC bu=
iltin-timechart.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-top.o<b=
r>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-scrip=
t.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-=
probe.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC buil=
tin-kmem.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-lock.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-kvm.=
o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin-te=
st.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC builtin=
-inject.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/abspath.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/alias.o=
<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/annota=
te.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/bu=
ild-id.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/config.o<b=
r>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/ctype.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/debugfs=
.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/envi=
ronment.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/event.o<br=
>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/evlist.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/evsel.o=
<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/exec_c=
md.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/help.o<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/levenshtei=
n.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/par=
se-options.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC=
 util/parse-events.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/path.o<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/rbtree.o<b=
r>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/bitmap.o=
<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/hweigh=
t.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/run-comman=
d.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/quo=
te.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/st=
rbuf.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/=
string.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/strlist.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/strfilt=
er.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/to=
p.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/usa=
ge.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/wrapper.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/sigchai=
n.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/sym=
bol.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/c=
olor.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/pager.o<br=
>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/header.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/callcha=
in.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/va=
lues.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/debug.o<br=
>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/map.o<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/pstack.o<b=
r>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/session.=
o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/thread.o<b=
r>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/thread_m=
ap.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/tr=
ace-event-parse.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =
=A0CC util/trace-event-read.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/trace-even=
t-info.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC uti=
l/trace-event-scripting.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =
=A0 =A0 =A0CC util/svghelper.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/sort.o<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/hist.o<br>=
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/probe-even=
t.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/uti=
l.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/xyarray.o<=
br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/cpumap.=
o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/cgrou=
p.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC arch/x86=
/util/header.o<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0CC util/scripting-=
engines/trace-event-python.o<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =
=A0 =A0 =A0 =A0CC scripts/python/Perf-Trace-Util/Context.o<br>&gt; &gt;&gt;=
&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0AR libperf.a<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0LINK perf<br>&gt; =
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0GEN perf-archive<br>&gt=
; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0GEN python/perf.so<br=
>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Traceback (most recent call last):<b=
r>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0File &quot;util/setup.=
py&quot;, line 6, in &lt;module&gt;<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt=
; =A0 =A0 =A0 =A0 =A0from distutils.command.build_ext =A0 import build_ext =
=A0 as _build_ext<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0File<br>&gt; &gt;&gt;&=
gt;&gt;&gt;&gt;&gt;&gt; &quot;/build/n450-denzil/tmp/sysroots/x86_64-linux/=
usr/lib/python2.7/distutils/command/build_ext.py&quot;,<br>&gt; &gt;&gt;&gt=
;&gt;&gt;&gt;&gt;&gt; line 16, in &lt;module&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0from distutils.sys=
config import customize_compiler, get_python_version<br>&gt; &gt;&gt;&gt;&g=
t;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0File<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;=
&gt; &quot;/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/lib/python2.7/d=
istutils/sysconfig.py&quot;,<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; line 22, in &lt;module&gt;<br>&gt; &g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =A0 =A0 =A0 =A0 =A0PREFIX =3D os.path.normpa=
th(sys.prefix).replace(<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; os.getenv(=
&quot;BUILD_SYS&quot;), os.getenv(&quot;HOST_SYS&quot;) )<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; TypeError: expected a character buffe=
r object<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; cp: cannot stat `python_e=
xt_build/lib/perf.so&#39;: No such file or directory<br>&gt; &gt;&gt;&gt;&g=
t;&gt;&gt;&gt;&gt; make: *** [python/perf.so] Error 1<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; make: Leaving directory `/build/n450-=
denziERROR: Function failed:<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; do_co=
mpile_perf (see<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; /build/n450-denzil=
/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd=
448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_c=
ompile_perf.7739<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for further information)<br>&gt; &gt;=
&gt;&gt;&gt;&gt;&gt;&gt;&gt; l/tmp/work/n450-poky-linux/linux-yocto-3.2.18+=
git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85b=
ad9ae7bca399c-r1/linux/tools/perf&#39;<br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ERROR: oe_runmake failed<br>&gt; &gt;=
&gt;&gt;&gt;&gt;&gt;&gt;&gt; ______________________________________________=
_<br>&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; yocto mailing list<br>&gt; &gt;&=
gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>
&gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject=
.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listi=
nfo/yocto</a><br>&gt; &gt;&gt;<br>&gt; &gt;<br>&gt;<br>&gt;<br><br><br></di=
v>
</div></blockquote></div><br>

--e89a8fb20678638b3304c42ee55d--
