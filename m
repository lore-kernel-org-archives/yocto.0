Return-Path: <kenny@understoryweather.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C235DE009C2; Mon, 26 Jun 2017 21:45:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB0CE00718
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 21:45:36 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id 191so10459324vko.2
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 21:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=understoryweather-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QPIqM7u9JILCUXebmWx2jwcHJN2d9VpQmbDqt2p7pxc=;
	b=Z88xZnWebs3W89b7xQiLVOWhjgfr8JJgdpsMtaGzlTKdwBlT16RlfdXvlWDFfZ6s8z
	C44TNMD+/erAi8wxa3LcM9nT58QbzjMwNr0OHLFbOij/gr2ZpYRK45sqEcuJLHu0SvKt
	Qkmy886xPoyOw5+i/o50paKJXME/qOJXbKvxuUh+0q+6DaCVQ9LNINi8mkD6GQTpDp1M
	OTsyVe0tuQc/zAaa81Vfd4Qemr40SPgOjpYRLR3W3aR8QH1XEePKwkgZpuepyVxgYFQT
	Dy0MNHRTTgTNGG5G5Lq5DXhBbsc9YZiB+PWCXgt1rFmNhdgNINaOWs+JLwJtl2NU8jxv
	dzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QPIqM7u9JILCUXebmWx2jwcHJN2d9VpQmbDqt2p7pxc=;
	b=USvnCF+XSlitibhdPPzothZTSje+Mq6C4dS9O94LboJX/6ZiDDoX78vxRcSpENg7mW
	0Swi2P9syTAPxPu2kcEu1EsmiQb9ayrrMy6D9TJqGhLlP5NSnr3m96PJTXOLpXtQHTly
	tI8wEdfASE5e5c3lUzQ6g4cybji3qrYhZVq2GFA9zZ+mFY5vA/d2E1tm8s9/Yucjb5GS
	Wm+OklcMxUPBvZGZp2tjdIXK9eMdo4rSk+H/gjdzWBWLUwvLoj+6T+Z4YgazB88HrXln
	lJcZcjLQEJL5vzuOSMdCfGfJntj0kB6mMJQ47KbE/RAvSL45IDhsyl07x20c8w/cM11Z
	0vjA==
X-Gm-Message-State: AKS2vOxxBCK2q8po8wEksxjay+i5hI6S+zEvPVASbpb1XahZrTYr+usb
	YbGhiYfTVleijdBPBK6VPXEsqupx58Nw
X-Received: by 10.31.16.22 with SMTP id g22mr1561866vki.94.1498538735671; Mon,
	26 Jun 2017 21:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
	<CAMKF1spCGQ_caUvCM8BBXhbdqqZ_WPzc45QpJWohAKkYDDa-aQ@mail.gmail.com>
In-Reply-To: <CAMKF1spCGQ_caUvCM8BBXhbdqqZ_WPzc45QpJWohAKkYDDa-aQ@mail.gmail.com>
From: Kenny Koller <kenny@understoryweather.com>
Date: Tue, 27 Jun 2017 04:45:25 +0000
Message-ID: <CAPtqgUz4WxWWut8ZHd8t-FfRp=y5hXk8j4yGsMGP9FngsLKdeQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Determining the correct layers for a Beaglebone build.
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
X-List-Received-Date: Tue, 27 Jun 2017 04:45:40 -0000
Content-Type: multipart/alternative; boundary="001a1143621805acef0552e9bd43"

--001a1143621805acef0552e9bd43
Content-Type: text/plain; charset="UTF-8"

Thanks Khem,

At the moment I simply want to build a headless minimal install for a
Beaglebone Black. Once I achieve this I plan to customize the distro for my
device. Here is what I am finding confusing:

