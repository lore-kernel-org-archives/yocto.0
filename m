Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30CC0E00CED; Thu,  7 Mar 2019 06:55:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AEBE00C43
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 06:55:46 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id i8so13110069oib.10
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2019 06:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=8uWCyAskIq8V2/CGwTdqvjzu+tg6jKaB+KAwz5Gtyec=;
	b=hQgYug6e/J0BKDCrFo72Cl/RjsGaEh9s3QwlZ8LPvFtnu1N4ybDE8Imm85FrzpS68g
	rWMZU3Jrd8nqNendoJChaVhwB2dg327WEEzfAD2HH01ZDyIrSsatDm8HcvQDdNVvaOid
	PQ3GC5MSYMe/Jv7RQzOKbbqfrtKWj9QbwDJSzHFqcusbKY8ROGzWPJyxxjcCZ2vIECwa
	QpfY1lws1OtbBAnCpvSY9HsQ98DCrPEDszcAo6m8q20+va8VgM67FXxm0IFOGQZchdd0
	eG126WGOuNo1tchUQWPQpi80TF0wbOGhTYV5uBYM7zPZMKShnAmgWK2pH49bJijhmDZA
	fr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=8uWCyAskIq8V2/CGwTdqvjzu+tg6jKaB+KAwz5Gtyec=;
	b=IpZdySNFjKW7x0HH0IlcaGcytWuDFA+cEDSKl3tepoy0Ef1pmldQLAvyj1xnF2LbK8
	pfpWkA2ckVEl5DPbnWXradINcnesCiJapGUafl8jDSso/pB9EiHBq6eRfdu7Sa+O7DEQ
	u2vQUi3K/NhHzvvUpDqz/Via4GdSPjy9sQqMxAAwtw9frQSqWnPufRzA0HvlbaBg9PSq
	4yIuW6JL8Hxo8y8g1zpVXcwjSPGNOqsw/DRzIJMB8sLcfwmARlLZ9bjJD9aPSxm0x/EP
	c6PD+F1aOdy8uCnLoCt1egbcKpoG5jLti8ye11GoDd3AbZpcge7J+XpBUriZTEe5Oo6k
	F6BQ==
X-Gm-Message-State: APjAAAUyal7E6ZL8wzQuJnhEoK0kWgsgBG+Z4RXMRgKRGeyOPyFcxA95
	zDoHhFk0+iIFgSVcGHcMQcmUoX3e+PcfG+zQ234=
X-Google-Smtp-Source: APXvYqynBGnFr7KtZkSdVCM9sO/ALPrGHx9V/AjzytQc9O/YDz9B7k7FOhz/qHvvl/uUPrTrNqTxuMDxoxXgGkNBl24=
X-Received: by 2002:aca:38d5:: with SMTP id f204mr5390682oia.72.1551970546193; 
	Thu, 07 Mar 2019 06:55:46 -0800 (PST)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<CAMRMzCAAVr8YPZaOz=Ob7E7YYfrq8H0YC8+KZ3XasEwUoe=Cdg@mail.gmail.com>
In-Reply-To: <CAMRMzCAAVr8YPZaOz=Ob7E7YYfrq8H0YC8+KZ3XasEwUoe=Cdg@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Thu, 7 Mar 2019 09:55:34 -0500
Message-ID: <CAMRMzCAZcp35epmgkDczaCztNav1KPWWjOaB906P-7oK=2F+Nw@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Thu, 07 Mar 2019 14:55:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> On Mon, Mar 4, 2019 at 6:17 AM Gabriele Zampieri
> <gabbla.malist@gmail.com> wrote:
> >
> > Hi all,
> >
> > I'm trying to build a distribution that has multiple partitions. The de=
siderata is something like:
> >
> > - rootfs.ubifs mounted on /
> > - data.ubifs mounted on /data
> > - opt.ubifs mounted on /opt
> >
> > I was wondering if there is a standard way to achieve the goal. I see t=
hat there is a tool called wic, but it does not seems to support ubifs. I c=
ould post process the tarball image and doing stuff with my scripts, but I'=
d prefer doing this in a single bitbake run. Can you suggest something?
> >

Hummm just reread your mail, and I think you will probably have to
roll up your own image type. The meta-raspberrypi layer contains a
custom image bbclass which you could use as an example.

Good luck!
Marc

