Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95130CD4851
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 13:12:08 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.75005.1778591527278643700
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 06:12:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@slashdevslashnull-org.20251104.gappssmtp.com header.s=20251104 header.b=tdyq8lJL;
 spf=softfail (domain: slashdevslashnull.org, ip: 209.85.218.50, mailfrom: jdowd@slashdevslashnull.org)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b9382e59c0eso873779666b.0
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 06:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778591525; cv=none;
        d=google.com; s=arc-20240605;
        b=RLZa5pJZsn83MkcurniTt2OOgeLBtaNDbFsPGXWWU6b3gPr3UVAdmn+dCJw7Q5OpmH
         5ELJOlCVb/ckK+ah8XZdIyoP51S+GWYUvSGeLgKqkaSO7WGHJSpOlpQYKpj2siac8ufE
         FeZhUzeWh7FWTY0r1iwxouqLFF4d/3MAOgzLtpUjLH2voFxjlAtrZJU3iF2n23639l2D
         GqJMjnkJWnB93oU+eHFWnOtdielYXiOXgTr442NHxscf5gh6GriBFjt6hA6BAVeeC2sl
         /V9tC9nKT2FBqqZXKY09DBxuTBUccYGM18JnCwUCQffh4xE1hdppFYj8HCtzqbfC7FXe
         6CeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=6oVkOQmdaMnrmHyTIjLVJMyxLkAnyKzbymNRY/04xlc=;
        fh=47Ya/Xze+6FP+/haK9AtB/ZyHeT21yp+asCsGybZAFw=;
        b=aMtCSB39Lf2ukzloTo8kHMp+ne781/VLEfGn25sEV1bFXy77A1+zhoD/hCMfvmEM4M
         1RJMQc/w1GTINo9Jgm8LH8fNooKtQR2VowoDUbBRETEFddvlRmTwK5BcwKnEuRDuwHIR
         whlkIqVJTa3uaJI1fEbhICO89WsRdXxSJTqHZObtcUQRBarfzjaKww2rBabLJDtcqtmg
         7I5QG9QzYQFtNJjF14QehZEjY9pdjwrx2nl/dj+i6MD3I2nmftn2hqa62A9sflVAD0Eu
         9Tn6mneFgOmK7jbnkOSUV8J5WAhGoz7ZXPCZ8DGVgZCKxLr4JOTmphGtsBbNcAld6rk8
         UpPQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=slashdevslashnull-org.20251104.gappssmtp.com; s=20251104; t=1778591525; x=1779196325; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6oVkOQmdaMnrmHyTIjLVJMyxLkAnyKzbymNRY/04xlc=;
        b=tdyq8lJLcHUsp1zsqYlRF77e3idriQI192FD5rucOzdqndMIBGKAaVrvmDA4cMhD+L
         8GXJttG1/Cv9yoOPUlZWaC74Vq4sxqsftxB6JuYIpCqFQces3vy+ku+Xxatmjx2b9pEn
         njloP6x8+w5t0TXyAgXPoBdznqmOKSPusLzfJzIMBVOwf6ZxP47jqfsYWrVcfHaEliDg
         8aZyoDqIBf47Kgs2MjGH5J1Kvh7j5vTKQ0HYnsoEU4jIcUosOusoI9CWDG59p2qIP4t8
         +9BSa31kDYwoxRjSqgj4LuZOmXTOGXsdDTN77YomDWpmQyu8zP3V/ldJF5xRgq8NJO32
         d4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778591525; x=1779196325;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6oVkOQmdaMnrmHyTIjLVJMyxLkAnyKzbymNRY/04xlc=;
        b=Tv0g5fcF6Sofwot98dUL5pjTevYcdf14r5t1nDbWyLNhDT2Tae1HbRioVeuEjp7uUY
         5ti/V2doxEkfsGQnzIi8MC308+ktTzLza7MzlaGyjP2oqSK/XJNb/vd9ONloGrLN6Snz
         fMuIU9Bec9liVGw2w3avPEKsjwt9KT0ROGMx4qmg0dd77/9mp0hi2Kj35dwv8pYA8mFS
         SEvY2d0rHTf3AoIZXHQhMSaGcCH1X3Mx3VHkOyfQmwUR1RgaqSvo+3EvG1DdOrGead8U
         ths3AMVh0gPVkYhPCLpvoYq6uhEa2Sl3OtfvkZBP8xzKtL/813T4jtZ6E8R1jSZ/YUqj
         c3ZA==
X-Gm-Message-State: AOJu0YzgXq5jrVuQcL5Ce4O9hjUXlmVusxfa7krEyAilnslwFcZ37dBq
	9bF0/jw8wehNwfzSqCjGmVF56QNZQ2rhqzbxX0JQJ3Jvmxxk/hQ4E6xebqnjYc03ykcIJptH99I
	g88ddjYXD6Dm4oO7+DV0O8kWyWc8L2gjlcBKiJlEl7ihNL2DRhJTP
