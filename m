Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2947EE00CD5; Thu, 14 Feb 2019 10:06:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A625CE00CAF
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:06:36 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id m9so4142913qkl.4
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=f/kqJEnPxgb4LlxBTQ0t0V3oLk+zFcOiPxwkHBMtVWM=;
	b=D/JeCJ+ZiRXcH9MkvU2/srbf0qVViICZzH5ikwdJWwt8pc5Htv5ZWhaXtvGASIk1Yl
	tPORYjrL1zMp+X3gBUnN+eQ7TClysVfiOu/3md+CuiU3wkRNtLrEG3VsBhm+CBDjkidC
	sW4kPHUBDaBX/mLeDV2WO0KhBegySsASghYmVwjBD/mRco0q2MxzyIzIZhSg42Sy8mb7
	KRd1GOBsy1cAsXrBp8f06Oug3igmuB/ndo+9fvZHN3b15v/7L/IuZmXYK2a51Fw82p8j
	3UTgWpU7aofRVuK61ouyG7pBbVVDLu1rvmIZ4YPuxsdqViuVzwpZV/7pVHZzfK/LCmNj
	fqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=f/kqJEnPxgb4LlxBTQ0t0V3oLk+zFcOiPxwkHBMtVWM=;
	b=G0echyaoPmjWuoBmq/x4z7pqXemFxAuguMG27gho55LwjK3lZ6XygL5EflOQtN8TMl
	UiffhG2jzjfgGjJs0DaoQem+vhhPcSRNedSszq69kAV8HKrm2CkCKmFwV7GuJH5ohW7a
	2WY6HrmXK3SVeRSybxiJlHEAe0wheSxG/DbnpjnmE33tUEH7NRahhAbW8DEMlo0DP8d6
	hrLFFaHnfKMlP/ilILu45M44b2fwD34KSm2JGw/mtUJbfgMmcABHNUvwsSg5yxifHFyi
	+zo6FY+c5QSdLNLPR5Zh/uoVLHUSKyOBK6CCn8s8zF+ZhQQwczvXp6v5PZiDMpBHT3B/
	LbZQ==
X-Gm-Message-State: AHQUAubevGyGciOndtkLt1Oop4X2KtAHwoK5M1ZWd7Jm3PfhTsIC9Wlr
	sdwpIPezZcC2XnRReT0WMyaJuXZPd3dBKWvflJZY+hQi
X-Google-Smtp-Source: AHgI3IZHlx2TX2tW+qkoMwXFcBHG/Zw8nvkMrtpM6mAl21eaL7VBhXJrfmqeQHnC3PeWhnSOBw/9I3jPxI2ZPL+sR/I=
X-Received: by 2002:a37:a84:: with SMTP id 126mr3866720qkk.275.1550167596149; 
	Thu, 14 Feb 2019 10:06:36 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
	<CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
	<bd0adb4e-89df-f6be-61b2-ef326df38cd5@emagii.com>
In-Reply-To: <bd0adb4e-89df-f6be-61b2-ef326df38cd5@emagii.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Thu, 14 Feb 2019 10:06:25 -0800
Message-ID: <CAHSUxjS2Cq9M=LM7+-Px=d8qOo+xrKZQ3+AJQ5TwSyczJ=H4Hw@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 18:06:40 -0000
Content-Type: multipart/alternative; boundary="000000000000e945ba0581de848a"

--000000000000e945ba0581de848a
Content-Type: text/plain; charset="UTF-8"

Thank you, that looks like a very good idea.

On Thu, Feb 14, 2019 at 8:28 AM Ulf Samuelsson <yocto@emagii.com> wrote:

