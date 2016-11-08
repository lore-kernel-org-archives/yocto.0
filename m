Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB227E0097C; Tue,  8 Nov 2016 03:02:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B67F2E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:02:06 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id c17so21722570wmc.3
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wZ/ahKuTT31iSLh0hb9Izh85/Zc77d5uvbW8BtR93FU=;
	b=2Cybr4xO21sj6EZ10o6vmwnOll5YaCVCKGRB9WpxPhUzPvXP9Dwdn/pFXNW/6yg44m
	Uj2iUEVK4nRt9I8AJBr99zP0gNBURp0OMOK9rGTqqTE9rjHQDVFWrLau4sbeaNbV+4+t
	sytR04KUvv7MQSA0z/xxTfecElZmtOMTiyhU7FruXAG8+LISgu7objS7ykNVphrKdTg5
	qs78O/Uj5OfQdtRafeEa6x5uY07gxpAuD+uVaFu1mnNQ5y5dcrnC7x9LypPzJKBFqAoq
	WaLras5nmWpAGIJUHUF0S7xRlRxyE0Rzunlqb3oHgqf5jIfdHZEwHd0SipNedwIStIR8
	d0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wZ/ahKuTT31iSLh0hb9Izh85/Zc77d5uvbW8BtR93FU=;
	b=idD7kadYcurMJR5MtnSRmEhQRJukkACePmpynz90B/WyNLfUaEeBzJjA/NIMtw31bK
	uggzkYp+PJRy6U9j0+jIOjbr6oyG7+p/mjp7ILgrOS2JT8vGBt4NIuw7rnQHiEt9iCe0
	N6NWro/3tMQJGYuzkAugEXWnI0r/08tJ5XJpAbkBH3nGXWoooBOXzq4+292Ztiio9Pav
	9RmJjoHej0fuA3xABBu6R3nTEZChZvXfxOmXkT2AkKjS+HSMhKGehXetfFxPuBGsw6UE
	zXMnpG+S51E1SSt7pZ6a8G36dCg/u5pBHs9VeY3lpDvYbqMWm3Yi9rcbJvZX5/459Zlg
	YtlA==
X-Gm-Message-State: ABUngvelM2SaPezd6DVgUo8w+ZSdJjgDgajc27UnVsabF0BGM8XNSHhUZ1itnTGdcVQc7Q==
X-Received: by 10.28.147.81 with SMTP id v78mr14856649wmd.60.1478602925574;
	Tue, 08 Nov 2016 03:02:05 -0800 (PST)
Received: from carbonA (adsl-10.109.242.134.tellas.gr. [109.242.134.10])
	by smtp.gmail.com with ESMTPSA id w7sm315825wmd.24.2016.11.08.03.02.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:02:05 -0800 (PST)
Date: Tue, 8 Nov 2016 11:01:52 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108110152.GD19465@carbonA>
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-4-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161031165208.16286-4-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/6] userland: Update to latest master tip
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
X-List-Received-Date: Tue, 08 Nov 2016 11:02:09 -0000
X-Groupsio-MsgNum: 32908
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SO98HVl1bnMOfKZd"
Content-Disposition: inline

--SO98HVl1bnMOfKZd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 09:52:06AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
> index 3c63f94..7558851 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>
>  SRCBRANCH = "master"
>  SRCFORK = "raspberrypi"
> -SRCREV = "2350bf2511fa49e177fb35c9613eef1b657a7506"
> +SRCREV = "2852d9ff5a9038021f1c22d95e8a9e3aad09893f"
>
>  SRC_URI = "\
>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
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

--SO98HVl1bnMOfKZd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbCgAAoJEHO76Gt+erfPqeAQAMGzCtioHVAeptjSeVCSq9zU
tw76o5dbUpuB4e/5IEMGW4y+cIyFTfKy6A7cxAyvKJ5wugdaqUyhGoGS4fNCxyxw
J5abHBpQtuB5AlbrsmHCKqJIeKQvUzEUqxkbfBUMgg+9lBuh4w3o+InOHbpn7xHv
cAJ9Vwzai7pnj0xSZwn+Gjm5YAwUU8LioAeCqIDzft4jwBtIGthN9gFR7YtShuvl
wDTElRShNDm5nlH1NWvS/nw8VoXHiIPMA1Hvlaf0zPkBtPSqtxamfTUBm/YS3UCB
M7vqywppBxN7NoTwQBWC5ygK/rb+f0bcy7vePWo3a6eRrWfrPb77oluau1/T8a1t
bdoTq1S0cCeidsBlxcqestqNAQK6+Wthoq6itx99Cyd6WnmyZKyJZMgdphOJl1Ha
d6vs/ao/ZT7771vTy1qrpAPTm/exzjRTbaIZVHpN2pBMoEx891TO1KxlyPi+8wqN
8pAWZWJZ/l6gWZN6wkf2eAVx2soyZIMp3q8RTSmJWnBTHS8kOEuUFsqj7fz0Us9Y
b4vi9yzEixagq6P3pMBXWxZhqwj4J16Rxj/uiTmDeK41fprgStXVqeHqHtjGKrTq
w3yRLWlc5KwBXFzxJAYK6ljiZEM3dBUpIVVmBo7SMW2JqKCaNB4GkjZ0NBhwcEh3
dMqrI74+6MZ2RDOf9AaM
=GBu4
-----END PGP SIGNATURE-----

--SO98HVl1bnMOfKZd--
