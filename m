Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.13759.1595946780434933164
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 07:33:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=btH37lf8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: bruce.ashfield@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B93BE01E9B; Tue, 28 Jul 2020 07:33:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (bruce.ashfield[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E96DBE01E8D
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 07:32:57 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id c16so487611ejx.12
        for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 07:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XvtILFF3jcfquwdic/xmTbrjmoIlBryTxUdxeY8ZHl4=;
        b=btH37lf8rQcwH0NfAKRKh6/vEH5qetqa8ao8cHjbjF65LnowU/CctBn7AMT/TS+Cnw
         kKfjWy/pwz/jkFrIrr+Bk72M3/eXQ2JROExqtzMyfCVlO97+tt9RViIdAcJInWzD4mif
         2fyQdh35KTBkmCg6O/Vwx6bUl7s27nIlilvxYYf2gm1UDwCe0pT0UTQAE9iNUFHIgMnp
         o8wI7AI+JjiiMJQqEBAVifURXe5t665URRHsBq8GiJi1UQlwotLKwDFwx/sz53DfVUMF
         K+2z0BMjCnDkqiBQ1NN6EWH2t/4+UFuayjjwYmd0n4ts+SHoWGMPrjuOPQapS2bpK2EK
         jBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XvtILFF3jcfquwdic/xmTbrjmoIlBryTxUdxeY8ZHl4=;
        b=cf9ta3m2dArz6scdyvEXUqbnUsySAwDhH1mQDiz4uFd3IHujnUsIzfqfacC2obHBS5
         17u5vXQ0vfkT/fzyQPiZZhzIjGMc8ZnJQt+uB7i4L6TV5eRPDY0mIHXCnz5thEE55/Gt
         zP9GJ4beNjGXKhqencwSRjb5q/ZqFpz4Mh+B4MA+PR+uq+GY7bktv2Ty6MBv7SxYFycE
         ixgoQYis6n0gVGUNlHmgH/dzSqhpiBvmjFFzNWe3l3x+sqA/7VeytWrfbAxKuXa+hzSW
         +zLgxGTMBDTvtjf8LNydyOXqvN5HDhBAvQe00RQjn3AY4FUH6FV7vWuHo7gFGQ25VsfX
         1v0Q==
X-Gm-Message-State: AOAM530iDaktp8+o9ESzARx2XRlo9ByS9p+nwahTBmxMn8TSe4kQOVEQ
	nGw59O56l0eiV3rDSOrP67uN3c9J1YtiayWjlvk=
X-Google-Smtp-Source: ABdhPJyCXkCEZHVDT6D2F7OH1rkxfLrjbn5HwZxPzrQzVvsMhclFDB7OZeG+bv47JUHkQVBKCN9vab9DcbGK7wJb568=
X-Received: by 2002:a17:906:3685:: with SMTP id a5mr24337574ejc.298.1595946776281;
 Tue, 28 Jul 2020 07:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CADkTA4MBSrRjgQQbnN=4XMhxVTB=b0RdH74zNPCb8pEwhg2GsA@mail.gmail.com>
 <MN2PR17MB30248E9C96341B99C68CC4BBD6730@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CADkTA4MSEF6ZOXe4W38RrHVOpndffQKudSN--ANFa947WcKoUA@mail.gmail.com> <MN2PR17MB30246D3C008FAA527931AEC5D6730@MN2PR17MB3024.namprd17.prod.outlook.com>
In-Reply-To: <MN2PR17MB30246D3C008FAA527931AEC5D6730@MN2PR17MB3024.namprd17.prod.outlook.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 28 Jul 2020 10:32:42 -0400
Message-ID: <CADkTA4ORC3ZWz+fhkA3rwePboVG6irAZjvXFQby4Pe+d_d7Tvg@mail.gmail.com>
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
To: Scott Whitney <sdw@inea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Groupsio-MsgNum: 50121
Content-Type: multipart/related; boundary="000000000000aea1e205ab8150f6"

--000000000000aea1e205ab8150f6
Content-Type: multipart/alternative; boundary="000000000000aea1e005ab8150f5"

--000000000000aea1e005ab8150f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 28, 2020 at 10:26 AM Scott Whitney <sdw@inea.com> wrote:

> Hi Bruce,
>
>
>
> I believe the recipe for building Variscite=E2=80=99s kernel is in
> meta-variscite-imx/recipes-kernel/linux/linux-variscite_4.19.35.bb, whic=
h
> does produce a booting U-Boot and Linux image.  What would need to be
> modified to enable the rt-linux kernel?  The recipe is provided below.
>

At a high level, you need to get the appropriate preempt-rt patch from the
-rt project, add it to the SRC_URI (via bbappend), fix the patch so that i=
t
applies to that kernel, build, and then debug and boot failures.

That's the trivialized version of the steps.

As for how to get the patch and apply it, it is just like any other packag=
e
for patching, so you can lookup the details in the reference manuals and/o=
r
find other kernel recipe examples that are doing something similar. They
will do a better job than I ever would explaining the steps here.

Cheers,

Bruce



>
>
> # Copyright (C) 2013-2016 Freescale Semiconductor
>
> # Copyright 2017 NXP
>
> # Copyright 2018-2019 Variscite Ltd.
>
> # Released under the MIT license (see COPYING.MIT for the terms)
>
>
>
> SUMMARY =3D "Linux kernel provided and supported by Variscite"
>
> DESCRIPTION =3D "Linux kernel provided and supported by Variscite (based=
 on
> the kernel provided by NXP) \
>
> with focus on i.MX Family SOMs. It includes support for many IPs such as
> GPU, VPU and IPU."
>
>
>
> require recipes-kernel/linux/linux-imx.inc
>
> LICENSE =3D "GPLv2"
>
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8=
814"
>
>
>
> DEPENDS +=3D "lzop-native bc-native"
>
>
>
> DEFAULT_PREFERENCE =3D "1"
>
>
>
> SRCBRANCH =3D "imx_4.19.35_1.1.0_var01"
>
>
>
> LOCALVERSION_imx8mq-var-dart =3D "-imx8mq"
>
> LOCALVERSION_imx8mm-var-dart =3D "-imx8mm"
>
> LOCALVERSION_imx8mn-var-som =3D "-imx8mn"
>
> LOCALVERSION_imx8qxp-var-som =3D "-imx8x"
>
> LOCALVERSION_imx8qm-var-som =3D "-imx8qm"
>
>
>
> KERNEL_DEFCONFIG =3D "${S}/arch/arm64/configs/imx8_var_defconfig"
>
> DEFAULT_DTB_imx8mq-var-dart =3D "sd-lvds"
>
> DEFAULT_DTB_imx8qxp-var-som =3D "sd"
>
> DEFAULT_DTB_imx8qm-var-som =3D "lvds"
>
> DEFAULT_DTB_PREFIX_imx8mq-var-dart =3D "fsl-imx8mq-var-dart"
>
> DEFAULT_DTB_PREFIX_imx8qxp-var-som =3D "fsl-imx8qxp-var-som"
>
> DEFAULT_DTB_PREFIX_imx8qm-var-som =3D "fsl-imx8qm-var-som"
>
>
>
> KERNEL_SRC ?=3D "git://github.com/varigit/linux-imx;protocol=3Dgit"
>
> SRC_URI =3D "${KERNEL_SRC};branch=3D${SRCBRANCH}"
>
> SRCREV =3D "e6d3e3fefe4e85b5ee45beb7609b3c02bfe23efb"
>
>
>
> S =3D "${WORKDIR}/git"
>
>
>
> addtask copy_defconfig after do_patch before do_preconfigure
>
> do_copy_defconfig () {
>
>     cp ${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig
>
> }
>
>
>
> pkg_postinst_kernel-devicetree_append () {
>
>    rm -f $D/boot/devicetree-*
>
> }
>
>
>
> pkg_postinst_kernel-devicetree_append_imx8mq-var-dart () {
>
>     cd $D/boot
>
>     ln -s ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}.dtb
> ${DEFAULT_DTB_PREFIX}.dtb
>
>     ln -s ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}-cb12.dtb
> ${DEFAULT_DTB_PREFIX}-cb12.dtb
>
> }
>
>
>
> pkg_postinst_kernel-devicetree_append_imx8qxp-var-som () {
>
>     cd $D/boot
>
>     ln -s ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}.dtb
> ${DEFAULT_DTB_PREFIX}.dtb
>
> }
>
>
>
> pkg_postinst_kernel-devicetree_append_imx8qm-var-som () {
>
>     cd $D/boot
>
>     ln -s ${DEFAULT_DTB_PREFIX}-${DEFAULT_DTB}.dtb
> ${DEFAULT_DTB_PREFIX}.dtb
>
>     ln -s fsl-imx8qm-var-spear-${DEFAULT_DTB}.dtb fsl-imx8qm-var-spear.d=
tb
>
> }
>
>
>
> COMPATIBLE_MACHINE =3D "(mx8)"
>
> EXTRA_OEMAKE_append_mx8 =3D " ARCH=3Darm64"
>
>
>
> *Scott D. Whitney*
>
> *sdw@inea.com <sdw@inea.com>*    |     T: 781-801-1152    |
> F: 781-801-1108    |     *www.inea.com <http://www.inea.com/>*
>
>
>
> *From:* Bruce Ashfield <bruce.ashfield@gmail.com>
> *Sent:* Tuesday, July 28, 2020 10:18 AM
> *To:* Scott Whitney <sdw@inea.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior=
?
>
>
>
>
>
>
>
> On Tue, Jul 28, 2020 at 8:45 AM Scott Whitney <sdw@inea.com> wrote:
>
> Hi Bruce,
>
>
>
> Yes, we are using Linux built by Yocto, but where is the preferred
> provider for the kernel set to linux-yocto-rt?
>
>
>
>
>
> This is one of the nuances about OE/Yocto, it isn't about building the
> kernel with yocto, I was wondering about the kernel recipe you are using=
.
>
>
>
> If you have a booting kernel built from linux-yocto (the recipe), then t=
he
> switch to -rt is easy. If it isn't using linux-yocto, then using -rt is
> specific to the kernel provider that you have (and it may be just as eas=
y
> as the linux-yocto switch ... just without the details of that
> recipe/provider, I can't say).
>
>
>
> The preferred provider is likely set in the vendor's BSP layer, and it
> likely points at whatever vendor kernel they are currently shipping.
>
>
>
> Cheers,
>
>
>
> Bruce
>
>
>
>
>
> Thanks for your help
>
>
>
> *Scott D. Whitney*
>
> *sdw@inea.com <sdw@inea.com>*    |     T: 781-801-1152    |
> F: 781-801-1108    |     *www.inea.com <http://www.inea.com/>*
>
>
>
> *From:* Bruce Ashfield <bruce.ashfield@gmail.com>
> *Sent:* Monday, July 27, 2020 10:04 PM
> *To:* Scott Whitney <sdw@inea.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior=
?
>
>
>
>
>
>
>
> On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney <sdw@inea.com> wrote:
>
> Hi Yocto group,
>
>
>
> I=E2=80=99m working with a newly-released copy of Yocto Zeus from Varisc=
ite for
> the i.MX8MM Mini, although the same option seems to apply to the previou=
s
> Yocto Warrior.
>
>
>
> I understand that a Linux real-time kernel can be enabled by setting
> LINUX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.  Where does this opt=
ion need to be set so
> that when I bitbake fsl-image-qt5, I get the Linux =E2=80=9Cpreempt-rt=
=E2=80=9D kernel
> instead of the =E2=80=9Cstandard=E2=80=9D kernel?
>
>
>
> Is there a specific configuration file that needs to be modified, or a n=
ew
> recipe in a layer?  I am confused and hoping that you can help.
>
>
>
> If you aren't using linux-yocto, you'll need to arrange for the preempt-=
rt
> patch(es) to be applied to whatever kernel you are using. Which means yo=
u
> are creating a new recipe, bbappending an existing one, or if you are lu=
cky
> the kernel provider already has a -rt recipe available.
>
>
>
> If you are using linux-yocto, it's as simple as setting the preferred
> provider of the kernel as linux-yocto-rt  and building.
>
>
>
> Bruce
>
>
>
>
>
>
>
> Best regards,
>
>
>
> *Scott D. Whitney*
>
> Principal Software Engineer
>
>
> Intertech Engineering Associates, Inc.
> 100 Lowder Brook Drive, Suite 2500
> Westwood, MA  02090
> *sdw@inea.com <sdw@inea.com>*    |     T: 781-801-1152    |
> F: 781-801-1108    |     *www.inea.com <http://www.inea.com/>*
>
>
>
>=20
>
>
>
>
> --
>
> - Thou shalt not follow the NULL pointer, for chaos and madness await th=
ee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>
>
>
> --
>
> - Thou shalt not follow the NULL pointer, for chaos and madness await th=
ee
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000aea1e005ab8150f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Jul 28, 2020 at 10:26 AM Scott Whitney &lt;=
<a href=3D"mailto:sdw@inea.com">sdw@inea.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-2939599750006374218WordSection1">
<p class=3D"MsoNormal">Hi Bruce,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I believe the recipe for building Variscite=E2=80=
=99s kernel is in meta-variscite-imx/recipes-kernel/linux/<a href=3D"http:=
//linux-variscite_4.19.35.bb" target=3D"_blank">linux-variscite_4.19.35.bb<=
/a>, which does produce a booting U-Boot and Linux image.=C2=A0 What would =
need to be modified to enable the rt-linux kernel?=C2=A0
 The recipe is provided below.</p></div></div></blockquote><div><br></div>=
<div class=3D"gmail_default" style=3D"font-size:small">At a high level, you=
 need to get the appropriate preempt-rt patch from the -rt project, add it =
to the SRC_URI (via bbappend), fix the patch so that it applies to that ker=
nel, build, and then debug and boot failures.</div><div class=3D"gmail_defa=
ult" style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=
=
=3D"font-size:small">That&#39;s the trivialized version of the steps.</div=
><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div clas=
s=3D"gmail_default" style=3D"font-size:small">As for how to get the patch a=
nd apply it, it is just like any other package for patching, so you can loo=
kup the details in the reference manuals and/or find other kernel recipe ex=
amples that are doing something similar. They will do a better job than I e=
ver would explaining the steps here.</div><div class=3D"gmail_default" styl=
e=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-=
size:small">Cheers,</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce=
</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-2939599750006374218=
WordSection1"><p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"># Copyright (C) 2013-2016 Freescale Semiconductor<u=
></u><u></u></p>
<p class=3D"MsoNormal"># Copyright 2017 NXP<u></u><u></u></p>
<p class=3D"MsoNormal"># Copyright 2018-2019 Variscite Ltd.<u></u><u></u><=
/p>
<p class=3D"MsoNormal"># Released under the MIT license (see COPYING.MIT f=
or the terms)<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;Linux kernel provided and support=
ed by Variscite&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;Linux kernel provided and sup=
ported by Variscite (based on the kernel provided by NXP) \<u></u><u></u></=
p>
<p class=3D"MsoNormal">with focus on i.MX Family SOMs. It includes support=
 for many IPs such as GPU, VPU and IPU.&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">require recipes-kernel/linux/linux-imx.inc<u></u><u=
