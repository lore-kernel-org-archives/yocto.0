Return-Path: <stefan@seefeld.name>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662C2CD4F25
	for <webhook@archiver.kernel.org>; Sun, 17 May 2026 07:17:18 +0000 (UTC)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19686.1779002232222201392
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 May 2026 00:17:12 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 74.125.224.50, mailfrom: stefan.seefeld@gmail.com)
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-65c21049dafso1251085d50.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 May 2026 00:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779002231; cv=none;
        d=google.com; s=arc-20240605;
        b=JfJ6giGrFEt9uocbqKE23tcXOTMFq2A6vTkDdCTO7SyY/zSZnns/O4gEDxNS6QjdnT
         JYXPd8HpymgColwcyK3GKR9nthUKMpE6SdRbmOCyxXiZNJkulCsXy+bNtHAEBO88jAXB
         4VF1uBURJ4jLughOPg0bQFeFFo/Bnv47Hkcs/5p9SsMpDMl0nWI8gzt7pWO9JlvH9vMj
         Y46L+rk+FGcEMJE0LhExrKpLRC4wa6gTXtpbTxeBSCJ9tfmuSvWRhmmsBDPf9RkfzWY8
         ZVZpNifwetk/tAlwAhrPXKuDjYh80GJSw0OGOW03iguJNgYG33mReoOxHE7iPJTeKm+q
         Z43Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OD9lPO/jmCLXHzXwLUuZP5/acv7PthyocYK6vMpotJk=;
        fh=NdWcSNPucPXTjQN9JIzCnX+okVlpeNAZkmWksBMNMwY=;
        b=XOmOkQCypIoV4Urch5EkqDEyDCc66XX9uxnDAN4IUoAcFHVJFpFl1JDZvrKasgiiZr
         u7Gknpim9k+Ezp7nK2YMCckDrFEDiWJ/VhiYhHtqgBbC6fdWx7LVc+mZPaBdhLu8yoGY
         gNmLL8BJkwfxI3bfUozp8Gc5nMpVpu+whAXR21aaBls20oabnKCxLraDcz2pcWxgz9B4
         ThxAVYBuzrdrup0+5VXmYif2d0F7F2aamjnK7DJZmzmQXEYlAEx8nr74IfE9NwN2WfGa
         vdgnS6zbpy8S2ugRXygzfkX1+ycc60c/bKuDXdh5lHNRuOtMVTkETmyx91bHH3ZQMHTO
         9YlQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779002231; x=1779607031;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD9lPO/jmCLXHzXwLUuZP5/acv7PthyocYK6vMpotJk=;
        b=oeQSSXf/iVsUfrgJ7z7HDj8/pla34E8WHgHR3HuakwADQjuSjLa0GOs5cdOKpRP3pB
         ehhutkZlBhBZzal3bF/9krZJRwz2YiEzBOiSoECuKGFVoJfpWcUJVVMtEY+Td+/+24N3
         HVEGemHIst7xFZgKl6xvqST74tzSBUQ+OLTItk4/POVbKos5we1+EpmEvTgfcwI3qnY0
         JQQXmZ1iWTP0MLIFo/RkHa+AbUOF2Ujv2gVYkbM3l9wA/XlDLGD3Z56LcCzGq5FMifk/
         /mLcgu4HNU1uHZFU32MjejsgZrVnPLW2jmD2a9TKB/St/yFsuToOAAt3Yl0VQK1t13TW
         c+8Q==
X-Gm-Message-State: AOJu0Yz9kiSfg59PTcCXY+TPsSzeDAXyGGSkwm5u40jvez9Inqf3AjSP
	lpCXQDQChGvv7isk/KN6DOhzk6TQkdAxCERRMynTufLzUJNr5rRbhqawmNeJt/4kMTGXiH4koiv
	2l1G2tgnfRwlXLNb6HIqzCWg/424Vaq//VEQb
