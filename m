Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E18FBCA0EED
	for <webhook@archiver.kernel.org>; Thu, 28 Aug 2025 14:47:45 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.22771.1756392462931511640
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Aug 2025 07:47:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=ZIL5Kq/O;
 spf=pass (domain: ics.com, ip: 209.85.208.45, mailfrom: lpmeyer@ics.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-61cb9e039d9so2011955a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Aug 2025 07:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1756392461; x=1756997261; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W8wJaNcp/v57agNtjfPHCyhO3ZsSZQ9Rzn5j+7SOxMg=;
        b=ZIL5Kq/OWHaua4HkFI581QUo3NBJNoUP+YDRMhriDiIEat2riwQkIYs0I5CDOsbGBe
         Wjh7YRdN5XJ+QAgSkBSBx1Q7dBY8ieWVyrh72kZrU7iC9viwUG9nZf9CqEaagi66GVkE
         VUHIa3nwHBy2OUzHEyvKpJwIEvcC4X1UDmpFxXt+Gb+vOzjp94+GiYDFDOO1M/EKrj0P
         7Ft2HUTcggAJGXYagy74Mg2oNxe0KtgsNifFmfJOJ2HZdJz/qH07rpFLpzVOKXCce0T1
         m4k+ATP1hBE4sc2j8DsBm3rCB3fbRb0dtyC91U4/z6sTocnWW90EL3gDcYICRRghnTSo
         od0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756392461; x=1756997261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W8wJaNcp/v57agNtjfPHCyhO3ZsSZQ9Rzn5j+7SOxMg=;
        b=Eyz1f94ZDKs+Z0wT0n9pBX6T+uvdma+jLbRn2VrapWugJmZwJ03r/L3mD2vd084Dwb
         cc41af/+eIQ6PZF91csRtR8P2CrcJeYV3Kjdwa6O4CdEqeOThPRkqSHUUNyUFRfQdN8o
         nkhjaWiyn+ir5vE1egdB+ptkyvS1vsUQiWl2CU8g/3ansSBryg0WBj6GbMCnYDSSp3lM
         qbBJ/RXZkXAJpSwd5poUQ/HWC/VAssPu56ZKTvi7wWWyAn7Eg+JXvOqy3Nu++9TIuP2j
         Us4XJpKZglDPtN7TP6+KviwaVuDbYmAjkO9ZecCRtN1/hOT81GAnQlQjFfqICXEI/SET
         BxgA==
X-Gm-Message-State: AOJu0Yz3q+OvK4s0ZjsyoUAmG/I97o/G102QVv/ArDc/xGhYJqNAHY3Y
	QIqivM6f1+Me7Kd1P7b5iKk8I5dxQ98Zq4g6ypCVQSrfosrm2qCv7oVJUHI0G579sVBxRUCX065
	NldWoGedBez1Aqt4NrQzoc8koxyW9VdNa9OAcyGVwWmhkCPZqFbxr
X-Gm-Gg: ASbGncuevcAaj1m+1Q8SmTbLyvLF5Jn2vkDGaa1hofecUBJprfO8d6a/kDyVzXXzllI
	UajyErkkn5DwyXCt1nzSUpkOC5kTCaXknh/1dYw75aezCNEIcxW+xw3mLLmD0g66Ww4t42IpgAo
	mDsipoJx+COnWbT+FTcDDxUCItZ0VgtMNvT+vSiOnpHkLLj/++M6idEn6+Fpw9+6YbCzxIrZNrQ
	gZ9VhUHTA1pcFSKVfDM
X-Google-Smtp-Source: AGHT+IH5YAveiaU0/8sroWzfaFn0JBamzvwhOEAa07y5ZMsMYO3qH0juBdpXwTf3TFkSythUB9XhnirmG6ULSvJe5QA=
X-Received: by 2002:a05:6402:40c9:b0:61c:ed69:7970 with SMTP id
 4fb4d7f45d1cf-61ced697dc7mr1005135a12.38.1756392461051; Thu, 28 Aug 2025
 07:47:41 -0700 (PDT)
MIME-Version: 1.0
References: <SA1P222MB1341100CC95767E9F1491FCEE53EA@SA1P222MB1341.NAMP222.PROD.OUTLOOK.COM>
In-Reply-To: <SA1P222MB1341100CC95767E9F1491FCEE53EA@SA1P222MB1341.NAMP222.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Thu, 28 Aug 2025 11:47:24 -0300
X-Gm-Features: Ac12FXz9eAnFad_rMrEQqYVTTsPK2u9UyCGn6BQuKCgZChnTKPouaF0xnEHW8Zs
Message-ID: <CABqjNW-fbHT=6OQ9zANOuTemzTWeHEB_t4YusGkhKONBiSZ7wA@mail.gmail.com>
Subject: Re: [yocto] Circular dependency issues when building Qt with Yocto Scarthgap
To: yocto@lists.yoctoproject.org, shivaji.yannaboina@thermofisher.com
Cc: "Himakuntala, Srinivas" <srinivas.himakuntala@thermofisher.com>
Content-Type: multipart/alternative; boundary="000000000000ba3c85063d6dfc48"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Aug 2025 14:47:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65804

--000000000000ba3c85063d6dfc48
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Aug 25, 2025 at 8:19=E2=80=AFAM Yannaboina, Shivaji via
lists.yoctoproject.org <shivaji.yannaboina=3D
thermofisher.com@lists.yoctoproject.org> wrote:

> Hello Yocto/meta-qt maintainers,
>
> I am working with *Yocto Scarthgap (5.0)* on a *Raspberry Pi CM5 target*
> and trying to build an image with *Qt support*. My current setup uses:
>
>    - *Yocto release:* Scarthgap (5.0)
>    - *Machine:* raspberrypi-cm5-thermo
>    - *Qt layer:* meta-qt5 / meta-qt6 (Qt 5.12, Qt 5.15, Qt 6.11) =E2=80=
=93 I
>    supposed to use them for different products.
>
>

Are you trying to build both Qt 5 and 6 on the same image? That is not
possible by default, although I understand there is some switch available
in meta-qt6 that might allow that... but even if it is there I don't know
how tested that would be. If you are in this scenario either use the same
Qt version for everything or build different images in different setups.

--000000000000ba3c85063d6dfc48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug =
25, 2025 at 8:19=E2=80=AFAM Yannaboina, Shivaji via <a href=3D"http://lists=
.yoctoproject.org">lists.yoctoproject.org</a> &lt;shivaji.yannaboina=3D<a h=
ref=3D"mailto:thermofisher.com@lists.yoctoproject.org">thermofisher.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"msg3770700000812492253">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_3770700000812492253WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:11pt">Hello Yocto/meta-qt maintainers,<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.25in"><span style=3D"font-siz=
e:11pt">I am working with
<b>Yocto Scarthgap (5.0)</b> on a <b>Raspberry Pi CM5 target</b> and trying=
 to build an image with
<b>Qt support</b>. My current setup uses:<u></u><u></u></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"margin-left:0.25in"><b><span style=3D"font=
-size:11pt">Yocto release:</span></b><span style=3D"font-size:11pt"> Scarth=
gap (5.0)<u></u><u></u></span></li><li class=3D"MsoNormal" style=3D"margin-=
left:0.25in"><b><span style=3D"font-size:11pt">Machine:</span></b><span sty=
le=3D"font-size:11pt"> raspberrypi-cm5-thermo<u></u><u></u></span></li><li =
class=3D"MsoNormal" style=3D"margin-left:0.25in"><b><span style=3D"font-siz=
e:11pt">Qt layer:</span></b><span style=3D"font-size:11pt"> meta-qt5 / meta=
-qt6 (Qt 5.12, Qt 5.15, Qt 6.11) =E2=80=93 I supposed to use them for diffe=
rent products.</span></li></ul></div></div></div></blockquote><div><br></di=
v><div><br></div><div>Are you trying to build both Qt 5 and 6 on the same i=
mage? That is not possible by default, although I understand there is some =
switch available in meta-qt6 that might allow that... but even if it is the=
re I don&#39;t know how tested that would be. If you are in this scenario e=
ither use the same Qt version for everything or build different images in d=
ifferent setups.<br></div></div><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><br></div></div></div>

--000000000000ba3c85063d6dfc48--

