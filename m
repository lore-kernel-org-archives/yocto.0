Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EBB3E00C59; Sun,  3 Feb 2019 14:41:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C205EE00BAB
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 14:41:42 -0800 (PST)
Received: by mail-pf1-f170.google.com with SMTP id c123so5896665pfb.0
	for <yocto@yoctoproject.org>; Sun, 03 Feb 2019 14:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DaDNqNF3j2yTB7yrsXLVSPY/BjyMh4nOKvegcZDOVdg=;
	b=HmcNm8c9zdIltpJW0nC9QLIkBfCqgGx+IwDunhPXl7ismi6egN86Q0tNY0HQHKes3V
	/d7t0cVCtY3kjFpCEFsksDi5VgoxgGwF+o//WkawDj1UsZpzs7BnruZ1Zae6UB21TVb7
	UctsF+OQqSAk+08jloKlDnF/Uc2I3nnJxdmLU4T+VXxsI+0Nl7ZUmMeAfzjVQiZThqDw
	xSOMR8vCTJMLquTCU7MXrrWDtJAsd57RfCeuCZFVREcoWFNfkIKaSh9r46quJr0fxaTu
	ehXhNhZY4gzEVe4mtX9CXjouXrQgdnlxHKWybPT+ZDli1FXeFkGXr1riL4FO9ZGrxRl0
	xQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=DaDNqNF3j2yTB7yrsXLVSPY/BjyMh4nOKvegcZDOVdg=;
	b=HRe5wH8/x6XRV1bILYK/Vw2hiNr1UIV63LwDN4kT5rCHGULbIzjEDe1Lhk2w6e9KGS
	0wjguAxpPay5Vvs8+Y4GV5KyE0LfISIyI/wm3fw2qQJ21/DLhkPgSZ4atrqSVMy6YBx0
	RFvT7cf66czkt5hLJn4LBS85GCMgcjkE0iy97DPFy5ZvpMBRkVhq/LDKH/1mjKXdj66Z
	XiI4r85nfGa+eb8nBIeo3WhWFosCLDZSHtBQfTTzxzn7sjOfh9KGWcJH9W1IWwBbp4Ik
	HpNV3cy+MQ2XvD+M2mXdTqpc7fkpm6fZlQk2Rov/JlGPRSgFgoGbwZ4EhExk5+uyM0Je
	HWaQ==
X-Gm-Message-State: AJcUukeZfjoMlGJHzgzaO0iedI819Zn7BZJZaYJdPzkSvrkNx/4Zajl5
	c3V4zpi+/Jd3NeJsXL8RUkK4XePLpb0=
X-Google-Smtp-Source: ALg8bN4ZxR34Sgrc+JE1NciU4hjblF9X9qRhPJ+fMqQXkN79KZBV4mv8sZYpnrzfJYUmGfBWqSVQog==
X-Received: by 2002:a63:d450:: with SMTP id i16mr43447667pgj.246.1549233700012;
	Sun, 03 Feb 2019 14:41:40 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:40c2:82ac:4641:f878?
	([2601:202:4180:c33:40c2:82ac:4641:f878])
	by smtp.gmail.com with ESMTPSA id
	c23sm16844684pfi.83.2019.02.03.14.41.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Feb 2019 14:41:38 -0800 (PST)
To: Scott Ellis <scottellis.developer@gmail.com>, yocto@yoctoproject.org
References: <1547896560-947-1-git-send-email-scott@jumpnowtek.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	mQINBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABtCFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT6JAj0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxC5Ag0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAGJAiUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <b4135ff1-695e-b23c-5c84-42bbf4035a18@mvista.com>
Date: Sun, 3 Feb 2019 14:41:37 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <1547896560-947-1-git-send-email-scott@jumpnowtek.com>
Subject: Re: [meta-security][PATCHv2] Upgrade scapy to 2.4.2
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
X-List-Received-Date: Sun, 03 Feb 2019 22:41:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Scott,


On 1/19/19 3:16 AM, Scott Ellis wrote:
> Upstream MANIFEST.in removed doc and test directories
> so remove ptest.
>
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
>  recipes-security/scapy/files/run-ptest        |  4 ----
>  recipes-security/scapy/python-scapy.inc       | 11 +++--------
>  recipes-security/scapy/python-scapy_2.4.0.bb  |  6 ------
>  recipes-security/scapy/python-scapy_2.4.2.bb  |  4 ++++
>  recipes-security/scapy/python3-scapy_2.4.0.bb |  4 ----
>  recipes-security/scapy/python3-scapy_2.4.2.bb |  2 ++
>  6 files changed, 9 insertions(+), 22 deletions(-)
>  delete mode 100755 recipes-security/scapy/files/run-ptest
>  delete mode 100644 recipes-security/scapy/python-scapy_2.4.0.bb
>  create mode 100644 recipes-security/scapy/python-scapy_2.4.2.bb
>  delete mode 100644 recipes-security/scapy/python3-scapy_2.4.0.bb
>  create mode 100644 recipes-security/scapy/python3-scapy_2.4.2.bb

