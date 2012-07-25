Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE56E00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:47:23 -0700 (PDT)
Received: by lagz14 with SMTP id z14so408945lag.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 02:47:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=oXg+P/ez6LURZEixfa25F8Fo+I2xiEDu6yIqOaC0F3k=;
	b=Iz8UfxVFr5S0DkDLRgXkCXpeEi8VL6A/s45oSLanWszIlCXfLmoyR0ZZWGG0bicnvX
	fBqlbYcA4kqTc4zCqMo7McJ03vDHaCon71pDhBydTTZqzjO0nXeXGc8Pp72oeUPbqUJc
	z3HqVhQYAcV1VaHsz+YF3Ox5qRHzShJUwBfEZTpgDWK9vwPk8a70hb8c+WN56TwXh5ji
	TDPjiOG4bpQ+CNmXouFvrTPVJ82tcq30/GhyMy1gpOLq7LHJNh2FPI8s+Tgcr3i2b5WE
	4RtCleYFFuUzhWgeQR9zyhO0TR1HfQF2Cv9FNWNkgiW5Gu0FyqIz5EI5SYn6AK2tNw3k
	7hhQ==
Received: by 10.152.125.116 with SMTP id mp20mr25006080lab.19.1343209642434;
	Wed, 25 Jul 2012 02:47:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 25 Jul 2012 02:47:02 -0700 (PDT)
In-Reply-To: <CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
References: <CANsUPaOukMiAGQSZPJQ6ZrpZX4=or2DCesr8bC6hEmQyiZobYA@mail.gmail.com>
	<CAJTo0LbPVx7GKzk3CcrdG9-tG31E7cr9OHVChpxLi678etuCeQ@mail.gmail.com>
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 25 Jul 2012 11:47:02 +0200
Message-ID: <CANsUPaOa11_oTJf46kCa5RjBL=JJehby1y+k5QtmHCAU5xsEbg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmCirobrq3ShlpnxZZajfX4MCW6HtcRxZ9NxveQbkGb+b9Of9s2JcwGFqyDiVhv4CF02Ci9
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google Protocol Buffers
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
X-List-Received-Date: Wed, 25 Jul 2012 09:47:24 -0000
Content-Type: multipart/alternative; boundary=f46d0435be6e98a14704c5a45d5a

--f46d0435be6e98a14704c5a45d5a
Content-Type: text/plain; charset=ISO-8859-1

Thanks Burton,

I forgot to say that I'm building for an iMX53QSB.
I edited my recipe in this way:

*SUMMARY = "Protocol Buffers - Google's data interchange format"*
*DESCRIPTION = "Protocol Buffers are a way of encoding structured data in
an efficient yet extensible format"*
*SECTION = "libs"*
*
*
*DEPENDS = "protobuf-native"*
*DEPENDS_virtclass-native = ""*
*BBCLASSEXTEND = "native"*
*
*
*LICENSE = "LGPLv2.1"*
*#LIC_FILES_CHKSUM =
"file://../protobuf-2.4.1/COPYING.txt;md5=af6809583bfde9a31595a58bb4a24514"*
*LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"
*
*
*
*PR = "r0"*
*
*
*SRC_URI = "http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz"*
*
*
*SRC_URI[md5sum] = "dc84e9912ea768baa1976cb7bbcea7b5"*
*SRC_URI[sha256sum] =
"eac6969b617f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567"*
*
*
*inherit autotools*
*
*
The native library builds properly but it populates the wrong sysroot..I
can find protoc executable into tmp/sysroots/i686-linux but not into
imx53qsb sysroot, hence rebuilding the protobuf library it can't find the
executable..

Which configuration do I have to use to populate the  imx53qsb sysroot?

Thanks

Giovanni

--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)



On Wed, Jul 25, 2012 at 10:41 AM, Burton, Ross <ross.burton@intel.com>wrote:

> On 25 July 2012 09:35, Giovanni Foiani <fnognn@unife.it> wrote:
> > does anyone have configured a recipe for make Google Protocol Buffers
> > working?
>
> > do_configure() {
> > ./configure --host=arm
> > }
>
> Don't do that, because what if you want to build gpc for another
> architecture?
>
> > bin/bash:
> >
> /home/gfoiani/yocto/fsl-community-bsp/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/protobuf-2.4.1-r0/protobuf-2.4.1/src/protoc:
> > cannot execute binary file
> > make[2]: *** [unittest_proto_middleman] Error 126
>
> That's because you're (presumably) running on x86 hardware, but are
> trying to execute an ARM binary.  You'll need to build a
> protobuf-native first that installs protoc into the sysroot first.
> Numerous packages have this requirement, such as gtk+.
>
> Ross
>

