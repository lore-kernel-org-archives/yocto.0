Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB81CD4851
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 15:17:13 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.77982.1778599025241169605
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 08:17:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@slashdevslashnull-org.20251104.gappssmtp.com header.s=20251104 header.b=Q1Aw1/Y5;
 spf=softfail (domain: slashdevslashnull.org, ip: 209.85.208.42, mailfrom: jdowd@slashdevslashnull.org)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-67b32c695efso10685546a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 08:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778599023; cv=none;
        d=google.com; s=arc-20240605;
        b=AFNYux6ty6A0fOkXU3nENejuVOGtBuxtiEc6hONOQ6+0ERcy2dO07/E8LiQcjX1Zqq
         e2/DPRIyxE+yuf8o86hk1RDyHiJN3CPTm6AFEDW35GtVL+iYY7O3wfFKZXbl6Qw2QEQv
         q5oxE/cXzhDPRPx/xL2gbBbF3Vx6jz8P2vOS6BjahX4GEX3AtqBhoDyJH/umOyHqyntH
         Kw0PPM7CYZJ6D/v5z1c7ofZdSkFsFTA5udcIge9GG+EOw3c1/BvLq23jJ3sOOCNuBFpU
         k7gbaV2ce2cgAvzq8WaqSpWTPra4PElRQw9GIKD7nNlq4dOYczFo4OjbgZWPuS0EWI62
         cyXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g5DCA8TC+C4UgVNfzS8Mnf+ueKeGCiqxRY/ilfnnaJQ=;
        fh=abqSRSZKw5B01H7XtmEITy2C8cvnDBlnNje9Q6+jEp8=;
        b=ZIwfxgCYAvJ4D5p5gQzY/n+0lN6hdh4L8uSKn+07+obwiANYbMd1aF+TMBDCyiK/Eg
         8dlA3GW2//4mk9bUUQOznwBUSuwSftsrcniAJbTDdzmwbqKVSCBP1alAJ4TLl1LEy2+j
         VbMi/6YieTxsNGk6MP8JJPYLigq6ghlpTp52SGD+UgwvlWfjWphFRn6WxUYOM8xw6B7y
         wCqYHhNhenv8+hW5ms/lWKiGkXXZgWxcQYe9p5+/T0L4blEud1Bt0d2jns1c8cnMphwZ
         35cgtV9L4IF1FVT0rw15gkHm3mF4Gx2dxO7qyZg3ReSQMjuuaM8Pn4fv/x+MMW9aHgTC
         b8Cg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=slashdevslashnull-org.20251104.gappssmtp.com; s=20251104; t=1778599023; x=1779203823; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g5DCA8TC+C4UgVNfzS8Mnf+ueKeGCiqxRY/ilfnnaJQ=;
        b=Q1Aw1/Y5lsJrYToBP0A+hWXoHqIWBPCaie7pQkT2d9ifSYEyVDuMGH5ZKKUI4e+CsU
         aTPoXWOcJXTpTc8fLrRlq9Wne1RBMVQYnQUfrbzT73jvb/+s7K7gs4dLqLrJwIuQROMl
         iFocc33C1qHin2WPVlQa51QjtoK0bV/Ne7SySTYoMb5boBk+SOX7XRxqt+68Tm7nUbjh
         c6gAU8RFoky1SZGPc+gH1MIna6U5BVTWu1FMlCbP+P3wHlhLErKIiTc/tzU8x3yLki5y
         w3aVWcKqA/tzOQz5ayUDGKc1qqUKjme8tNfNwI7oBGN9yA9qpittTcWkikJ0PpMOCWEM
         8blw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778599023; x=1779203823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g5DCA8TC+C4UgVNfzS8Mnf+ueKeGCiqxRY/ilfnnaJQ=;
        b=Dlshy6Hy37i9+USZC3fUitBT8gj7Mzt1MFP6GkeTH0zypIn4SukxqRhJqwKl7VS62S
         J4xvCrMj6M0JekpZb99Ij2UpAFU0dTj5IAwZY33X++vH6UM8kbvAQxc3Yg1atfprmqkI
         zngWf1xSadECtrEwCUJN9XdtYGtvTCyOA9oGCCqWRxE8xUt+n6aC6D5EuBiTliTzvD5E
         3mVPTd1QdhrdXKpi+wXvH/cvDwPmzj6P49m/6fJVF03oGMVJlbHfOpTKTdsZF7Q1eaD5
         2cFCupSvdHvsVyZPSP3OGge8PH0P7v+nYNCpD+dqivud56S7IS8+LWau7bYudLnNICcd
         u5oA==