Thank you for the update. The issue I have is the doc's and test got
removed from the pypi package via commit:
https://github.com/secdev/scapy/commit/8857c03bad798ba902b34c64282ef72483=
569c77
when they went to 2.4.2.


Any ideas on how to restore the ptests?=C2=A0 I know 2.4.1 still has the
tests. I wonder how may folks run this ptest?

I am holding this update for now.

- armin

>
> diff --git a/recipes-security/scapy/files/run-ptest b/recipes-security/=
scapy/files/run-ptest
> deleted file mode 100755
> index 91b29f9..0000000
> --- a/recipes-security/scapy/files/run-ptest
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -#!/bin/sh
> -UTscapy -t regression.uts -f text -l -C \
> -    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
> -    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
> diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security=
/scapy/python-scapy.inc
> index 5abe7db..95e5312 100644
> --- a/recipes-security/scapy/python-scapy.inc
> +++ b/recipes-security/scapy/python-scapy.inc
> @@ -5,15 +5,10 @@ LICENSE =3D "GPLv2"
> =20
>  LIC_FILES_CHKSUM =3D "file://bin/scapy;beginline=3D9;endline=3D13;md5=3D=
1d5249872cc54cd4ca3d3879262d0c69"
> =20
> -SRC_URI[md5sum] =3D "d7d3c4294f5a718e234775d38dbeb7ec"
> -SRC_URI[sha256sum] =3D "452f714f5c2eac6fd0a6146b1dbddfc24dd5f4103f3ed7=
6227995a488cfb2b73"
> +SRC_URI[md5sum] =3D "e6a03d8c924a6bbde1e86fc58bd2b9d6"
> +SRC_URI[sha256sum] =3D "1baa048936207ceb1a4281a0e1e3b4317667c754872a0b=
b4734c5213c468e86a"
> =20
> -inherit pypi ptest
> -
> -do_install_ptest() {
> -    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
> -    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest=

> -}
> +inherit pypi
> =20
>  RDEPENDS_${PN} =3D "tcpdump ${PYTHON_PN}-compression ${PYTHON_PN}-netc=
lient  \
>                    ${PYTHON_PN}-netserver ${PYTHON_PN}-pydoc ${PYTHON_P=
N}-pkgutil ${PYTHON_PN}-shell \
> diff --git a/recipes-security/scapy/python-scapy_2.4.0.bb b/recipes-sec=
urity/scapy/python-scapy_2.4.0.bb
> deleted file mode 100644
> index 98db1fd..0000000
> --- a/recipes-security/scapy/python-scapy_2.4.0.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -inherit setuptools
> -require python-scapy.inc
> -
> -SRC_URI +=3D "file://run-ptest"
> -
> -RDEPENDS_${PN} +=3D "${PYTHON_PN}-subprocess"
> diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-sec=
urity/scapy/python-scapy_2.4.2.bb
> new file mode 100644
> index 0000000..ea8764a
> --- /dev/null
> +++ b/recipes-security/scapy/python-scapy_2.4.2.bb
> @@ -0,0 +1,4 @@
> +inherit setuptools
> +require python-scapy.inc
> +
> +RDEPENDS_${PN} +=3D "${PYTHON_PN}-subprocess"
> diff --git a/recipes-security/scapy/python3-scapy_2.4.0.bb b/recipes-se=
curity/scapy/python3-scapy_2.4.0.bb
> deleted file mode 100644
> index 93ca7be..0000000
> --- a/recipes-security/scapy/python3-scapy_2.4.0.bb
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -inherit setuptools3
> -require python-scapy.inc
> -
> -SRC_URI +=3D "file://run-ptest"
> diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-se=
curity/scapy/python3-scapy_2.4.2.bb
> new file mode 100644
> index 0000000..34eb2a3
> --- /dev/null
> +++ b/recipes-security/scapy/python3-scapy_2.4.2.bb
> @@ -0,0 +1,2 @@
> +inherit setuptools3
> +require python-scapy.inc



