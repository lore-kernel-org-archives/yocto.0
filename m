Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.4391.1574931789997722332
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 01:03:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=TKBFCiOl;
 spf=pass (domain: soccasys.com, ip: 209.85.217.41, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vs1-f41.google.com with SMTP id x123so5423279vsc.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 01:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=SrfjhD5IuHyuI4VLxBKZbd8InuakZ3jVGNoFjmF18d4=;
        b=TKBFCiOlRpjG7kv8NMm8d32ImJCeXhypjou1Vr0xEDjwor7zt8E6aOGTytQppKDeQJ
         O93YBkLUmTLgi9nQbpGV/ER+r3kUoKvwm2OkICcqDj927ZmMu3KcpdxT1bLgBU7o0c/C
         fLOaSiMd9+eMzBL9oWngkQlczNRlleyXhCEkW+HI2CWXjRxx3BoLM63APyoMaaLE16OB
         CTkutPU8p0+acVqfOlc0GH4jpgVQT8r0ZgqFrVfFw5DKyjh7iS5PWYQHsCHtYUu1nkas
         Z2PnI766BAtAv6m9mfWH5bR0p5Lf+9sLHsrELW0ftPtAVA5d1fjYB1zwVf75l2lObuNT
         BXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=SrfjhD5IuHyuI4VLxBKZbd8InuakZ3jVGNoFjmF18d4=;
        b=mfpr7eQqMZ50TVKhDoF/GiT2hcyaXZCgYpfhVrAmS9Qkv1zsntYJ/QY0d2z8tyXCt0
         QUMA+0o142uwsx+uMoIcvj5E9pDvOI//yEqAaOQVUcy5VwndY8eyDqvP2m0BiJbvHVN+
         A3X1VpgOtFJZWK4GSnPRib3FBDbtecltTURnUN8DXYdPB7Az1d7n0hJld1prV3VAoBSA
         aea9XznPcUxwcnUGZEl2me/5snupiMqX9/2TPv7W1BGVTKI8bwXqk7bOnPdfcM7yVqZN
         1axUXaDv1gK4gYJC5OPwslZhu50DWGbwyD/OpQ6dULkUqd4aDJqAjKwsjdikj7kBnefo
         JH2w==
X-Gm-Message-State: APjAAAVyAv/Vy4rkexrLmdSNp01sh5LZy+hUZ639XbdKIYTAYPGWun7K
	bMKaKPGfXl+CP4PVxvyGOnK3YRtTSoF7La5jQS4tL3ybr+Y=
X-Google-Smtp-Source: APXvYqzg/guEH5tfvJy77DUCXwkd7N0M3getY4pQ4Upu4CE+2VuECtvidoahyeyrnFwB4rmtpIHervr1ls+97xiOUNg=
X-Received: by 2002:a05:6102:3093:: with SMTP id l19mr27497384vsb.211.1574931788488;
 Thu, 28 Nov 2019 01:03:08 -0800 (PST)
MIME-Version: 1.0
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com> <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain>
In-Reply-To: <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Thu, 28 Nov 2019 10:00:01 +0100
Message-ID: <CAGbd71QweQW0Bnmj7EEuW57J71Hug6dA-1AE+GQ0hfTK=Sd5Tg@mail.gmail.com>
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[ all: Let me share the replay I made in private to Ajit. ]

Hi Ajith,

Unfortunately because you do not provide much information about the
"some error" you are seeing there is not much that can be done right
away to support you.

Here is a useful article on how to ask technical questions.

* https://opensource.com/life/16/10/how-ask-technical-questions

And here is a relevant quote from it that should help you increase
your chances of getting an answer:

> You should include a clear description of the issue you're facing or goal=
 you're trying to achieve. Include as
> much specific relevant information as you can:
>
> * If the problem is reproducible, what are the exact steps to do so?
> * If you're getting an error message or debugging information, make sure =
you include it verbatim.
> * Have you made any recent changes?
> * What Linux distribution and version are you using?
> * Is the hardware you're using a factor?
>
> The more relevant information you include, the more likely you'll receive=
 a solution that actually works.
>
> You should also include any research you've done and steps you've already=
 taken
> to try to solve the issue. This not only prevents receiving a solution yo=
u've already
> tried, but shows that you've already put effort into solving the issue yo=
urself.

Generic answer about your question based on the information you provided:

* NXP i.MX8M is supported in Yocto through NXP's own Yocto BSP (not
just base Yocto) and your question
  is probably more likely to get an answer on NXP's community forums
at https://community.nxp.com/

Kind Regards, Laurent.
--
https://soccasys.com

On Thu, Nov 28, 2019 at 9:53 AM Josef Holzmayr
<holzmayr@rsi-elektrotechnik.de> wrote:
>
> On Thu, Nov 28, 2019 at 02:02:29PM +0530, Aj Cit wrote:
> > I've followed the instruction from the yocto project:
> > https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctop=
rojectqs.html
>
> This can not be exactly true, as this guide certainly does not include
> anything related to the imx8. So you are either still building for qemu
> (as it defaults to), or using seomthing additional that you're not
> mentioning.
>
> >
> >
> > till the bitbake command. However, I'm getting the following error:
> > ERROR:  OE-core's config sanity checker detected a potential
> > misconfiguration.
> >     Either fix the cause of this error or at your own risk disable the
> > checker (see sanity.conf).
> >     Following is the list of potential problems / advisories:
> >
> >     Do not use Bitbake as root.
>
> Here is your answer: do not run botbake as the root user :)
>
> In a nutshell, I recommend watching at least the first couple of videos
> here:
> https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfy=
j
>
> Greetz
> >
> >
> > On Thu, Nov 28, 2019 at 12:29 PM Aj Cit <aj.ci.01.239@gmail.com> wrote:
> >
> > > Hello,
> > >
> > > I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s)=
. I
> > > am getting some error when I execute the bitmake command.
> > >
> > > I'd appreciate if you could guide me with next steps. Any Guide or ur=
l
> > > will be helpful.
> > >
> > > Thanks
> > > Ajith
> > >
>
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> >
> > View/Reply Online (#47444): https://lists.yoctoproject.org/g/yocto/mess=
age/47444
> > Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3618269
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [holzmayr@rs=
i-elektrotechnik.de]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
> --
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Josef Holzmayr
> Software Developer Embedded Systems
>
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 17039=
3
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47447): https://lists.yoctoproject.org/g/yocto/messag=
e/47447
> Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3618354
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [laurent.gauth=
ier@soccasys.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
