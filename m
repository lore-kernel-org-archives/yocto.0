Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7435.1584695426895156817
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 02:10:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=qbl/OW+N;
 spf=softfail (domain: blade-group.com, ip: 140.211.169.56, mailfrom: yann.dirson@blade-group.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F654E01893; Fri, 20 Mar 2020 02:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B9B8E01890
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2020 02:10:24 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id k26so5315116otr.2
        for <yocto@yoctoproject.org>; Fri, 20 Mar 2020 02:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5huaJA0KiLm8zmKxhsfS1vXB7waiw1+5t86tTaRYQCc=;
        b=qbl/OW+NvuI9xq+sjop4tlfaBcuR1h2WMcEKQq/mt0PIoMJ8WMJ5Sb4h6PbqX2Mu64
         2DhuH6jQWavfhSbXTpAytLfQBtI04RGtAIZNCk32FdS1C/gVk16Ap64BXp4M9Aq4wlhQ
         rwfCKpXtT+6IIYjGxBU94IHKWtXAU0qjOti1uqwrPue6r5IGkiJUpBscfZv4ezxLStEp
         UO/ZHxbtOylB1pFONPT4GyzpmoFAjvlcbR7kLUerBsSm7bS7NIjupfO/z2QNQEa+bxGX
         Gtp89bxBzehlsb9QEEmh3ANHPC3QnwFG2EQreNCysp4trlg/3UHHfO7rirNMeDfFbaa3
         IC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5huaJA0KiLm8zmKxhsfS1vXB7waiw1+5t86tTaRYQCc=;
        b=AWMMsepXi9IpI9TFoROcuNcCwruC0XQZqNBWIf/OCos7FD7YgnrmOxpdDqvskm2Pjv
         U5uVkEqz6gkd3njfK5Rqltq8mbvAg2Qn096bwHT72LbymqUmATst2MpQ3NBzewnVV1wf
         kTXnp4IpuJzef8hhghe6IQAR210eNteh6G6tf4Mc3s5nCs2Mvhsd9eL/JXzEtAmZe6hu
         w6pG3tZX7oHroYWNLYQiCuWzttAMO4uIGtm/r5s1yQbTCqode3gYSq/erwS3+CDuMy60
         JQ728XBQqX/DoxyXsyhdvx6gjS+e4oNOBOpWkwaUYTu329raDT5WNcQe4y7zvIT4VmDh
         uRrg==
X-Gm-Message-State: ANhLgQ26nVE8BYrg9mVscLXUNViNztsHTJ7dvCzxtRPcYjbzdiHxat3c
	lbsIEaUYVMKzNrivbrOdWZGVPvvBNtElB+p+KH71/35fB3rvTQ==
X-Google-Smtp-Source: ADFU+vucHqDed8z+Rke2YDKD6ffKuu/y2PLxV5pMW/lMJ3GcfmepJI16Qp5657RoG/f81VKxJlpieuXFz76laCYvl7o=
X-Received: by 2002:a9d:7857:: with SMTP id c23mr6018046otm.288.1584695424140;
 Fri, 20 Mar 2020 02:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
In-Reply-To: <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Fri, 20 Mar 2020 10:10:13 +0100
Message-ID: <CA+4=imYWxva2+Qy=e7xJf0zHFhXu-k0RgQa8udNUDmDC3d9Q2Q@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: karthik poduval <karthik.poduval@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	Trevor Woerner <twoerner@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d55a5205a145a713"

--000000000000d55a5205a145a713
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wow, I'm suprised to discover this meta-rockchip :)

Rockchip engineers also publish a meta-rockchip on Github (
https://github.com/rockchip-linux/meta-rockchip), although
nowadays it's mainly Jeffy Chen publishing on
https://github.com/JeffyCN/meta-rockchip/

Those two repos seem quite complementary, Jeffy being focussed on kernel
4.4, and Trevor on mainline.
Wouldn't it make sense to merge all this work in a single place ?


Le ven. 20 mars 2020 =C3=A0 02:59, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :

> Hi Karthik,
>
> On Thu, Mar 19, 2020 at 9:36 PM karthik poduval
> <karthik.poduval@gmail.com> wrote:
> > Thank you for you work on meta-rockchip layer. You were listed as the
> > maintainer for meta-rockchip so I though I will send you a mail with
> > an issue I was facing.
> >
> > I was trying to flash an image on a Asus tinker board using
> > meta-rockchip. Here are the steps I followed.
> >
> > git clone git://git.yoctoproject.org/poky
> > git clone  git://git.yoctoproject.org/meta-rockchip
> > source poky/oe-init-build-env
> > bitbake-layers add-layer ../../meta-rockchip/
> > MACHINE=3Dtinker-board bitbake core-image-minimal
> >
> > #flahsed it using the following command to sdcard (my sdcard was dev/s=
de)
> > sudo dd
> if=3Dtmp/deploy/images/tinker-board/core-image-minimal-tinker-board.wic
> > of=3D/dev/sde
> >
> > after inserting sdcard and booting up I can see on the serial console
> > it attempts to boot, crosses bootloader and proceeds to linux boot but
> > then gets hing around dwmmc_rockchip loading.
> >
> > Attached the complete serial log. Your help is greatly appreciated.
>
> According to the log, your board is a "tinker-board-s", please try
> using that for your MACHINE instead of "tinker-board".
>
> Thanks and best regards,
>     Trevor
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--000000000000d55a5205a145a713
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wow, I&#39;m suprised to discover this meta-rockchip =
:)</div><div><br></div><div>Rockchip engineers also publish a meta-rockchip=
 on Github (<a href=3D"https://github.com/rockchip-linux/meta-rockchip" tar=
get=3D"_blank">https://github.com/rockchip-linux/meta-rockchip</a>), althou=
gh</div><div>nowadays it&#39;s mainly Jeffy Chen publishing on <a href=3D"h=
ttps://github.com/JeffyCN/meta-rockchip/">https://github.com/JeffyCN/meta-r=
ockchip/</a></div><div><br></div><div>Those two repos seem quite complement=
ary, Jeffy being focussed on kernel 4.4, and Trevor on mainline.</div><div>=
Wouldn&#39;t it make sense to merge all this work in a single place ?</div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0ven. 20 mars 2020 =C3=A0=C2=A002:59, Trevor Woerne=
r &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmai=
l.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi Karthik,<br>
<br>
On Thu, Mar 19, 2020 at 9:36 PM karthik poduval<br>
&lt;<a href=3D"mailto:karthik.poduval@gmail.com" target=3D"_blank">karthik=
.poduval@gmail.com</a>&gt; wrote:<br>
&gt; Thank you for you work on meta-rockchip layer. You were listed as the=
<br>
&gt; maintainer for meta-rockchip so I though I will send you a mail with<=
br>
&gt; an issue I was facing.<br>
&gt;<br>
&gt; I was trying to flash an image on a Asus tinker board using<br>
&gt; meta-rockchip. Here are the steps I followed.<br>
&gt;<br>
&gt; git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"n=
oreferrer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
&gt; git clone=C2=A0 git://<a href=3D"http://git.yoctoproject.org/meta-roc=
kchip" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/meta-rockc=
hip</a><br>
&gt; source poky/oe-init-build-env<br>
&gt; bitbake-layers add-layer ../../meta-rockchip/<br>
&gt; MACHINE=3Dtinker-board bitbake core-image-minimal<br>
&gt;<br>
&gt; #flahsed it using the following command to sdcard (my sdcard was dev/=
sde)<br>
&gt; sudo dd if=3Dtmp/deploy/images/tinker-board/core-image-minimal-tinker=
-board.wic<br>
&gt; of=3D/dev/sde<br>
&gt;<br>
&gt; after inserting sdcard and booting up I can see on the serial console=
<br>
&gt; it attempts to boot, crosses bootloader and proceeds to linux boot bu=
t<br>
&gt; then gets hing around dwmmc_rockchip loading.<br>
&gt;<br>
&gt; Attached the complete serial log. Your help is greatly appreciated.<b=
r>
<br>
According to the log, your board is a &quot;tinker-board-s&quot;, please t=
ry<br>
using that for your MACHINE instead of &quot;tinker-board&quot;.<br>
<br>
Thanks and best regards,<br>
=C2=A0 =C2=A0 Trevor<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Yann Dirs=
on &lt;<a href=3D"mailto:yann@blade-group.com" target=3D"_blank">yann@blade=
-group.com</a>&gt;<br>Blade / Shadow -- <a href=3D"http://shadow.tech" targ=
et=3D"_blank">http://shadow.tech</a><br><br></div>

--000000000000d55a5205a145a713--
