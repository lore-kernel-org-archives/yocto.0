Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD35AE00DA9; Thu,  1 Feb 2018 04:06:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9517DE00C10
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 04:06:15 -0800 (PST)
Received: by mail-vk0-f47.google.com with SMTP id t4so11088652vkb.9
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 04:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FcrvR63+9uZGoe3hD1rZyQspKoxMCKwXWWv4E0/Ezoo=;
	b=QeOex61Z2uVCRcVnzWDsCiO/c2bs+HAtPQ2D8pUincPWbd7Hx7gsRFKjsBdHtJxxdx
	ItxhRyuF53J+Oq59/QrCogVfET1ElhMpQuangP8U+4uH0AQTY1pjmMEIM3T3c5fN/M2i
	doFUFBEaNibByUeQDP7KtS0H+p4nZTuuKskNvwWqZZBE6X+1fdcyKmNMVurXjxPfa00j
	qdPfW3J5H27Q6Q0Q2G+70TA8DSkA274UbViKicP1Jk66zd5QS5DCBhM7ObhuBRvSBhhJ
	q3Wfm/hIgD4E7rRx5nCX9gbK7tdbRfn7clikqhTI/VtQSGNlgRaoiKm8vobvQp0V/4ez
	LSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FcrvR63+9uZGoe3hD1rZyQspKoxMCKwXWWv4E0/Ezoo=;
	b=ltL3odw17VLRG7zC0i4faf/yqI0/N6Ev/jAdpTx5nZOhj51d/nX+Vr85rEl40pWszI
	P5k9EiCflKvGsaNJ+BHYSMzmNB7FqJDhMNqWs2qHXvsaIRG6u3JB78kthOVBvxBLBh1e
	fAzUFZa5khcT2AbF59oebW3Z7OaB4MZqxaSCn9KgTLST+7C7Wxq0VG+t4nQt9Gqtenk/
	FsgM9LgeC30crvgyOAx2FVy965GNLBrC3vYU6M3LXxj5Jnaqo7ye58dh4SmN7ZxUCOHh
	+TCv/nKrJHyxXohUIegx5uY9lAdxUltI0XF2N2ua7kA7CraBP/e7k6daAHoS4kvhutCy
	/s/A==
X-Gm-Message-State: AKwxytezYObWnFK8sQBGm9/1Dlu/AeZDBc5WdWRa3lkD44URrCmyzWBI
	QMiA4oceb9z8Wah5XZ/bsBdtvh+Wkp7znOudLqiimg==
X-Google-Smtp-Source: AH8x224t8CGz0YXvFsXX6C/VpapUpp1UwtxvgXfPYYnwZPiiOkLv2kA4zpqFEOkyHbW4f/quPoAQ259+NT5kImrrz4Y=
X-Received: by 10.31.114.206 with SMTP id n197mr28435730vkc.190.1517486774567; 
	Thu, 01 Feb 2018 04:06:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.48.247 with HTTP; Thu, 1 Feb 2018 04:05:34 -0800 (PST)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <PS1PR04MB16577A70F219F5D37556112F81FA0@PS1PR04MB1657.apcprd04.prod.outlook.com>
References: <PS1PR04MB16577A70F219F5D37556112F81FA0@PS1PR04MB1657.apcprd04.prod.outlook.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 1 Feb 2018 12:05:34 +0000
Message-ID: <CAK18fxFvpq+ii0ryCv8UbpQrNYV2=Nz1uCR4PXqzSDdRtwgT-g@mail.gmail.com>
To: HASEENAMOL <haseenamol@tataelxsi.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] [kronos]wayland lib linking added for libbrcmEGL to avoid undefined symbol while linking libbrcmEGL.so
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 01 Feb 2018 12:06:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c149724265d8c0564256c1a"

--94eb2c149724265d8c0564256c1a
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 1, 2018 at 6:56 AM, HASEENAMOL <haseenamol@tataelxsi.co.in>
wrote:

> [meta-raspberrypi][PATCH]
>
> In wayland enabled build libbrcmEGL lib is using wayland functions, but
> during the build it is not linking with wayland libraries. Hence if try to
> link libbrcmEGL, will get undefined symbols.
>
>
>
> Best Regards
>
> Haseenamol
>

Hi,

Thanks for your contribution. We are currently using github for sending
patches to this yocto BSP. See
http://meta-raspberrypi.readthedocs.io/en/latest/contributing.html for more
information.

Regards,

--
Andrei Gherzan

--94eb2c149724265d8c0564256c1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 1, 2018 at 6:56 AM, HASE=
ENAMOL <span dir=3D"ltr">&lt;<a href=3D"mailto:haseenamol@tataelxsi.co.in" =
target=3D"_blank">haseenamol@tataelxsi.co.in</a>&gt;</span> wrote:<br></div=
></div></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_497454760902167524WordSection1">
<p class=3D"MsoNormal">[meta-raspberrypi][PATCH] <u></u><u></u></p>
<p class=3D"MsoNormal">In wayland enabled build libbrcmEGL lib is using way=
land functions, but during the build it is not linking with wayland librari=
es. Hence if try to link libbrcmEGL, will get undefined symbols.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif">Best Regards<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif">Haseenamol=C2=A0</span></p></div></div></blockquote><div><br></div><=
div>Hi,</div><div><br></div><div>Thanks for your contribution. We are curre=
ntly using github for sending patches to this yocto BSP. See <a href=3D"htt=
p://meta-raspberrypi.readthedocs.io/en/latest/contributing.html">http://met=
a-raspberrypi.readthedocs.io/en/latest/contributing.html</a> for more infor=
mation.</div><div><br></div><div>Regards,</div><div><br></div><div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial">--</div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">Andrei Gherzan</span>=C2=A0</div></div><br></div><=
/div>

--94eb2c149724265d8c0564256c1a--
