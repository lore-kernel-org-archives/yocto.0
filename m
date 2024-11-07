Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB40CD43375
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 16:03:15 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web10.75838.1730995388353435316
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 08:03:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=f80uIFoc;
 spf=pass (domain: gmail.com, ip: 209.85.166.174, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3a6bc0600f9so4319585ab.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 08:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730995387; x=1731600187; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=448oN20QGKH1wdFrKpo6AHtnKFrKGpNYRmET8ZUMuEQ=;
        b=f80uIFocxxW6Pe+/9ZNsIsOUiu+yAz0UIr9pZdPdoyGviSX4imP+mQov0BUGsfTWuA
         nTRLXwDJabNe9papbpmzqn3QWnToToKB0QVNDzdEDfEJjbb4DDNBNMe7DDgTYS5l3h3e
         wfhPfXU8LPbLfM0G1oWISVA7MZqrkoR9g9dcNMvF2C+3i13TyeG3ykvaMlNmGuj3stbK
         vgdSqWOGFVTZtA8L2FWa5r8rusTMBzq3n360+tNLp8nxnbzwN3Nwd0HhHKIXCwRejhIL
         P+G4cIIRTaoa/umc6jdSvm3Wk0VaqBvcQPu2ECkWn13GQaaQNlHbtga3ILtSY0g3pgvF
         i9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730995387; x=1731600187;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=448oN20QGKH1wdFrKpo6AHtnKFrKGpNYRmET8ZUMuEQ=;
        b=bVGj4HhidW3SNWBMopdc8LatGqGfDKwmG8WnH++S5waQtZSausVwXiQYgsukFWrPSe
         M9qgnjhcfV8OkAHy3ypY7wWDTFDQQ867BlxpLl0u+O38T6KrAkQaDYIWsF7mfaSpZjOR
         ZZmz/F97SEg+JcrirkAGmtmy0NP/NjVaj+Q3oY1RNw9jcZZ5ZnukxsIiGZNiD7UT+eAq
         CdOi5OerwNT7zgFZ2GPOxuvR2MEmZ09YmPYkQrE2PzkJR/egLkkLgI4quQqzj7HqYKF2
         dmIR9kQG12ed4or0MxFMfAYx1pMhApP5O9V/58kGU5qWNXzrcNK45azrvxyeyTe1ObCY
         cXYg==
X-Gm-Message-State: AOJu0Yz8tG6ym271DqYPU6ZhWf4dzrycyMBCBJKEk0uK57SX5Qsx7fCd
	AtwUEIAWCc1pwrYgdByrRiO38c8vL45JmD09RwdV+aIYeUghKJDtQkgjVGST8GLS2iS5f+gb/BX
	+P+J0N6YDVVLPhUHZ8GOnkaMJPowOBWpB
X-Google-Smtp-Source: AGHT+IGDJPeJYPyHC0vIUbV+qeiOFx6RkIh8bVx3H0BAOtC92k0Eg53UPz5yyiSsiALM0vjX6mtfl8uDCjoSsxVhpvM=
X-Received: by 2002:a05:6e02:1e02:b0:3a6:bf1a:17d2 with SMTP id
 e9e14a558f8ab-3a6f0929419mr5877125ab.1.1730995387296; Thu, 07 Nov 2024
 08:03:07 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 7 Nov 2024 08:02:56 -0800
Message-ID: <CAB=6tBS7ttKuc0tqU4Etctj3xMZUsPBXZV16=rWuHzjrM3JxaA@mail.gmail.com>
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version
 of another package
To: yocto@lists.yoctoproject.org, Logan.Grosz@b9c.com
Content-Type: multipart/alternative; boundary="0000000000002af80a062654c5ca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 16:03:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64233

--0000000000002af80a062654c5ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 7, 2024 at 7:34=E2=80=AFAM Logan Grosz via lists.yoctoproject.o=
rg
<Logan.Grosz=3Db9c.com@lists.yoctoproject.org> wrote:

> Hi, all
>
> My company is trying to migrate a newer version of Yocto and in an effort
> to do that I am making changes to our current layer to facilitate an easi=
er
> transition. One problem I encountered was SystemD 250 installs a target
> factory-reset.target, but we already have a recipe that installs a that
> same file. The recipe is as follows
>

Is there something unique and special about your particular factory reset
target? If not, I suspect
what you are experiencing is a sign that it is time to get rid of that
recipe.

If you are using that same layer to build images for multiple Yocto release
versions, this problem is
only going to get worse. Recipe compatibility is not guaranteed between
discrete Yocto releases.
The expectation is that you will branch and update your recipes to keep
pace with each release you
want to support.

..Ch:W..

*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000002af80a062654c5ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Nov 7, 2024 at 7:34=E2=80=AFAM Lo=
gan Grosz via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.=
org</a> &lt;Logan.Grosz=3D<a href=3D"mailto:b9c.com@lists.yoctoproject.org"=
>b9c.com@lists.yoctoproject.org</a>&gt; wrote:</div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-657=
6558553141446825">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi, all</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
My company is trying to migrate a newer version of Yocto and in an effort t=
o do that I am making changes to our current layer to facilitate an easier =
transition. One problem I encountered was SystemD 250 installs a target
<code>factory-reset.target</code>, but we already have a recipe that instal=
ls a that same file. The recipe is as follows</div></div></div></blockquote=
><div><br></div><div>Is there something unique and special about your parti=
cular factory reset target? If not, I suspect</div><div>what you are experi=
encing is a sign that it is time to get rid of that recipe.</div><div><br><=
/div><div>If you are using that same layer to build images for multiple Yoc=
to release versions, this problem is</div><div>only going to get worse. Rec=
ipe compatibility is not guaranteed between discrete Yocto releases.</div><=
div>The expectation is that you will branch and update your recipes to keep=
 pace with each release you</div><div>want to support.</div><div><br></div>=
<div>..Ch:W..<br></div><br></div><div dir=3D"ltr" class=3D"gmail_signature"=
><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Perfe=
ction must be reached by degrees; she requires the slow hand of time.&quot;=
 - Voltaire</span></b></div></div></div></div>

--0000000000002af80a062654c5ca--

