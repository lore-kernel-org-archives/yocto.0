Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2CD4E00D38; Mon,  6 May 2019 04:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84232E00BAF
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 04:27:28 -0700 (PDT)
Received: by mail-lf1-f66.google.com with SMTP id j11so8873949lfm.0
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 04:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WJ7tiBoFrK5gh4ZUSWexycM17iK2CuTb5GGhdq4enzw=;
	b=J/yRoXSjyJiq0mr4BjVNfUloSMKhFryeowVWaEeW6UU1+z9A4HQxjVeVE1k1FpEF1O
	g/1/s3z3ItonAGQIgRVru6sOC5tIgTZtyL5u150p/FM1r/xIlq0HkcoTVUHz7YGnroSi
	Gw3OlWjXYEebwzC3qFFPu8C9/cookft/1vAWBBxx3od2eRwu+l4AOvbPyBV2vehudykN
	+xVuStm3I31ohKcUXrxub2y/3m5HNSrqvCFHSePTMbqgwcEzt6n8u7IGlDX6MeVxsLc6
	cHOEzQxrdahfz76j4XUCr/1E/yZPs90/8aUvEY1PDDPViHpKv6+IiyY5ABkptIwG7j7q
	oPHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WJ7tiBoFrK5gh4ZUSWexycM17iK2CuTb5GGhdq4enzw=;
	b=SHBEVkX4NYel+V6ePV0+MLIA8E8AkbI8tFF9hesIUSiEn3gOq0cNRvx7PthvMn+z0U
	toMTfgWDs2rNfTpIwbizU9kxiwLKzzfxF6/wbbFS4bwXD82D//G+CL3ZYJQ3Zt6tMlEy
	5GATcm3hQOONWae70SWA+2aXVUi0vRPuEWKblyntaNqxiGH3dzR56drAaBrnhp4DNazC
	49nK2WVakaTN2n89e7OfBSH5CNwtUkUI9oJv4fsgGViF9M+YAQSfUwdjnHNQPPn4UInG
	PsCQcOo3MO+8jVKmck7s4e7fgvf/0qsLaFSenHuK5umdqCgalbqalEHsEaWTMQ3bKzQi
	up8A==
X-Gm-Message-State: APjAAAU/BYCrDvpC0LJZHEoAZR+a4si3/XRIzAekhIjdt99l+KO/g85C
	QcyF30eu1L/z7Y3B/KXBttWbvLs/taQmIqXbv28=
X-Google-Smtp-Source: APXvYqxTH+HaiFn4RDc0qoQc4aKnAtdW5Y3toCVODtGKtiSJWCByCdpHk7yN1cARma2xN4Kc7ISoO+gd+ApZxDNSVX4=
X-Received: by 2002:a19:7014:: with SMTP id h20mr13240908lfc.158.1557142047638;
	Mon, 06 May 2019 04:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
	<CAAx3WaBz81Zza1UeK4QhpkDFkXq6zYTRbi_-xKNWaY0mHoHPRw@mail.gmail.com>
	<CAA=hcWS_V5xujb-Emgzd+ok1dfpiC+RjMFHvxOvOYcwa5tz5=g@mail.gmail.com>
In-Reply-To: <CAA=hcWS_V5xujb-Emgzd+ok1dfpiC+RjMFHvxOvOYcwa5tz5=g@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 6 May 2019 13:27:16 +0200
Message-ID: <CAAx3WaC+CdyVSyCsV00_s7U1wdfm-8s51mGwLbMEcQbTzd8Zhg@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Mon, 06 May 2019 11:27:30 -0000
Content-Type: multipart/alternative; boundary="0000000000009d4ea50588366263"

--0000000000009d4ea50588366263
Content-Type: text/plain; charset="UTF-8"

Hi,

> but there is no imx6ull-14x14-evk.dts

it is located in arch/arm/boot/dts/imx6ull-14x14-evk.dts and it is compiled
(among others dts) while building virtual/kernel task.

