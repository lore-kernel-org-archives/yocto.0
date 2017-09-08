Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D99E00CDF; Fri,  8 Sep 2017 02:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15AC0E00CD2
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 02:18:47 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id m142so2768504vkf.2
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 02:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KM2QdWKjN+J+T8NP56uDBe8BnvlFv5OtYWMivh2+lWU=;
	b=dIj7Qvo5X+l60IkmIfJnUyEwT7C/SvZ9WRGXG6NT96kmqvOm3rTFE5c8baKr81FmEp
	4mLHca0rZ4FtxnXVnYKqUMebDWWHYnQEhsYScIagpUs6HzwKjCb1KuLTEXaCoocmQwly
	4LdC+7DNmY1M+Nz4gNqKDtlD8DAUVe04V+Ll2gRcbual97iwQxG+diezu/q70Or347y3
	EnWt2t2NJ/3yaJH+p2IBcO1xg/+T3S4bblvuglYlL+3KWJtSx02SbDJ6xx3oK6vy9tKv
	pDtD75W7i6/o1DvG9A+zxw1uP2fI/mKKj94HlBq/uHfx4x4qnqichsyk8f50N6OZXSA5
	5h5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KM2QdWKjN+J+T8NP56uDBe8BnvlFv5OtYWMivh2+lWU=;
	b=WpyNErREfq79f2gP1PWqYtiXLMtP4hywzNX8QCDRKEH4eUK73Q4xlhZGbakDlxDkfV
	zyYyKmGwxFP6CdziWqrGspU9FLLx0zHOBgxa52xQsV9bfzNW0SlPU5+4ABA9I/BnzP4+
	uMuX1FS3PunYbY6eo8niylxJnNBzuiDDNSRwCAJjGQFcECnsJhoQnVVIz206IB9GKFiB
	V9apTNpMx8R2QA63nSBbx3HGDfXACvEtPHv566JmTOtHqXKv8yHTrxZ9C7RIttjfS2Qz
	0jsHFQv6gbw53zMVgAZuQQ1wTGTx/NaLD/pJ6KcJYw2SVV+QEticyKvBJS18X5XKCnlu
	GTgA==
X-Gm-Message-State: AHPjjUi2osshFn+n5MstqPGboo35YsEqdXz0ywukK0kety4Ixg9viLyr
	gTRJWQLK8zufPgHtrLlwnw90jtLuGw==
X-Google-Smtp-Source: AOwi7QAn2afTDZmM+ushpOonwlphskPU3UsSAQOk4QKX3FF8smzCjGQGkuTY8RkZIQPgUSQYB7eDLzqOSfQnPHvoI4c=
X-Received: by 10.31.4.131 with SMTP id 125mr1242788vke.88.1504862326633; Fri,
	08 Sep 2017 02:18:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Fri, 8 Sep 2017 02:18:46 -0700 (PDT)
In-Reply-To: <CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
	<CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 8 Sep 2017 11:18:46 +0200
Message-ID: <CAC+thW1aSXs-C03_7rgenyLXNypJBRBBQsJEpZrUJyRj1OKb_g@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Fri, 08 Sep 2017 09:18:49 -0000
Content-Type: multipart/alternative; boundary="001a11465e146a3dbe0558aa10f1"

--001a11465e146a3dbe0558aa10f1
Content-Type: text/plain; charset="UTF-8"

Hi!

On Mon, Sep 4, 2017 at 10:31 PM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote:
> >>
> >> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
> >>>
> >>> I am trying to just get the simple 64-bit rpi-basic-image to work, but
> the
> >>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
> >>
> >>
> >> Can you plugin a serial cable and see if that worked or try to add ssh
> >> daemon on target and try to ssh into pi
> >>>
> >>>
> >>
> >> That was a good call. I can login with the ssh daemon, so it does
> >> successfully boot. I just
> >> cannot access it from the HDMI port. (I do not have the hardware for a
> >> serial connection
> >> at the moment)
> >>
> >> Any ideas on how to get the HDMI port to function the same way as it
> does
> >> for the
> >> 32-bit case?
> >>
> >
> > Readding the mailing list.
> >
> > what you have is exactly what I had when I submitted the port to
> > meta-raspberrypi. Haven;t had a chance to revisit it. but this could
> > be related to device tree files we are using here. I have had reports
> > from other devs of having been able to boot into graphics using older
> > kernels but I never got
> > that far myself.
>
> I'm seeing the same issue on builds from both pyro and master
> branches. I've confirmed this isn't a HW issue by trying out an
> OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.
>
> Khem, are you saying this is the current expected state of Raspberry
> Pi 3 64-bit support? If so I'd really like us to document this in the
> readme and open a bug so we don't lose track of it.
>