X-Gm-Message-State: AOJu0YxuWXFUguqd3vmOVHoRIysCNnxrJxdc/iXbsR+5ONd0GsfAjZ4r
	isFUotQSnd8RgBhlWVdVPeTA8yM2IGR14gQUNK7YTQqFr0VPAPqSl88m9hXLtPXZjDcB0MpJ3vT
	5BvcMeBSm9P4EratCxpY4B/u2nmte2m7whSTzuJQZ9Q==
X-Gm-Gg: Acq92OEd4n4LNu0dHo0xlXvEc3HUcU3JYN1l6IxlbQ/rL7uimbL68VLmWo7mf9h/kHy
	ljM192su6tl1Zuae9heAz1nPcIua80rjHxr24h/58i1k513nuRydUto1j5JwtqwrdNoDxZePIPU
	tNG4W4iMkN0/7bJthHE3x+YFfaPpD7dN3DY6snJpzAT9egaLkfGwzOuM1+fdYH9+7TARc1rGjRm
	rV4JzZHvsG+oT0qFyCqBD+ILoMd9aanUnCj43Ce5vdq5dEm3KBQ7/lQ64oeXWCw21LH5zzwsTpC
	Z1jPx9dic+KRk29jfQo=
X-Received: by 2002:aa7:d78a:0:b0:67d:bc9c:4e93 with SMTP id
 4fb4d7f45d1cf-680b2c0b1e1mr1714298a12.7.1778599023380; Tue, 12 May 2026
 08:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <001001dce188$4a8cde20$dfa69a60$@synergy.org> <c087189f913cfd64e1d835c4f96815a42c51eab2.camel@linuxfoundation.org>
 <CAHPfuSkiXX8qWuanH+sBOxXdPiDPM4-PLyf=JJ0tsUCUy95ixA@mail.gmail.com> <002501dce217$ad461a10$07d24e30$@synergy.org>
In-Reply-To: <002501dce217$ad461a10$07d24e30$@synergy.org>
From: John Dowd <jdowd@slashdevslashnull.org>
Date: Tue, 12 May 2026 11:16:51 -0400
X-Gm-Features: AVHnY4LUT8QslppxvlYILprs-Pl0eLJVBCbhaa1l3SogR532AhTeyMa670gxQy4
Message-ID: <CAHPfuSnxbLrYycHX6f48vMTQhvd7r=qQvgk1F+uLAzMkKkTZog@mail.gmail.com>
Subject: Re: [yocto] Looking for Yocto-supported Reference Design
To: dave@synergy.org
Cc: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000fca9b00651a05aa4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 15:17:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66540

--000000000000fca9b00651a05aa4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dave,

I couldn't get a Yocto (scarthgap) to work with the platform completely out
of the box. I had to create a series of my own patches and I still haven't
gotten the bluetooth to work. However I do have it booting, and all the
usual support services are working. The wifi works as well. I need the
bluetooth since I of course, need an audio output and I want to use a
bluetooth headset.

Again, stay in touch and I'm glad to share my work. I'm not looking to make
money here, just have a device that people can use and find helpful and
enjoy life as it should be. With Books!

Cheers!!

On Tue, May 12, 2026 at 10:00=E2=80=AFAM <dave@synergy.org> wrote:

