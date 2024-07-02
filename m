Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22356C30658
	for <webhook@archiver.kernel.org>; Tue,  2 Jul 2024 09:25:58 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.20483.1719912353676257329
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jul 2024 02:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CuFxH8Ol;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso46682301fa.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jul 2024 02:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719912352; x=1720517152; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vjof6fCEKAD9d8l88bRoOV/12HDitPGOL+xH0n5it6E=;
        b=CuFxH8Olx9puwX776L75xgSwehDnrbEuMdFxX72QlkI3CrEL314mWShzvef68M9K8P
         e3VBrZCbYQzYLLREEK/BsDO0ujJyBNiO3SBmJSzhBXY6NUTHoWVjt3KZ63edpiuxtuQZ
         geVTo4nkCsd8wXKfL1OLiK+ASM2my/L5hcXdeftmwcRWxT2VppCwSL4yNlrpO8RLQXe+
         ZOzVBmdZx3CLDmD2uWrcxZsW1smxsV7GYu1CTasTEEphLWI85lYfn7XkvVXRrgisSEwZ
         xRnLduO0f7UDbS5dVE1z/KIJ2rGbljcWt8j+orHWIP+SgEIVpMgSGjwk3WGfe+xQ4oJt
         RH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719912352; x=1720517152;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vjof6fCEKAD9d8l88bRoOV/12HDitPGOL+xH0n5it6E=;
        b=qjWzAe4brKg3+neduxoFQcAR/280ojJ+E6zD3tqOHyrr0noJuo22gIAtFFbM8hK9Cz
         qJbH5BZH1ENFQ2ANVEXBuN6VDg4AeyXSn3na7RBXmeCmtwEYXCoG1GzrI00Vfj6xaz56
         g4BXUcmTTsG9RDdGNDUhJWdDASdK74h+N9HOwpjZv3QwsfAWOAnOqHX+KUkob2ct2ZyV
         TI9aJ/Hj42lKXvOm0s9nhDqFUBJ3QxmuV/9yR7pD76YqOwt9H8l2pIHBZ3daQPwroXxq
         LWEoD1n+nWtp52qMANNVnGK8HigpM6s6fyNV0+76DJPHv4NP4HFIOrgTSeIN989loj3c
         FTAw==
X-Gm-Message-State: AOJu0YwdrjRTYfeQ3cn7nryfsq1XV75+S9fVlRf7k8WOglq90vHSBhZX
	/Nli1EuszNUR4HSIvP8WhQh2pKDoM4qrpm1LyWfm4QgXWiWO+s+SCNQRHTgOWU5Bpc5ZtLwpXF4
	3oqjvMAkOOrTBbEXW64r+kdg32hX3vw==
X-Google-Smtp-Source: AGHT+IESUmHfQhcERIdqoKBi1BMSShtdsOQ5FG5mIwfVJ6asYWv5hXEBh2kEvrx0tfuWp4kl7k4BGR8arUWWMIDJzcY=
X-Received: by 2002:a2e:b8c6:0:b0:2eb:d9b3:634b with SMTP id
 38308e7fff4ca-2ee5e6f6ba4mr75547321fa.46.1719912351420; Tue, 02 Jul 2024
 02:25:51 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8DyZkBO5TQ2=3+fBRD6NvAYxMBEKEY_D71MADBNhtT1A@mail.gmail.com>
 <28357.1719912018745470874@lists.yoctoproject.org>
In-Reply-To: <28357.1719912018745470874@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Jul 2024 11:25:39 +0200
Message-ID: <CANNYZj97iiBJ94zUvq_dAtM9oX8c9uH+pFWSV4kqJEo99=u3FQ@mail.gmail.com>
Subject: Re: [yocto] RSUGGEST with rpm
To: lukas.dibelka@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c05c18061c404cd3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jul 2024 09:25:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63428

--000000000000c05c18061c404cd3
Content-Type: text/plain; charset="UTF-8"

No problem, I think this kind of thing is better controlled with a
PACKAGECONFIG/DISTRO_FEATURE, rather than presence or absence of layers.
That way everything about the recipe is local to the recipe file and not
spread all over the place. And you can disable/enable it independently of
whether the layer is present.

Alex

On Tue, 2 Jul 2024 at 11:20, lukas.dibelka via Lists.Yoctoproject.Org
<lukas.dibelka=gmail.com@lists.yoctoproject.org> wrote:

> On Tue, Jul 2, 2024 at 11:01 AM, Alexander Kanavin wrote:
>
> ested, so how package managers handle it when they see it (assuming it is
> written into packages) is undetermined. RRECOMMENDS is the better supported
> option.
>
>
> Thanks Alex for the speed of light fast answer. I have already found
> solution leveraging BBFILES_DYNAMIC
>
>
>
> in the bbappend I am adding the needed depencency as RDEPENDS.
>
> With RRECOMMENDS we are failing on
>
>
>
> when CI builds our layer only (layer alone kind of build)
>
> Lukas
>

--000000000000c05c18061c404cd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>No problem, I think this kind of thing is better cont=
rolled with a PACKAGECONFIG/DISTRO_FEATURE, rather than presence or absence=
 of layers. That way everything about the recipe is local to the recipe fil=
e and not spread all over the place. And you can disable/enable it independ=
ently of whether the layer is present.<br></div><div><br></div><div>Alex<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 2 Jul 2024 at 11:20, lukas.dibelka via <a href=3D"http://Lis=
ts.Yoctoproject.Org">Lists.Yoctoproject.Org</a> &lt;lukas.dibelka=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Tue, Jul 2, 2024 at 11:01 AM, Alexander Kanavin wrote:<br>
<blockquote>
<div>ested, so how package managers handle it when they see it (assuming it=
 is written into packages) is undetermined. RRECOMMENDS is the better suppo=
rted option.</div>
<div>=C2=A0</div>
</blockquote>
<p>Thanks Alex for the speed of light fast answer. I have already found sol=
ution leveraging BBFILES_DYNAMIC<br><br><img><br><br>in the bbappend I am a=
dding the needed depencency as RDEPENDS.=C2=A0<br><br>With RRECOMMENDS we a=
re failing on</p>
<p><img><br><br>when CI builds our layer only (layer alone kind of build)<b=
r><br>Lukas</p>
</blockquote></div>

--000000000000c05c18061c404cd3--

