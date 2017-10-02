Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77FCEE00D14; Mon,  2 Oct 2017 16:05:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0554E00D03
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 16:05:35 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id d67so3412829qkg.5
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 16:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=7qcIqZG0F1BJe+roaTt21xz0YeYQWjhkMFDwAzapHL0=;
	b=mNTpDAbO3QX1r6LHGlC/r1EUY2WOaK7Bb/05ARQYzTHkc3UcAll++Kxeq80udA3Y1e
	H4WpzZPZzLwwJw8qRklbdpHFqyDL1In+ZMH2r+6FpJHuGmF0ztK+wT1PEEsa938lbt7U
	mFzZdwbCeKjD4FNUsPKuHkdJs5urZfCkw7L6e1Kr4ZLtlr3A1H2YyG8joPMUcs+xiQVV
	7fkRKLHbNPbRkrdL9IDAZqFgKn1/W3UezoP6ELUTEVWtcjHgw0dltpsyJdyu/iqhQCci
	qijTNLCLhvWl2AF5oenoMfWGdRtpiCoxoPzXMobvtchReDAO2ibvQbIHgOKWH6hVtnT6
	ItmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7qcIqZG0F1BJe+roaTt21xz0YeYQWjhkMFDwAzapHL0=;
	b=GAkNOLn0+iIY/rIVGZi1z04e31r0OkKJKz8RDCJgsx3PgwUN0TVN8mL28ffN3oQkv2
	hnjoD//ctLu9ZK6IQzwvbRgYkYhwDjW5Nv1+MsSb4Yl9T8Sy4Oo86HmEuDTwt9ihdHxX
	b+8PlZSxvs/QLST+0DbrMy8FdjUPv0eZ9P/N959/cHrYGTYP904NwaYT27WBTLCQ0XwU
	mBu52eHmt2HlEaHht6U0sgvkioBr8u38SdJzOj2EwqYVJ5axdB9//LV90q87xW89QzK8
	5bsvlPE3m/wn1dkclnmNG2APbKRIRcMcO6MDzPPWOxqYCPA9Ot5sN8e66IySzYfhYf1F
	9GPg==
X-Gm-Message-State: AMCzsaWXg4X6VaWutr2Jm4lh5xqpUvQGxgc7cxqLxJE7UII++gXfxxUW
	Yt+RSPEMsHSFzN1thyoYqa3kgppyVay7ls+P+DAmzw==
X-Google-Smtp-Source: AOwi7QCEX3BvTNJ8E+DHghx4wbokAmQ4siuKcIRcjcjIeTz+AewJfQQqQzGYKAfRvUfDpsqy2U+13OM4l+Uy2IzPGpQ=
X-Received: by 10.55.209.155 with SMTP id o27mr18210804qkl.145.1506985534753; 
	Mon, 02 Oct 2017 16:05:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.70 with HTTP; Mon, 2 Oct 2017 16:05:34 -0700 (PDT)
In-Reply-To: <CAPxJQ9Fw53QT_3m2mNmro4Cfe-uGARgGkjC6zC0oZV4Z+1uiuQ@mail.gmail.com>
References: <CAPxJQ9Fw53QT_3m2mNmro4Cfe-uGARgGkjC6zC0oZV4Z+1uiuQ@mail.gmail.com>
From: Mark Hieber <hieberm@gmail.com>
Date: Mon, 2 Oct 2017 16:05:34 -0700
Message-ID: <CAPxJQ9H-ZJBm1Ns3Sj8LOjp-RgZT=cqcHFrhy9782VVWoau1fg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: problem adding first layer to yocto
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
X-List-Received-Date: Mon, 02 Oct 2017 23:05:36 -0000
Content-Type: multipart/alternative; boundary="001a1147a1ea7b12ed055a9869df"

--001a1147a1ea7b12ed055a9869df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

sorry, fat-fingered send

Anyway, I created this layer. I had it create a default recipe, I looked at
all the files, they all seem to be correct. I then ran

source oe-init-build-env

and then edited build/conf/bblayers.conf, it has

BBLAYERS ?=3D " \

  /yocto/poky/meta \

  /yocto/poky/meta-poky \

  /yocto/poky/meta-yocto-bsp \

  /yocto/poky/meta-mylayer \

  "


I then ran "bitbake core-image-minimal" and then ran "runqemu qemux86
nographic"
Inside qemu, I did a 'find / -name "hello*"' and got nothing. Also, when I
ran bitbake, it said

#/yocto/poky/build$ bitbake core-image-minimal
Loading cache: 100%
|##########################################################################=
###########################################################################=
########################|
Time: 0:00:00
Loaded 1302 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.34.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "i586-poky-linux"
MACHINE           =3D "qemux86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.3.2"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-poky
meta-yocto-bsp
meta-mylayer      =3D "pyro:717303e6fbcbbe181ad9645d762eb5a85d934523"
Initialising tasks: 100%
|##########################################################################=
###########################################################################=
###################|
Time: 0:00:04
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 2426 tasks of which 2426 didn't need to be
rerun and all succeeded.

