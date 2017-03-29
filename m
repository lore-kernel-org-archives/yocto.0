Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B95E006CD; Wed, 29 Mar 2017 01:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C91C1E00546
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:02:14 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id x35so6142007qtc.2
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 01:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yBJtFex7koUXX/yKyp+vVWx76tiRH4q7pSIxX85/zzc=;
	b=JqYcM8ZJdDP8QQthTxdH1t2QRxcrCcVjAmwKPsA8Ly6IMK1EjrVPPo2I7B7djLBT7r
	BZeFgDSVYhSUMEQyxGEHxDGZzcrWk3Sna9QQa9sFYMnT/1fpTmjuH7DZ1MFsRsDv9XNi
	e2RsgLmBqqJBiEOC/NyuAi0+A9C+OX4Ldh/HxbS8wlQM566hqAaSCJu1RpGvNsujktl5
	3p3Yfs1O++5I5zXtYzHID7tr0uXvvNoOulPoU4D/i4UOWX54N4qtTjEB9AkBqlpqN63b
	ceAr2ygYG1/NMIts7WDupkrdB3hVloQt2aY0iuoLJ+mfa5ULNnh2QidSSVTz0twJYBLH
	ySvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yBJtFex7koUXX/yKyp+vVWx76tiRH4q7pSIxX85/zzc=;
	b=Uh+zBBzpdzpD3OIiknWS+luzEsxj4gawlQJil118w26ctcn0hnSM8sOGFJgFsuV1RP
	cRMB2/WlhW1YCBoNg/J/T85pL3Mlx141KXc2dqZk2akJ2zKAhi/QhO/K/8UN+vsZjl0y
	cswqfVnINgaH21ulRsNNfE003HuUxD30v6+kaCH8nswgZbhdcVzoiCexWN7AoBNahU3m
	tu2vL6ZoYXu9O8pB4D7MEaGSOK3D04k7bcAU29R4zJ+Av5Hi/jX+xPDJfPjKEzsnEKJV
	yS3ck78O/HRBeOtB8B0YidHYDSnn4wZfWaKX+iorSpr0VJkpIER8ZzyGEXGzws8awN1w
	fxAA==
X-Gm-Message-State: AFeK/H2Sx2jn7qel8LcrRYcGh3IZOiCnxSr75hVKY4/zONeUH7tAILIV2Jrt22soXywg/J7bJSCgpC7hu1aAJCxh
X-Received: by 10.237.42.164 with SMTP id t33mr32903421qtd.105.1490774533629; 
	Wed, 29 Mar 2017 01:02:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 29 Mar 2017 01:01:53 -0700 (PDT)
In-Reply-To: <CAOsmwBS46rZ4qKLJuBHbY5jWpLiA-+SF=vE74wED-WgGykq4yQ@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
	<CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
	<CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
	<CAOsmwBS46rZ4qKLJuBHbY5jWpLiA-+SF=vE74wED-WgGykq4yQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Mar 2017 09:01:53 +0100
Message-ID: <CAJTo0LZC6cpkKuZwD6VK6yrk3Ki_tXAG_647XrHJ=QxdrqGjLw@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Wed, 29 Mar 2017 08:02:21 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe2284977d054bd9fe91

--94eb2c0cfe2284977d054bd9fe91
Content-Type: text/plain; charset=UTF-8

On 29 March 2017 at 00:20, Alvaro Garcia <maxpowel@gmail.com> wrote:

> I used rpm and deb, you mean dpkg (for deb) when you say package manager?
>

Whatever package manager you've got enabled - rpm by default.

Ross

--94eb2c0cfe2284977d054bd9fe91
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 March 2017 at 00:20, Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:maxpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I used rpm and=
 deb, you mean dpkg (for deb) when you say package manager?<br></div></bloc=
kquote><div><br></div><div>Whatever package manager you&#39;ve got enabled =
- rpm by default.</div><div><br></div><div>Ross=C2=A0</div></div><br></div>=
</div>

--94eb2c0cfe2284977d054bd9fe91--
