Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A89DC4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 15:22:44 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.18642.1668698558519601827
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Nov 2022 07:22:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=D9A7mHsO;
 spf=pass (domain: lightyear.one, ip: 209.85.208.52, mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ed1-f52.google.com with SMTP id l11so3030566edb.4
        for <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 07:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=r3nK1jrvNgZZJhXTIhT65K/zkS02VJi+QSePdctQU5g=;
        b=D9A7mHsOIxRvydb7cy/0WNi/zBCDqoYeQjTk7k+wLh93aJGjCyIA33eeaCDqkUwbtc
         DvcDDEPlZBotR9P9Vz+P6XEjsXUY/nbI5D5s/OLh1dO+K0VaoDFl540MswmRmkXXSevE
         d2dI7THx654K7M7hu5YFkh3/gEE/uBR6hvZ3eKg6U3Xrv7vxNREVpesV76w/jlLhWvVj
         10XVq7Jbb0Gm6wqDoSsA9XXE0kSdCE9iUaYTFgBitn8SPzFhENPVUI4YOuSW804VgelR
         wAi3piEluJdnye2lT5nfw/zTSgT95Ckjta62hHiERuHVT7hdvSRGNEaQ0yHO5nWjzpPT
         5ooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r3nK1jrvNgZZJhXTIhT65K/zkS02VJi+QSePdctQU5g=;
        b=lWi1gu7gx0Xh35JZJou/VYdX97RYLPPHp8x4BCTbeZWFOtxxkfxs3BU08ASHz6ZYFI
         i39Boyj5ifKdqK0zuSWMOBl2JlFHvjkfJQWh+vNRrsP5cwtjm/YqDoRSQ5Rs8mHs4ilj
         iaMYKjB8+GwIjos9VdDMsrzy2ue6Wia5KFF6JMILw4PJYzgxkoq1k7l+J91CHaQUxps+
         +2demp5ZuiSLJo280crZ2nO1tVje1EkzTDFht9jnp5I6V/hGuhs+AadylKh+tk0Er66/
         9sH/USC8eEVaqal6LjROpWKKNKZRpqewf+6eeOUAoXnSvNflwZsm7yxsZJ7fRf68HbMi
         6mtw==
X-Gm-Message-State: ANoB5pkC7tu6ZLOGDa/wtpOhnBUeMcvqxAr5Uu99bwryggsgJDw4pgjD
	cIfIqNdF8oS4AyylMAnuI9qGDyQRK8Sl8Q87Fkrc+qgK5ZLZFYgiNNIWTXaUAtUtkQtTURQ3mVa
	4hG9laEng76KBMUhn+Hoon6nQ03CmBZRsIjYJS/FB2g==
X-Google-Smtp-Source: AA0mqf4BUhWtbmIfGNjkZQPe1acBmcD8ivbTrmTTB8khN7+Qnp5oACvxzT5SWu2i1adYk9kq22zjFPVZtZe/Q/gyZbw=
X-Received: by 2002:a05:6402:170d:b0:467:69a4:afe1 with SMTP id
 y13-20020a056402170d00b0046769a4afe1mr2664907edu.332.1668698556267; Thu, 17
 Nov 2022 07:22:36 -0800 (PST)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Thu, 17 Nov 2022 16:22:01 +0100
Message-ID: <CAKO9uzrV9XpnQnQ4irHwfr9OQehjJ=dXndVo8cijyGLy3_yViw@mail.gmail.com>
Subject: Image dependent variables/files in included recipes
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000af56ce05edac287d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 15:22:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58586

--000000000000af56ce05edac287d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Depending on the image that's being built, e.g. development vs. production,
we would like to be able to include different user passwords and firewall
settings.

We know this can be achieved by just having two different recipes that do
the same thing, but with different variables or included files. However, we
were wondering if there is a neater way?

We saw this post:
https://www.yoctoproject.org/pipermail/yocto/2018-June/041378.html
which seems to do what we want, because one recipe can install
recipe-development, and the other can install recipe-production, while the
recipe itself can then implement what needs to happen for either.
However, other recipes included in the images can also depend on recipe,
and they shouldn't depend on one specifically. They should accept that
either recipe-development or recipe-production is included. Currently we
see that both the generic recipe and the specific recipe used by the image
are built and overwrite each other.

What would be a neat way to achieve two variants of a recipe, and having
different contents and settings in them?
Or, can we solve that other included recipes depend on one of the variants,
instead of on the generic one.

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

--000000000000af56ce05edac287d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Depending on the image that&#39;s b=
eing built, e.g. development vs. production, we would like to be able to in=
clude different user passwords=C2=A0and firewall settings.</div><div><br></=
div><div>We know this can be achieved=C2=A0by just having two different rec=
ipes that do the same=C2=A0thing, but with different variables or included =
files. However, we were wondering if there is a neater way?</div><div><br><=
/div><div>We saw this post:</div><div><a href=3D"https://www.yoctoproject.o=
rg/pipermail/yocto/2018-June/041378.html">https://www.yoctoproject.org/pipe=
rmail/yocto/2018-June/041378.html</a></div><div>which seems to do what we w=
ant, because one recipe can install recipe-development, and the other can i=
nstall recipe-production, while the recipe itself can then implement what n=
eeds to happen for either.</div><div>However, other recipes included in the=
 images can also depend on recipe, and they=C2=A0shouldn&#39;t depend on on=
e specifically. They should accept that either=C2=A0recipe-development or r=
ecipe-production is included. Currently we see that both the generic recipe=
 and the specific recipe used by the image are built and overwrite each oth=
er.</div><div><br></div><div>What would be a neat way to achieve two varian=
ts of a recipe, and having different contents and settings in them?</div><d=
iv>Or, can we solve that other included recipes depend on one of the varian=
ts, instead of on the generic one.</div><div><div><br></div><div>Kind regar=
ds,<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><br><div><span style=3D"color=
:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:16px">Maik =
Vermeulen</span></div><br><div><span style=3D"color:rgb(29,29,27);font-fami=
ly:Helvetica,Arial,sans-serif;font-size:13px">Embedded Software Engineer=E2=
=80=82=E2=80=94=E2=80=82<a href=3D"https://www.lightyear.one/" rel=3D"noope=
ner noreferrer" style=3D"color:rgb(51,206,224)" target=3D"_blank">Lightyear=
</a></span></div><div><span style=3D"color:rgb(29,29,27);font-family:Helvet=
ica,Arial,sans-serif;font-size:13px"><a href=3D"tel:+31616827379" rel=3D"no=
opener" style=3D"color:rgb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</=
a></span></div></div></div></div></div></div></div>

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
--000000000000af56ce05edac287d--