X-Gm-Gg: Acq92OEYRK/gv0O7IGMW63PvN2D4GYBlcrdiIS68lmHn/eJ6i6NzV5JH/GK+iRjlrvy
	YCzAntwO6kpMyUJPJK/hdxbPfOKKoKu+Vvppb553d7wQ0VmY3ivJ4GDtGlqWQopVVWiz1LkEVAN
	ETILQWXTHJxUWzgK/B7abT/17EI3/NJO5CanAW0YgypVDZl2Y8eV9w03TEf+WNBUSKmkPMRiEEY
	yViK2zWdzCQ/z4Cjf1+TurUCdttfWHY1OIv0D7QaEKpHlyXSIGeA/xcsw8aXPU5ctMrFMP8gP9S
	tbU+h1kSdQZGwcVbiQOsCgMo/9C954AcEeWZ2G7bSFSodiSd+PxgHS+DlVpE6hUEhGo=
X-Received: by 2002:a53:d017:0:b0:65d:8123:25e5 with SMTP id
 956f58d0204a3-65e2264f61dmr9113361d50.7.1779002231183; Sun, 17 May 2026
 00:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAOEGfx1pmVB-gP8t9bUiMiq1a3awZbyec6drze6YoNoPzS2tLg@mail.gmail.com>
 <CAEt6Nwqvc1y_3Lu3-J1pZV5NDaYf30-_eNaPjpBG3XfOHCM1bA@mail.gmail.com>
In-Reply-To: <CAEt6Nwqvc1y_3Lu3-J1pZV5NDaYf30-_eNaPjpBG3XfOHCM1bA@mail.gmail.com>
From: Stefan Seefeld <stefan@seefeld.name>
Date: Sun, 17 May 2026 03:16:59 -0400
X-Gm-Features: AVHnY4Id5yyQiF8e-aLjEdClY_5M62YaPOf4HlVyuC5_b4RAIhX3MkVgdQmM7oE
Message-ID: <CAOEGfx3Dv3vJXVVLGHaA2VQTJp1UR8W8_Vyo_dFjOq++1kzkaw@mail.gmail.com>
Subject: Re: [yocto] yocto git server issues ?
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000b5db70651fe3cc1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 May 2026 07:17:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66571

--0000000000000b5db70651fe3cc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Josef,

that appears to be working fine.

On Sun, May 17, 2026 at 3:02=E2=80=AFAM Josef Holzmayr <jester@theyoctojest=
er.info>
wrote:

> Hi Stefan
>
> please use the https://git.yoctoproject.org endpoints. Bot/crawler
> attacks forced us to move behind a CDN, and that doesn't support the git:=
//
> protocol. Switching to https:// should get you going immediately, let us
> know if not.
>
> Greetz,
> Josef
>

--=20

      ...ich hab' noch einen Koffer in Berlin...

--0000000000000b5db70651fe3cc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks Josef,</div><div><br></div><d=
iv>that appears to be working fine.</div></div><br><div class=3D"gmail_quot=
e gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May =
17, 2026 at 3:02=E2=80=AFAM Josef Holzmayr &lt;<a href=3D"mailto:jester@the=
yoctojester.info">jester@theyoctojester.info</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Stefan<div>=
<br></div><div>please use the <a href=3D"https://git.yoctoproject.org" targ=
et=3D"_blank">https://git.yoctoproject.org</a> endpoints. Bot/crawler attac=
ks forced us to move behind a CDN, and that doesn&#39;t support the git:// =
protocol. Switching to https:// should get you going immediately, let us kn=
ow if not.</div><div><br></div><div>Greetz,</div><div>Josef</div></div></bl=
ockquote></div><br><span class=3D"gmail_signature_prefix">-- </span><br><di=
v dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><img src=3D"h=
ttps://ci3.googleusercontent.com/mail-sig/AIorK4yh4RzsqlxV6irScDGRVZ8a7NRCh=
_INtpPsAHx2Y8v4Vu3VKsI54RFNs3YRZk_2xTTtMMdSCzdNrf5XRUlmF4BkezmtZv-j5c3A4G0h=
EA"></div><div><pre>      ...ich hab&#39; noch einen Koffer in Berlin...
</pre></div></div></div></div>

--0000000000000b5db70651fe3cc1--