Reading this thread made me curious to get back to building/testing for
raspberrypi3-64 myself as I used to do for a while till a few months ago.
Not really in the need for that now, but, it would be nice to help keeping
the support healthy if possible. Then tonight I added back
MACHINE=raspberrypi3-64 bitbake myimage to the builds I run daily with
master branches of poky and meta-raspberrypi and felt into a even earlier
showstopper than the boot issue described here. My kernel build fails with:

Build Configuration:
BB_VERSION        = "1.35.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "aarch64-poky-linux"
MACHINE           = "raspberrypi3-64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3+snapshot-20170908"
TUNE_FEATURES     = "aarch64"
TARGET_FPU        = ""
meta
meta-poky
meta-yocto-bsp    = "HEAD:8b4f16a9cbbaf521461f699b7264fac2ac872581"
meta-raspberrypi  = "HEAD:e59132bdcc092597ed5f08a77e7160b0f3bb3547"

Initialising tasks: 100%
|#####################################################################################################################################################################################################|
Time: 0:00:11
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
oe_runmake failed
ERROR: linux-raspberrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile:
Function failed: do_compile (log file is located at
/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r
0/temp/log.do_compile.8392)
ERROR: Logfile of failure stored in:
/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/temp/log.do_compile.8392
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage
CC=aarch64-poky-linux-gcc   -fuse-ld=bfd
 --sysroot=/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot
-
ffile-prefix-map=/workdir/bsl/build-poky/tmp-poky/work-shared/raspberrypi3-64/kernel-source=/kernel-source/
 LD=aarch64-poky-linux-ld.bfd
 --sysroot=/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.