> Den 2019-02-14 kl. 10:00, skrev Alexander Kanavin:
> > On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich <tfroehlich@archsys.io>
> wrote:
> >> Hi, I've been struggling a bit with this question. I want to use Yocto
> to build two+ products with separate dev/prod images for each (dev
> including debug-tweaks, etc.). I've ruled out separate image recipes
> because my dev builds need ENABLE_UART on my RaspberryPi and that needs to
> be set at the conf level (I've got it set conditionally in my base dist
> conf). Multiconfig looked promising, but I'm not happy about how long the
> parsing takes to start a build. "--postread" looked nice, but I've barely
> seen it mentioned so I'm worried that it's not well supported.
> >>
> >
> > Which recipes use the ENABLE_UART setting? You might want to write two
> > variants of those, and include them into images accordingly.
> >
> > Alex
> >
>
> Some guys I know solved the problem a little bit differently, and they
> did not mind to share.
> I created a meta-layer with that and some other ideas.
>
> * https://github.com/emagii/meta-map-sheriffco
>
> An example recipe is:
> ==================================
> SUMMARY = ""
> DESCRIPTION = ""
>
> inherit license-mit
>
> SRC_URI = " \
>         file://class/class-recipe.c \
>         file://class/Makefile \
> "
>
> EXTRA_OEMAKE_class-development = 'CFLAGS="${CFLAGS} -DDEVELOPMENT"'
> EXTRA_OEMAKE_class-production  = 'CFLAGS="${CFLAGS} -DPRODUCTION"'
> EXTRA_OEMAKE_class-release     = 'CFLAGS="${CFLAGS} -DRELEASE"'
>
> do_install-class-development () {
>         install -d      ${D}${bindir}
>         install -m 0755 class   ${D}${bindir}/development
> }
>
> do_install-class-production () {
>         install -d      ${D}${bindir}
>         install -m 0755 class   ${D}${bindir}/production
> }
>
> do_install-class-release () {
>         install -d      ${D}${bindir}
>         install -m 0755 class   ${D}${bindir}/release
> }
>
> BBCLASSEXTEND = "development production release"
> ==================================
> You now have the same recipe which builds four package variants.
>
> <package>,
> <package>-development,
> <package>-production,
> <package>-release,
>
> The base package is not included in any image.
> In the development image, you install the <package>-development and so on.
> ==================================
> Three bbclasses are used, one for each special package.
>
> Here is the development.bbclass
> ==================================
> # Class for use in BBCLASSEXTEND to make it easier to have a single
> recipe that
> # build and generate packages separately for development and normal images.
> #
> # Usage:
> # BBCLASSEXTEND = "development"
>
> CLASSOVERRIDE .= ":class-development"
>
> python development_virtclass_handler () {
>      # Do nothing if this is inherited, as it's for BBCLASSEXTEND
>      if "development" not in (d.getVar('BBCLASSEXTEND') or ""):
>          bb.error("Don't inherit development, use BBCLASSEXTEND")
>          return
>
>      # Restore BPN
>      bpn = d.getVar('BPN')
>      newbpn = bpn.replace('-development', '')
>      d.setVar('BPN', newbpn)
>
>      # Use default FILESPATH searching for patches and files
>      filespath = d.getVar('FILESPATH')
>      newfilespath = filespath.replace('-development', '')
>      d.setVar('FILESPATH', newfilespath)
> }
>
> addhandler development_virtclass_handler
> development_virtclass_handler[eventmask] = "bb.event.RecipePreFinalise"
>
> ==================================
>
> --
> Best Regards
> Ulf Samuelsson
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000e945ba0581de848a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, that looks like a very good idea.</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 14=
, 2019 at 8:28 AM Ulf Samuelsson &lt;<a href=3D"mailto:yocto@emagii.com">yo=
cto@emagii.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Den 2019-02-14 kl. 10:00, skrev Alexander Kanavin:<br>
&gt; On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich &lt;<a href=3D"mailto:=
tfroehlich@archsys.io" target=3D"_blank">tfroehlich@archsys.io</a>&gt; wrot=
e:<br>
&gt;&gt; Hi, I&#39;ve been struggling a bit with this question. I want to u=
se Yocto to build two+ products with separate dev/prod images for each (dev=
 including debug-tweaks, etc.). I&#39;ve ruled out separate image recipes b=
ecause my dev builds need ENABLE_UART on my RaspberryPi and that needs to b=
e set at the conf level (I&#39;ve got it set conditionally in my base dist =
conf). Multiconfig looked promising, but I&#39;m not happy about how long t=
he parsing takes to start a build. &quot;--postread&quot; looked nice, but =
I&#39;ve barely seen it mentioned so I&#39;m worried that it&#39;s not well=
 supported.<br>
