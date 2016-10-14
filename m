Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D241EE00E53; Fri, 14 Oct 2016 00:43:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31F4AE00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:42:58 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id b75so16535233lfg.3
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 00:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=kmpM6NtVZBiNoAgGiDfzyAutsiUiJxTp7JbcWaC0NoI=;
	b=SDbgL3Dzs1r/0k+Soevk7ejn3LgqrW/pw6sUO7w/ntHJ/2nwnhR6E0yHyyBqQGgyx8
	Tw73P4a7wi9NtaQbX8K1G428sYmRV9Lx/JeSTkDgqfcH5ye0OPisywUn1qQXPU8PZT5h
	qZyx7iW9sWuKhWdyINFIMYCI3cFiu9mO1ueJG8gTYl4UjaTEwJEm7Gey5Zfvj78694Wg
	8MhOFRBACpQKMzxkBdyvND9fYjG+FuB5TtvH1cvYgEfF1C1S5YKBjVFHXU0AAWfrNm2m
	vkUuqZpqZJCdWnJZPl8LtWA8MZc3MbY1ngiCu/cg8neAq5uW/mhm8RkK1+SnZXwaBkxx
	037g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=kmpM6NtVZBiNoAgGiDfzyAutsiUiJxTp7JbcWaC0NoI=;
	b=bu6wl+u1oLq9CllQRj7IXH7I37cuO317uv1PFN6D8HmwSobKGT3ZHhxZH02KSnY6rx
	JvVbNoe+QZdFzxrzcX/Y1fxGIVFH3fzrdrh4oyXPMD1w+cUcI7SmjDSVBcPOptO+TL+c
	yMA3aEzqDU8kdpD/dgSIi5wqXRwDkmrPZ6xApGIMHleDHl6M67lgvTvgj8Fsa1O1uyjg
	hZSBsDrS0b9+yHJ0fixyEgbuSl4BjTcu2GmfFBaWDLTGZk+IiDzxESjqkJxdkkjLnns2
	bRBMizkpi/NGLbAVj/Gq/mWGyfH6AZ5TsGOnRH4nSfiCyk1y9zLGXn/NoL1NDzua2I7B
	k0Kw==
X-Gm-Message-State: AA6/9RnE9r4dtXvrOrX/TQMO1F5E/oU7sPFwiiN+kFvo41x50MIIjap8W3c67AbiB+j5tA==
X-Received: by 10.194.246.169 with SMTP id xx9mr1070050wjc.76.1476430977305;
	Fri, 14 Oct 2016 00:42:57 -0700 (PDT)
Received: from resin ([88.128.80.31]) by smtp.gmail.com with ESMTPSA id
	af4sm20101302wjc.17.2016.10.14.00.42.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 00:42:56 -0700 (PDT)
Date: Fri, 14 Oct 2016 08:42:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161014074250.GB28288@resin>
References: <20161013081532.22457-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161013081532.22457-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2 1/2] linux-raspberrypi: Add recipe for 4.8 release
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
X-List-Received-Date: Fri, 14 Oct 2016 07:43:01 -0000
X-Groupsio-MsgNum: 32392
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline

--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 13, 2016 at 01:15:31AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> new file mode 100644
> index 0000000..02623f4
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> +
> +LINUX_VERSION ?= "4.8.1"
> +
> +SRCREV = "5b7970b19bbb2ea1620591bfb6517848696ed0b9"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
> +"
> +require linux-raspberrypi.inc
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Compiled both 4.7.X and 4.8.X and it's a go. Merged to master. Thanks.

--
Andrei Gherzan

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYAIx6AAoJEHO76Gt+erfPfdQP/0MOerDZ2Z1ZlMz2wVb2qkBw
4n8xOSJtDqQviYR3Kzj7gS+RBkF6HVzVH6b80HEhJS/NhMmG1FJQIUG2XncjPmyc
thOxRvXIFMI1NXprPNljYfI44CxoFMJDdxMJqzZ6Kst9ewNAh5UNqyksVtYqZ70d
W2pWuQDXbJNT/nV2BuGfWXSFwQB6r1ttUwJoItlGOF5Q90JFp1aAZVp3zcf2ATnh
3V/xut29Crpfb5eZJsu8USrhr7VoTpwARzGmoDxzGMUOFZJKr0x/b4ID9xsrjA9B
E5DXNABFhlXai7UoANVtQPx0zdfW75busW5ecZqYDiSVJMTAbWrE0rOCPQvRGPay
gQkRMYBVyUWFevaKeUDEpW0rfTjcTx9dVhQRNhkIbTWjiLVFBHIoMuqI9CxZcBtq
xFbKmAwPFb6X1shhYvrw89/vZ1cQ6p+oNnxnp2x5cNj75jBJrNOJG5Eb43PDvHRs
aS897IENnpcFLQ4rmEsIzUW5V6kRWV7LVmUBjI73OBEfjj3ZzxOWBKNUXgZwAFDF
dDK7AmhEAEz6xX6YISuIPTfJ5qnaj0PeJNuefcZ3LqYrlkSYcDbUPWozlGrEucNo
UrfSbXDHd6tk1dNvbF4gZM14Y0sHnrPK+Yn3BShPpWgpaxa4iPUXtvvu058KTnqG
RxVOaNQOvJm0cz/d+aFV
=rj1b
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--