Setting KERNEL_DEVICETREE =  "imx6ull-14x14-evk.dtb" simply tells to
bitbake to put a copy of imx6ull-14x14-evk.dtb inside your image deploy
directory. You can dig through meta/classes/kernel-devicetree.bbclass to
see how KERNEL_DEVICETREE is used.

If you do not need to modify the dts, you will find all the image related
stuff in poky/build/tmp/deploy/images/<MACHINE>/<IMAGE>.

If you need to patch the dts (or any other kernel related file):

- Clone you kernel source tree locally
- Checkout the correct branch
- Do your edits, then commit
- Get a patch with the customization through git format-patch (or any other
way)

Now, in your meta layer:
- create recipes-kernel/linux/<your-kernel-provider>.bbappend file
- create recipes-kernel/linux/files/<MACHINE>/ directory

Then:
- Copy your patch in recipes-kernel/linux/files/<MACHINE>
- Edit the bbappend file with:
FILESEXTRAPATHS_prepend := "${THISDIR}/files:" # Add files to the search
paths
SRC_URI_append_<MACHINE> = " file://0001-your-commit-message.patch"

bitbake will apply the patch after the kernel unpack automatically, then
build the tree with the patch(es) applied.

You can also add a completely new dts via patch, then add it to
KERNEL_DEVICETREE.

Best regards,
Gabriele

Il giorno lun 6 mag 2019 alle ore 09:36 JH <jupiter.hce@gmail.com> ha
scritto:

> Thanks Gabriele,
>
> Yes, I have already added KERNEL_DEVICETREE =  "imx6ull-14x14-evk.dtb"
> to generate an image running on imx6 EVK. What I don't understand is
> how that imx6ull-14x14-evk.dtb was compiled? I thought all dtb are
> compiled from dts files, but there is no imx6ull-14x14-evk.dts, the
> imx6ullevk.conf defined the EVK but there is no detail in that file.
>
> My second question is my new hardware based on imx6ull MCU now has a
> dts file, since I could not see any samples how is the dtb compiled
> from a dts file, I have no idea where to put the dts file, how to link
> that dts file to generate a dtb file in recipe. Appreciate more
> clarification.
>
> Thank you.
>
> - jh
>
> On 5/6/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > Hi,
> >
> > The easiest way is to add them via patches. You can write a recipe that
> > patch the Linux tree and put it in your meta layer (usually in
> > meta-xxx/recipes-kernel/linux). Then you need to tell Yocto to export the
> > dtb via KERNEL_DEVICETREE variable (
> >
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-KERNEL_DEVICETREE
> ).
> > I usually put this variable in my machine configuration.
> >
> > Gabriele
> >
> > Il giorno dom 5 mag 2019 alle ore 14:04 JH <jupiter.hce@gmail.com> ha
> > scritto:
> >
> >> Hi,
> >>
> >> I think the device tree blob is build from device tree source, but I
> >> could not find any dts files in recipe source directory, there are
> >> many dts files in build directory and there are dtb in build
> >> directory.
> >>
> >> If I have a device tree source, where I should put it and how to
> >> define the recipe to built it?
> >>
> >> Thank you.
> >>
> >> Kind regards,
> >>
> >> - jupiter
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
>

