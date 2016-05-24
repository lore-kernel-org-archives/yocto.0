Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21BB7E00BE0; Tue, 24 May 2016 08:43:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f195.google.com (mail-ig0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA8EAE00BA1
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 08:43:18 -0700 (PDT)
Received: by mail-ig0-f195.google.com with SMTP id i11so2390680igh.2
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 08:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=nI2tgQ39O1CJgZ51iRgiwgUGU87pRCIr9ZQpgeu3lj4=;
	b=1HPq2CoUCh6QpzQacMSkmFCAFS9w3TXXwtvNXevAqQSrRLoRIxi9vPXWUr7GU3UytF
	azDfb1BU6d5VImOM2YSCKj9l1TDkToylWX0/dQ1WSti2VlqQGA1xXDBqe+fh9gh0YJ9C
	IrwyWQCMtkrlR24hVPH6ZITOOovDyzWPEMpiGsrNAfz2InleEam4fqdhJij/+9EJSXtP
	F1xCyCiNSjkECrPPoyXK4ec5uWhn0H9RpTIroMwWVRpF2qxT4cYxm6jcPVkquXcjjJ++
	XYzKNLw9kwJ47kTihJHJKNOf+iJLV9LZAtTJ0vMybEJRgFZdVFqcqg4UxpwXgXEqQyEW
	AwKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=nI2tgQ39O1CJgZ51iRgiwgUGU87pRCIr9ZQpgeu3lj4=;
	b=XDp48l/1j63+sRHWQ5O1DP+lPVBGA2Lck7GLLMugomDW4XxnsNJ15b016UIHpJH7Fc
	ywoG86D7chnF5QHi1zycIK82LpWlUumz4BFp+A0xV6Y0zjicDUa/sd1zVg787Tw61cu8
	/p9g2AhyWbBjZB0GoXSCCCtxAaFBY6954iuhod/LZM89+l0cAU44IEcHVR2K1ODUIcOy
	HDaclWesEENmKR4ATUntvSeWGud2FSzFXF0GGFaI/MRUvAmJtsJbt8IGfvBeTBE5LCW6
	Z5F1OjGUncpAU1yeCvtFuMz0dIYHFYNh7YfBjdLK7uq7sHDhfOe0/cM6nLtqTayUuJZE
	YjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=nI2tgQ39O1CJgZ51iRgiwgUGU87pRCIr9ZQpgeu3lj4=;
	b=kWrVKZCJ5FTvgzxMN5Q24abaY3h59Qt6c5Pv8gcBjBUY3fZ7mDs/pUBFcPXbbszWyU
	iNB7ks1Tg7WkG6neRF3auwB8vM17WsT7k4IcByraHayOvEMZve5BYiZTp5gyIe6NOgPy
	cQrSd0uIX+pdl2wJqSJDmsOkY3SGf5bKtXyzkYVzPo2ds9cCJHhDmYRUdX3AJ4xaWqq0
	mAQMNvvvhDt0aXtyV6ucucRRPU53dmzcrn/OMuCWYoTDQHNrnWMqHpyQHN7TwG90KDv5
	Zx3d2ORczuE3sQbMjvChg7JVdSymSi6K8lVDCGulXgg1DieSOsa0d92pQXj7uQwjlm5e
	Rj1w==
X-Gm-Message-State: AOPr4FWpWGZm4eUzJ6VcMBJzQI5DlRImsF4PWWymeNd6FOssPCGMnMrWUHcBBzhuOQ4RIv8yoYpNiIgxJ/Cnjw==
X-Received: by 10.50.123.161 with SMTP id mb1mr19072954igb.20.1464104597459;
	Tue, 24 May 2016 08:43:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.5 with HTTP; Tue, 24 May 2016 08:42:58 -0700 (PDT)
In-Reply-To: <CAPYQ8X7m6OyFjQ+5VLRZtfMnSMufM=irU_SCKa4ydjoFPGvkFw@mail.gmail.com>
References: <CAPYQ8X7m6OyFjQ+5VLRZtfMnSMufM=irU_SCKa4ydjoFPGvkFw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 24 May 2016 08:42:58 -0700
X-Google-Sender-Auth: GkeG9ExwtPQQSFJCqjpabqmp-tI
Message-ID: <CABcZAN=nuEL=G7Dv=D9iJ419h6t_HuqZ-kjdxUa6rC=DM1+XBA@mail.gmail.com>
To: Michael Hu <pxmyhdev@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Retrieve SRCREV variable value outside of a specific recipe (not modifying it)
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
X-List-Received-Date: Tue, 24 May 2016 15:43:22 -0000
Content-Type: multipart/alternative; boundary=001a1135e7ea721dc20533986a10

--001a1135e7ea721dc20533986a10
Content-Type: text/plain; charset=UTF-8

On Tue, May 24, 2016 at 7:32 AM, Michael Hu <pxmyhdev@gmail.com> wrote:

> Hi,
>
> My goal is to pull recipe's SRCREV variable into a top level *.bbclass
> file. I understand we can use SRCREV_pn-<recipe_name> to modify the
> revision on the fly outside of recipe in configuration files but when I
> print out SRCREV information using ${SRCREV_pn-recipename} all I got back
> is the recipe name instead of SREREV value for that specific recipe.
>
> Is there a way to retrieve SREREV value outside of recipe?
>

One recipe cannot access metadata from another, nor can config metadata
access recipe metadata, by design. I'd recommend enabling buildhistory and
using the buildhistory-collect-srcrevs script, which dumps SRCREV_pn- lines
for recipes, for use in a .conf/.inc/.bbclass.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1135e7ea721dc20533986a10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, May 24, 2016 at 7:32 AM, Michael Hu <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:pxmyhdev@gmail.com" target=3D"_blank">pxmyhdev@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></d=
iv><div>My goal is to pull recipe&#39;s SRCREV variable into a top level *.=
bbclass file. I understand we can use SRCREV_pn-&lt;recipe_name&gt; to modi=
fy the revision on the fly outside of recipe in configuration files but whe=
n I print out SRCREV information using ${SRCREV_pn-recipename} all I got ba=
ck is the recipe name instead of SREREV value for that specific recipe.</di=
v><div><br></div><div>Is there a way to retrieve SREREV value outside of re=
cipe?</div></div></blockquote><div><br></div><div>One recipe cannot access =
metadata from another, nor can config metadata access recipe metadata, by d=
esign. I&#39;d recommend enabling buildhistory and using the buildhistory-c=
ollect-srcrevs script, which dumps SRCREV_pn- lines for recipes, for use in=
 a .conf/.inc/.bbclass.</div></div>-- <br><div class=3D"gmail_signature">Ch=
ristopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEm=
bedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mento=
r Graphics</div>
</div></div>

--001a1135e7ea721dc20533986a10--
