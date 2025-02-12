Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EBB4C021A4
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 15:22:58 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.18413.1739373773890760309
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 07:22:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XxSE5g3O;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6e46269d2c2so41462546d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 07:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739373773; x=1739978573; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lYfFY7eG9+0ipwK9cLHTZ39z+tAcKgV0GMiXGD/pi8Y=;
        b=XxSE5g3O64AZhfO4nGf9tjxYyCyKoqP3jK0aIIaQWhCXI9wp1h1Hkfl9n6CCg0lYtu
         r5GqAmHBa/N9PuBdZDPHhOPkG8dz9G+mvPGf5Zc38MP4B2HcOwrHpv+Xd69i+i240JJx
         z55pSleNvuYbQFneqxsPEtjfDEh7iczgzZWzJkvx6n8VcLAjKDb425vluKVDYKDig/VC
         IEQeRnbCisGAaF8q8hZT/nDEVaKmxIB+OJtDmTSStNc06Jjd2jAnY0KQiucRfCYhqSHI
         ibKhEoa8O7OMn2tFj2c/FnEtU1WqmsOfNYv4Hs3JvJ32SuIwe3xd0yJW28Ny+dtQFZjl
         dM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739373773; x=1739978573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lYfFY7eG9+0ipwK9cLHTZ39z+tAcKgV0GMiXGD/pi8Y=;
        b=HzVYy48NUI2W4iSzeGsQjjygJIypnJnQoGLC9ltl4CphuYzLGahDAlq48uXBmMDLtx
         rcXcUvcSf/YLdCP5NwEPuc1gadVZqxmVZ1iaFWlakPz6JvOCxS2+p1WeSsT0WN+NBxAl
         3cm1wxxl55kx3mkMnvSOKZiLYmVbPC9LMPAOwR7QEXPyCeg+3j9bipzP28e6WxkTwH1n
         /qIM0CDAXUJCIfd64piLDDHF7jqc3sEt61aGld+h+j0F7jbcevWAe3heeuYJuM4sdBAZ
         ctghTdYmgl9ctj12kJLcQl2Og8lAnVshUrik9emCppuMq0b8MCFGYYf1TEOHWpO9sWKz
         VezQ==
X-Gm-Message-State: AOJu0YzWswGbhileDKT74P1444M+UU4ksmdt3WUJOqo8vcUzSdPCk04m
	TM6I6+s4VQyufLFnFIrbnWsncfW/Hj0nuLnXlU+SVCxb3/s7/V1kUWZhTRltCZjt+zbNTFVOa4A
	4aRc5yIa9McwZBR8IDJ6H32QqCJA=
X-Gm-Gg: ASbGncubz8th0V4fS4fdNl7+MsqhycdEMLPUiv9tyTZHdmeWun6fvgP64a92now4S93
	CbQpLZaJNVHO4ZFa6eAr+661PegawZoT9iyHC0dnC7oYKNihP+anO/h76ZzGIXKbOfxM8isRGDa
	Ro65lqrNugcPTj6Ne8RtWDk5EoQpulZVQ=
X-Google-Smtp-Source: AGHT+IFPhjtELUf1du685IEGKO5RcsmWxGzJ+w+0LsiryKs6uRanVfJpK+juCY+l0D3Oc7SCDsiqCtG7EQpXsVmW0ho=
X-Received: by 2002:a05:6214:f2a:b0:6e2:4e1a:bc82 with SMTP id
 6a1803df08f44-6e46edac9a9mr65363336d6.35.1739373772797; Wed, 12 Feb 2025
 07:22:52 -0800 (PST)
MIME-Version: 1.0
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com> <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
 <1823446B2C0840A9.9264@lists.yoctoproject.org> <BN0P110MB1915DADB5511579F063D9DA2BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_m9sY7Zy_Oz_c77tdCiibQt+MDSwss-speiY0MdZotMQ@mail.gmail.com> <BN0P110MB19153BB74BE7DB45F10B3910BFFCA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB19153BB74BE7DB45F10B3910BFFCA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2025 16:22:40 +0100
X-Gm-Features: AWEUYZm2ZysUdZyNJR9AZNADmUG5p0AGRiK1QYeZ3dCoKvnMrkvXnPkDIKytIKQ
Message-ID: <CANNYZj8wMyhrKc7oaww0AonwjQvYTv4QodJtc5SVwi8SE78M7A@mail.gmail.com>
Subject: Re: [yocto] Installing pre-built DEB files
To: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"skandigraun@gmail.com" <skandigraun@gmail.com>, "r@cmss.com" <r@cmss.com>
Content-Type: multipart/alternative; boundary="000000000000dbfef0062df383af"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 15:22:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64785

