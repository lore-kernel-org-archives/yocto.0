Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70E82E006EA; Thu, 16 Feb 2017 16:13:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59E5DE00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:13:01 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id y6so2140619pgy.2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=UZRb573nQ05+5jg+cp9WhZFqlybd8NsUixyp7exSzrA=;
	b=Xz51BnBbnNQ0oQjn+Jgp+ii0ccEwf1nG2ZZeVd/dgIKSyCEgfKAvu1Kkt2+6W/Ai9k
	BinpKB2WHJvnD0/lNyEA5J4Zvv1Da4tUw/rhbvVVe1q7ZZPkkH/KwNv/ZWAIVKAO4Pyt
	pOj4D2jN1YSF4ChKZBw6CMPEh/AVu357IgDU680QyMWSQH+GVXR0lrkBo+f4DiDtlfxr
	gmU0urE5jKVI10mA/wqTVgKG6naQ6ZF1dIjZIyyRwhglve9c0nQz5Bc8uxemS0d/5Hc8
	vX8OEtr7lMbAAHTPRRzpQ8qVJdCEpniEQ01OYAs7V9SyrOQkYR5NfLtumancHRXtace7
	uMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=UZRb573nQ05+5jg+cp9WhZFqlybd8NsUixyp7exSzrA=;
	b=O+anzaUKNg/nwixUHbodcFY18dLVvAz0ok9smzrS4SUBmjk6mots9kQKXmz6sjn+3X
	s/1Pg7Jul1FWG/QzBtc3jycBV3FCs5+boXbtJ+1FJwCtsGmar/XqoqOepzQzmVlR0uNS
	D5qRfy1Pl5EmNOUd8o/UgN7kMsPehYafa2rjlt2f5vBvsPLOJFjEeYKYg0UPiRNn7h7+
	mMCY/NonR9uBoWNy8rxGGQUiWUcopu+pTXzzoxlY7pRTdzHdJ2lQvZhv6NDNmgk5STDq
	Y+WxXo5u+B/AylhXj86z+0mypYTisD00PzkobMsGOntit9AwgwHqLziiJAZOFugG+3eF
	4Qdw==
X-Gm-Message-State: AMke39lnQKtimSfLKCkkvIu4+gh5JP5/NhpRxDFtcu/T93WFEOKgj/DsZJAmLYlaY3Q4SQ==
X-Received: by 10.98.35.25 with SMTP id j25mr5887380pfj.35.1487290381594;
	Thu, 16 Feb 2017 16:13:01 -0800 (PST)
Received: from carbonA ([2603:3023:807:fbe0:ab77:6fd:9c01:1923])
	by smtp.gmail.com with ESMTPSA id
	w123sm15603943pfb.44.2017.02.16.16.13.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 16:13:00 -0800 (PST)
Date: Thu, 16 Feb 2017 16:12:53 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170217001253.GA11602@carbonA>
References: <20170216184645.6258-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V4 01/14] Add raspberrypi3-64.conf
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
X-List-Received-Date: Fri, 17 Feb 2017 00:13:05 -0000
X-Groupsio-MsgNum: 34548
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 16, 2017 at 10:46:32AM -0800, Khem Raj wrote:
> From: Herve Jourdain <herve.jourdain@neuf.fr>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 conf/machine/raspberrypi3-64.conf
>
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> new file mode 100644
> index 0000000..5598e50
> --- /dev/null
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -0,0 +1,15 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi 3 Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
> +
> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
> +
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
> +
> +require conf/machine/include/arm/arch-armv8.inc
> +include conf/machine/include/rpi-base.inc
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +VC4_CMA_SIZE ?= "cma-256"
> +
> +UBOOT_MACHINE = "rpi_3_config"
> --
> 2.11.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

The entire patch set was merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlimQAQACgkQJrqo2vax
FPYGdhAAgp+N/vyqV/J1YV9w0tRZS1iDjkmCfIdCUSquaJqcaH8qAYOE2zaC3OU+
GNVCR92iJZJhNQK1eXKG42y/ljFluZ266442Hf2VWZNIkr6RiamBbNfF7oWQiCJa
rCWYG56mPR6eETCZBpRdoKgKBf1Ud/dS8gyOa75lobu+u9CQ7neBMoHm6hUcsnOX
Q6uI8SJC+TQpOt+teUAWm8L2fFlFopQhVDXc6bjL7Uo6NJPoPUQsOTlQk1CwUmji
0TCGFgMuDJb7bzt6E09zXgU68UQ1QK6u2u6Eobpl7XzLjOQjx1UgUYHyRtsWzbI5
PP0s3BHnX4RLW7POOxEd0CQL39GMRHsUJHIyJO3mjZb4Yduyj0P9a0hmANOK9Kjg
C2KG+vAVm1NWj9ytofsvDT6HumyJc0Dw7h5RnayHZzk+qLhsK4EV57kfg+2y5ngu
uxrY2EToee2U6W/W4kwxtOzrPZxIKNREaGWS19huptU6SSBbPQSY99KqycH4H8zl
wVUdQSyiGhlqrf90emSZaWspwlr5JQi+EnicsDhMdMIzmq4/KWtVWJ/TyVyQEzKN
Y952eStZFVDur2VhavWzwnezb61PL2dTAxxyxwhekB6EiVCErijBdj0nmYeR7KaA
Wh9CZ9gGbogXGLyvfAp8WurroMp5qTJIjZe3M1bo3Y0FNnH4tG4=
=hpTE
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