--f46d0435be6e98a14704c5a45d5a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Burton,<div><br></div><div>I forgot to say that I&#39;m building for=
 an iMX53QSB.</div><div>I edited my recipe in this way:</div><div><br></div=
><div><div><i>SUMMARY =3D &quot;Protocol Buffers - Google&#39;s data interc=
hange format&quot;</i></div>

<div><i>DESCRIPTION =3D &quot;Protocol Buffers are a way of encoding struct=
ured data in an efficient yet extensible format&quot;</i></div><div><i>SECT=
ION =3D &quot;libs&quot;</i></div><div><i><br></i></div><div><i><b>DEPENDS =
=3D &quot;protobuf-native&quot;</b></i></div>

<div><i><b>DEPENDS_virtclass-native =3D &quot;&quot;</b></i></div><div><i><=
b>BBCLASSEXTEND =3D &quot;native&quot;</b></i></div><div><i><br></i></div><=
div><i>LICENSE =3D &quot;LGPLv2.1&quot;</i></div><div><i>#LIC_FILES_CHKSUM =
=3D &quot;file://../protobuf-2.4.1/COPYING.txt;md5=3Daf6809583bfde9a31595a5=
8bb4a24514&quot;</i></div>

<div><i>LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/LGPL-2.1;md=
5=3D1a6d268fd218675ffea8be556788b780&quot;</i></div><div><i><br></i></div><=
div><i>PR =3D &quot;r0&quot;</i></div><div><i><br></i></div><div><i>SRC_URI=
 =3D &quot;<a href=3D"http://protobuf.googlecode.com/files/protobuf-2.4.1.t=
ar.gz">http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz</a>&quot;=
</i></div>

<div><i><br></i></div><div><i>SRC_URI[md5sum] =3D &quot;dc84e9912ea768baa19=
76cb7bbcea7b5&quot;</i></div><div><i>SRC_URI[sha256sum] =3D &quot;eac6969b6=
17f397247e805267da2b0db3ff9e5a9163b123503a192fbb5776567&quot;</i></div><div=
>

<i><br></i></div><div><i>inherit autotools</i></div><div><i><br></i></div><=
div>The native library builds properly but it populates the wrong sysroot..=
I can find protoc executable into tmp/sysroots/i686-linux but not into imx5=
3qsb sysroot, hence rebuilding the protobuf library it can&#39;t find the e=
xecutable..</div>

<div><br></div><div>Which configuration do I have to use to populate the=A0=
=A0imx53qsb sysroot?</div><div><br></div><div>Thanks</div><div><br></div><d=
iv>Giovanni</div><div><div><br></div></div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
<br><br><div class=3D"gmail_quote">On Wed, Jul 25, 2012 at 10:41 AM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">

<div class=3D"im">On 25 July 2012 09:35, Giovanni Foiani &lt;<a href=3D"mai=
lto:fnognn@unife.it">fnognn@unife.it</a>&gt; wrote:<br>
&gt; does anyone have configured a recipe for make Google Protocol Buffers<=
br>
&gt; working?<br>
<br>
</div>&gt; do_configure() {<br>
&gt; ./configure --host=3Darm<br>
&gt; }<br>
<br>
Don&#39;t do that, because what if you want to build gpc for another archit=
ecture?<br>
<div class=3D"im"><br>
&gt; bin/bash:<br>
&gt; /home/gfoiani/yocto/fsl-community-bsp/build/tmp/work/armv7a-vfp-neon-p=
oky-linux-gnueabi/protobuf-2.4.1-r0/protobuf-2.4.1/src/protoc:<br>
&gt; cannot execute binary file<br>
&gt; make[2]: *** [unittest_proto_middleman] Error 126<br>
<br>
</div>That&#39;s because you&#39;re (presumably) running on x86 hardware, b=
ut are<br>
trying to execute an ARM binary. =A0You&#39;ll need to build a<br>
protobuf-native first that installs protoc into the sysroot first.<br>
Numerous packages have this requirement, such as gtk+.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--f46d0435be6e98a14704c5a45d5a--