--000000000000dbfef0062df383af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

At this point you need to look into specifics of your build configuration
and build directory, and decompose the problem into smaller questions:

- what does the parted recipe install? You need to look into
${WORKDIR}/image for it. Are the headers there?

- which package the headers go to? Look into ${WORKDIR}/packages-split.

- does the package with the headers actually get installed into target
image? log.do_rootfs for the image should answer that.

Alex

On Wed, 12 Feb 2025 at 15:00, Keith Beal [US] <kbeal@eclipticenterprises.co=
m>
wrote:

> Alex,
>
> First, let me say thanks for the help.
>
> I did include it...
>
> IMAGE_INSTALL_append =3D "sudo file parted parted-dev"
>
> Note the bitbake 1.5 syntax.
> There are also other packages but not shown for simplicity.
>
> As I said in my original post, we are using the NXP LAYERSCAPE SDK.
> I wonder if the issue is with the keirstone branch.
>
> When I added parted-dev, I got all the libraries in my image but not the
> headers.
>
> Keith
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Wednesday, February 12, 2025 1:22 AM
> *To:* Keith Beal [US] <kbeal@eclipticenterprises.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>;
> skandigraun@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
> *Subject:* Re: [yocto] Installing pre-built DEB files
>
>
> *[EXTERNAL EMAIL]* DO NOT CLICK links or attachments unless you recognize
> the sender and know the content is safe.
> I already told you. Headers and pkg-config files are in parted-dev packag=
e
> produced by parted recipe.
>
> Please build the recipe and see what you get out of it.
>
> Alex
>
> On Wed, 12 Feb 2025 at 00:48, Keith Beal [US] <
> kbeal@eclipticenterprises.com> wrote:
>
> Alex,
>
> These are the headers I am talking about...
>
> $ dpkg -c libparted-dev_3.6-4+b1_arm64.deb
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/parted/
> -rw-r--r-- root/root      2774 2024-11-01 19:02
> ./usr/include/parted/constraint.h
> -rw-r--r-- root/root      2478 2024-11-01 19:02
> ./usr/include/parted/debug.h
> -rw-r--r-- root/root      6241 2024-11-01 19:02
> ./usr/include/parted/device.h
> -rw-r--r-- root/root     18288 2024-11-01 19:02 ./usr/include/parted/disk=
.h
> -rw-r--r-- root/root      4177 2024-11-01 19:02
> ./usr/include/parted/exception.h
> -rw-r--r-- root/root      3466 2024-11-01 19:02
> ./usr/include/parted/filesys.h
> -rw-r--r-- root/root      3588 2024-11-01 19:02 ./usr/include/parted/geom=
.h
> -rw-r--r-- root/root      4196 2024-11-01 19:02
> ./usr/include/parted/natmath.h
> -rw-r--r-- root/root      1705 2024-11-01 19:02
> ./usr/include/parted/parted.h
> -rw-r--r-- root/root      2167 2024-11-01 19:02
> ./usr/include/parted/timer.h
> -rw-r--r-- root/root      2927 2024-11-01 19:02 ./usr/include/parted/unit=
.h
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/
> drwxr-xr-x root/root         0 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/
> -rw-r--r-- root/root    202576 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/libparted-fs-resize.a
> -rw-r--r-- root/root    807836 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/libparted.a
> drwxr-xr-x root/root         0 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/pkgconfig/
> -rw-r--r-- root/root       264 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/pkgconfig/libparted-fs-resize.pc
> -rw-r--r-- root/root       244 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/pkgconfig/libparted.pc
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/
> drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/doc/
> lrwxrwxrwx root/root         0 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/libparted-fs-resize.so ->
> libparted-fs-resize.so.0
> lrwxrwxrwx root/root         0 2024-11-01 19:02
> ./usr/lib/aarch64-linux-gnu/libparted.so -> libparted.so.2
> lrwxrwxrwx root/root         0 2024-11-01 19:02
> ./usr/share/doc/libparted-dev -> libparted2t64
>
> Keith
> ------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Keith Beal [US] via lists.yoctoproject.org <kbeal=3D
> eclipticenterprises.com@lists.yoctoproject.org>
> *Sent:* Tuesday, February 11, 2025 1:25 PM
> *To:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>;
> skandigraun@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
> *Subject:* Re: [yocto] Installing pre-built DEB files
>
> You don't often get email from kbeal=3D
> eclipticenterprises.com@lists.yoctoproject.org. Learn why this is
> important <https://aka.ms/LearnAboutSenderIdentification>
>
> *[EXTERNAL EMAIL]* DO NOT CLICK links or attachments unless you recognize
> the sender and know the content is safe.
> Alex,
>
> Thank you very much.
> I should have figured I wasn't the only one who needs those in Yocto.
> The Debian libparted-dev package has header files, how do I get those
> installed?
>
> Keith
> ------------------------------
> *From:* Alexander Kanavin <alex.kanavin@gmail.com>
> *Sent:* Tuesday, February 11, 2025 10:49 AM
> *To:* Keith Beal [US] <kbeal@eclipticenterprises.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>;
> skandigraun@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
> *Subject:* Re: [yocto] Installing pre-built DEB files
>
> [EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize
> the sender and know the content is safe.
>
> On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]
> <kbeal@eclipticenterprises.com> wrote:
> >
> > I know there is a parted recipe.
> > I need the equivalent of the Ubuntu package libprated-dev.
> > This is the library and header files for using the functions used by
> parted.
>
> The parted recipe builds and packages libparted as well, it's just all
> placed together into one package with the executables (also called
> parted). Headers and pkgconfig files are in parted-dev package.
>
> So you can simply use those packages and ignore that they also come
> with executables.
>
> Alex
>
>
> Ecliptic Enterprises Corporation
> Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2
> 398 W. Washington Blvd, Suite 100
> Pasadena, CA 91103
> Main number: (626) 798-2436
> www.EclipticEnterprises.com <http://www.eclipticenterprises.com/>
>
> Notice: This e-mail is intended solely for use of the individual or entit=
y
> to which it is addressed and may contain information that is proprietary,
> privileged and exempt from disclosure under applicable law. If the reader
> is not the intended recipient or agent responsible for delivering the
> message to the intended recipient, you are hereby notified that any
> dissemination, distribution or copying of this communication is strictly
> prohibited. This communication may also contain data subject to U.S. expo=
rt
> laws. If so, that data is subject to the International Traffic in Arms
> Regulation (ITAR) and cannot be disseminated, distributed or copied to
> foreign nationals, residing in the U.S. or abroad, absent the express pri=
or
> approval of the U.S. Department of State. If you have received this
> communication in error, please notify the sender by reply e-mail and
> destroy the e-mail message and any physical copies made of the
> communication. Thank you
>
>
> Ecliptic Enterprises Corporation
> Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2
> 398 W. Washington Blvd, Suite 100
> Pasadena, CA 91103
> Main number: (626) 798-2436
> www.EclipticEnterprises.com <http://www.eclipticenterprises.com/>
>
> Notice: This e-mail is intended solely for use of the individual or entit=
y
> to which it is addressed and may contain information that is proprietary,
> privileged and exempt from disclosure under applicable law. If the reader
> is not the intended recipient or agent responsible for delivering the
> message to the intended recipient, you are hereby notified that any
> dissemination, distribution or copying of this communication is strictly
> prohibited. This communication may also contain data subject to U.S. expo=
rt
> laws. If so, that data is subject to the International Traffic in Arms
> Regulation (ITAR) and cannot be disseminated, distributed or copied to
> foreign nationals, residing in the U.S. or abroad, absent the express pri=
or
> approval of the U.S. Department of State. If you have received this
> communication in error, please notify the sender by reply e-mail and
> destroy the e-mail message and any physical copies made of the
> communication. Thank you
>
>
>
> Ecliptic Enterprises Corporation
> Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2
> 398 W. Washington Blvd, Suite 100
> Pasadena, CA 91103
> Main number: (626) 798-2436
> www.EclipticEnterprises.com
>
> Notice: This e-mail is intended solely for use of the individual or entit=
y
> to which it is addressed and may contain information that is proprietary,
> privileged and exempt from disclosure under applicable law. If the reader
> is not the intended recipient or agent responsible for delivering the
> message to the intended recipient, you are hereby notified that any
> dissemination, distribution or copying of this communication is strictly
> prohibited. This communication may also contain data subject to U.S. expo=
rt
> laws. If so, that data is subject to the International Traffic in Arms
> Regulation (ITAR) and cannot be disseminated, distributed or copied to
> foreign nationals, residing in the U.S. or abroad, absent the express pri=
or
> approval of the U.S. Department of State. If you have received this
> communication in error, please notify the sender by reply e-mail and
> destroy the e-mail message and any physical copies made of the
> communication. Thank you
>