></u></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;GPLv2&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dbbe=
a815ee2795b2f4230826c0c6b8814&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">DEPENDS +=3D &quot;lzop-native bc-native&quot;<u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">DEFAULT_PREFERENCE =3D &quot;1&quot;<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">SRCBRANCH =3D &quot;imx_4.19.35_1=
.1.0_var01&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">LOCALVERSION_imx8mq-var-dart =3D =
&quot;-imx8mq&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">LOCALVERSION_imx8mm-var-dart =3D =
&quot;-imx8mm&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">LOCALVERSION_imx8mn-var-som =3D &=
quot;-imx8mn&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">LOCALVERSION_imx8qxp-var-som =3D =
&quot;-imx8x&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">LOCALVERSION_imx8qm-var-som =3D &=
quot;-imx8qm&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">KERNEL_DEFCONFIG =3D &quot;${S}/a=
rch/arm64/configs/imx8_var_defconfig&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">DEFAULT_DTB_imx8mq-var-dart =3D &=
quot;sd-lvds&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal">DEFAULT_DTB_imx8qxp-var-som =3D &quot;sd&quot;<u></=
u><u></u></p>
<p class=3D"MsoNormal">DEFAULT_DTB_imx8qm-var-som =3D &quot;lvds&quot;<u><=
/u><u></u></p>
<p class=3D"MsoNormal">DEFAULT_DTB_PREFIX_imx8mq-var-dart =3D &quot;fsl-im=
x8mq-var-dart&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">DEFAULT_DTB_PREFIX_imx8qxp-var-som =3D &quot;fsl-im=
x8qxp-var-som&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">DEFAULT_DTB_PREFIX_imx8qm-var-som =3D &quot;fsl-imx=
8qm-var-som&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">KERNEL_SRC ?=3D &quot;git://<a href=3D"http://githu=
b.com/varigit/linux-imx;protocol=3Dgit" target=3D"_blank">github.com/varigi=
t/linux-imx;protocol=3Dgit</a>&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;${KERNEL_SRC};branch=3D${SRCBRANC=
H}&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"ES">SRCREV =3D &quot;e6d3e3fefe4e85b5=
ee45beb7609b3c02bfe23efb&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES">S =3D &quot;${WORKDIR}/git&quot;<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"ES"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">addtask copy_defconfig after do_patch before do_pre=
configure<u></u><u></u></p>
<p class=3D"MsoNormal">do_copy_defconfig () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 cp ${KERNEL_DEFCONFIG} ${WORKDIR=
}/defconfig<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">pkg_postinst_kernel-devicetree_append () {<u></u><u=
></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0 rm -f $D/boot/devicetree-*<u></u><u></=
u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">pkg_postinst_kernel-devicetree_append_imx8mq-var-da=
rt () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 cd $D/boot<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 ln -s ${DEFAULT_DTB_PREFIX}-${DE=
FAULT_DTB}.dtb ${DEFAULT_DTB_PREFIX}.dtb<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 ln -s ${DEFAULT_DTB_PREFIX}-${DE=
FAULT_DTB}-cb12.dtb ${DEFAULT_DTB_PREFIX}-cb12.dtb<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">pkg_postinst_kernel-devicetree_append_imx8qxp-var-s=
om () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 cd $D/boot<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 ln -s ${DEFAULT_DTB_PREFIX}-${DE=
FAULT_DTB}.dtb ${DEFAULT_DTB_PREFIX}.dtb<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">pkg_postinst_kernel-devicetree_append_imx8qm-var-so=
m () {<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 cd $D/boot<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 ln -s ${DEFAULT_DTB_PREFIX}-${DE=
FAULT_DTB}.dtb ${DEFAULT_DTB_PREFIX}.dtb<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 ln -s fsl-imx8qm-var-spear-${DEF=
AULT_DTB}.dtb fsl-imx8qm-var-spear.dtb<u></u><u></u></p>
<p class=3D"MsoNormal">}<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">COMPATIBLE_MACHINE =3D &quot;(mx8)&quot;<u></u><u><=
/u></p>
<p class=3D"MsoNormal">EXTRA_OEMAKE_append_mx8 =3D &quot; ARCH=3Darm64&quo=
t;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><b>Scott D. Whitney</b=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><img width=3D"82" he=
ight=3D"27" style=3D"width: 0.8541in; height: 0.2812in;" id=3D"gmail-m_-293=
9599750006374218Picture_x0020_7" src=3D"cid:17395d4db81692e332"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:9pt"><a href=3D"mailto:=
sdw@inea.com" target=3D"_blank"><span lang=3D"FR">sdw@inea.com</span></a></=
span></u><span lang=3D"FR" style=3D"font-size:9pt">=C2=A0=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A0=C2=A0 T:=C2=A0781-801-1152=C2=A0=C2=A0=C2=A0=C2=A0|=C2=
=A0=C2=A0=C2=A0=C2=A0 F:=C2=A0781-801-1108=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=
=C2=A0=C2=A0=C2=A0
</span><u><span style=3D"font-size:9pt"><a href=3D"http://www.inea.com/" t=
arget=3D"_blank"><span lang=3D"FR" style=3D"color:windowtext">www.inea.com<=
/span></a></span></u><u><span lang=3D"FR" style=3D"font-size:9pt"><u></u><u=
></u></span></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b>From:</b> Bruce Ashfield &lt;<a href=3D"mailto:b=
ruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;=
 <br>
