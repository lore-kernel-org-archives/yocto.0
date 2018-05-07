Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B432E00C17; Mon,  7 May 2018 10:20:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87302E00BFF
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 10:20:29 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id bi12-v6so23889plb.12
	for <yocto@yoctoproject.org>; Mon, 07 May 2018 10:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=KUvexgRYPFWQy2XZtDLsQfQayie+eVKGaVPwl8qtSDU=;
	b=yvsGROflYHoj2k1yigBtVxmpuV4WpuYnjN/deLxcubRBFO2gAizRuBxFVCPboJMSFZ
	k5Qt97ppN6IssU1DsrQyGVDa9856ZdKBrH/rMBF38g1dnmRHbql1csKdywiBXRoI+Ad1
	9Drmf6Hh8U9OG3JLjXEiBCmmsT1N6v8wBtd4PrmYC0Brfu/nOj55cqiug7uWqfCEzzQn
	f8walQ9/lAjLBhXJrnODk4sGIN79BCNUpp+x5zn8VT+TECF6QsPLndudpGzNmHBc+6sL
	DRQwDnm1y/kLTdnMUphgJzox+0LCDPzTPy40pJth5AmFB4bBWG103D0Yw0kDpDG7zwv/
	sajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=KUvexgRYPFWQy2XZtDLsQfQayie+eVKGaVPwl8qtSDU=;
	b=VAl/4Z54tj0eygxl+AZY4YsUW1hjCJ4s1hutx6LGvmvZ3fg78PAh4F2WXnvzk8Jt7B
	TBdSAIvGmq7m8j3fw4hrJjNrpUS01hy5jO68WXtcwAgZsorISmYtj74GANjsnCkXMxJX
	wZ5MXHyZCM6U5/C04tyh1HH+FfwKBmnwPJUUlZL+//c3lflw3arWsor+OYKO1+qHdApb
	7Js/h1WgZmQIMdV97Bm/e6n9oXMT9k+d9V1ZoMsi2RJ4lVN3zk75p8IN5tjCZPkgwEtN
	ycVr+UsT0K7EORFHJYIyqQ4qFOKsLePr8YDE5u4HQaXIQ2XGLNIWqcTYGVn3+rEfPEz/
	7N9w==
X-Gm-Message-State: ALQs6tBBOF7+9sFw8ySA5AM5Nru9ghioi8z3VMm8FpFHXlPx43Ya0ncL
	POR7kb2k0XU1Ue8lWaC2+AQFGwfs7v0=
X-Google-Smtp-Source: AB8JxZoNeNN3lOiGSolJ+6H5GY9/nb/2NcSuJyU4RXpvuKw5TvJdKBDZvhXKIdmcZLD75RG9CB9SDA==
X-Received: by 2002:a63:7c0b:: with SMTP id
	x11-v6mr28158339pgc.384.1525713628288; 
	Mon, 07 May 2018 10:20:28 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:19cc:9c84:5bce:a7cd?
	([2601:202:4000:1184:19cc:9c84:5bce:a7cd])
	by smtp.gmail.com with ESMTPSA id
	23sm82676397pfs.147.2018.05.07.10.20.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 May 2018 10:20:27 -0700 (PDT)
To: Armin Kuster <akuster808@gmail.com>, yocto@yoctoproject.org
References: <1523745199-16128-1-git-send-email-akuster@mvista.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
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
	oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
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
Message-ID: <0ee2201e-685a-8c21-e508-3580b112fda7@mvista.com>
Date: Mon, 7 May 2018 10:20:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1523745199-16128-1-git-send-email-akuster@mvista.com>
Subject: Re: [meta-selinux][PATCH] policycoreutils: remove oe_filter_out
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
X-List-Received-Date: Mon, 07 May 2018 17:20:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 04/14/2018 03:33 PM, Armin Kuster wrote:
> bb.data_smart.ExpansionError: Failure expanding variable WARN_QA[:=], expression was ${@oe_filter_out('unsafe-references-in-scripts', 'ldflags useless-rpaths rpaths staticdev libdir xorg-driver-abi             textrel already-stripped incompatible-license files-invalid             installed-vs-shipped compile-host-path install-host-path             pn-overrides infodir build-deps             unknown-configure-option symlink-to-sysroot multilib             invalid-packageconfig host-user-contaminated uppercase-pn             ', d)} which triggered exception NameError: name 'oe_filter_out' is not defined
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>

ping
> ---
>  recipes-security/selinux/policycoreutils.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
> index 442b086..1842fd8 100644
> --- a/recipes-security/selinux/policycoreutils.inc
> +++ b/recipes-security/selinux/policycoreutils.inc
> @@ -64,8 +64,8 @@ RDEPENDS_${BPN}-setsebool += "\
>  "
>  RDEPENDS_${BPN} += "selinux-python"
>  
> -WARN_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${WARN_QA}', d)}"
> -ERROR_QA := "${@oe_filter_out('unsafe-references-in-scripts', '${ERROR_QA}', d)}"
> +WARN_QA_remove = " unsafe-references-in-scripts"
> +ERROR_QA_remove = " unsafe-references-in-scripts"
>  
>  
>  PACKAGES =+ "\