9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot LOADADDR=0x00008000
| make[2]: *** No rule to make target 'uImage'.  Stop.
| Makefile:150: recipe for target 'sub-make' failed
| make[1]: *** [sub-make] Error 2
| Makefile:24: recipe for target '__sub-make' failed
| make: *** [__sub-make] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/temp/log.do_compile.8392)
ERROR: Task
(/workdir/bsl/build-poky/conf/../../layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4764 tasks of which 4763 didn't need to be
rerun and 1 failed.

The only particular configuration I have here (and probably did not have
when testing it a while ago) as you can guess by the missing target name is
that i boot to U-Boot with KERNEL_IMAGETYPE = "uImage". Does this ring a
bell to anyone?

--001a11465e146a3dbe0558aa10f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<br><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Mon, Sep 4, 2017 at 10:31 PM, Paul Barker <span dir=3D"ltr">&lt;<=
a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><span class=3D"gmail-">On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj &lt;<=
a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins &lt;<a href=3D"mailto:b=
ill@korgrd.com">bill@korgrd.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Aug 25, 2017, at 9:42 AM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins &lt;<a href=3D"mailto=
:bill@korgrd.com">bill@korgrd.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am trying to just get the simple 64-bit rpi-basic-image to w=
ork, but the<br>
&gt;&gt;&gt; Raspberry Pi 3 seems to hang with the rainbow screen at startu=
p.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Can you plugin a serial cable and see if that worked or try to add=
 ssh<br>
&gt;&gt; daemon on target and try to ssh into pi<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; That was a good call. I can login with the ssh daemon, so it does<=
br>
&gt;&gt; successfully boot. I just<br>
&gt;&gt; cannot access it from the HDMI port. (I do not have the hardware f=
or a<br>
&gt;&gt; serial connection<br>
&gt;&gt; at the moment)<br>
&gt;&gt;<br>
&gt;&gt; Any ideas on how to get the HDMI port to function the same way as =
it does<br>
&gt;&gt; for the<br>
&gt;&gt; 32-bit case?<br>
&gt;&gt;<br>
&gt;<br>
&gt; Readding the mailing list.<br>
&gt;<br>
&gt; what you have is exactly what I had when I submitted the port to<br>
&gt; meta-raspberrypi. Haven;t had a chance to revisit it. but this could<b=
r>
&gt; be related to device tree files we are using here. I have had reports<=
br>
&gt; from other devs of having been able to boot into graphics using older<=
br>
&gt; kernels but I never got<br>
&gt; that far myself.<br>
<br>
</span>I&#39;m seeing the same issue on builds from both pyro and master<br=
>
branches. I&#39;ve confirmed this isn&#39;t a HW issue by trying out an<br>
OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.<br>
<br>
Khem, are you saying this is the current expected state of Raspberry<br>
Pi 3 64-bit support? If so I&#39;d really like us to document this in the<b=
r>
readme and open a bug so we don&#39;t lose track of it.<br></blockquote><di=
v><br></div><div>Reading this thread made me curious to get back to buildin=
g/testing for raspberrypi3-64 myself as I used to do for a while till a few=
 months ago. Not really in the need for that now, but, it would be nice to =
help keeping the support healthy if possible. Then tonight I added back MAC=
HINE=3Draspberrypi3-64 bitbake myimage to the builds I run daily with maste=
r branches of poky and meta-raspberrypi and felt into a even earlier showst=
opper than the boot issue described here. My kernel build fails with:</div>=
<div><br></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;1.35.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =
=C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;aarch64-poky-linux&quot;</div></div><div>MACHINE =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi3-64&quot;<br></div><div>DIST=
RO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>=
DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.3+snapshot-20170908&quot;</div><div=
>TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;aarch64&quot;</div><div>TARGET_FPU =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>meta</div><div>meta-p=
oky</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;HEAD:8b4f16a9cbbaf52146=
1f699b7264fac2ac872581&quot;</div><div>meta-raspberrypi =C2=A0=3D &quot;HEA=
D:e59132bdcc092597ed5f08a77e7160b0f3bb3547&quot;<br></div><div><br></div><d=
iv>Initialising tasks: 100% |##############################################=
###########################################################################=
###########################################################################=
#| Time: 0:00:11</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: E=
xecuting RunQueue Tasks</div><div>ERROR: linux-raspberrypi-1_4.9.41+gitAUTO=
INC+4153f509b4-r0 do_compile: oe_runmake failed</div><div>ERROR: linux-rasp=
berrypi-1_4.9.41+gitAUTOINC+4153f509b4-r0 do_compile: Function failed: do_c=
ompile (log file is located at /workdir/bsl/build-poky/tmp-poky/work/raspbe=
rrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r</di=
v><div>0/temp/log.do_compile.8392)</div><div>ERROR: Logfile of failure stor=
ed in: /workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/lin=
ux-raspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/temp/log.do_compile.8392</=
div><div>Log data follows:</div><div>| DEBUG: Executing shell function do_c=
ompile</div><div>| NOTE: make -j 8 HOSTCC=3Dgcc =C2=A0HOSTCPP=3Dgcc =C2=A0-=
E uImage CC=3Daarch64-poky-linux-gcc =C2=A0 -fuse-ld=3Dbfd =C2=A0--sysroot=
=3D/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-r=
aspberrypi/1_4.9.41+gitAUTOINC+4153f509b4-r0/recipe-sysroot -</div><div>ffi=
le-prefix-map=3D/workdir/bsl/build-poky/tmp-poky/work-shared/raspberrypi3-6=
4/kernel-source=3D/kernel-source/ =C2=A0LD=3Daarch64-poky-linux-ld.bfd =C2=
=A0 =C2=A0--sysroot=3D/workdir/bsl/build-poky/tmp-poky/work/raspberrypi3_64=
-poky-linux/linux-raspberrypi/1_4.</div><div>9.41+gitAUTOINC+4153f509b4-r0/=
recipe-sysroot LOADADDR=3D0x00008000</div><div>| make[2]: *** No rule to ma=
ke target &#39;uImage&#39;.=C2=A0 Stop.</div><div>| Makefile:150: recipe fo=
r target &#39;sub-make&#39; failed</div><div>| make[1]: *** [sub-make] Erro=
r 2</div><div>| Makefile:24: recipe for target &#39;__sub-make&#39; failed<=
/div><div>| make: *** [__sub-make] Error 2</div><div>| ERROR: oe_runmake fa=
iled</div><div>| WARNING: exit code 1 from a shell command.</div><div>| ERR=
OR: Function failed: do_compile (log file is located at /workdir/bsl/build-=
poky/tmp-poky/work/raspberrypi3_64-poky-linux/linux-raspberrypi/1_4.9.41+gi=
tAUTOINC+4153f509b4-r0/temp/log.do_compile.8392)</div><div>ERROR: Task (/wo=
rkdir/bsl/build-poky/conf/../../layers/meta-raspberrypi/recipes-kernel/linu=
x/linux-raspberrypi_4.9.bb:do_compile) failed with exit code &#39;1&#39;</d=
iv><div>NOTE: Tasks Summary: Attempted 4764 tasks of which 4763 didn&#39;t =
need to be rerun and 1 failed.</div><div><br></div><div>The only particular=
 configuration I have here (and probably did not have when testing it a whi=
le ago) as you can guess by the missing target name is that i boot to U-Boo=
t with KERNEL_IMAGETYPE =3D &quot;uImage&quot;. Does this ring a bell to an=
yone?</div></div></div></div>

--001a11465e146a3dbe0558aa10f1--
