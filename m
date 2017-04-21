Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E38CE0095F; Fri, 21 Apr 2017 10:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D75DDE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 10:01:49 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id w50so8298703wrc.0
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 10:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=wtbt1q5o8GF9vnWWSAI/PubfyRklL/9AstameD+lgKo=;
	b=hvf7nMLaWthDmBviotjJczFK6NSfEdaLAKg18A9/WLdgjqrdhnvf3NcsGp4EyITmj4
	ZDuAYCjoUeGQ5REbH/DzUbWap4t13yyjGXaKO9f9UAEXYOS6GoXtwene22FNQ+HE1Hds
	l5KB38ENqI5FDxUmbV4Ir6ZtVDlw3hXmo+879e1+qu3/Lyndcip2FkLGTPj81m+8S0wL
	EpRRI0ahpKD18QdEdv+gKQ41cLDI2nJlKxg06d0kQohLItcvMk/1Q5DO6gVnhRFDiChR
	RkheQSOYm/VbvmFnxWiikZYXd+FhUHEJvQIIlTFhhkdNHLSk7hfBAhL0HGkXhDnsMpwf
	qZvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=wtbt1q5o8GF9vnWWSAI/PubfyRklL/9AstameD+lgKo=;
	b=XJiShKQX2gh9pAOOj0ksK0Pkxa2KV4rMA+Y4+dqpfbMncg739X3yZ4oOUypZuxHtA6
	RURN4ZD0dKfpkk744GrSkcSXf/RWGCzrxjVIt7SPmUgFWi+Hf7fxZXebxFY9oesn1wsU
	GUWfASuj19B7jMKUeAXg0JnQr9J27P3VQ/NhlVCS6l7AipFSvVdMcvpkcCs7k+fm1Bf3
	/XhVwk/c5/jQwXCA9arwgyUvjt6vsN/Yew5035nahMI1ztm+m72RR+MozvygqnnKdmVv
	YtcO4ltjG5bQAtmSHWSJKpgEmPveMtDIGiujI42Jq6vaRR4qKJMQ/d36hTJoX+1gipRy
	9erg==
X-Gm-Message-State: AN3rC/6VYqYISvAyt25vKCMvm7e7Dbe2yK9qpJTYnCfSzoIf8/KDg5RN
	4ynlT7VFxkmLwQ==
X-Received: by 10.223.161.205 with SMTP id v13mr15111700wrv.127.1492794108480; 
	Fri, 21 Apr 2017 10:01:48 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	j2sm12258609wrd.28.2017.04.21.10.01.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Apr 2017 10:01:47 -0700 (PDT)
Date: Fri, 21 Apr 2017 18:01:45 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170421170145.GD32138@carbonA>
References: <1492763872-21212-1-git-send-email-gizero@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1492763872-21212-1-git-send-email-gizero@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base: fix make_dtb_boot_files() for raspberrypi3-64
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
X-List-Received-Date: Fri, 21 Apr 2017 17:02:02 -0000
X-Groupsio-MsgNum: 35726
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IDYEmSnFhs3mNXr+"
Content-Disposition: inline

--IDYEmSnFhs3mNXr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 21, 2017 at 10:37:52AM +0200, Andrea Galbusera wrote:
> Building the stock wic image for raspberrypi3-64 failed to find dtbs listed in
> IMAGE_BOOT_FILES. This patch updates the make_dtb_boot_files() function to
> account for dtbs listed in KERNEL_DEVICETREE that do include a path prefix:
> this is the case for things like broadcom/bcm2710-rpi-3-b.dtb (the dts dir
> layout in the kernel sources is different for arm64). Use the same approach
> already used for overlays/ dir. While at it also fix a typo in dtb overlay
> code path comments.
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 517d5ba..4a0ea2a 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -61,16 +61,17 @@ def make_dtb_boot_files(d):
>
>      def transform(dtb):
>          if dtb.endswith('dtb'):
> -            # eg: bcm2708-rpi-b.dtb has:
> +            # eg: whatever/bcm2708-rpi-b.dtb has:
>              #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-bcm2708-rpi-b.dtb
>              #     destination: bcm2708-rpi-b.dtb
> -            src = '{}-{}'.format(imgtyp, dtb)
> -            dst = dtb
> +            base = os.path.basename(dtb)
> +            src = '{}-{}'.format(imgtyp, base)
> +            dst = base
>              return '{};{}'.format(src, dst)
>          elif dtb.endswith('dtbo'):
>              # overlay dtb:
>              # eg: overlays/hifiberry-amp.dtbo has:
> -            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbp
> +            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbo
>              #     destination: overlays/hifiberry-amp.dtbo
>              base = os.path.basename(dtb)
>              src = '{}-{}'.format(imgtyp, base)
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--IDYEmSnFhs3mNXr+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj6OvkACgkQJrqo2vax
FPZ+YQ//cZGmRNny/q6KsgwmAE7JN0IlHTnVf0IFxEQsCELowuoniKwNUjj/HvNA
51r0nqdlzpOkdH6lgsdxBWVIN2tOxyZRDjfkrRKbhkZw78oJ2SHr1dHWSguXn2Av
CIemwd1rcdWr+447nts+DFpREnSYixPCpBZzBrL5Uunjpj33gAe7BemF31f2HK/C
a+T5hZldIBEF1/DCUDEMnDcxS8fRiB2A+uZMlD4e0OOPftJRSF1ALRHmCUiYGFl7
OoTL9aqBhejx4o0lqsg50KAvZc6tsZrAAN1UR/YmvqsScUhLwL9NeM6sAyO9XP/S
IVlNGyosfV7r3eiJqcZ/6K2FsZrAFOaGDPNIYdTAD//Bb+XfRaU79XutPSfitjSo
WyDuP9wwKwrZMTFUZIt/y2htEDt3kSO3ZcJf2aGaCneHgKu+or9YFmuaSOgspmLG
RWYkuB8j8vo/rMPH9fJ+NOcwbaK5ycb7rYyuHK6/ajcHo6nB+nK8REKioOKLNJzU
taNjFOvMztlg/GyoqrZgoNJ1Hei+PnfndY7NgWpZarq30RNlVH7rHmjZ51VVnqRl
H+vD+7VhojFnTh0jnUVtcGZPSNa0figfaPqXTnqBjvy2mSY3mdBcYoF8SEQwgxSo
86r5CJqJ5tx9JkcGaJ5wUGX+U+TxFFWaAHzs76bigRKgNesXEEw=
=BHDQ
-----END PGP SIGNATURE-----

--IDYEmSnFhs3mNXr+--
