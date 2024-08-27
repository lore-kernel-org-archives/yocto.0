Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3856BC5472F
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 14:10:03 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web10.79404.1724767794455202340
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Aug 2024 07:09:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P1UT6Ppz;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: rybczynska@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-71423704ef3so4466397b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 07:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724767793; x=1725372593; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RpUI8Z9mzizPyn800OxjAhRaB9G8ol7DRgY00KaNJfQ=;
        b=P1UT6PpzJTfO8/v+rq1C10sFt3cY5vraAbgI7adhGEkWvt95Sz5sq7skq5qCNsSlAh
         D4Ee4VhWCcx3YiqaE0V2fB0A3mWfBcSOxvGfWzBPtdwg1/zfO7fck/6bd/Ew+HdPiWMv
         LzyWAQTemQ/2RNkJ0WOtpntNcmQ+EYV/IO/aMdfe5o5FOM5oPowuVGwpz1GnXJrpWApu
         40G1UbUzFzTHPUIVsaloCHuI7xobE/m6QRAxtQVzJv35cprtjndp5ptDbc+OoxaFxVoj
         HF3GsSnjGl9B+smyDIbTWtFiLPulxVzhs6voLz1TytK36AA/Xc3nKqvyPKydH/QV++s/
         s8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724767793; x=1725372593;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RpUI8Z9mzizPyn800OxjAhRaB9G8ol7DRgY00KaNJfQ=;
        b=wfw5v8D/jfQVU/nzCvTc2Pfqbi9nux8IIwJMV1TsRO5s68fvhW6zK4z6N0bUdC4shu
         H323Cyi6MDBGJeDG5KBY3Gk+SYJBqKDVfjHDCcwNXD/2oW4LLvR4oIf0vGtp85d0dTBN
         KxBKoKt6rNbl+iETVGafMTza8se0t9gsKpEqWKV1OlU1lgqAgOGzcNX8SELP8dfJJBWK
         YMyPKhVs4CCczxgYC1JTE5vW1a0D7hBFiqxNrVI620J6nDRvRPkv6bwMbF6riKCSvjkt
         J/l0YVXYgPOPaZ0RgckYuLLnnUpdDA186129Xos25eoUoQTBDU4FByQ2jyB82WAYl8yQ
         F/ZQ==
X-Gm-Message-State: AOJu0YyqwsXPD5WPcNGr/JNZtqI2t59XgGG+1Hoz2XE88NVQBh8gjR6I
	OtNmwKaMoqHnDLYhrXF1Ck1If9+YoDgDBsxCWfrvqCb3ynWywGa3QiIIKJaq1trQYzIhoEi+9i3
	nxHrKkKf6JOxgnLfZ4+92J9rDufzRgQ==
X-Google-Smtp-Source: AGHT+IEGPc6cU6LDLX8NTAUYy2ZduGZjAGu1R/conB1b8EP5Fb23Q7Qj9ph7G12rirv2rNCL/eZDOxbvdF0PWNC8nIk=
X-Received: by 2002:a17:903:32d2:b0:202:20bf:461c with SMTP id
 d9443c01a7336-2039e4a96demr165702515ad.31.1724767793260; Tue, 27 Aug 2024
 07:09:53 -0700 (PDT)
MIME-Version: 1.0
References: <DU2PR08MB7253B2F4BDB924D5C31CE7DDEE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB72537A2152910D095FD52195EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB7253B0D6BAEA8BD9CC15E550EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB7253B4E88977BEDB59817B62EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB72536BD03476E2EA40423E5AEE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
In-Reply-To: <DU2PR08MB72536BD03476E2EA40423E5AEE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 27 Aug 2024 16:09:41 +0200
Message-ID: <CAApg2=Q9tzQu=K5n4r-4MeKpXGd8GcjrG3FK537m_HrfBi599Q@mail.gmail.com>
Subject: Re: [yocto] - Poky Kirkstone - [cve-update-db-native] - CERTIFICATE_VERIFY_FAILED
To: yocto@lists.yoctoproject.org, simone.bongini@movyon.com
Content-Type: multipart/alternative; boundary="000000000000a334c00620aacb25"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 14:10:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63749

--000000000000a334c00620aacb25
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2024 at 1:18=E2=80=AFPM Bongini, Simone via lists.yoctoproj=
ect.org
<simone.bongini=3Dmovyon.com@lists.yoctoproject.org> wrote:

> Hello All,
> my first post here.
>
> I'm trying to check my yocto build against cve introducing
> INHERIT +=3D "cve-check"
> in my local.conf
>
> But I got
> WARNING: cve-update-db-native-1.0-r0 do_fetch: Failed to fetch CVE data
> (<urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify faile=
d:
> unable to get local issuer certificate (_ssl.c:1145)>)
>
> Anyone encountered this problem yet?
>
>
Hello Simone,
Are you passing by a kind of a company proxy? The certificate validates
just fine from this end.

Kind regards,
Marta

--000000000000a334c00620aacb25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2024 at 1:18=E2=80=AF=
PM Bongini, Simone via <a href=3D"http://lists.yoctoproject.org">lists.yoct=
oproject.org</a> &lt;simone.bongini=3D<a href=3D"mailto:movyon.com@lists.yo=
ctoproject.org">movyon.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-46639189=
20135108392">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Hello All,</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
my first post here.</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
I&#39;m trying to check my yocto build against cve introducing=C2=A0</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
INHERIT +=3D &quot;cve-check&quot;</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
in my local.conf</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
But I got</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
WARNING: cve-update-db-native-1.0-r0 do_fetch: Failed to fetch CVE data (&l=
t;urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed:=
 unable to get local issuer certificate (_ssl.c:1145)&gt;)</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:11pt;color:rgb(0,0,0)">
Anyone encountered this problem yet?</div><br></div></div></blockquote><div=
><br></div><div>Hello Simone,</div><div>Are you passing by a kind of a comp=
any proxy? The certificate validates just fine from this end.</div><div><br=
></div><div>Kind regards,</div><div>Marta <br></div></div></div>

--000000000000a334c00620aacb25--

