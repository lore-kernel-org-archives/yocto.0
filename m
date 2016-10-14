Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8A5E00E96; Fri, 14 Oct 2016 05:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36081E00E53
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:56:53 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id o68so193044170qkf.3
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=kqXo1oMET7GR/VyRkEMpJt3/pRa8WhQtcb4CrfsDJk0=;
	b=TiDXyIfLNKP6ai/R9Jh+/sh/JsQUVMambs311V5mVNUuH+FfGQefvapzIVQhbtKdy4
	H+ZxmePA4A76ry3wFOyYXr6xnpPbfXR7rc+gf01AFfqoIQHbwa2Xf4v0vt0PTM7ERcga
	fJBthdcaa3bFflR41+VOfEbX611xuZJ/5iIl6Tls8rNjqiILrW5X5q3m8ytSzMDnZ5Kn
	SnTsjAJ3dt2bIJq11FDpyhIWza6b+o2Qcttk1xBpjfQQBfHV+Hn39aI6KC7QO/sQO2g0
	RcW67JEGAPbhSHeXl9oGk8BtKm3XiKpCpJXvZVBWsXjxUkRG8UbpxcdpoeSdFDikOlz+
	vW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=kqXo1oMET7GR/VyRkEMpJt3/pRa8WhQtcb4CrfsDJk0=;
	b=aMCvtLupLjAHdvWZIojAi8UpPNkCa+MHiLdYvfseieMDHuFRYOha9BOKYDLuiH0giq
	WsBdx6vRrS+AFQVHMXKalzWvzcBzIt4CeFL7Ce/CayBiThytuq3exUX6129tOAKK2E9y
	TqNyp6v/k6aGWGcjd11V3SPcmNpSv+ZHptG8kkvMI13Pl3caaZ8BcDI17SkQXDvt1szU
	SvijkZqdF6icCSAHqyH/NFsYprZ7JXV99SwsHa2VsDX+es1ku4zd3/OfmCAWvE/umSIg
	7DLNSd6ssy/42lR+BZSHOfkVN0Y6Pg4zHmbDHaFpc+oQuiqDQIyC2dTIJq1AYYrygunU
	idUw==
X-Gm-Message-State: AA6/9RmO1/jyoz9W8fBcfAUTsTS/KvVN5tdO0Epf9WECdErWHyd9q8SqN0gOoSyJ2L0/6g==
X-Received: by 10.194.253.163 with SMTP id ab3mr1866068wjd.204.1476449813155; 
	Fri, 14 Oct 2016 05:56:53 -0700 (PDT)
Received: from resin ([88.128.80.33]) by smtp.gmail.com with ESMTPSA id
	a2sm31795424wjn.10.2016.10.14.05.56.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 05:56:51 -0700 (PDT)
Date: Fri, 14 Oct 2016 13:56:48 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161014125648.GC29587@resin>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<20161014092501.GD28288@resin>
	<CAHUNapT83B1d65YQCp0pHrr=8cnaE+vvNOkwNnvWV51NJ4HB1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapT83B1d65YQCp0pHrr=8cnaE+vvNOkwNnvWV51NJ4HB1Q@mail.gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Fri, 14 Oct 2016 12:56:56 -0000
X-Groupsio-MsgNum: 32406
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline

--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 14, 2016 at 08:50:05AM -0400, Trevor Woerner wrote:
> On Fri, Oct 14, 2016 at 5:25 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > I know I'm kinda late to the party but just wanted to say that this was
> > fixed in master. Cheers!
>
> Excellent. I just tried 3 builds in a row and they all succeeded!
>
> Thanks for the update.

Great to hear this. Enjoy!

--
Andrei Gherzan

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYANYQAAoJEHO76Gt+erfPJW8P/R5i8DySStanuOvjWlF1eCDw
nTDD7/E0Pt7JTlD+T6Cyscr/HsqylPcIibG/j1zScpjj885eXu+cvGKKS2ZlbKOk
2U7if1V34rdnJcVcRRFSXVhlTlPNh9fRyUmXMdM1BaHjr8S3NhL1UWKSD1HWOmXH
IQ79RO6r/d1I4PCScyetuOfkbn3RWRe/dEKKKnvEqxlOmrzFrKZJRkHh770J3x/E
uO/cb1fDK5KJeT43TsUHa2oWod91vtC/42BBUWegZIGh0WEYEpo1kwe7irqoke90
aBde7IUamD+5N8AMYvVCKfG10K1bcaOcbCU5L9eTPdp3jp12hQbXwsxHKl09BdFi
4HYkQe7aqOe4u8ZEufWbbM+KzIUDkyFHrSfa2Mx0LhaB+D1ejiE09P6n7GZ6ZETg
OPWmD/NS0B95GlOu5FbysmZE55roVICKT0naA5bW6O5Tw0VRFT8ksQPkFfQMWHdb
4itbI8x+KzEOsgB5d3CGgu7FuO+z0IYXh8v4PaYa/OJl5R8ctzm8rTip2LT14pTZ
bdr7NkQrC/G1il1sam3d/plQTGCxKJsSZjRyC/OPo7zF2ZINviU2ksPpDLfeLBtw
5gjasjhyn0PPrV+mIQCudE8FU0GBNFh+xqQsxN6O3adfwbE1dJml4PrsaDBpNlxW
sR/S8b7usyZram+NB6mI
=pibD
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--