This link <https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone>
looks to be the place to start. It is the "download" page for the
Beaglebone. It lists, as a build system, Poky 2.3. It lists as a download
"git://git.yoctoproject.org/meta-yocto -b pyro" which in turn contains, as
subdirectories, meta-poky, meta-yocto, and meta-yocto-bsp. But these three
directories already exist when I check out poky. If I ignore this for the
moment the layer index suggests that a dependency is openembedded-core. Has
this been merged in to Poky or must I clone this as well?

meta-ti isn't mentioned. If I search for meta-ti I find this BSP
<https://www.yoctoproject.org/product/meta-ti-bsp-layer> which makes me
think that perhaps this work has been merged in to meta-yocto-bsp as no
recent version of Poky is supported.

Regarding the tags: If I check out the pyro branch of poky am I getting
something that is stable and has been tested? I thought perhaps the tags
with `pyro-17.0.0` would point to stable tested commit.

The reason I'm trying to sort all of this out is that when I ran a `bitbake
core-image-minimal` with Poky Pyro it failed. It was missing u-image. All I
did was clone Poky/Pyro and set the MACHINE to beaglebone. It got pretty
far though. It seems to have built the kernel and the device tree binaries.
No signs of the root filesystem or the bootloader (u-image):

core-image-base-beaglebone-20170621162619.testdata.json
core-image-base-beaglebone.testdata.json
core-image-minimal-beaglebone-20170624014756.testdata.json
core-image-minimal-beaglebone.testdata.json
modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170621162619.tgz
modules-beaglebone.tgz
zImage
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-bone-20170621162619.dtb
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-boneblack-20170621162619.dtb
zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170621162619.bin
zImage-am335x-boneblack.dtb
zImage-am335x-bone.dtb
zImage-beaglebone.bin


On Mon, Jun 26, 2017 at 5:18 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Jun 26, 2017 at 4:35 PM, Kenny Koller
> <kenny@understoryweather.com> wrote:
> > I'm trying to figure out which set of meta layers I need to build a
> distro
> > and images for a Beaglebone Black.
> >
> > I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latter
> has
> > recipes for the Beaglebone.
> >
> > I also found this page which suggests cloning meta-yocto:
> >
> > https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone
> >
> > Then there is meta-ti. Where does this fit in?
>
> yocto project used beaglebone black as one of its reference boards
> so you can find a default reference yocto BSP for it.
>
> Secondly, meta-ti is TI BSP layer which also supports beaglebone black
> since the board is from TI
>
>
> >
> > Also when I clone say poky should I checkout the branch or a specific
> tag?
> >
>
> you can use git clone git://git.yoctoproject.org/poky -b pyro
> for getting latest stable release.
>
> > It's not clear to me the best way start with a piece of hardware then
> > determine the correct layers.
>
> I would suggest to do a bit more investigation as to what you need.
> meanwhile you can build yocto reference BSP and play with it. There
> are many packages that meta-ti would have that you might need depending
> upon what you plan to do.
>
> >
> > Thanks.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1143621805acef0552e9bd43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Khem,<div><br></div><div>At the moment I simply wan=
t to build a headless minimal install for a Beaglebone Black. Once I achiev=
e this I plan to customize the distro for my device. Here is what I am find=
ing confusing:</div><div><br></div><div><a href=3D"https://www.yoctoproject=
.org/downloads/bsps/pyro23/beaglebone">This link</a> looks to be the place =
to start. It is the &quot;download&quot; page for the Beaglebone. It lists,=
 as a build system, Poky 2.3. It lists as a download &quot;git://<a href=3D=
"http://git.yoctoproject.org/meta-yocto">git.yoctoproject.org/meta-yocto</a=
> -b pyro&quot; which in turn contains, as subdirectories, meta-poky, meta-=
yocto, and meta-yocto-bsp. But these three directories already exist when I=
 check out poky. If I ignore this for the moment the layer index suggests t=
hat a dependency is openembedded-core. Has this been merged in to Poky or m=
ust I clone this as well?</div><div><br></div><div>meta-ti isn&#39;t mentio=
ned. If I search for meta-ti <a href=3D"https://www.yoctoproject.org/produc=
t/meta-ti-bsp-layer">I find this BSP</a> which makes me think that perhaps =
this work has been merged in to meta-yocto-bsp as no recent version of Poky=
 is supported.</div><div><br></div><div>Regarding the tags: If I check out =
the pyro branch of poky am I getting something that is stable and has been =
tested? I thought perhaps the tags with `pyro-17.0.0` would point to stable=
 tested commit.</div><div><br></div><div>The reason I&#39;m trying to sort =
all of this out is that when I ran a `bitbake core-image-minimal` with Poky=
 Pyro it failed. It was missing u-image. All I did was clone Poky/Pyro and =
set the MACHINE to beaglebone. It got pretty far though. It seems to have b=
uilt the kernel and the device tree binaries. No signs of the root filesyst=
em or the bootloader (u-image):</div><div><br></div><div><div><font face=3D=
"monospace">core-image-base-beaglebone-20170621162619.testdata.json</font><=
/div><div><font face=3D"monospace">core-image-base-beaglebone.testdata.json=
</font></div><div><font face=3D"monospace">core-image-minimal-beaglebone-20=
170624014756.testdata.json</font></div><div><font face=3D"monospace">core-i=
mage-minimal-beaglebone.testdata.json</font></div><div><font face=3D"monosp=
ace">modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-2017062116261=
9.tgz</font></div><div><font face=3D"monospace">modules-beaglebone.tgz</fon=
t></div><div><font face=3D"monospace">zImage</font></div><div><font face=3D=
"monospace">zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-bone-201706=
21162619.dtb</font></div><div><font face=3D"monospace">zImage--4.10.9+git0+=
ad2e885015_fe0fb8da3d-r0-am335x-boneblack-20170621162619.dtb</font></div><d=
iv><font face=3D"monospace">zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-be=
aglebone-20170621162619.bin</font></div><div><font face=3D"monospace">zImag=
e-am335x-boneblack.dtb</font></div><div><font face=3D"monospace">zImage-am3=
35x-bone.dtb</font></div><div><font face=3D"monospace">zImage-beaglebone.bi=
n</font></div></div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">On Mon, Jun 26, 2017 at 5:18 PM Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">On Mon, Jun 26, 2017 at 4:35 PM, Kenny Koller<br>
&lt;<a href=3D"mailto:kenny@understoryweather.com" target=3D"_blank">kenny@=
understoryweather.com</a>&gt; wrote:<br>
&gt; I&#39;m trying to figure out which set of meta layers I need to build =
a distro<br>
&gt; and images for a Beaglebone Black.<br>
&gt;<br>
&gt; I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latt=
er has<br>
&gt; recipes for the Beaglebone.<br>
&gt;<br>
&gt; I also found this page which suggests cloning meta-yocto:<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebo=
ne" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/downl=
oads/bsps/pyro23/beaglebone</a><br>
&gt;<br>
&gt; Then there is meta-ti. Where does this fit in?<br>
<br>
yocto project used beaglebone black as one of its reference boards<br>
so you can find a default reference yocto BSP for it.<br>
<br>
Secondly, meta-ti is TI BSP layer which also supports beaglebone black<br>
since the board is from TI<br>
<br>
<br>
&gt;<br>
&gt; Also when I clone say poky should I checkout the branch or a specific =
tag?<br>
&gt;<br>
<br>
you can use git clone git://<a href=3D"http://git.yoctoproject.org/poky" re=
l=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/poky</a> -b pyro<br=
>
for getting latest stable release.<br>
<br>
&gt; It&#39;s not clear to me the best way start with a piece of hardware t=
hen<br>
&gt; determine the correct layers.<br>
<br>
I would suggest to do a bit more investigation as to what you need.<br>
meanwhile you can build yocto reference BSP and play with it. There<br>
are many packages that meta-ti would have that you might need depending<br>
upon what you plan to do.<br>
<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--001a1143621805acef0552e9bd43--
