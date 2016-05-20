Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80D25E00ED8; Fri, 20 May 2016 03:52:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE697E00ED5
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:51:59 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id n129so28141046wmn.1
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=THSPXDbR+YrB/l2Qlt5USidKn//xS0CSxZxztCR8dxw=;
	b=BgHwnwsrFEV+zGqpWZVGiE7/rSZOQZsRvpUOZ+73wQzu5pQFWfmS4CV64jX8m78Zhz
	/3qQFB907f16KsD0oE9TlN35uIfSRwEd1dxWRpowGcA9Ah5P604yFiLPj6VyRQXJQJvn
	ng8lFJVtUM1MspoB4Ja50XB/Qjz8ex3grD97SMahOIsY9JPAsC/DzFloEgEJH7puStar
	p8p0U/mTd9o9SLtGH6k63bV1vBe2kIQVe71Q+UTs7S8jg5pObcZupBmz0yjM3QTrdp65
	24vbB98s25YUewv6NTDFxbxMNFs82IAbS1v2Ig9uYlm9xSdl16iwa0rNbFFmgaVMjiSx
	6JZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=THSPXDbR+YrB/l2Qlt5USidKn//xS0CSxZxztCR8dxw=;
	b=gnBa8xoqEHwqiZ6QqI5rg5ogpYOjtf5S+FZc8pOzV6wKzN9FnTMjglIC9S/dIxejeT
	YXcIij2FZDxnYSOfOFOQ42b5YQlOZ+rs/OdYseVDZ/6IeWPIopnH6SYSHa+vp+OGFF1b
	/Yh+TE5S09KimvcFNcClBU5GyEKGvOqxx4kTx9vemuRrLcrtOOZm4cPUqOu3HlOWfJkE
	zt1HyVfnGFVBGTQvIkYo+ncwQ7tBM7/rChxAYPThYHkNZlZIsbkzsuboPr7hS0A+mKA0
	JRMjBXgPuiHAhxhVZrgJclt5NgPusYnqG3TMTjvCwHr2gZt+3m1RFCs37L3sePiKDbz1
	MFbw==
X-Gm-Message-State: AOPr4FU/+x+UboPOopDmF239Pn0ceyKx0EIYypCDf8Bxw6n00XfZekdyvokZz4enljyipw==
X-Received: by 10.28.213.1 with SMTP id m1mr2927438wmg.103.1463741518689;
	Fri, 20 May 2016 03:51:58 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	kq9sm19132633wjc.26.2016.05.20.03.51.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 May 2016 03:51:57 -0700 (PDT)
Date: Fri, 20 May 2016 12:51:56 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160520105156.GK9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<20160519151111.GB9848@resin.home>
	<CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
	<20160520103935.GI9848@resin.home>
	<03f601d1b285$0a8c81f0$1fa585d0$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <03f601d1b285$0a8c81f0$1fa585d0$@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Fri, 20 May 2016 10:52:01 -0000
X-Groupsio-MsgNum: 30105
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lildS9pRFgpM/xzO"
Content-Disposition: inline

--lildS9pRFgpM/xzO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 20, 2016 at 12:47:40PM +0200, Herve Jourdain wrote:
> Hi Andrei, Khem,
>
> That's what I implemented in the upcoming v2 - except for the python
> checking function part.
> One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?
> I know CMA is kind of common, but we're using this only to trigger a
> parameter to the v4c overlay.
> Any opinion? (in the current implementation, I went with CMA_SIZE, but I
> have doubts...)
>

Hint: Try to reply in line if possible. It is easier to follow the
discussion in this way.

I would vote for VC4_CMA_SIZE. It sounds safer.

--
Andrei Gherzan

--lildS9pRFgpM/xzO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPuxMAAoJEHO76Gt+erfPgGsP/2zT5uwLNCgxF3NEt4NdubaS
2G75nHtlthUoJhZxjc/HL/BsQSDcrm+60H29eYFgKqPX2TJj4dCantQYGv/ViNqn
NBy+8/UzB/3sxhGNxZ4VcgeTRdpFlXbKUXb4naO4GS3FIfLH1zZDIDtC16D9yebU
e4VwDtBdlc0KDuuNVmCiB17lWV6mdeZ1FsrdT0MgcneWiYgHj6zSm97p1QZS5p8C
TQbOQBBjmBPL2DkwLqaZ9kQOWHoqYmfGOepupLMP7uLrf5cwFpJ6vdJiuHzshFGW
1WBK+znIrFdW98KGONTCi5M3O21VMzSw+mhukwe51FDKtjsmm7LKbi6XGVWIa4qO
vryPeTklbVkN4j6sUTTeuCTGXqBu/n0tk4bYEtqu8aIF5pbRLy+Te6HNFCQ2FjuE
zq+OdzK865kCkDSMSy+794bYUmtBqiK8hyp3T1LpJ0LqcynVI6E/nbFJadg/uJNy
EduydklpX2t+i8KO7fBF10JckbGZSXucZPNPskcYKefW30nJIBe12WxDuEPvnycN
6dwKcdys+SE5bBv4Awacm9Y9PVXWm9mdNsBRLBqxHXiPAuZdB1eu+379iXKVCZA+
jJF0srGRN1lzH/b/o4FupNHStR6G8XUxm+owo03NHs6omjgTflYomfxW++YOMksi
MjmgR6GSr+GrLW4Rrlfx
=p2S2
-----END PGP SIGNATURE-----

--lildS9pRFgpM/xzO--
