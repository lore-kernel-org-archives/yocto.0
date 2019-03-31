Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFAF5E00CE5; Sun, 31 Mar 2019 10:41:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C57E00C14
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:41:09 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id 85so3558375pgc.3
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8s5chKuN+S9xyVtm1i7zUK2YmDN8aVkb6yxZ2ievLIg=;
	b=vVEnO0dOXZHetYgzX5DGFW8sI6ogGm+1SGXoO63gCA1y8dRnAkVsJ+9B529zkXW/0s
	3cU8/ATO9ZAQNmtUU+UoEK+qr9l4F8voX1H37jqqU1fOTStDkN+L7NRbNSlCYWIhl0dX
	/84vayZU+KTXCDFvIq2oNIBY58fuH08wCZhhjbywTw89VncfVWGUlCvnd8cXcB4eq5m5
	srA+eoTi9LREKLriRRDiy8SW3nPBXx7xFjiO/I5TE1fhxw3BVH4DZTzS1FGTvpk7R49/
	R/6M4yOELG+Ji4pdEXRWpaPM5vyhpUQh28784gRdQBawnaVPAomgLQnbheC+9nBkr7tL
	QA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=8s5chKuN+S9xyVtm1i7zUK2YmDN8aVkb6yxZ2ievLIg=;
	b=BqZoIIYrmCyg7575FK78Zh5IJSkvK38nf5+DKJQjESiTj8QdM7IbVKHg+tpQefbJzB
	qotLVcb8/bVd5e+VeTt1fpwXJ8x9/yihwE5Epp5yom+QoGyChY41FbecI+rATxkrq8fw
	7tVS9a/MB41IBbr5+yXSrsuXYytLftzBNa0EYU9ErTjCnbvYX8UItA6AeK/RGDsDYIuD
	bxqkEoQ+AExkrFqrZxnuaGFOrAc0852fZpN+qbB7M9Yk8V5wPY33EET2goO8dkx+fFnk
	JRZbbvqtARKHKz9+4m3uhyXoGOBnL9Ht2SeJJcjm/d2bcb5uH/bATjhu6o5iND3c430Y
	3VQg==
X-Gm-Message-State: APjAAAVPJ3c6MaKTSNs63GNxxvfu2d6Wqgp7qUeucphVd9okFArfCnzL
	WaOAh4W20KPhdyyZql1ptPTLrL1W
X-Google-Smtp-Source: APXvYqwcVugG5WuvIioyCnlXu0FfpJ6ciEpeCJ/haRN53eehfBQUe7jOSpu4xQ9pqk6Yyszs0CfMgQ==
X-Received: by 2002:a63:cd47:: with SMTP id a7mr27105083pgj.434.1554054068762; 
	Sun, 31 Mar 2019 10:41:08 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:6515:3c15:208f:c5eb?
	([2601:202:4180:c33:6515:3c15:208f:c5eb])
	by smtp.gmail.com with ESMTPSA id
	s6sm10690255pfe.37.2019.03.31.10.41.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 10:41:08 -0700 (PDT)
To: Armin Kuster <akuster808@gmail.com>, yocto@yoctoproject.org
References: <20190331172900.28894-1-akuster808@gmail.com>
	<20190331172900.28894-4-akuster808@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
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
Message-ID: <aa75c0af-9701-1cb0-4fab-d2a2fe475693@gmail.com>
Date: Sun, 31 Mar 2019 10:41:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190331172900.28894-4-akuster808@gmail.com>
Subject: Re: [meta-security][PATCH 4/4] linux-stable: add support for stable kernel bbappends
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
X-List-Received-Date: Sun, 31 Mar 2019 17:41:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

not goint to work.

dropping

On 3/31/19 10:29 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-kernel/linux/linux-stable/apparmor.cfg    | 15 +++++++++++++++
>  .../linux/linux-stable/apparmor_on_boot.cfg       |  1 +
>  .../linux/linux-stable/smack-default-lsm.cfg      |  2 ++
>  recipes-kernel/linux/linux-stable/smack.cfg       |  8 ++++++++
>  recipes-kernel/linux/linux-stable_%.bbappend      | 11 +++++++++++
>  5 files changed, 37 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-stable/apparmor.cfg
>  create mode 100644 recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
>  create mode 100644 recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
>  create mode 100644 recipes-kernel/linux/linux-stable/smack.cfg
>  create mode 100644 recipes-kernel/linux/linux-stable_%.bbappend
>
> diff --git a/recipes-kernel/linux/linux-stable/apparmor.cfg b/recipes-kernel/linux/linux-stable/apparmor.cfg
> new file mode 100644
> index 0000000..b5f9bb2
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable/apparmor.cfg
> @@ -0,0 +1,15 @@
> +CONFIG_AUDIT=y
> +# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
> +CONFIG_SECURITY_NETWORK=y
> +# CONFIG_SECURITY_NETWORK_XFRM is not set
> +CONFIG_SECURITY_PATH=y
> +# CONFIG_SECURITY_SELINUX is not set
> +CONFIG_SECURITY_APPARMOR=y
> +CONFIG_SECURITY_APPARMOR_HASH=y
> +CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
> +# CONFIG_SECURITY_APPARMOR_DEBUG is not set
> +CONFIG_INTEGRITY_AUDIT=y
> +CONFIG_DEFAULT_SECURITY_APPARMOR=y
> +# CONFIG_DEFAULT_SECURITY_DAC is not set
> +CONFIG_DEFAULT_SECURITY="apparmor"
> +CONFIG_AUDIT_GENERIC=y
> diff --git a/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
> new file mode 100644
> index 0000000..fc35740
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable/apparmor_on_boot.cfg
> @@ -0,0 +1 @@
> +CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
> diff --git a/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg b/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
> new file mode 100644
> index 0000000..b5c4845
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable/smack-default-lsm.cfg
> @@ -0,0 +1,2 @@
> +CONFIG_DEFAULT_SECURITY="smack"
> +CONFIG_DEFAULT_SECURITY_SMACK=y
> diff --git a/recipes-kernel/linux/linux-stable/smack.cfg b/recipes-kernel/linux/linux-stable/smack.cfg
> new file mode 100644
> index 0000000..62f465a
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable/smack.cfg
> @@ -0,0 +1,8 @@
> +CONFIG_IP_NF_SECURITY=m
> +CONFIG_IP6_NF_SECURITY=m
> +CONFIG_EXT2_FS_SECURITY=y
> +CONFIG_EXT3_FS_SECURITY=y
> +CONFIG_EXT4_FS_SECURITY=y
> +CONFIG_SECURITY=y
> +CONFIG_SECURITY_SMACK=y
> +CONFIG_TMPFS_XATTR=y
> diff --git a/recipes-kernel/linux/linux-stable_%.bbappend b/recipes-kernel/linux/linux-stable_%.bbappend
> new file mode 100644
> index 0000000..321392c
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable_%.bbappend
> @@ -0,0 +1,11 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +SRC_URI += "\
> +        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
> +        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
> +"
> +
> +SRC_URI += "\
> +        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
> +        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
> +"


