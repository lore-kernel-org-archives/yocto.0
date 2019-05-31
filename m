Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C581FE00D61; Fri, 31 May 2019 06:22:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890F1E00D59
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 06:22:57 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id a27so6220676qkk.5
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 06:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=OQWGb9eq1xKqkZ0944oxLnksYsfizzhqXye4uAaVRrQ=;
	b=O3kTnaLAeWhW0tTQ+6tnzvkJzpD7l2KrQGfezkPa7hnLfdR/peTsf2w53a3gWgLCq+
	aZ51wilW+OCGVI/PZo8lMzOMQasJh/eUAy9tDjXUsaJUYzgETj5lrBe1ioOsfapkmwsu
	Nt1kkTsEIqsVHtATrKksn0t7VSGbqJIkRsdNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=OQWGb9eq1xKqkZ0944oxLnksYsfizzhqXye4uAaVRrQ=;
	b=ul/ib7k5oiej5KKZKLGzEAufGyV94zaaUWbRjJqynbqZU9166P5G5sowEVwPRyhCul
	WmM88Yq2sWCRgKVhttK4da6tP97VEHbM2AjQBu4gKi+svO5JSxxWpHga3c5/rXrWWYh9
	637HYMfzS6CJomX8a+IpBA0wqYuRwkjFppgPNJ0mT4dj4tIwv2NMj6qjtI676LUSYZLX
	Meo9wvJC3K9KZh76XaJIRDEG5sVIKO0UailaebAqmjYkikH0L92sI6v6fC4hpD0ibVXn
	92VugukV4Nut20AGmOdNI7H1JY4kGVhoyAq3ORRv702ukxaJ/s6EhtfkzYvZtdC4KvkK
	kDEg==
X-Gm-Message-State: APjAAAU93hirld9rr0wXWy5ehK4KqfkNCS7+V98usXHCLAagovT12WbQ
	z11tv0gTqcwkeCw/xOVTZLSOh4g3rgPv0Q==
X-Google-Smtp-Source: APXvYqxRQCOaKU9SviK4Npu7g898q/KGhazeoEheCgERrMRFcydPBqnptvJZ3lcJTSoqtdZDfTxkpw==
X-Received: by 2002:ae9:f707:: with SMTP id s7mr8489639qkg.187.1559308976607; 
	Fri, 31 May 2019 06:22:56 -0700 (PDT)
Received: from bill-the-cat
	(cpe-2606-A000-1401-82DE-AD03-AD73-D69F-32FC.dyn6.twc.com.
	[2606:a000:1401:82de:ad03:ad73:d69f:32fc])
	by smtp.gmail.com with ESMTPSA id d7sm254639qth.44.2019.05.31.06.22.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 May 2019 06:22:55 -0700 (PDT)
Date: Fri, 31 May 2019 09:22:53 -0400
From: Tom Rini <trini@konsulko.com>
To: JH <jupiter.hce@gmail.com>
Message-ID: <20190531132253.GC20781@bill-the-cat>
References: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to extract files from wic.gz image?
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
X-List-Received-Date: Fri, 31 May 2019 13:22:59 -0000
X-Groupsio-MsgNum: 45447
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7OoDBnYS+k9XyeYv"
Content-Disposition: inline

--7OoDBnYS+k9XyeYv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2019 at 10:21:40PM +1000, JH wrote:
> Hi,
>=20
> What command and tools to extract files from Yocto / bitbake image
> such as dev-image-20190528085324.rootfs.wic.gz?
>=20
> I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.gz
> to IMX, I was advised to extract the archive and use "uuu <script
> name>" or "uuu u-boot-dtb.imx" to get bootloader work first.

A wic image is just another way of saying it's a raw disk image.
Decompress it, losetup -P (generally useful, but not needed this time)
and dd out the contents you want.

--=20
Tom

--7OoDBnYS+k9XyeYv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJc8SqtAAoJEIf59jXTHXZSVkAP/idqz+W8HmpQjJiuKMg6HFLk
MjwknTJx3v97WP2ywMU6HNBu9jRWmohXylDBY8FWx8RRxuhwKAg3/Fzy4D7yxNJM
o4x4h4yBYDB8HjW6VHq8conCmcMqEXytTnVz50ZO3uP8MazaXwuHd6iJsHp+Hii5
ZuumgsRki/5reTM8pwAbN1iSKdpEz6Sm53JQ/vEmFxFqzC4QMnF0rSOHKhqtp9gt
p5+3OCOVNGoXrdYVzEEC9/xFm+QDQqQudhzMLyZ3hHhPxd45lb+PSJlmpV+yIIxn
gPnAGv/qp3MqILf+ZF/29W3oVoVvXH73eBUT8tJRgens+bYLXCWCbE01z1xVJOId
Qd5sWVoStG1jSK9f2fqIEInSjtqLidTGbCqcNmz/EM6xAc0KXBE6QAjYJ34HMP0Y
Vuqc15skgnG88RBOeR5OH1Kv9CZTcunIJregXgOSoCjSKFSCgUrmPnBcEaljntA4
OsmzeaqF/nX9mhTmrZ01mvJ9cJ6N3bHi2A97La/2hZw1ijZzcrXWKBG5iVgo42Df
SfZr+8PlKn+xsIbMgeRfyESbv1+dl/vK4tWOCYqbqgYAlQ2qWg+4P0vM5XZAXSrm
CGl/jXUvMAFXKtMxYI/F8vPkZh85XlNv0mBHkfN8XQEfqEWw2PxBQHcNopdM2r7k
og40qtEZZyPln1GMxhGQ
=Bx0z
-----END PGP SIGNATURE-----

--7OoDBnYS+k9XyeYv--
