Return-Path: <joaohf@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39540C87FCA
	for <webhook@archiver.kernel.org>; Thu,  7 Aug 2025 18:44:33 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web10.3707.1754592270045148877
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Aug 2025 11:44:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=h2ArdPwi;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: joaohf@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-71a0d38c75aso1422767b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 11:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754592269; x=1755197069; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UoAQtF+7QaC9a/3YGn/fF/uwBgBgWYh2X/OpswofUb0=;
        b=h2ArdPwiSE26nLjiSamofT5qvPpXHoTCFBEZhH+KibY5r/HB5XCOaT15RAyegUwsdT
         JpwIMUCttLdojeSOmBVlGKamXHc1YthgFngEy1qzaTc7+DkR2AbnAfR/R7kGZ+YJwMaq
         FhyXDuIYfhflapJTP8cHd4LkPCiNeGR+Gz0/8vD5XgLEQpmIxjnwDeoj0O4U4d1JuFp7
         b0zwRtNhfgfvuKUhN9uBNlkxDRXyQtcmwAjhUMSoSttfnGgahpE6XjK10KJ3hJzkHeCJ
         mG7e+wMW9yV4SO//+USsxDTNNWgbPHkTdi+1UZ1PUGc49ULGONAs/7ru2MwsehHRPRpa
         6sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754592269; x=1755197069;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UoAQtF+7QaC9a/3YGn/fF/uwBgBgWYh2X/OpswofUb0=;
        b=Rn/skQ7w5zGg9C5WNzq7I1K2og8Up1hv0me2l5bkBls6QPBrbU731CSyPfnusstZku
         iFIlqjxlpVa+o3bRpWLMnICF5K3xQn5CaMWatqrQq0/9+9hEV7aaLuel15cdpgdOY627
         7UHY3OYULXlnpsiAOrYWgEOC9Fb+HDsdPtULgincFOjcJRCY4/Fd6qO0JaeumBKaXO3b
         fo25cono65Wt70bNlB0hYC5oSwSDelFYCECk8wM9tUUTYm7Hoh1tN0soZjxTbQM7mWDT
         wfWh+5Iyl2Szer4vSJC4ttwlFHNVNjNhllk1HarBmoVCVzfBPQv4PmxxED10b/UW+BX4
         w8xA==
X-Gm-Message-State: AOJu0Ywr3X2nBmI1Xci9lXRfsbDYD3hv1eIh0yZH8V0YXHJAvUTF/Ssd
	+oRQc7OBjq7j/A1UfkgbY4bOaUk76Fwc9qnC4WwOGPJGPnaPgzHr1EJf0SqlVaY98Z7Bex7ArKw
	vD3OCJtREhXwaDA1Tglj7aTe8/BY/vxC2J/gV
X-Gm-Gg: ASbGncuNp/v49u8qlGc5sMHKD+DrF8mvZx3ViCt+iazKMyXpqOQHVrkkVmpAf/2Fr3J
	FCLY+bqV7dALo75VWibfOWVYYIhPdO84Xcg8XzFDLGqeEA8QIxMMSCveopGuw7Tu2foPSm83n0T
	BlRDT88OHmmyRtHIW+t8ED4gcU2dAjUWYf9zyMxANWVzco1dm6J/ue5nfzd8x1OkLZA4H7lo3HO
	hx+t4KZ
X-Google-Smtp-Source: AGHT+IFG110j9ylOetXopHQ+/MLup6KQijoRSMWryQqgL8XhNe6ppVN8BNXCqvjVZamdoX/+8eom/0cQgrpPXvCqpQ8=
X-Received: by 2002:a05:690c:dc1:b0:71b:a645:36ab with SMTP id
 00721157ae682-71bf0e59d12mr454367b3.3.1754592268625; Thu, 07 Aug 2025
 11:44:28 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
Date: Thu, 7 Aug 2025 15:44:17 -0300
X-Gm-Features: Ac12FXz4GPt4h3o-iU4cLeTmWaDnAxrEYCYhVa0hT8cYOgi4wlShOCapoNnqfQ4
Message-ID: <CANFVK78jqC2NVZW03JZ5YUgi4xO0mhR7n7iBUm3iefcpsbZFuQ@mail.gmail.com>
Subject: Adding oeqa runtime decorators to custom layers
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e5aeeb063bcad8cb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Aug 2025 18:44:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65738

--000000000000e5aeeb063bcad8cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

In my layer I have some oeqa runtime tests. That is ok and well documented
in Yocto Project documentation. However, I also want to define my custom
oeqa runtime decorators. Is that possible ?

I tried to add the following in my layer.conf:

BBFILES +=3D "${LAYERDIR}/lib/oeqa/**/*.py"

No success, so far.

I'm using master branch and could not find any other layer that adds its
own decorators. Any ideas ?

Thanks.
--=20
Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil

--000000000000e5aeeb063bcad8cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div><br><div>Hi,</div><div><br></=
div><div>In my layer I have some oeqa runtime=20
tests. That is ok and well documented in Yocto Project documentation.=20
However, I also want to define my custom oeqa runtime decorators. Is=20
that possible ?</div><div><br></div><div>I tried to add the following in my=
 layer.conf:</div><div><br></div><div><div style=3D"color:rgb(204,204,204);=
background-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quo=
t;monospace&quot;,monospace;font-weight:normal;font-size:16px;line-height:2=
2px;white-space:pre-wrap"><div><span style=3D"color:rgb(156,220,254)">BBFIL=
ES</span><span style=3D"color:rgb(204,204,204)"> </span><span style=3D"colo=
r:rgb(212,212,212)">+=3D</span><span style=3D"color:rgb(204,204,204)"> </sp=
an><span style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"color=
:rgb(86,156,214)">${</span><span style=3D"color:rgb(156,220,254)">LAYERDIR<=
/span><span style=3D"color:rgb(86,156,214)">}</span><span style=3D"color:rg=
b(206,145,120)">/lib/oeqa/**/*.py&quot;</span></div></div><br></div><div>No=
 success, so far.</div><div><br></div><div>I&#39;m using master branch and =
could not find any other layer that adds its own decorators. Any ideas ?</d=
iv><div><br></div><div>Thanks.</div><span class=3D"gmail_signature_prefix">=
-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr">Jo=C3=A3o Henrique Ferreira de Freitas - =
<a href=3D"http://joaohf_at_gmail.com" target=3D"_blank">joaohf_at_gmail.co=
m</a><br>Campinas-SP-Brasil</div></div></div>

--000000000000e5aeeb063bcad8cb--