> Raj, Richard, John,
>
>                Thank you for the excellent suggestions! John, It=E2=80=99=
s good to
> know that you are working on a similar project. I will run these ideas do=
wn.
>
>                David
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *John
> *Sent:* Tuesday, May 12, 2026 6:12 AM
> *To:* yocto@lists.yoctoproject.org; richard.purdie@linuxfoundation.org
> *Subject:* Re: [yocto] Looking for Yocto-supported Reference Design
>
>
>
> David,
>
>
>
> I've started on exactly the same kind of project for my own purposes. I'v=
e
> been using a Raspberry Pi 0 2W for my development. I needed the wifi and =
BT
> connectivity so I started with it. Please feel free to get in touch if yo=
u
> have any questions.
>
>
>
> Cheers!!
>
>
>
> On Tue, May 12, 2026 at 8:13=E2=80=AFAM Richard Purdie via lists.yoctopro=
ject.org
> <richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
>
> Hi David,
>
> On Mon, 2026-05-11 at 13:53 -0700, dave via lists.yoctoproject.org wrote:
> >       My name is David Richards and I am blind. I am new to Yocto. I
> would
> > like to build a portable talking e-book reader. The goal is to support
> > DAISY, Audible, Kindle, and epub books. In addition, I would like to be
> able
> > to stream MP3 content. To that end, I am looking for a reference design
> to
> > base the project on. It does not require/use a display or touchpad. The
> user
> > interface will utilize buttons and speech output. The design should hav=
e
> > existing Yocto support, if possible.
> >       Does anyone have any pointers for a reference design I could star=
t
> > with?
>
> There are many boards with OE/Yocto Project support. You can get an
> idea of them all from the layer index's list of machines which is
> showing 22 pages of them!
>
>
> https://layers.openembedded.org/layerindex/branch/master/machines/?q=3D&b=
rowse=3D1
>
> Some have better support than others, we've had the Beagle devices like
> the BeaglePlay and earlier devices like the BeagleBone and BeagleBoard
> supported as one of our test platforms for a long time. That has basic
> support in meta-yocto with beaglebone-yocto and a full BSP from TI as
> well. There are others like the various RaspberryPis and may more,
> including more experimental ones with RISC-V processors.
>
> It sounds like the audio output might be important to you and however
> you plan to interface the buttons to the system so that may be
> something to factor in. You might need USB? That might narrow down your
> choice. I'd probably try and find a board which holds interest to you
> as well.
>
> Cheers,
>
> Richard
>
>
>
>
>
>
>
>
> --
>
> "To err is human, to forgive is not company policy."
>
>
>
> John Dowd
>
> Contract - Software Developer
>
> Cell: (613)316-7884
>


--=20
"To err is human, to forgive is not company policy."

John Dowd
Contract - Software Developer
Cell: (613)316-7884

--000000000000fca9b00651a05aa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dave,<div><br></div><div>I couldn&#39;t get a Yocto (scart=
hgap) to work with the platform completely out of the box. I had to create =
a series of my own patches and I still haven&#39;t gotten the bluetooth to =
work. However I do have it booting, and all the usual support services are =
working. The wifi works as well. I need the bluetooth since I of course, ne=
ed an audio output and I want to use a bluetooth headset.</div><div><br></d=
iv><div>Again, stay in touch and I&#39;m glad to share my work. I&#39;m not=
 looking to make money here, just have a device that people can use and fin=
d helpful and enjoy life as it should be. With Books!</div><div><br></div><=
div>Cheers!!</div></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 12, 2026 at 10:00=E2=80=
=AFAM &lt;<a href=3D"mailto:dave@synergy.org">dave@synergy.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"msg6388240954964019269"><div lang=3D"EN-US" style=3D"overflow-wrap: break-=
word;"><div class=3D"m_6388240954964019269WordSection1"><p class=3D"MsoNorm=
al"><span style=3D"font-size:11pt">Raj, Richard, John,<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thank=
 you for the excellent suggestions! John, It=E2=80=99s good to know that yo=
u are working on a similar project. I will run these ideas down.<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 David<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"fon=
t-size:11pt"><u></u>=C2=A0<u></u></span></p><div style=3D"border-width:1pt =
medium medium;border-style:solid none none;border-color:rgb(225,225,225) cu=
rrentcolor currentcolor;padding:3pt 0in 0in"><p class=3D"MsoNormal"><b><spa=
n style=3D"font-size:11pt;font-family:Calibri,sans-serif">From:</span></b><=
span style=3D"font-size:11pt;font-family:Calibri,sans-serif"> <a href=3D"ma=
ilto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproje=
ct.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_b=
lank">yocto@lists.yoctoproject.org</a>&gt; <b>On Behalf Of </b>John<br><b>S=
ent:</b> Tuesday, May 12, 2026 6:12 AM<br><b>To:</b> <a href=3D"mailto:yoct=
o@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a=
>; <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">=
richard.purdie@linuxfoundation.org</a><br><b>Subject:</b> Re: [yocto] Looki=
ng for Yocto-supported Reference Design<u></u><u></u></span></p></div><p cl=
ass=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p class=3D"MsoNormal">David=
,<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></di=
v><div><p class=3D"MsoNormal">I&#39;ve started on exactly the same kind of =
project for my own purposes. I&#39;ve been using a Raspberry Pi 0 2W for my=
 development. I needed the wifi and BT connectivity so I started with it.=
