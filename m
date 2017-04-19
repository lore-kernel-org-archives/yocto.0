Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DAB2E00AC8; Wed, 19 Apr 2017 09:48:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9081FE00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:48:32 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so5971363wmb.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=cBsq1b63MPIL/3E8P2VPT4/RTTTEbu4tRA9oeJ/hxpw=;
	b=u2aDAr4FlGVJGImUUyaavJLyo0zd2VG45hhRHiYPVrLbQCQSwRnj63qmgyueZvZ1BX
	HUdrX/EVHBo2Z3b+IDE570bgH+n5teFlpKbZU6YAooGQSTRyOTsXMCq7NJ7+cKUYAfd6
	jUzywkxUlKQwgQrO2sA9+Gnjxazh/W7dLWFB5h27DJmbMPUh+1qfjG3nq34yQHf/Nmac
	4P7U7Nja2pp9VSvresUzXoTCsAaeCVecWxOTNDRpGB2JP6ICsXnW9CGmcoioK91jZClB
	5S4myXL8IhRxayHCgp12CDSoikFGLutekj2zTga3OYRbFqYC4tfQQoEPYx8aXZVGIjO8
	U1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cBsq1b63MPIL/3E8P2VPT4/RTTTEbu4tRA9oeJ/hxpw=;
	b=L9BS5HaLJxh++BosOR41yoJZfC44GhCjTTrhf7mI4eipG3MfplSt4a4pwP7PFA9ZeJ
	FMBiDWrfFO31pHcURcClu2rjHH8/G2xluHk3w8zSvB8nN+ghOyPVfnu9TrD8nNgeGOlW
	dh+weStNGnyqfMTbYBDpWgi8yAFN1ydjGfjiADdlrMhQWeeX+U5vqwX59GtezcyiefxQ
	jTcofcSdO5kwbABF4THRWi7yp5nf6QapquMv1BykKKhI7LokYU3aFVVnGxiafjc+rfcA
	X38AZzQy5iqHLYetr6hrDa1E3pywzZOSTcoaMsoaMXuCxm5PEQnOjIdTQScjx4StG6MH
	nWKQ==
X-Gm-Message-State: AN3rC/7lOPGJ2x9ef/HfeFVAyoE0eoFHRjGm0T3yTJPII1Mwx7sfzPIF
	UsUEET6m0fcN+Ifi+QQ=
X-Received: by 10.28.47.23 with SMTP id v23mr3791373wmv.50.1492620511463;
	Wed, 19 Apr 2017 09:48:31 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191])
	by smtp.gmail.com with ESMTPSA id u9sm20100892wme.8.2017.04.19.09.48.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Apr 2017 09:48:30 -0700 (PDT)
Date: Wed, 19 Apr 2017 17:48:22 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20170419164822.GA19325@carbonA>
References: <20170418181322.14588-1-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <20170418181322.14588-1-andrei@gherzan.ro>
User-Agent: Mutt/1.8.0 (2017-02-23)
Subject: Re: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Wed, 19 Apr 2017 16:48:34 -0000
X-Groupsio-MsgNum: 35674
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 18, 2017 at 07:13:20PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
>  recipes-core/udev/udev-rules-rpi/99-com.rules | 21 +++++++++++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 recipes-core/udev/udev-rules-rpi.bb
>  create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules
>
> diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
> new file mode 100644
> index 0000000..20443d3
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION = "udev rules for Raspberry Pi Boards"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +SRC_URI = " file://99-com.rules"
> +
> +S = "${WORKDIR}"
> +
> +do_install () {
> +    install -d ${D}${sysconfdir}/udev/rules.d
> +    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
> +}
> diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
> new file mode 100644
> index 0000000..6bf019b
> --- /dev/null
> +++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
> @@ -0,0 +1,21 @@
> +KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
> +	ALIASES=/proc/device-tree/aliases; \
> +	if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
> +		echo 0;\
> +	elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
> +		echo 1; \
> +	else \
> +		exit 1; \
> +	fi\
> +'", SYMLINK+="serial%c"
> +
> +KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
> +	ALIASES=/proc/device-tree/aliases; \
> +	if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
> +		echo 0; \
> +	elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
> +		echo 1; \
> +	else \
> +		exit 1; \
> +	fi \
> +'", SYMLINK+="serial%c"
> --
> 2.12.2
>

Merged only this patch from this series as the other 2 need some more
work.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj3lNUACgkQJrqo2vax
FPa2Ew/9Eei7KiA8CrvasZdaZeotrkI0fSgtLv8WUJneDpsZH/UpFCBEPSZy7fQk
hYRKhd2W4c31s/ZT3+UwuI+7v2GqQH7W4yXxdLV4XxGaD2lsgxISMWw7EJJ6umJM
knukupzulWjrkNdVyzublaUqnVMMeCOXcq1vCLYKLsq3E1vNUIy1YGF3sAGRhcXJ
ltZZJ4x3X7PNIRizOeil1vzZE0fuNGNiUWyokE+ipOncBRnwGop5K4aLeNBOAG2+
AcNn4PqBimguHJfFBm8M60H0A6o+9ATCSv4UVdi979rI8dY0Vynq+FzKdJ2apaGJ
pc/ISHpwvQPGh35egDH6iFzAkZda5Tu+sEF/m0qvw/JnlNI427xs96OtzO41XxAA
U3vcxOKH4JgitjU/hw2Q23xdWen44iSBbu+3CLQdSCSHDbfPnzI83O61Qg3Ibgji
NP+IDori2EuF3PanFQ1wl8RFG9Mj0X2hVbwyfWaV8N20c8Gy6Z/IfBZ92o6QoFFd
HoBvagMBu+4fRdUF65tBIvtRf8S/9fDcZsxqWWkdFEU/KjXbmQvJYgakHRKaCLkY
UQUSJYC6fqb3Zz6TUJJDj50ew8shPQMC8+VQX7mbKAKTpG/pXW8jjblMcn2AvIN6
bgIHqQ23RcuUo/eZyUwQR7vHh8V/tI35jm+bPhE2m6uK+Ymmpno=
=6C5I
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--