It seems to me that yocto is NOT picking up my new layer. I am sure that I
have missed something, but I read the docs 3 times, and can't find anything
I missed.

Thanks for your help,

Mark

On Mon, Oct 2, 2017 at 3:58 PM, Mark Hieber <hieberm@gmail.com> wrote:
>
> Hi, I am just starting out with yocto, and I have an issue. I followed
the steps in
http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creatin=
g-a-general-layer-using-the-yocto-layer-script
,
> create meta-mylayer (in the /yocto/poky directory),
>
> #/yocto/poky tree meta-mylayer/
>
> meta-mylayer/
>
> =E2=94=9C=E2=94=80=E2=94=80 conf
>
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
>
> =E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
>
> =E2=94=9C=E2=94=80=E2=94=80 README
>
> =E2=94=94=E2=94=80=E2=94=80 recipes-example
>
>     =E2=94=94=E2=94=80=E2=94=80 example
>
>         =E2=94=9C=E2=94=80=E2=94=80 example-0.1
>
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 example.patch
>
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 helloworld.c
>
>         =E2=94=94=E2=94=80=E2=94=80 example_0.1.bb
>

--001a1147a1ea7b12ed055a9869df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">sorry, fat-fingered send<br><br>Anyway, I created this lay=
er. I had it create a default recipe, I looked at all the files, they all s=
eem to be correct. I then ran<br><br>source oe-init-build-env<br><br>and th=
en edited build/conf/bblayers.conf, it has<br><br>BBLAYERS ?=3D &quot; \<br=
><br>=C2=A0 /yocto/poky/meta \<br><br>=C2=A0 /yocto/poky/meta-poky \<br><br=
>=C2=A0 /yocto/poky/meta-yocto-bsp \<br><br>=C2=A0 /yocto/poky/meta-mylayer=
 \<br><br>=C2=A0 &quot;<br><br><br>I then ran &quot;bitbake core-image-mini=
mal&quot; and then ran &quot;runqemu qemux86 nographic&quot; <br>Inside qem=
u, I did a &#39;find / -name &quot;hello*&quot;&#39; and got nothing. Also,=
 when I ran bitbake, it said <br><br>#/yocto/poky/build$ bitbake core-image=
-minimal<br>Loading cache: 100% |##########################################=
###########################################################################=
########################################################| Time: 0:00:00<br>=
Loaded 1302 entries from dependency cache.<br>NOTE: Resolving any missing t=
ask queue dependencies<br><br>Build Configuration:<br>BB_VERSION =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;1.34.0&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =3D &quot;uni=
versal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i586-poky-l=
inux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86&=
quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quo=
t;<br>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.3.2&quot;<br>TUNE_FEATURES =
=C2=A0 =C2=A0 =3D &quot;m32 i586&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>meta-yocto-bsp =C2=A0 =
=C2=A0<br>meta-mylayer =C2=A0 =C2=A0 =C2=A0=3D &quot;pyro:717303e6fbcbbe181=
ad9645d762eb5a85d934523&quot;<br>Initialising tasks: 100% |################=
###########################################################################=
###########################################################################=
##| Time: 0:00:04<br>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQ=
ueue Tasks<br>NOTE: Tasks Summary: Attempted 2426 tasks of which 2426 didn&=
#39;t need to be rerun and all succeeded.<br><br>It seems to me that yocto =
is NOT picking up my new layer. I am sure that I have missed something, but=
 I read the docs 3 times, and can&#39;t find anything I missed.<div><br></d=
iv><div>Thanks for your help,</div><div><br></div><div>Mark<br><br>On Mon, =
Oct 2, 2017 at 3:58 PM, Mark Hieber &lt;<a href=3D"mailto:hieberm@gmail.com=
">hieberm@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; Hi, I am just starting o=
ut with yocto, and I have an issue. I followed the steps in <a href=3D"http=
://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#creating-a-=
general-layer-using-the-yocto-layer-script">http://www.yoctoproject.org/doc=
s/2.3.2/mega-manual/mega-manual.html#creating-a-general-layer-using-the-yoc=
to-layer-script</a>,<br>&gt; create meta-mylayer (in the /yocto/poky direct=
ory),<br>&gt;<br>&gt; #/yocto/poky tree meta-mylayer/<br>&gt;<br>&gt; meta-=
mylayer/<br>&gt;<br>&gt; =E2=94=9C=E2=94=80=E2=94=80 conf<br>&gt;<br>&gt; =
=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf<br>&gt;<br>&gt; =E2=
=94=9C=E2=94=80=E2=94=80 COPYING.MIT<br>&gt;<br>&gt; =E2=94=9C=E2=94=80=E2=
=94=80 README<br>&gt;<br>&gt; =E2=94=94=E2=94=80=E2=94=80 recipes-example<b=
r>&gt;<br>&gt; =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 example<br>&gt;<br=
>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 example-0.1<b=
r>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =E2=94=9C=E2=94=
=80=E2=94=80 example.patch<br>&gt;<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=
=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 helloworld.c<br>&gt;<br>&gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://exam=
ple_0.1.bb">example_0.1.bb</a><br>&gt;</div></div>

--001a1147a1ea7b12ed055a9869df--
