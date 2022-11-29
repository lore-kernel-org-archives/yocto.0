Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 035C2C4321E
	for <webhook@archiver.kernel.org>; Tue, 29 Nov 2022 12:52:18 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.148716.1669726334156929814
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 04:52:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=WsZyjVLA;
 spf=pass (domain: lightyear.one, ip: 209.85.208.52, mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ed1-f52.google.com with SMTP id e13so19607984edj.7
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 04:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=waQlXIRj4eYzVdZ8cDPLtuQm2NlPOblr2ZWCcnxBSqI=;
        b=WsZyjVLAPmeEp1XeeqCMazuajkfAKlVl5LIWvg3XQrxWOjj61+fwuz9MxFX+rs72Fj
         IoBOYWjoYTaB7udQ8OuiFO0EqqZIP39dZ/BN3KEj8Q0N5es7DuaoJ6ZrVLpMOidt0Z8B
         V+nTANSuyLSGoV/NC1nDazZ7Wzhw7vqIk7i2UBt799PfnBYL0a22jRURLIHpfpLRZhhO
         PeKV/ndaR1fqS8wApVPPS82n5BigZ4iRJumsWdpkVBaMe/yzbAlzOw9w3+ArF0bBoEuy
         xdiyIny7gjPC804GidgMisKTFUQjZGzM27d04czjGlFtRQzc4zuKYa/qJLUOrzD2LJhz
         dtcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=waQlXIRj4eYzVdZ8cDPLtuQm2NlPOblr2ZWCcnxBSqI=;
        b=HxYTGuID+lwQbogHPwfsynQtsqXvlEW/oxRFnhPDw4qf9w3le62CqMyWopwuZIYfG6
         XBI9yApVRWs4sl5PyRYfIDoZH3sgX0Pm207G+GcoJTySQIXFM2QzfBqJ8ThYw9yYHZNq
         PYqg/mrTB2Dxs9IxVKzQJKLZhMObw8tGA+eENr8OOdy9Ysusc+vfiDMvyMExgDha75+R
         AnTXiEwY+EX+3SKUPXKCZr4NrBBhOahU7WBFlStnVMBqR2d+dtOsKx5l880tWoNot+TY
         AhFmH4+2BJz/i9DLDK/G4tPYYYyeN+i91RL4ksPO2z3x9mfDV9Q4OMk7UEzovuV+QNSO
         JJKg==
X-Gm-Message-State: ANoB5pmi6SyanoGcohtlRpq/jGkl9zlTxg0y6DAy7DQWCS1RAzZFUBav
	dvHzar1k7xWlXRM788xzcWUfDfEacOaHgW/ifuhCxCK2mJFAvlG8DsMtfVQbdM0dFLvMd3VdkZh
	xBv+chwZbf6RejIuxF7m8ypkeYdGOQdqy6/J/d/Q=
X-Google-Smtp-Source: AA0mqf7swagmAblP3jC6NmYlktqS+zE7nDa/WwMBUsSnqv5VItznHAEMNdRVJ4pkFiN8p30f8ctg1O0pXGXlLyQj+vQ=
X-Received: by 2002:a05:6402:2b8a:b0:46b:2979:7397 with SMTP id
 fj10-20020a0564022b8a00b0046b29797397mr9605286edb.332.1669726331870; Tue, 29
 Nov 2022 04:52:11 -0800 (PST)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Tue, 29 Nov 2022 13:51:37 +0100
Message-ID: <CAKO9uzrfjAtjAL15pTb6F52UL5=OT1crYG_7bdBDU6kkwKNs-A@mail.gmail.com>
Subject: Upgrading from sumo to more recent version
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e2450d05ee9b74df"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 12:52:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58651

--000000000000e2450d05ee9b74df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

After some questions on this mailing list, we got comments on our usage of
quite an old yocto poky version: sumo.

What are the steps to upgrade to a newer version?
We have quite some of our own recipes, and also some proprietary third
party patches.

Do we go version by version from sumo to the most recent one, or big bang?
Are there tools to for example fix and replace the old notation by the new
one?
Any other tips?

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

--000000000000e2450d05ee9b74df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>After some questions on this mailin=
g list, we got comments on our usage of quite an old yocto poky version: su=
mo.</div><div><br></div><div>What are the steps to upgrade to a newer=C2=A0=
version?</div><div>We have quite some of our own recipes, and also some pro=
prietary=C2=A0third party patches.</div><div><br></div><div>Do we go versio=
n by version from sumo to the most recent one, or big bang?</div><div>Are t=
here tools to for example fix and replace the old notation by the new one?<=
/div><div>Any other tips?<br><div><br></div><div>Kind=C2=A0regards,<br><div=
><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature"><div dir=3D"ltr"><br><div><span style=3D"color:rgb(29,29,27);font-=
family:Helvetica,Arial,sans-serif;font-size:16px">Maik Vermeulen</span></di=
v><br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,s=
ans-serif;font-size:13px">Embedded Software Engineer=E2=80=82=E2=80=94=E2=
=80=82<a href=3D"https://www.lightyear.one/" rel=3D"noopener noreferrer" st=
yle=3D"color:rgb(51,206,224)" target=3D"_blank">Lightyear</a></span></div><=
div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-ser=
if;font-size:13px"><a href=3D"tel:+31616827379" rel=3D"noopener" style=3D"c=
olor:rgb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</a></span></div></d=
iv></div></div></div></div></div></div>

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
--000000000000e2450d05ee9b74df--