--000000000000dbfef0062df383af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>At this point you need to look into specifics of your=
 build configuration and build directory, and decompose the problem into sm=
aller questions:</div><div><br></div><div>- what does the parted recipe ins=
tall? You need to look into ${WORKDIR}/image for it. Are the headers there?=
</div><div><br></div><div>- which package the headers go to? Look into ${WO=
RKDIR}/packages-split.</div><div><br></div><div>- does the package with the=
 headers actually get installed into target image? log.do_rootfs for the im=
age should answer that.</div><div><br></div><div>Alex</div></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, 12 Feb 2025 at 15:00, Keith Beal [US] &lt;<a href=3D"mailto:k=
beal@eclipticenterprises.com">kbeal@eclipticenterprises.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"ms=
g-1056933262507183808">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Alex,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
First, let me say thanks for the help.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I did include it...</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
IMAGE_INSTALL_append =3D &quot;sudo file parted parted-dev&quot;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Note the bitbake 1.5 syntax.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
There are also other packages but not shown for simplicity.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
As I said in my original post, we are using the NXP LAYERSCAPE SDK.<br>
I wonder if the issue is with the keirstone branch.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
When I added parted-dev, I got all the libraries in my image but not the he=
aders.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Keith</div>
<div id=3D"m_-8277380596806486491appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8277380596806486491divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"=
_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 12, 2025 1:22 AM<br>
<b>To:</b> Keith Beal [US] &lt;<a href=3D"mailto:kbeal@eclipticenterprises.=
com" target=3D"_blank">kbeal@eclipticenterprises.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;; <a href=
=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmail.com</=
a> &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigra=
un@gmail.com</a>&gt;; <a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cms=
s.com</a> &lt;<a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a=
>&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"border:1px solid rgb(255,202,202);background-color:rgb(255,202,=
202);padding:1em">
<span style=3D"font-size:12pt;color:black"><b>[EXTERNAL EMAIL]</b></span> <=
span style=3D"font-size:10pt;color:black">
DO NOT CLICK links or attachments unless you recognize the sender and know =
the content is safe.</span></p>
<div>
<div dir=3D"ltr">
<div>I already told you. Headers and pkg-config files are in parted-dev pac=
kage produced by parted recipe.</div>
<div><br>
</div>
<div>Please build the recipe and see what you get out of it.</div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, 12 Feb 2025 at 00:48, Keith Beal [US] &lt;<a href=
=3D"mailto:kbeal@eclipticenterprises.com" target=3D"_blank">kbeal@ecliptice=
nterprises.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Alex,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
These are the headers I am talking about...<br>
<br>
<span style=3D"font-family:Consolas,Courier,monospace">$ dpkg -c libparted-=
dev_3.6-4+b1_arm64.deb</span></div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./</div=
>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/<=
/div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/i=
nclude/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/i=
nclude/parted/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A02774 2024-11-01 19:02 ./usr/include/parted/constraint.h</span=
></div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A02478 2024-11-01 19:02 ./usr/include/parted/debug.h</span></di=
v>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A06241 2024-11-01 19:02 ./usr/include/parted/device.h</span></d=
iv>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 18288 2024-11-01 19:02 ./usr/include/parted/disk.h</span></div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A04177 2024-11-01 19:02 ./usr/include/parted/exception.h</span>=
</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A03466 2024-11-01 19:02 ./usr/include/parted/filesys.h</span></=
div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A03588 2024-11-01 19:02 ./usr/include/parted/geom.h</span></div=
>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A04196 2024-11-01 19:02 ./usr/include/parted/natmath.h</span></=
div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A01705 2024-11-01 19:02 ./usr/include/parted/parted.h</span></d=
iv>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A02167 2024-11-01 19:02 ./usr/include/parted/timer.h</span></di=
v>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root =C2=A0=
 =C2=A0 =C2=A02927 2024-11-01 19:02 ./usr/include/parted/unit.h</span></div=
