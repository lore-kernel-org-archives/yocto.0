Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECAA7E00D56; Mon, 25 Apr 2016 00:07:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AACA6E00CB4
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:06:47 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id e201so74786819wme.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=TXBEyJ8t3Uz4DU29lYVbO0GKNEd860kSCc2SHeT7ztk=;
	b=edGzUhIUQVtXLEsvhY9iLhfNo3a3dOrHh7RKSkSzCa1XOlbWRhSlpXUFbzqoWF01wk
	Sh2cw60IQ/mBerdUshpxTvPIpOs4FWNy5Pq0tSb/Xy20gnZ59eE73bCFfg0GtIXEt17l
	IOOfpoZ2KFxb+qrRljdDwr7ZzdHpbsmnKa911OmrXcQ1j8dsu6KLGpPV9yDHQ4D/CMfB
	9kFa0xbfk+T+FyJfHMDxw4bhdWqge/3LnifLWfcEvJxI+SXgXjH2JkQ0SQqg+E7Yv0Q4
	7SpyAznQ3ZvfeyjWR8hLYM9kJDmeZXAQ8ZwNGsse+V+vunwr/w+OjszbjYWWZfvBk2uc
	iIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=TXBEyJ8t3Uz4DU29lYVbO0GKNEd860kSCc2SHeT7ztk=;
	b=Kq2wOLx6U2RDzcU7aXWXnR7aKFGEvsQe6rHTK/JxzHuM+p5oyhdzW+3QBUVffU5RaR
	ejol+OHYuns3YONY+yZ9bhIHXDphIMjvZf+wXdA1hXFCI8NDiSfV42Zz47GAOk01Di4h
	SNf9+Xddd6XorKk1P84NPFz6auchG/VWr8eMXaf1MmqbBYgzbrMPaJkLXQX6Ac3HucNU
	lkv2fTznlr7Nhjmcb333NYTT8xr3IFFatyXXo7ZEzPoeim2v2afue4F2tC1VxW9iAvKx
	hvJ1PDjP0VG2u2vW8L0XZ2Du/mpkoZk4Ekzi0sjO9KehYqzCcfJYbyawdr0b4RTnStkP
	tQQg==
X-Gm-Message-State: AOPr4FWUlzhoEv73fnOkLaq+AHMiR/oGNokwJi7PZxFOrekNGtgVqkfG8CBRAQ+V8xNVtg==
X-Received: by 10.28.139.203 with SMTP id n194mr10102117wmd.40.1461568006870; 
	Mon, 25 Apr 2016 00:06:46 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id h8sm17207948wmd.2.2016.04.25.00.06.46
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 00:06:46 -0700 (PDT)
Date: Mon, 25 Apr 2016 09:06:44 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160425070644.GI29750@resin>
References: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461336375-19194-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-raspberrypi][PATCH 1/5] linux-raspberrypi: Bump to v4.4.7
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
X-List-Received-Date: Mon, 25 Apr 2016 07:07:01 -0000
X-Groupsio-MsgNum: 29607
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fLj60tP2PZ34xyqD"
Content-Disposition: inline

--fLj60tP2PZ34xyqD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 22, 2016 at 04:46:11PM +0200, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 8e4530f..9cb8aae 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.4.6"
> +LINUX_VERSION ?= "4.4.7"
>
> -SRCREV = "2faaa2ccef9e4c595bd26f14285c225ceea6097e"
> +SRCREV = "3de232825c9ba5989522b8691eb6ac5df6619458"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-dts-add-overlay-for-pitft22.patch \
>  "
> --
> 2.8.0
>

Merged this series to master.

--
Andrei Gherzan

--fLj60tP2PZ34xyqD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHcIEAAoJEHO76Gt+erfP9bsP/1eCj87W2m1sg3k3vKFfBrbU
VdBy+Ms30NME2zU4ipsRxXdLPiPEDOmVWjFFjPKPD+2VNHDuOE7H0XumNobGaFWl
LZe6EiAUw7W9WLIb3OzeJ+pOG7BLJyEJfrPxwDLZr2Dg3nJvk2H17ozikDIGYTxZ
2zexlNX2k3ru29PWOz4NyNqWaNzOI4/FhkNp0P4UimS50lX8lYWGDfDnF7J6wtRK
eQ46/TKmMjBK24eDQMeLkTgUTaogTcYDs4PjYPg81DQsCgvw8EzZbXDfJ+iNwCid
DDgpwFToMpoGQ2DxfsydSSw8CrapNy+93WzqPa9idf+VKwQ2nZ7LuKSYDURKjpZl
+kQ1hGjxH/2puaCHN80XdZc3Uoqa0p014M9JQZHWDFD0lwTAVb2pTppukMDcnaBu
CdL4eYqH66e5cGN80GvgusUmNm8yrMCEP70cy8HVMoZTPuRebsvUMDulzkb18EbL
5naZc99b4ple4PkDejcZLR3R0k863CFD2rWJcJHNiu5XBRRZ0P7ECJUCTVYT0Vj1
nvndHI6qQ2/phFL83GbPZJoplczKsLFW8xr9jtRMWAcYOrAxi6OVYBhtO0kHVQlW
IvFqX2S+C5r0gZHEs/0ag7wP1YoGUnqN7plHz59N38coJ26aPv1YgLu9Ri0BkCbN
ZzgjeIalk7o0EY6HPW/0
=/pd3
-----END PGP SIGNATURE-----

--fLj60tP2PZ34xyqD--
