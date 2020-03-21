Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4026.1584774578544064926
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Mar 2020 00:09:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UVVbqRIN;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: karthik.poduval@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EAC3E018A2; Sat, 21 Mar 2020 00:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (karthik.poduval[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C755BE018A0
	for <yocto@yoctoproject.org>; Sat, 21 Mar 2020 00:09:35 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id n6so5476252vsc.3
        for <yocto@yoctoproject.org>; Sat, 21 Mar 2020 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9o53V3W8TH5WFDINepHkNFlokaJoBDkxHUoV7eGNaEk=;
        b=UVVbqRIN8OJBdnkVdnCAiPFXQ63+YY6dxYi7bj7ir1d4GhBOY2A8v16WsdCZZpAqUc
         i7yZrxNuSdTTXlMPopYZtWJNl+7xvEuulZ4Wwurz9NuN+CWOd25i3QlVRcvj30FGQbgZ
         pmmLGjGKPX/z9pd2RX04YrswImXC94+jpBWomxHgujTni0YkgFmhARGzeW80j43B/5dY
         n75SlphKhA1nYuEUNFBWGCpo//i3yDmDdt5+sghFsYyYV5d4wtsBqPDNPT6YYS5ZGsfF
         7MWOItb9lboSP2RuX/XUkqU8Nwps9cjSOSIO2QZfSuK3g4O8kKowfG70CmHjv42ASC8H
         HCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9o53V3W8TH5WFDINepHkNFlokaJoBDkxHUoV7eGNaEk=;
        b=b5hGrmY6Vz65gH6GQfCB6dfyB6BxoH2bBAeHN1GTIMttDZad/rw+oC1iQuEWoALG26
         7B0AfBZmgsANLbwolcuuHkwapVRskJUF+mVv/OIpvAbMUSZDD/0s2Gt7PlRpFCsCOkLm
         MNjMDly0XU6O1oGFWzS93vIHCi+he0t2BSMCuF2grSHp1V+gxKvFPAE3D0HCpth91JIz
         VMBFqC7K1ir7wVmwRRkp6Tv6/CIPdikmaZYJNVGC9la3eHZFvTJOcckkRCunzwfrMWQ7
         YfpkgcoyS8HNPYi17s7t2FpeGxsaSvMhDjsgEbOIy2gEnkszms2s/jQiYRknyQDXUpiM
         zP6Q==
X-Gm-Message-State: ANhLgQ34012zbQ2KfYngpVXIBcMLvp7g47+gtLLX/mLd59YmupDamjFa
	w9Q5m+bSPm8u/aSLKr2vVGYf71CBCh5nxVY/yhA=
X-Google-Smtp-Source: ADFU+vsoTKFGzSOI4yg3+2+iMLXDHO3UEQrd2AUmSMZpSyp6+6zOK+MV8y1GAjoDo+Mg2XONDp5naYmgqw0wHqYE5xU=
X-Received: by 2002:a67:cc16:: with SMTP id q22mr9155583vsl.81.1584774574863;
 Sat, 21 Mar 2020 00:09:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
In-Reply-To: <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Sat, 21 Mar 2020 00:09:23 -0700
Message-ID: <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
Subject: Re: yocto on tinkerbaord using meta-rockchip
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000957a2805a1581573"

--000000000000957a2805a1581573
Content-Type: text/plain; charset="UTF-8"

Hi Trevor,

Thanks for getting back, I tried with tinker-board-s machine type but same
result. I also tried flashing Asus Debian image on sdcard but that too
didn't work (no console logs with this image). I am suspecting it's a
hardware issue at this point. Any other suggestions or insights would be
appreciated.

On Thu, Mar 19, 2020, 6:58 PM Trevor Woerner <twoerner@gmail.com> wrote:

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
> > MACHINE=tinker-board bitbake core-image-minimal
> >
> > #flahsed it using the following command to sdcard (my sdcard was dev/sde)
> > sudo dd
> if=tmp/deploy/images/tinker-board/core-image-minimal-tinker-board.wic
> > of=/dev/sde
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
>

--000000000000957a2805a1581573
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Trevor,<div dir=3D"auto"><br></div><div dir=3D"auto">T=
hanks for getting back, I tried with tinker-board-s machine type but same r=
esult. I also tried flashing Asus Debian image on sdcard but that too didn&=
#39;t=C2=A0work (no console logs with this image). I am suspecting it&#39;s=
 a hardware issue at this point. Any other suggestions or insights would=C2=
=A0be appreciated.</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Mar 19, 2020, 6:58 PM Trevor Woerner &lt;<a=
 href=3D"mailto:twoerner@gmail.com" target=3D"_blank" rel=3D"noreferrer">tw=
oerner@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi =
Karthik,<br>
<br>
On Thu, Mar 19, 2020 at 9:36 PM karthik poduval<br>
&lt;<a href=3D"mailto:karthik.poduval@gmail.com" rel=3D"noreferrer noreferr=
er" target=3D"_blank">karthik.poduval@gmail.com</a>&gt; wrote:<br>
&gt; Thank you for you work on meta-rockchip layer. You were listed as the<=
br>
&gt; maintainer for meta-rockchip so I though I will send you a mail with<b=
r>
&gt; an issue I was facing.<br>
&gt;<br>
&gt; I was trying to flash an image on a Asus tinker board using<br>
&gt; meta-rockchip. Here are the steps I followed.<br>
&gt;<br>
&gt; git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"no=
referrer noreferrer noreferrer" target=3D"_blank">git.yoctoproject.org/poky=
</a><br>
&gt; git clone=C2=A0 git://<a href=3D"http://git.yoctoproject.org/meta-rock=
chip" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">git.yoctop=
roject.org/meta-rockchip</a><br>
&gt; source poky/oe-init-build-env<br>
&gt; bitbake-layers add-layer ../../meta-rockchip/<br>
&gt; MACHINE=3Dtinker-board bitbake core-image-minimal<br>
&gt;<br>
&gt; #flahsed it using the following command to sdcard (my sdcard was dev/s=
de)<br>
&gt; sudo dd if=3Dtmp/deploy/images/tinker-board/core-image-minimal-tinker-=
board.wic<br>
&gt; of=3D/dev/sde<br>
&gt;<br>
&gt; after inserting sdcard and booting up I can see on the serial console<=
br>
&gt; it attempts to boot, crosses bootloader and proceeds to linux boot but=
<br>
&gt; then gets hing around dwmmc_rockchip loading.<br>
&gt;<br>
&gt; Attached the complete serial log. Your help is greatly appreciated.<br=
>
<br>
According to the log, your board is a &quot;tinker-board-s&quot;, please tr=
y<br>
using that for your MACHINE instead of &quot;tinker-board&quot;.<br>
<br>
Thanks and best regards,<br>
=C2=A0 =C2=A0 Trevor<br>
</blockquote></div>

--000000000000957a2805a1581573--