>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/l=
ib/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
-rw-r--r-- root/root =C2=A0 =C2=A0202576 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted-fs-resize.a</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
-rw-r--r-- root/root =C2=A0 =C2=A0807836 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted.a</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/pkgconfig/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
-rw-r--r-- root/root =C2=A0 =C2=A0 =C2=A0 264 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted-fs-resize.pc</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
-rw-r--r-- root/root =C2=A0 =C2=A0 =C2=A0 244 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted.pc</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/s=
hare/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
drwxr-xr-x root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/s=
hare/doc/</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
lrwxrwxrwx root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted-fs-resize.so -&gt; libparted-fs-resize.so.0<=
/div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
lrwxrwxrwx root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted.so -&gt; libparted.so.2</div>
<div style=3D"font-family:Consolas,Courier,monospace;font-size:12pt;color:r=
gb(0,0,0)">
lrwxrwxrwx root/root =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 2024-11-01 19:02 ./usr/s=
hare/doc/libparted-dev -&gt; libparted2t64</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Keith</div>
<div id=3D"m_-8277380596806486491x_m_1660197857412109570appendonsend"></div=
>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8277380596806486491x_m_1660197857412109570divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Keith =
Beal [US] via
<a href=3D"http://lists.yoctoproject.org/" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;kbeal=3D<a href=3D"mailto:eclipticenterprises.com@lists.yo=
ctoproject.org" target=3D"_blank">eclipticenterprises.com@lists.yoctoprojec=
t.org</a>&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 1:25 PM<br>
<b>To:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;;
<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmai=
l.com</a> &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">sk=
andigraun@gmail.com</a>&gt;;
<a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a> &lt;<a href=
=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>=C2=A0</div>
</div>
<div dir=3D"ltr">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert;color:revert;direction:revert;font-si=
ze:revert;height:revert;letter-spacing:revert;line-height:revert;margin:rev=
ert;opacity:revert;outline:revert;overflow:revert;padding:revert;text-align=
:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;tex=
t-transform:revert;vertical-align:revert;white-space:revert;word-break:reve=
rt;word-spacing:revert;writing-mode:revert;zoom:revert;border:0px;display:t=
able;width:100%;table-layout:fixed;float:none;border-spacing:0px">
<tbody style=3D"background:revert;border:revert;color:revert;direction:reve=
rt;font-size:revert;height:revert;letter-spacing:revert;line-height:revert;=
margin:revert;opacity:revert;outline:revert;overflow:revert;padding:revert;=
table-layout:revert;text-align:revert;text-indent:revert;text-orientation:r=
evert;text-overflow:revert;text-transform:revert;vertical-align:revert;whit=
e-space:revert;width:revert;word-break:revert;word-spacing:revert;writing-m=
ode:revert;zoom:revert;display:block">
<tr style=3D"background:revert;border:revert;color:revert;direction:revert;=
display:revert;font-size:revert;height:revert;letter-spacing:revert;line-he=
ight:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;pad=
ding:revert;table-layout:revert;text-align:revert;text-indent:revert;text-o=
rientation:revert;text-overflow:revert;text-transform:revert;vertical-align=
:revert;white-space:revert;width:revert;word-break:revert;word-spacing:reve=
rt;writing-mode:revert;zoom:revert">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background-position:revert;background-repeat:revert;b=
ackground-image:revert;background-size:revert;background-origin:revert;back=
ground-clip:revert;border:revert;color:revert;direction:revert;display:reve=
rt;font-size:revert;height:revert;letter-spacing:revert;line-height:revert;=
margin:revert;opacity:revert;outline:revert;overflow:revert;table-layout:re=
vert;text-align:revert;text-indent:revert;text-orientation:revert;text-over=
flow:revert;text-transform:revert;vertical-align:revert;white-space:revert;=
word-break:revert;word-spacing:revert;writing-mode:revert;zoom:revert;paddi=
ng:7px 2px;background-color:rgb(166,166,166);width:0px">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background-position:revert;backgr=
ound-repeat:revert;background-image:revert;background-size:revert;backgroun=
d-origin:revert;background-clip:revert;border:revert;direction:revert;displ=
ay:revert;height:revert;letter-spacing:revert;line-height:revert;margin:rev=
ert;opacity:revert;outline:revert;overflow:revert;table-layout:revert;text-=
indent:revert;text-orientation:revert;text-overflow:revert;text-transform:r=
evert;vertical-align:revert;white-space:revert;word-break:revert;word-spaci=
ng:revert;writing-mode:revert;zoom:revert;width:100%;background-color:rgb(2=
34,234,234);padding:7px 5px 7px 15px;font-family:wf_segoe-ui_normal,Segoe U=
I,Segoe WP,Tahoma,Arial,sans-serif;font-size:12px;font-weight:normal;color:=
rgb(33,33,33);text-align:left">
<div style=3D"background:revert;border:revert;color:revert;direction:revert=
;display:revert;font-size:revert;height:revert;letter-spacing:revert;line-h=
eight:revert;margin:revert;opacity:revert;outline:revert;overflow:revert;pa=
dding:revert;table-layout:revert;text-align:revert;text-indent:revert;text-=
orientation:revert;text-overflow:revert;text-transform:revert;vertical-alig=
n:revert;white-space:revert;width:revert;word-break:revert;word-spacing:rev=
ert;writing-mode:revert;zoom:revert">
You don&#39;t often get email from kbeal=3D<a href=3D"mailto:eclipticenterp=
rises.com@lists.yoctoproject.org" target=3D"_blank">eclipticenterprises.com=
@lists.yoctoproject.org</a>.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification" style=3D"backgrou=
nd:revert;color:revert;direction:revert;display:revert;font-size:revert;opa=
city:revert" target=3D"_blank">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background-position=
:revert;background-repeat:revert;background-image:revert;background-size:re=
vert;background-origin:revert;background-clip:revert;border:revert;directio=
n:revert;display:revert;height:revert;letter-spacing:revert;line-height:rev=
ert;margin:revert;opacity:revert;outline:revert;overflow:revert;table-layou=
t:revert;text-indent:revert;text-orientation:revert;text-overflow:revert;te=
xt-transform:revert;vertical-align:revert;white-space:revert;word-break:rev=
ert;word-spacing:revert;writing-mode:revert;zoom:revert;width:75px;backgrou=
nd-color:rgb(234,234,234);padding:7px 5px;font-family:wf_segoe-ui_normal,Se=
goe UI,Segoe WP,Tahoma,Arial,sans-serif;font-size:12px;font-weight:normal;c=
olor:rgb(33,33,33);text-align:left">
</td>
</tr>
</tbody>
</table>
<div>
<p style=3D"border:1px solid rgb(255,202,202);background-color:rgb(255,202,=
202);padding:1em">
<span style=3D"font-size:12pt;color:black"><b>[EXTERNAL EMAIL]</b></span> <=
span style=3D"font-size:10pt;color:black">
DO NOT CLICK links or attachments unless you recognize the sender and know =
the content is safe.</span></p>
<div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Alex,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Thank you very much.<br>
I should have figured I wasn&#39;t the only one who needs those in Yocto.<b=
r>
The Debian libparted-dev package has header files, how do I get those insta=
lled?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Keith</div>
<div id=3D"m_-8277380596806486491x_m_1660197857412109570x_appendonsend"></d=
iv>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8277380596806486491x_m_1660197857412109570x_divRplyFwdMsg" di=
r=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"fon=
t-size:11pt"><b>From:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kana=
vin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 10:49 AM<br>
<b>To:</b> Keith Beal [US] &lt;<a href=3D"mailto:kbeal@eclipticenterprises.=
com" target=3D"_blank">kbeal@eclipticenterprises.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;;
<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmai=
l.com</a> &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">sk=
andigraun@gmail.com</a>&gt;;
<a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a> &lt;<a href=
=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>=C2=A0</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div>[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recogniz=
e the sender and know the content is safe.<br>
<br>
On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]<br>
&lt;<a href=3D"mailto:kbeal@eclipticenterprises.com" target=3D"_blank">kbea=
l@eclipticenterprises.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I know there is a parted recipe.<br>
&gt; I need the equivalent of the Ubuntu package libprated-dev.<br>
&gt; This is the library and header files for using the functions used by p=
arted.<br>
<br>
The parted recipe builds and packages libparted as well, it&#39;s just all<=
br>
placed together into one package with the executables (also called<br>
parted). Headers and pkgconfig files are in parted-dev package.<br>
<br>
So you can simply use those packages and ignore that they also come<br>
with executables.<br>
<br>
Alex<br>
</div>
</span></font></div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
<a href=3D"http://www.eclipticenterprises.com/" target=3D"_blank">www.Eclip=
ticEnterprises.com</a>
<br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>
</div>
</div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
<a href=3D"http://www.eclipticenterprises.com/" target=3D"_blank">www.Eclip=
ticEnterprises.com</a>
<br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>
</div>
</blockquote>
</div>
</div>
</div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=E2=84=A2 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
<a href=3D"http://www.EclipticEnterprises.com" target=3D"_blank">www.Eclipt=
icEnterprises.com</a> <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>

</div></blockquote></div>

--000000000000dbfef0062df383af--

