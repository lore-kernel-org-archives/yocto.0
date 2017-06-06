Return-Path: <czq@bu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DEA5E00B3D; Tue,  6 Jun 2017 09:12:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.197.228.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from relay55.bu.edu (relay55.bu.edu [128.197.228.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2CC7E00A94
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 09:12:23 -0700 (PDT)
X-Envelope-From: czq@bu.edu
Received: from mail-it0-f72.google.com (mail-it0-f72.google.com
	[209.85.214.72])
	by relay55.bu.edu (8.14.3/8.14.3) with ESMTP id v56GC9X6009313
	for <yocto@yoctoproject.org>; Tue, 6 Jun 2017 12:12:09 -0400
Received: by mail-it0-f72.google.com with SMTP id l6so177780813iti.0
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 09:12:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e/p965Y+1WM5MiWWgcpE2lDQeLOlgcgRkqEj/9HL6O8=;
	b=Ep8K3xG591FbGo7Q8HD58V8KnisXwDtQYoEq0rjse0Vz94w8ogNFfrOOoIFkt9EVjq
	q3KLyTE2mZxyoLnLp+EKgoaiNPNhR+pwUxd2W7xluj3TdLPZv4YV97nT3AIpZR7FCcxX
	qmnfyJAZPhtFJVwpNgOZ5z2bSzCAjpY29msr5IFYh8q/v630yf2L6rWDHjSeP5ePIpI/
	cjHlz5RgcTVqJDS+NJG51HmlqcZbdUXSKrMTmGEAH9XtQkQ5tIYVCamjKKuBH5kTgJH8
	LcG/2RZh1wuOqZA+1k0bWLgqpXX/3wNXs5nqnFev2IGJVaHvYRxqFIyjGatSjRTLC4bc
	zx1Q==
X-Gm-Message-State: AODbwcCtydsksnszGQ+23MUJQlgeqpjM6cFlplZAz6EWmMw6J/U1N8WR
	n35777WJeOBj3jztoPgeMGFwZM4nkafVr7vXMWBblFyGpudHgbN3G5UrvKTXVOA1b8CYdjm3YEV
	EyvPZ4/WepJ6L2HXMxrA4Pjrz
X-Received: by 10.36.22.137 with SMTP id a131mr17853325ita.115.1496765528418; 
	Tue, 06 Jun 2017 09:12:08 -0700 (PDT)
X-Received: by 10.36.22.137 with SMTP id a131mr17853281ita.115.1496765528182; 
	Tue, 06 Jun 2017 09:12:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.47.38 with HTTP; Tue, 6 Jun 2017 09:12:05 -0700 (PDT)
In-Reply-To: <1496764773.26945.125.camel@linux.intel.com>
References: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
	<1496764773.26945.125.camel@linux.intel.com>
From: Zhuoqun Cheng <czq@bu.edu>
Date: Tue, 6 Jun 2017 12:12:05 -0400
Message-ID: <CACHUKCL2aeatMEbHRBXVLj5a_1k0KDy5WTJ52BBe0d6P_ecp=w@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 16:12:26 -0000
Content-Type: multipart/alternative; boundary="001a114338ca9e9ffd05514ce1f1"

--001a114338ca9e9ffd05514ce1f1
Content-Type: text/plain; charset="UTF-8"

Hi Leo and Khem,

I just changed the MACHINE var to "intel-core2-32" (I assume it's the one
in build/conf/local.conf. It was read-only and I added write permission)
and it still gives me the same error.

Here's some info that might be useful, before I change, when I do build, it
prints:

Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "i686-poky-linux"
MACHINE           = "intel-aero"
DISTRO            = "poky-aero"
DISTRO_VERSION    = "1.4.0-dev"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""

After change:

Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "i686-poky-linux"
MACHINE           = "intel-core2-32"
DISTRO            = "poky-aero"
DISTRO_VERSION    = "1.4.0-dev"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""

Thanks,
Tom.

On Tue, Jun 6, 2017 at 11:59 AM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Tue, 2017-06-06 at 08:42 -0400, Zhuoqun Cheng wrote:
> > Hi Yocto Experts,
> >
> >
> > I'm fairly new to Yocto and I've already tried my best to search for
> > answers, but not happy with what I found.
> >
> >
> > So here's the situation I've got:
> >
> >
> > I'm using yocto to build the intel aero board image, following this
> > link:
> > https://github.com/intel-aero/meta-intel-aero/wiki/
> Quickstart-Guide#yocto-for-intel-aero
> >
> >
> >
> > Everything worked fine, until I wanted to change the target
> > architecture from the default 64-bit x86 to 32-bit x86. What I did is
> > three steps:
> > 1. do a clean: bitbake -c clean intel-aero-image
> > 2. change configuration, from "require
> > conf/machine/intel-corei7-64.conf" to "require
> > conf/machine/intel-core2-32.conf" in the file
> > "meta-intel-aero/conf/machine/intel-aero.conf"
> > 3. do a build: bitbake intel-aero-image
> >
> Did you change the MACHINE var?
>
>
>
> >
> > Unfortunately, I got loads of errors, like "ERROR: linux-yocto-4.4.60
> > +gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue: Architecture did
> > not match (3 to 62) on
> > work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+gitAUTOINC
> > +2cc78e92f4-r0/packages-split/kernel-module-gspca-kinect/
> lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb/gspca/gspca_kinect.ko
> [arch]
> > "
> >
> >
> > Then I tried deleting all the files in the packages-split directory
> > and rebuilding. It passed building the kernel (even though failed
> > because some other package's arch mismatch), but those file I deleted
> > never got generated again! Now I'm a bit worried.
> >
> >
> > So I guess my question is:
> > What is the correct procedures to follow to reuse a poky folder
> > (already built once) for a different target architecture? I'm happy to
> > accept any links and suggested readings.
> >
> >
> > Thanks a lot!
> > Tom.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--001a114338ca9e9ffd05514ce1f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leo and Khem,<div><br></div><div>I just changed the MAC=
HINE var to &quot;intel-core2-32&quot; (I assume it&#39;s the one in build/=
conf/local.conf. It was read-only and I added write permission) and it stil=
l gives me the same error.</div><div><br></div><div>Here&#39;s some info th=
at might be useful, before I change, when I do build, it prints:</div><div>=
<br></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;1.30.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =
=3D &quot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;i686-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;intel-aero&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky-aero&quot;</div><div>DISTRO_VERSION =C2=
=A0 =C2=A0=3D &quot;1.4.0-dev&quot;</div><div>TUNE_FEATURES =C2=A0 =C2=A0 =
=3D &quot;m32 core2&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;&quot;</div></div><div><br></div><div>After change:</div><div><br=
></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.30.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =
=3D &quot;universal&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;i686-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;intel-core2-32&quot;</div><div>DISTRO =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky-aero&quot;</div><div>DISTRO_VERSI=
ON =C2=A0 =C2=A0=3D &quot;1.4.0-dev&quot;</div><div>TUNE_FEATURES =C2=A0 =
=C2=A0 =3D &quot;m32 core2&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;&quot;</div></div><div><br></div><div>Thanks,</div><div>Tom=
.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
ue, Jun 6, 2017 at 11:59 AM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">l=
eonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D"">On Tue, 2017-06-06 at 08:42 -0400, =
Zhuoqun Cheng wrote:<br>
&gt; Hi Yocto Experts,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m fairly new to Yocto and I&#39;ve already tried my best to sear=
ch for<br>
&gt; answers, but not happy with what I found.<br>
&gt;<br>
&gt;<br>
&gt; So here&#39;s the situation I&#39;ve got:<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m using yocto to build the intel aero board image, following thi=
s<br>
&gt; link:<br>
&gt; <a href=3D"https://github.com/intel-aero/meta-intel-aero/wiki/Quicksta=
rt-Guide#yocto-for-intel-aero" rel=3D"noreferrer" target=3D"_blank">https:/=
/github.com/intel-aero/<wbr>meta-intel-aero/wiki/<wbr>Quickstart-Guide#yoct=
o-for-<wbr>intel-aero</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Everything worked fine, until I wanted to change the target<br>
&gt; architecture from the default 64-bit x86 to 32-bit x86. What I did is<=
br>
&gt; three steps:<br>
&gt; 1. do a clean: bitbake -c clean intel-aero-image<br>
&gt; 2. change configuration, from &quot;require<br>
&gt; conf/machine/intel-corei7-64.<wbr>conf&quot; to &quot;require<br>
&gt; conf/machine/intel-core2-32.<wbr>conf&quot; in the file<br>
&gt; &quot;meta-intel-aero/conf/machine/<wbr>intel-aero.conf&quot;<br>
&gt; 3. do a build: bitbake intel-aero-image<br>
&gt;<br>
</span>Did you change the MACHINE var?<br>
<span class=3D"im HOEnZb"><br>
<br>
<br>
&gt;<br>
&gt; Unfortunately, I got loads of errors, like &quot;ERROR: linux-yocto-4.=
4.60<br>
&gt; +gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue: Architecture did<br=
>
&gt; not match (3 to 62) on<br>
&gt; work/core2-32-intel-common-<wbr>poky-linux/linux-yocto/4.4.60+<wbr>git=
AUTOINC<br>
&gt; +2cc78e92f4-r0/packages-split/<wbr>kernel-module-gspca-kinect/<wbr>lib=
/modules/4.4.60-yocto-<wbr>standard/kernel/drivers/media/<wbr>usb/gspca/gsp=
ca_kinect.ko [arch]<br>
&gt; &quot;<br>
&gt;<br>
&gt;<br>
&gt; Then I tried deleting all the files in the packages-split directory<br=
>
&gt; and rebuilding. It passed building the kernel (even though failed<br>
&gt; because some other package&#39;s arch mismatch), but those file I dele=
ted<br>
&gt; never got generated again! Now I&#39;m a bit worried.<br>
&gt;<br>
&gt;<br>
&gt; So I guess my question is:<br>
&gt; What is the correct procedures to follow to reuse a poky folder<br>
&gt; (already built once) for a different target architecture? I&#39;m happ=
y to<br>
&gt; accept any links and suggested readings.<br>
&gt;<br>
&gt;<br>
&gt; Thanks a lot!<br>
&gt; Tom.<br>
&gt;<br>
&gt;<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</div></div></blockquote></div><br></div>

--001a114338ca9e9ffd05514ce1f1--