X-Gm-Gg: Acq92OFvYbz7Or0aJ/3ZelDvVO8BiUZSrWK1UV1JkKaWaKS0OBHs+iX3OeQ8xryN9Oj
	6bnWpsxj8vPjfWn1rWL3x3F+BZT77GB/XL0i02HlE5u0h+Ccdodg7Bli4mDJhQ9Mzl6vcsjJfIJ
	uTNrMzVUDukgZ7PT/Vaz3lYGrP05kXs6z5qxcdvoJIZ4WBlI4PYY4S92+HPfIfsryZeQ1a8r3dg
	7XdYWMBKZhwDf2cXnxOlZe6T89UlsQXs/MmU3+uaSp4+q4kYWFaF9Ecx5Gk+KWkyfWAQqZMy+LM
	LK5k5ejx
X-Received: by 2002:a17:907:980c:b0:ba7:d65f:3b59 with SMTP id
 a640c23a62f3a-bd28ddfdcd5mr202742466b.6.1778591524883; Tue, 12 May 2026
 06:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <001001dce188$4a8cde20$dfa69a60$@synergy.org> <c087189f913cfd64e1d835c4f96815a42c51eab2.camel@linuxfoundation.org>
In-Reply-To: <c087189f913cfd64e1d835c4f96815a42c51eab2.camel@linuxfoundation.org>
From: John Dowd <jdowd@slashdevslashnull.org>
Date: Tue, 12 May 2026 09:11:53 -0400
X-Gm-Features: AVHnY4LMJTT9WWD3O9awFr2a3XQag_1d3gBYmdPTfxyYJsrC_RATGkAHvu87slc
Message-ID: <CAHPfuSkiXX8qWuanH+sBOxXdPiDPM4-PLyf=JJ0tsUCUy95ixA@mail.gmail.com>
Subject: Re: [yocto] Looking for Yocto-supported Reference Design
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Content-Type: multipart/alternative; boundary="0000000000000ad78a06519e9c5d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 13:12:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66535

--0000000000000ad78a06519e9c5d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

David,

I've started on exactly the same kind of project for my own purposes. I've
been using a Raspberry Pi 0 2W for my development. I needed the wifi and BT
connectivity so I started with it. Please feel free to get in touch if you
have any questions.

Cheers!!

On Tue, May 12, 2026 at 8:13=E2=80=AFAM Richard Purdie via lists.yoctoproje=
ct.org
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:

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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66534):
> https://lists.yoctoproject.org/g/yocto/message/66534
> Mute This Topic: https://lists.yoctoproject.org/mt/119264506/9366835
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jdowd@slashdevslashnull.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
"To err is human, to forgive is not company policy."

John Dowd
Contract - Software Developer
Cell: (613)316-7884

--0000000000000ad78a06519e9c5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">David,<div><br></div><div>I&#39;ve started on exactly the =
same kind of project for my own purposes. I&#39;ve been using a Raspberry P=
i 0 2W for my development. I needed the wifi and BT connectivity so I start=
ed with it.=C2=A0Please feel free to get in touch if you have any questions=
.</div><div><br></div><div>Cheers!!</div></div><br><div class=3D"gmail_quot=
e gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May =
12, 2026 at 8:13=E2=80=AFAM Richard Purdie via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;richard.purdie=3D<a href=3D"ma=
ilto:linuxfoundation.org@lists.yoctoproject.org">linuxfoundation.org@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi David,<br>
<br>
On Mon, 2026-05-11 at 13:53 -0700, dave via <a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0My name is David Richards and I am blind. I =
am new to Yocto. I would<br>
&gt; like to build a portable talking e-book reader. The goal is to support=
<br>
&gt; DAISY, Audible, Kindle, and epub books. In addition, I would like to b=
e able<br>
&gt; to stream MP3 content. To that end, I am looking for a reference desig=
n to<br>
&gt; base the project on. It does not require/use a display or touchpad. Th=
e user<br>
&gt; interface will utilize buttons and speech output. The design should ha=
ve<br>
&gt; existing Yocto support, if possible.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Does anyone have any pointers for a referenc=
e design I could start<br>
&gt; with?<br>
<br>
There are many boards with OE/Yocto Project support. You can=C2=A0get an<br=
>
idea of them all from the layer index&#39;s list of machines which is<br>
showing 22 pages of them! <br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/machine=
s/?q=3D&amp;browse=3D1" rel=3D"noreferrer" target=3D"_blank">https://layers=
.openembedded.org/layerindex/branch/master/machines/?q=3D&amp;browse=3D1</a=
><br>
<br>
Some have better support than others, we&#39;ve had the Beagle devices like=
<br>
the BeaglePlay and earlier devices like the BeagleBone and BeagleBoard<br>
supported as one of our test platforms for a long time.=C2=A0That has basic=
<br>
support in meta-yocto with beaglebone-yocto and a full BSP from TI as<br>
well. There are others like the various RaspberryPis and may more,<br>
including more experimental ones with RISC-V processors.<br>
<br>
It sounds like the audio output might be important to you and however<br>
you plan to interface the buttons to the system so that may be<br>
something to factor in. You might need USB? That might narrow down your<br>
choice. I&#39;d probably try and find a board which holds interest to you<b=
r>
as well.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66534): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66534" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66534</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119264506/936=
6835" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/119264506/9366835</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jdowd@slashdevslashnull.org" target=3D"_blank">j=
dowd@slashdevslashnull.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr">&quot;To err is human, to forgive is not company=
 policy.&quot;<div><br></div><div>John Dowd</div><div>Contract - Software D=
eveloper</div><div>Cell: (613)316-7884</div></div></div>

--0000000000000ad78a06519e9c5d--