<b>Sent:</b> Tuesday, July 28, 2020 10:18 AM<br>
<b>To:</b> Scott Whitney &lt;<a href=3D"mailto:sdw@inea.com" target=3D"_bl=
ank">sdw@inea.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warr=
ior?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Jul 28, 2020 at 8:45 AM Scott Whitney &lt;<=
a href=3D"mailto:sdw@inea.com" target=3D"_blank">sdw@inea.com</a>&gt; wrote=
:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:=
4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Hi Bruce,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Yes, we are using Linux built by Yocto, but where i=
s the preferred provider for the kernel set to linux-yocto-rt?<u></u><u></u=
></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">This is one of the n=
uances about OE/Yocto, it isn&#39;t about building the kernel with yocto, I=
 was wondering about the kernel recipe you are using.<u></u><u></u></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">If you have a bootin=
g kernel built from linux-yocto (the recipe), then the switch to -rt is eas=
y. If it isn&#39;t using linux-yocto, then using -rt is specific to the ker=
nel provider that you have (and it may
 be just as easy as the linux-yocto switch ... just without the details of=
 that recipe/provider, I can&#39;t say).<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">The preferred provid=
er is likely set in the vendor&#39;s BSP layer, and it likely points at wha=
tever vendor kernel they are currently shipping.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Cheers,<u></u><u></u=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt"><u></u>=C2=A0<u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Bruce<u></u><u></u><=
/span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:=
4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Thanks for your help<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-align:justify">
<b>Scott D. Whitney</b><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt"><img border=3D"0" wi=
dth=3D"82" height=3D"27" style=3D"width: 0.8541in; height: 0.2812in;" id=3D=
"gmail-m_-2939599750006374218gmail-m_1341109852642080234Picture_x0020_7" sr=
c=3D"cid:17395d4db815b16b21"></span><u></u><u></u></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:9pt"><a href=3D"mailto:=
sdw@inea.com" target=3D"_blank"><span lang=3D"FR">sdw@inea.com</span></a></=
span></u><span lang=3D"FR" style=3D"font-size:9pt">=C2=A0=C2=A0=C2=A0=C2=A0=
|=C2=A0=C2=A0=C2=A0=C2=A0
 T:=C2=A0781-801-1152=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0 F:=
=C2=A0781-801-1108=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0 </span=
><u><span style=3D"font-size:9pt"><a href=3D"http://www.inea.com/" target=
=3D"_blank"><span lang=3D"FR" style=3D"color:windowtext">www.inea.com</spa=
n></a></span></u><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b>From:</b> Bruce Ashfield &lt;<a href=3D"mailto:b=
ruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;
<br>
<b>Sent:</b> Monday, July 27, 2020 10:04 PM<br>
<b>To:</b> Scott Whitney &lt;<a href=3D"mailto:sdw@inea.com" target=3D"_bl=
ank">sdw@inea.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warr=
ior?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">=C2=A0</span><u></u>=
<u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Jul 27, 2020 at 3:51 PM Scott Whitney &lt;<=
a href=3D"mailto:sdw@inea.com" target=3D"_blank">sdw@inea.com</a>&gt; wrote=
:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0=
in 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">Hi Yocto group,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m working with a newly-released copy of Y=
octo Zeus from Variscite for the i.MX8MM Mini, although the same option see=
ms to apply to the previous Yocto Warrior.=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I understand that a Linux real-time kernel can be e=
nabled by setting LINUX_KERNEL_TYPE =3D =E2=80=9Cpreempt-rt=E2=80=9D.=C2=A0=
 Where does this option need to be set so that when I bitbake fsl-image-qt5=
,
 I get the Linux =E2=80=9Cpreempt-rt=E2=80=9D kernel instead of the =E2=80=
=
=9Cstandard=E2=80=9D kernel?<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Is there a specific configuration file that needs t=
o be modified, or a new recipe in a layer?=C2=A0 I am confused and hoping t=
hat you can help.<u></u><u></u></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">If you aren&#39;t us=
ing linux-yocto, you&#39;ll need to arrange for the preempt-rt patch(es) to=
 be applied to whatever kernel you are using. Which means you
 are creating a new recipe, bbappending an existing one, or if you are luc=
ky the kernel provider already has a -rt recipe available.</span><u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">=C2=A0</span><u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">If you are using lin=
ux-yocto, it&#39;s as simple as setting the preferred provider of the kerne=
l as linux-yocto-rt=C2=A0 and building.</span><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">=C2=A0</span><u></u>=
<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12pt">Bruce</span><u></u><=
u></u></p>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin:5pt 0=
in 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><b>Scott D. Whitney</b><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;color:rgb(64,64,64)">P=
rincipal Software Engineer</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;color:rgb(64,64,64)"><=
img border=3D"0" width=3D"82" height=3D"27" style=3D"width: 0.8541in; heigh=
t: 0.2812in;" id=3D"gmail-m_-2939599750006374218gmail-m_1341109852642080234=
gmail-m_6629233205366031238Picture_x0020_3" src=3D"cid:17395d4db815b16b21">=
<br>
Intertech Engineering Associates, Inc.<br>
100=C2=A0Lowder=C2=A0Brook=C2=A0Drive, Suite=C2=A02500<br>
Westwood,=C2=A0MA=C2=A0=C2=A002090<br>
</span><u><span style=3D"font-size:9pt"><a href=3D"mailto:sdw@inea.com" ta=
rget=3D"_blank">sdw@inea.com</a></span></u><span style=3D"font-size:9pt">=
=C2=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0 T:=C2=A0781-801-1152=C2=
=A0=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0 F:=C2=A0781-801-1108=C2=A0=
=C2=A0=C2=A0=C2=A0|=C2=A0=C2=A0=C2=A0=C2=A0
<u><a href=3D"http://www.inea.com/" target=3D"_blank"><span style=3D"color=
:windowtext">www.inea.com</span></a></u></span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">--
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">- Thou shalt not follo=
w the NULL pointer, for chaos and madness await thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<u></u><u></u></p=
>
</div>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">-- <u></u><u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">- Thou shalt not follo=
w the NULL pointer, for chaos and madness await thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<u></u><u></u></p=
>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for c=
haos and madness await thee at its end<br>- &quot;Use the force Harry&quot;=
 - Gandalf, Star Trek II<br><br></div></div>

--000000000000aea1e005ab8150f5--

--000000000000aea1e205ab8150f6
Content-Type: image/png; name="image002.png"
Content-Disposition: inline; filename="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <17395d4db815b16b21>
X-Attachment-Id: 17395d4db815b16b21

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
JHpNzT1yAAAAAElFTkSuQmCC

--000000000000aea1e205ab8150f6
Content-Type: image/png; name="image003.png"
Content-Disposition: inline; filename="image003.png"
Content-Transfer-Encoding: base64
Content-ID: <17395d4db81692e332>
X-Attachment-Id: 17395d4db81692e332

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
JHpNzT1yAAAAAElFTkSuQmCC

--000000000000aea1e205ab8150f6--