=C2=A0Please feel free to get in touch if you have any questions.<u></u><u>=
</u></p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><di=
v><p class=3D"MsoNormal">Cheers!!<u></u><u></u></p></div></div><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p><div><div><p class=3D"MsoNormal">On Tue,=
 May 12, 2026 at 8:13<span style=3D"font-family:Arial,sans-serif">=E2=80=AF=
</span>AM Richard Purdie via <a href=3D"http://lists.yoctoproject.org" targ=
et=3D"_blank">lists.yoctoproject.org</a> &lt;richard.purdie=3D<a href=3D"ma=
ilto:linuxfoundation.org@lists.yoctoproject.org" target=3D"_blank">linuxfou=
ndation.org@lists.yoctoproject.org</a>&gt; wrote:<u></u><u></u></p></div><b=
lockquote style=3D"border-width:medium medium medium 1pt;border-style:none =
none none solid;border-color:currentcolor currentcolor currentcolor rgb(204=
,204,204);padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in"><p cl=
ass=3D"MsoNormal" style=3D"margin-bottom:12pt">Hi David,<br><br>On Mon, 202=
6-05-11 at 13:53 -0700, dave via <a href=3D"http://lists.yoctoproject.org" =
target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>&gt;=C2=A0 =C2=A0 =
=C2=A0 =C2=A0My name is David Richards and I am blind. I am new to Yocto. I=
 would<br>&gt; like to build a portable talking e-book reader. The goal is =
to support<br>&gt; DAISY, Audible, Kindle, and epub books. In addition, I w=
ould like to be able<br>&gt; to stream MP3 content. To that end, I am looki=
ng for a reference design to<br>&gt; base the project on. It does not requi=
re/use a display or touchpad. The user<br>&gt; interface will utilize butto=
ns and speech output. The design should have<br>&gt; existing Yocto support=
, if possible.<br>&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Does anyone have any point=
ers for a reference design I could start<br>&gt; with?<br><br>There are man=
y boards with OE/Yocto Project support. You can=C2=A0get an<br>idea of them=
 all from the layer index&#39;s list of machines which is<br>showing 22 pag=
es of them! <br><br><a href=3D"https://layers.openembedded.org/layerindex/b=
ranch/master/machines/?q=3D&amp;browse=3D1" target=3D"_blank">https://layer=
s.openembedded.org/layerindex/branch/master/machines/?q=3D&amp;browse=3D1</=
a><br><br>Some have better support than others, we&#39;ve had the Beagle de=
vices like<br>the BeaglePlay and earlier devices like the BeagleBone and Be=
agleBoard<br>supported as one of our test platforms for a long time.=C2=A0T=
hat has basic<br>support in meta-yocto with beaglebone-yocto and a full BSP=
 from TI as<br>well. There are others like the various RaspberryPis and may=
 more,<br>including more experimental ones with RISC-V processors.<br><br>I=
t sounds like the audio output might be important to you and however<br>you=
 plan to interface the buttons to the system so that may be<br>something to=
 factor in. You might need USB? That might narrow down your<br>choice. I&#3=
9;d probably try and find a board which holds interest to you<br>as well.<b=
r><br>Cheers,<br><br>Richard<br><br><br><br><br><br><u></u><u></u></p></blo=
ckquote></div><div><p class=3D"MsoNormal"><br clear=3D"all"><u></u><u></u><=
/p></div><div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><p class=
=3D"MsoNormal"><span class=3D"m_6388240954964019269gmailsignatureprefix">--=
 </span><u></u><u></u></p><div><div><p class=3D"MsoNormal">&quot;To err is =
human, to forgive is not company policy.&quot;<u></u><u></u></p><div><p cla=
ss=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal">=
John Dowd<u></u><u></u></p></div><div><p class=3D"MsoNormal">Contract - Sof=
tware Developer<u></u><u></u></p></div><div><p class=3D"MsoNormal">Cell: (6=
13)316-7884<u></u><u></u></p></div></div></div></div></div></div></blockquo=
te></div><div><br clear=3D"all"></div><div><br></div><span class=3D"gmail_s=
ignature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><=
div dir=3D"ltr">&quot;To err is human, to forgive is not company policy.&qu=
ot;<div><br></div><div>John Dowd</div><div>Contract - Software Developer</d=
iv><div>Cell: (613)316-7884</div></div></div>

--000000000000fca9b00651a05aa4--