--0000000000009d4ea50588366263
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br></div><d=
iv>&gt;  but there is no imx6ull-14x14-evk.dts</div><div><br></div><div>it =
is located in arch/arm/boot/dts/imx6ull-14x14-evk.dts and it is compiled (a=
mong others dts) while building virtual/kernel task.</div><div><br></div><d=
iv>Setting KERNEL_DEVICETREE =3D=C2=A0 &quot;imx6ull-14x14-evk.dtb&quot; si=
mply tells to bitbake to put a copy of imx6ull-14x14-evk.dtb inside your im=
age deploy directory. You can dig through meta/classes/kernel-devicetree.bb=
class to see how KERNEL_DEVICETREE is used. <br></div><div><br></div><div>I=
f you do not need to modify the dts, you will find all the image related st=
uff in poky/build/tmp/deploy/images/&lt;MACHINE&gt;/&lt;IMAGE&gt;. <br></di=
v><div><br></div><div>If you need to patch the dts (or any other kernel rel=
ated file):<br></div><div><br></div><div>- Clone you kernel source tree loc=
ally <br></div><div>- Checkout the correct branch</div><div>- Do your edits=
, then commit</div><div>- Get a patch with the customization through git fo=
rmat-patch (or any other way)<br></div><div><br></div><div>Now, in your met=
a layer:<br></div><div>- create recipes-kernel/linux/&lt;your-kernel-provid=
er&gt;.bbappend file<br></div><div>- create recipes-kernel/linux/files/&lt;=
MACHINE&gt;/ directory</div><div><br></div><div>Then: <br></div><div>- Copy=
 your patch in recipes-kernel/linux/files/&lt;MACHINE&gt;</div><div>- Edit =
the bbappend file with:</div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THIS=
DIR}/files:&quot; # Add files to the search paths</div><div>SRC_URI_append_=
&lt;MACHINE&gt; =3D &quot; file://0001-your-commit-message.patch&quot;</div=
><div><br></div><div>bitbake will apply the patch after the kernel unpack a=
utomatically, then build the tree with the patch(es) applied.<br> </div><di=
v><br></div><div>You can also add a completely new dts via patch, then add =
it to=C2=A0 KERNEL_DEVICETREE.</div><div><br></div><div>Best regards,</div>=
<div>Gabriele<br></div></div></div></div></div></div></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 6 =
mag 2019 alle ore 09:36 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jup=
iter.hce@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Thanks Gabriele,<br>
<br>
Yes, I have already added KERNEL_DEVICETREE =3D=C2=A0 &quot;imx6ull-14x14-e=
vk.dtb&quot;<br>
to generate an image running on imx6 EVK. What I don&#39;t understand is<br=
>
how that imx6ull-14x14-evk.dtb was compiled? I thought all dtb are<br>
compiled from dts files, but there is no imx6ull-14x14-evk.dts, the<br>
imx6ullevk.conf defined the EVK but there is no detail in that file.<br>
<br>
My second question is my new hardware based on imx6ull MCU now has a<br>
dts file, since I could not see any samples how is the dtb compiled<br>
from a dts file, I have no idea where to put the dts file, how to link<br>
that dts file to generate a dtb file in recipe. Appreciate more<br>
clarification.<br>
<br>
Thank you.<br>
<br>
- jh<br>
<br>
On 5/6/19, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com"=
 target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; The easiest way is to add them via patches. You can write a recipe tha=
t<br>
&gt; patch the Linux tree and put it in your meta layer (usually in<br>
&gt; meta-xxx/recipes-kernel/linux). Then you need to tell Yocto to export =
the<br>
&gt; dtb via KERNEL_DEVICETREE variable (<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-m=
anual.html#var-KERNEL_DEVICETREE" rel=3D"noreferrer" target=3D"_blank">http=
s://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-KERNE=
L_DEVICETREE</a>).<br>
&gt; I usually put this variable in my machine configuration.<br>
&gt;<br>
&gt; Gabriele<br>
&gt;<br>
&gt; Il giorno dom 5 mag 2019 alle ore 14:04 JH &lt;<a href=3D"mailto:jupit=
er.hce@gmail.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; ha<br>
&gt; scritto:<br>
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I think the device tree blob is build from device tree source, but=
 I<br>
&gt;&gt; could not find any dts files in recipe source directory, there are=
<br>
&gt;&gt; many dts files in build directory and there are dtb in build<br>
&gt;&gt; directory.<br>
&gt;&gt;<br>
&gt;&gt; If I have a device tree source, where I should put it and how to<b=
r>
&gt;&gt; define the recipe to built it?<br>
&gt;&gt;<br>
&gt;&gt; Thank you.<br>
&gt;&gt;<br>
&gt;&gt; Kind regards,<br>
&gt;&gt;<br>
&gt;&gt; - jupiter<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--0000000000009d4ea50588366263--