&gt;&gt;<br>
&gt; <br>
&gt; Which recipes use the ENABLE_UART setting? You might want to write two=
<br>
&gt; variants of those, and include them into images accordingly.<br>
&gt; <br>
&gt; Alex<br>
&gt; <br>
<br>
Some guys I know solved the problem a little bit differently, and they <br>
did not mind to share.<br>
I created a meta-layer with that and some other ideas.<br>
<br>
* <a href=3D"https://github.com/emagii/meta-map-sheriffco" rel=3D"noreferre=
r" target=3D"_blank">https://github.com/emagii/meta-map-sheriffco</a><br>
<br>
An example recipe is:<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
SUMMARY =3D &quot;&quot;<br>
DESCRIPTION =3D &quot;&quot;<br>
<br>
inherit license-mit<br>
<br>
SRC_URI =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://class/class-recipe.c \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://class/Makefile \<br>
&quot;<br>
<br>
EXTRA_OEMAKE_class-development =3D &#39;CFLAGS=3D&quot;${CFLAGS} -DDEVELOPM=
ENT&quot;&#39;<br>
EXTRA_OEMAKE_class-production=C2=A0 =3D &#39;CFLAGS=3D&quot;${CFLAGS} -DPRO=
DUCTION&quot;&#39;<br>
EXTRA_OEMAKE_class-release=C2=A0 =C2=A0 =C2=A0=3D &#39;CFLAGS=3D&quot;${CFL=
AGS} -DRELEASE&quot;&#39;<br>
<br>
do_install-class-development () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 class=C2=A0 =C2=A0${D}${bindir}=
/development<br>
}<br>
<br>
do_install-class-production () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 class=C2=A0 =C2=A0${D}${bindir}=
/production<br>
}<br>
<br>
do_install-class-release () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 class=C2=A0 =C2=A0${D}${bindir}=
/release<br>
}<br>
<br>
BBCLASSEXTEND =3D &quot;development production release&quot;<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
You now have the same recipe which builds four package variants.<br>
<br>
&lt;package&gt;,<br>
&lt;package&gt;-development,<br>
&lt;package&gt;-production,<br>
&lt;package&gt;-release,<br>
<br>
The base package is not included in any image.<br>
In the development image, you install the &lt;package&gt;-development and s=
o on.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Three bbclasses are used, one for each special package.<br>
<br>
Here is the development.bbclass<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
# Class for use in BBCLASSEXTEND to make it easier to have a single <br>
recipe that<br>
# build and generate packages separately for development and normal images.=
<br>
#<br>
# Usage:<br>
# BBCLASSEXTEND =3D &quot;development&quot;<br>
<br>
CLASSOVERRIDE .=3D &quot;:class-development&quot;<br>
<br>
python development_virtclass_handler () {<br>
=C2=A0 =C2=A0 =C2=A0# Do nothing if this is inherited, as it&#39;s for BBCL=
ASSEXTEND<br>
=C2=A0 =C2=A0 =C2=A0if &quot;development&quot; not in (d.getVar(&#39;BBCLAS=
SEXTEND&#39;) or &quot;&quot;):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.error(&quot;Don&#39;t inherit developm=
ent, use BBCLASSEXTEND&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return<br>
<br>
=C2=A0 =C2=A0 =C2=A0# Restore BPN<br>
=C2=A0 =C2=A0 =C2=A0bpn =3D d.getVar(&#39;BPN&#39;)<br>
=C2=A0 =C2=A0 =C2=A0newbpn =3D bpn.replace(&#39;-development&#39;, &#39;&#3=
9;)<br>
=C2=A0 =C2=A0 =C2=A0d.setVar(&#39;BPN&#39;, newbpn)<br>
<br>
=C2=A0 =C2=A0 =C2=A0# Use default FILESPATH searching for patches and files=
<br>
=C2=A0 =C2=A0 =C2=A0filespath =3D d.getVar(&#39;FILESPATH&#39;)<br>
=C2=A0 =C2=A0 =C2=A0newfilespath =3D filespath.replace(&#39;-development&#3=
9;, &#39;&#39;)<br>
=C2=A0 =C2=A0 =C2=A0d.setVar(&#39;FILESPATH&#39;, newfilespath)<br>
}<br>
<br>
addhandler development_virtclass_handler<br>
development_virtclass_handler[eventmask] =3D &quot;bb.event.RecipePreFinali=
se&quot;<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
-- <br>
Best Regards<br>
Ulf Samuelsson<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--000000000000e945ba0581de848a--
