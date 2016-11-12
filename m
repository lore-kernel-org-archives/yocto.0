Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71478E00CC3; Sat, 12 Nov 2016 10:49:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.6 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [46.198.0.251 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBD9FE00CD6
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:48:54 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id u144so4595944wmu.0
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 10:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=80JqZA+q0bfx2OEwGuv7wv0AVyY9m58bUylUnt9okCM=;
	b=KOMwNKIthmPaWfiXfhKmhNcDLYnbSrCxGZBtQIk0QatSsxrxWQ8tW6TbDAewr6BmA+
	Wy4atqdVlhsk0obccsvL4YnHgGo4DHa3wiXE9hgqPjJpBdlx+k9zH7LWrTofdTdzPHkb
	KdN0oyaDB0UElJ9PNIfVJt3o77nb5MIHqXfCSHFXINzdsofCu2zG4rvcBYU9P4VPcaov
	ou0i/wfCKZN1HE71T+gX0ZcxzxLWmQCgHFMYrrwgjMQSorT08nCX81jEBSi5G+1+Sk7n
	wxa7TnEXPAsAWJxzJL1fAGhDnLSbFcDAtBn2GM0Gb72EW2BHg6D0KAPyPRKEPzMvfl+Y
	vZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=80JqZA+q0bfx2OEwGuv7wv0AVyY9m58bUylUnt9okCM=;
	b=T+ueGh9hB6z0vRH7YK5jlagE3ye60oXEndfEZjBmexZETocGnNjZud3LOmXQx/xMjI
	lHfCCgFENRg70OjGto5ZmDrMW6dpWxuxf33F7CLBUdNpSDN32QcmUHTR9F4xqntN7HMV
	GCeKoPvjeYHMzfAhKIqPaOoIjJnMD4+ddka928Ch1ljLmfO+gdtiRkvz1cEi84Yfe81q
	xkkW8oMXjzUyk50YNHV/dhSL2fH2YjNkq5LBWo4rd+YqWvjiprCY5vzg8SN0aTKKpl4C
	qp8fvlqFnxoWV584GZwSGIEdxIr1vB1b4r4QtrkCFHXddaNIs4ibVoMiSWOJASX6yK/R
	WtUA==
X-Gm-Message-State: ABUngvcj8RmaozVUf17y7b0ueOS9dpmeAzS7Z7hN06xwTEqH89iX36UTBpm36czzYGDkfQ==
X-Received: by 10.28.0.13 with SMTP id 13mr3791314wma.126.1478976533481;
	Sat, 12 Nov 2016 10:48:53 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id y4sm18457868wjp.0.2016.11.12.10.48.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 10:48:53 -0800 (PST)
Date: Sat, 12 Nov 2016 18:48:50 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161112184850.GC32346@carbonA.lan>
References: <20161101134647.11370-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161101134647.11370-1-net147@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: Fix appending to RDEPENDS
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
X-List-Received-Date: Sat, 12 Nov 2016 18:49:06 -0000
X-Groupsio-MsgNum: 32954
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5G06lTa6Jq83wMTw"
Content-Disposition: inline

--5G06lTa6Jq83wMTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 02, 2016 at 12:46:47AM +1100, Jonathan Liu wrote:
> The += operator should not be used in combination with overrides as it
> will clear any existing values in the variable.
>
> Example:
> FOO = "bar"
> FOO_rpi += "baz"
>
> The above example would result in FOO being equal to " baz" instead of
> "bar baz".
>
> The bbappend is changed to use a wildcard instead of a specific version
> to simplify updating U-Boot.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot_%.bbappend       | 1 +
>  recipes-bsp/u-boot/u-boot_2016.03.bbappend | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
>  delete mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend
>
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
> new file mode 100644
> index 0000000..3781666
> --- /dev/null
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -0,0 +1 @@
> +RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
> diff --git a/recipes-bsp/u-boot/u-boot_2016.03.bbappend b/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> deleted file mode 100644
> index 35dfc37..0000000
> --- a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -RDEPENDS_${PN}_rpi += "rpi-u-boot-scr"
> --
> 2.10.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.
--
Andrei Gherzan

--5G06lTa6Jq83wMTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYJ2QSAAoJEHO76Gt+erfPwx8QAIAu04orJEIz5yDnlSUalaEk
5PF/i8Qk6DXqEjYNjkRUC5814Za4DxcdCPRGZhuSgCo7BUp4KbBHK61ioAHQ0m3p
6N2LI7GVzGqxkpKFtQmjiqB0jglFUQUzugSVVoT9lclh5BHpnNITSWmYhi0Q9OdL
5h/lnf5lYr7w+gG+/1fvl5JRKFdtYpkgdEjBsraYq42ImVxT41Y28QJaKbaAAExH
EW5epo9adbnmX5mRGbqT+fa4rZkNEMz2NCxanFLGo8Oz7Yz+TgZOAnV2aKhmimIV
Hz2MR0dyNiyCGnASYpzp10r+7ahFXH7nocC3CZivE2/jMW9vhRzZAbdoQjyxIuQX
GNCvFx+zS57azfgRbxOOZEzKJVM90exr3qmNTGsyDm+XcCc0CnF8Sjm5z6qdYu2m
rMHlDgV9sF5sMW+uy98EdNnfXM0hcAVXHWnNFBiqNa8BbbgovxrY/MtWtlDUiEbm
p5pb+OsG2FbvmLGOcVobPceyPc8ry9vQu1dUY98kJhkyzWwU2oVb8HHpjaS7q/0h
bPGBO1usothHP0/bvKbYKQJI96Yf1Tw9e8hEsqO0/jv1/dvgmu45ZFwiX+KAcqGe
0Bd7XBxH0Ll7IEuaF6Wax6kafzQL6Gj6GY1TBpnJ1iz7+zyj0dwaSHdO4WCF+0Er
Du3T+1X4eXHqL4hJ7YNY
=otYx
-----END PGP SIGNATURE-----

--5G06lTa6Jq83wMTw--
