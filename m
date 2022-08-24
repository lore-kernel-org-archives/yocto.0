Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74990C32796
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 12:19:42 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.10154.1661343575365544282
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 05:19:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=Cek/rKQG;
 spf=pass (domain: lightyear.one, ip: 209.85.208.41,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ed1-f41.google.com with SMTP id w20so6037277edd.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 05:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=gXHG6Qf1uYgcQ0WbJW+4us0TOebKcAITqQ6eNkYYsfU=;
        b=Cek/rKQGMzOPhBhLNwOdUnS2OIvzsLXcJgMaH/5U0I+Zv3r/KZvgqsdi+r14O+Huo0
         mHuedxEjERP7PxNS44L9XJ9ylvuWtKfK0276zdiL9EdAlhM+LCET33xC0pGNJ/prEkc/
         wvHc1L4h9UUmt1m14yHbb/nQKpkv7q1Bz5/aodIvgATAAM67dvVbKxPGYbjqJ+4srNb9
         kAf1zEVPLHDqu7155g5CKcJ441GEzmHSqLxekM4i2pSKtU43E2AXA3AuMzOr84CyHpDI
         ZMUAH7vtAbj/r+b7Ru1H5g5ADcxJ7XI9ABDFTLhDMyF3ElGAZEVGYSg8BfqV3gCGZ3E3
         UfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=gXHG6Qf1uYgcQ0WbJW+4us0TOebKcAITqQ6eNkYYsfU=;
        b=z8AP7jgrUkFdOi/8GAlIXgDzQEHl7DIJiMAghjBrCzDytr4890owxrHQKU26nwvCpX
         hj6NVrxuicykKXRqloxc6eN5GTC+HS9f+Ot1SZ0DruC+MSWe84bRRfm+IliDerEpEXsO
         cbpYlfGq7JIrkybNmPNEkr0CaSO+IC50q4c6+5lK6D0ZIPc+Cm9fNhE5w0FRzlAH1N+G
         6ApqDDJriTpWJRcsl/QyIjzRVSHz4JQBhOzh23FHeYrccQEXOfQU60bKLcpnq82XQDvS
         xHMiFR81v3aOe0w6TNeRQ1mbQzoWDAYUMDQnIfYrVpx6d9aqfOFUxT0SCfOtOg6GBm8N
         KOHg==
X-Gm-Message-State: ACgBeo26n4vADx07/zpTz+al61JG/Wf6M4EWm398AvOE11TOfk2GAs2c
	Rle9XVM3bhybhhIJzalZbUhOLS+qbv38wMgYGZTVsbU9X7cDdOWWjfUm9+5HEC/CuFXLkWwx+i/
	yIk4fVx70nXsxXTy0NLa1F0I1t8qaamOurZctwR+Yfg==
X-Google-Smtp-Source: 
 AA6agR4A7VGrkIRMnbgwvybdMgmBoCf4sTPL4b/crZcGjf4t+gQitA7ELdTN+adD/c8mP1BlP+BRUXUFPOuxAA6OWRI=
X-Received: by 2002:aa7:cb92:0:b0:443:98d6:20da with SMTP id
 r18-20020aa7cb92000000b0044398d620damr7377570edt.399.1661343572647; Wed, 24
 Aug 2022 05:19:32 -0700 (PDT)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Wed, 24 Aug 2022 14:18:57 +0200
Message-ID: 
 <CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
Subject: Building for both target and host
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007f808b05e6fbb186"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 12:19:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57890

--0000000000007f808b05e6fbb186
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We have a recipe with a CMake project which works fine on target, but
ideally we would like to test functionality on our host systems first.
How can we also have it generate executables for the host system?

Do we need to make changes to the recipe, CMakeLists.txt, or both?
I read something about autotools, but it's completely new to me.

Any hints on what the easiest approach would be would be greatly
appreciated!

Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--0000000000007f808b05e6fbb186
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We have a recipe with a CMake proje=
ct which works fine on=C2=A0target, but ideally we would like to test funct=
ionality on our host systems first.</div><div>How can we also have it gener=
ate executables for the host system?</div><div><br></div><div>Do we need to=
 make changes to the recipe, CMakeLists.txt, or both?</div><div>I read some=
thing about autotools, but it&#39;s completely new to me.</div><div><br></d=
iv><div>Any hints on what the easiest approach would be would be greatly ap=
preciated!</div><div><div><br></div><div>Kind regards,<br clear=3D"all"><di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><br><div><span style=3D"color:rgb(29,29,27);font-fami=
ly:Helvetica,Arial,sans-serif;font-size:16px">Maik Vermeulen</span></div><b=
r><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-=
serif;font-size:13px">Embedded Software Engineer=E2=80=82=E2=80=94=E2=80=82=
<a href=3D"https://www.lightyear.one/" rel=3D"noopener noreferrer" style=3D=
"color:rgb(51,206,224)" target=3D"_blank">Lightyear</a></span></div><div><s=
pan style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;fon=
t-size:13px"><a href=3D"tel:+31616827379" rel=3D"noopener" style=3D"color:r=
gb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</a></span></div></div></d=
iv></div></div></div></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--0000000000007f808b05e6fbb186--

