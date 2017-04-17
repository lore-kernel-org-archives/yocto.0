Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33F52E00AB9; Sun, 16 Apr 2017 18:34:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2BC5E00839
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:34:21 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o81so6812401wmb.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=sTY4ESRas7Ms5uERbsLqlWYvvJqxydeCIbmgKTC5vtQ=;
	b=L0oMehsuAV5o8b8VUCvLNMMGtJ10qHrfHZQhTeZ4/wt/sM8ZTaz01XeZylCnzB1vPa
	JWroNxSYdnLTxh0cqxfJuKIoVo++h/zDpVMNe2UlbSjzVjEr4czQAggwB7BLtGsjkmVY
	ssB29G3CcxE6RMwz0RuT1A6J5RzC2JWRi+C2tj0BFVNUQhGDdRcnslS4ZuoF4lO301kt
	zaBd/zCfBBvgq93kemmFpR2GAg8aReG2WsWSK3UegC/T9zaMAY4Q+idahqjHDX5Uic3b
	UBOF0Lbo6vwtSB1jywwfDSWFQ9Zr5rZW3x47JrZaGWmgqnaSpNbgIIIDdiTgp+e0Z1hl
	2e+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=sTY4ESRas7Ms5uERbsLqlWYvvJqxydeCIbmgKTC5vtQ=;
	b=iiazX2XYzBjjNyrBPfp/wd0++/K0/H/bBM9frBiF7em7X5W9XTM8HxNGOTpwxeFkU+
	PtrmX50upQNJNv3cWOTRKtzJHE2VPaM38coidVIZ0VMuFBrsbiDc0NUaVgH6xSRND5pn
	6SOOQbqgvthe91/84TVjlkd+/DbPgwY7qinLSd0FnShzwl1RfjBz7wliURvYeLy0KzWV
	MIxZEF6LTeLzCU72PNrELi5cI4YRJ54RafDYfZ3e9DlWeTGAyjsaOTvoD3pl8e3+cS32
	Oh5jxXs/oZ6d2prsMF3N7QeUFdqpl/nBPS9Zy7TdfU9N26Iz1tWL9ZPsrQdQa3aqcYCm
	erfw==
X-Gm-Message-State: AN3rC/6HzVW4d1u6GYTxjxpNQb2gpDvFEnaP3hOQtMqIGN2qua6QPZpk
	wWa5cjeDffDCHw==
X-Received: by 10.28.93.65 with SMTP id r62mr6527497wmb.77.1492392860821;
	Sun, 16 Apr 2017 18:34:20 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	b42sm12310495wra.10.2017.04.16.18.34.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:34:20 -0700 (PDT)
Date: Mon, 17 Apr 2017 02:34:18 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Message-ID: <20170417013418.GK16624@carbonA>
References: <1491591562-14385-1-git-send-email-paul.gortmaker@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1491591562-14385-1-git-send-email-paul.gortmaker@windriver.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] README: document 64 bit r-pi3 variant for MACHINE
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
X-List-Received-Date: Mon, 17 Apr 2017 01:34:32 -0000
X-Groupsio-MsgNum: 35600
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KaGhPsiNaI6/sRd6"
Content-Disposition: inline

--KaGhPsiNaI6/sRd6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 07, 2017 at 02:59:22PM -0400, Paul Gortmaker wrote:
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> ---
>  README | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/README b/README
> index 9fdd5eb523df..19c38c3a085a 100644
> --- a/README
> +++ b/README
> @@ -80,6 +80,7 @@ c. Set MACHINE in local.conf to one of the supported boards:
>      - raspberrypi0
>      - raspberrypi2
>      - raspberrypi3
> +    - raspberrypi3-64 (64 bit kernel & userspace)
>      - raspberrypi-cm (dummy alias for raspberrypi)
>      - raspberrypi-cm3 (dummy alias for raspberrypi2)
>  d. bitbake rpi-hwup-image
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks Paul.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--KaGhPsiNaI6/sRd6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj0G5oACgkQJrqo2vax
FPZ0xA//RJJhUiofs8K7kr8Qvi3+gmCBdR8HFJVkTC6bsCqL+5THwVeGs1niLiOP
DVuYJqgriur5oj+1Td/893rVISmzUMDn/T3rHFob1hj46XEaOVaKxdrcEIp62BCA
LhvD1+xw65LZgZLwl7N3EzQA9ZUQ2pZKDSJrEpzecEjygGlUABmFZ7RdAjGVQqZO
fT5HgRaapxGOddib17L4JpEmz78vPbwJs+zEtv721w7rp5yDtiwcLE4sD8KUJC9Q
FZRjh3U0gawnPRYRAPVhTkhGbHmuPiLJRjxURIe50marovl3FlnV1W+SuY9ryDZr
Zcih3ZSgGLzNQEpjw3uhsd84kfLlE7h08ZJOlz5X6WWhNkd0TSKrP58BFooonWe0
lP0APsgHL/Vl7ZfbjhckXL34zdt6/+9rJA+yNgxIiUUk7JRx81NNPQ/D3stFhOiV
chxSQttUlvY+emDS9Umu3KKayvad7Bbbb2dQ3GKXWW0NTEoR/CsBnf589Fy8pnsi
qZr9rtf8P4x4Ti+TeLFWraQtzvrd5i8vTLC2lKOV0kgIgXQi0Uc2fRnS/eJBR3Wh
HrTIjvBAJmbUD1EI+1z+b05lUbnu/8uP6bRT176c6eNvpzyHIcNQcGRtTVQX0vyF
FNAdBk3sSEc2ijq6J2dcDBsK3HhnXGUz45h2ijomGchNINJ5qTM=
=0a7A
-----END PGP SIGNATURE-----

--KaGhPsiNaI6/sRd6--
