Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E14EE8FDCC
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 06:27:57 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.12594.1696400872069443393
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 23:27:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ZxtwClY6;
 spf=pass (domain: smile.fr, ip: 209.85.218.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so288279366b.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 23:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696400870; x=1697005670; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lDm3I87iMdPGdcau9Ii7RWS+9qa0pHYCQR2CL7UrPeQ=;
        b=ZxtwClY6KtXl5ta0Y4/2B7AZPIadvsLjI9JRDzqnRrZbc4faI/mmWN3otvIETCiHUY
         JeesgjGoYg9D9FBM+vbvyJJxkMVAbsIdV3n8BGquHkx5H65s3S3GrDOQWCdLWBukpW7Y
         OVCkBhYiBXhk3oJFdgiU5KS2uWaC7BytqgbN0tDZI5rVtm3vzqv9/i8/uAanHtVgD/32
         B13q/JA8csr0RgQ1Iy9Dme1607MnYJ1e/UlK6PIBy2MUyOK3t/QQOTfU41Ak5JfHrka6
         R6oYhmm7ZUDxGxUV1s0E8r2QD9oWmoGfI7dyTl7BjyNd34Q7hLR14i+GRS5UByfPgBOJ
         CGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696400870; x=1697005670;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDm3I87iMdPGdcau9Ii7RWS+9qa0pHYCQR2CL7UrPeQ=;
        b=MX/FUeEkSKz7hX6RU8khhFdCJIE1uaweI9Q5ZDHXypy3lHPRzdAw0k7ytDZ9xxbqBN
         dACd/xzrv9IRn86/xCdrR/NvjnV3JVekh5x4uRjhfv0t/YIzYyMg2FTrNCQIVKFbB151
         wXsexU72LkF1z9X7VTlrduAdb98hQcWIX+H/onyCwTItOcb/3AVwLTY8yKJKIP+oAnRX
         t9VTNRzHtj+Ra5jfXGExNcfgtvlkoeDlrGyOLbxkAN/97MjEiDnUDgR1CoD65L+vwOUq
         nDYAbe2j4uo+bOsBPYD93s91RgK6CAC2DLJI81Clc2mGNWqCDxsx+VSppGpss16tQHHZ
         OfMQ==
X-Gm-Message-State: AOJu0YwLvXZB3tHyryiPlGpn29IzOyltcxGW/wlGBzhFQMCuNLCHcMoS
	N2NRhnRrQ8uGEUNGLP22JJ3KBPJ3+t0+UCF5snhYzw==
X-Google-Smtp-Source: AGHT+IGr1tZhtX8pRFGKnubGAzpg6xuqJmdA0OEy8oV8RheeKYyYOjvxbUj2dEIpA6nLPXbElXo7GMzUUhRiruv5YNs=
X-Received: by 2002:a17:906:3ca1:b0:9b6:5b56:bbe3 with SMTP id
 b1-20020a1709063ca100b009b65b56bbe3mr955091ejh.72.1696400870443; Tue, 03 Oct
 2023 23:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2rWzVXjDJD5qRuTzjLOCGcwzxfsDOwEP-7OocBPbKgCQ@mail.gmail.com>
In-Reply-To: <CAEFUPH2rWzVXjDJD5qRuTzjLOCGcwzxfsDOwEP-7OocBPbKgCQ@mail.gmail.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Wed, 4 Oct 2023 08:27:37 +0200
Message-ID: <CAMSfU+6OTCCZOv+VfnPOzTFdCoYYpX0UPL-QX_J9Zw5fT3O3rQ@mail.gmail.com>
Subject: Re: [yocto] devtool build error
To: SIMON BABY <simonkbaby@gmail.com>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000047a1560606de1ba6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 06:27:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61227

--00000000000047a1560606de1ba6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Le mer. 4 oct. 2023 =C3=A0 00:31, SIMON BABY <simonkbaby@gmail.com> a =C3=
=A9crit :

> Hello Team,
>
>
> Can someone help to fix the error I see when using devtool build or
> devtool update-recipe.
>
>
> *Exception: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floating
> tag/branch '5.15/linux' for repo 'github.com/intel/linux-intel-lts.git
> <http://github.com/intel/linux-intel-lts.git>' without a fixed SRCREV yet
> doesn't call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).*
>
This looks like a recently opened bug (and a thread) :
Bug 14918 - Devtool fails if SRCREV is set to ${AUTOREV}
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14918

Thread :
https://lists.openembedded.org/g/bitbake-devel/message/13976?p=3D%2C%2C%2C2=
0%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2CAUTOREV%2C20%2C2%2C0%2C9367=
4384

Sorry, there is no fix yet but maybe you can contribute information/context
for the bug?

Regards,

--=20
Yoann Congal
Smile ECS

>

--00000000000047a1560606de1ba6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hello,<br><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Le mer. 4 oct. 2023 =C3=A0 00:31, SIMON BABY &lt=
;<a href=3D"mailto:simonkbaby@gmail.com">simonkbaby@gmail.com</a>&gt; a =C3=
=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><p =
class=3D"MsoNormal">Hello Team,</p><p class=3D"MsoNormal"><br></p><p class=
=3D"MsoNormal">Can someone help to fix the error I see when using devtool b=
uild=C2=A0or devtool update-recipe.=C2=A0</p><p class=3D"MsoNormal"><br></p=
><p class=3D"MsoNormal"><b><font color=3D"#ff9900">Exception: bb.fetch2.Fet=
chError: Fetcher failure: Recipe uses a floating tag/branch &#39;5.15/linux=
&#39; for repo &#39;<a href=3D"http://github.com/intel/linux-intel-lts.git"=
 target=3D"_blank" rel=3D"noreferrer">github.com/intel/linux-intel-lts.git<=
/a>&#39; without a fixed SRCREV yet doesn&#39;t call bb.fetch2.get_srcrev()=
 (use SRCPV in PV for OE).</font></b></p></div></blockquote></div></div><di=
v dir=3D"auto">This looks like a recently opened bug (and a thread) :</div>=
<div dir=3D"auto">Bug 14918 - Devtool fails if SRCREV is set to ${AUTOREV}=
=C2=A0</div><div dir=3D"auto"><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D14918">https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D14918</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thread : <a=
 href=3D"https://lists.openembedded.org/g/bitbake-devel/message/13976?p=3D%=
2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2CAUTOREV%2C20%2C2%2=
C0%2C93674384">https://lists.openembedded.org/g/bitbake-devel/message/13976=
?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2CAUTOREV%2C20=
%2C2%2C0%2C93674384</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Sorry, there is no fix yet but maybe you can contribute information/context=
 for the bug?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">--=C2=A0</div><div dir=3D=
"auto">Yoann Congal</div><div dir=3D"auto">Smile ECS</div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--00000000000047a1560606de1ba6--

