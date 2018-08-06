Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2C6E006D2; Mon,  6 Aug 2018 11:42:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 458E6E003D7
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2018 11:42:28 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id m11-v6so24058083oic.2
	for <yocto@yoctoproject.org>; Mon, 06 Aug 2018 11:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=KmPXFDTligSNlWxz67Nh9y8tB5V2F2PsyZaiIHUsBcA=;
	b=Azo2l+2QZg3P8HMeC1gVyOfnskx+B945xpYylwdrIjs2uZNv7OX3jIVem8bcxcpJwn
	B5bXAJsGUevqNfQotGsKxaGMZc/g67BqeSALDY7811mfCEw1yrTUOFJhWfl2mVhMtIm6
	BZWEVQnMQW6n6OAPVUx5YiLB8QWiB8ABorX6qCOy0VGwhX9lIqupdpAUFlt2Ed2q4gyD
	ujbwWBV5A18RPzoQ4578kwUTWxmAPT4CNrVhe8V5KOM5u2tLPEZCm4btCJNqbu7JwPLL
	J0WcIyYUcS9BYPfcfMY5isxQSS9v2ybnsc7G35/dpvRr+PpiGL2FPgwKlJKOIdB40Qiq
	trFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=KmPXFDTligSNlWxz67Nh9y8tB5V2F2PsyZaiIHUsBcA=;
	b=GbOzgCp46kC8LGfUNksgO031+SlHcacIADUM7tfwrzmzoDb+RWZOAIkxK/pmM+3MsE
	RMbeGTiG5b4rMNxJmxqCAlHzxnMN5XYJbqVvImZ9zjW3ArwV7qGtrXuLf/i67+WY7i1n
	PVv2ur4FQGBeqqRbmAOfwIEhZysVRCD2szFM+JCHTHk3fie8B2+yxb7tlAnyW7zCh+qt
	HUlrPOmTPzBw48uXFEmhoRBZ/L7wk5LiQ/6p7j94UNMABL6UjL6Qbt/o7GSl9rik4u5h
	K5W/9U6Jo22TysF4DvW0daABtI6EPdrMTDiRfkswS2ePeKIq5hFvYxrd5S+pDfTj/wLI
	g48Q==
X-Gm-Message-State: AOUpUlEabw6jC1Pl0uqJnpnMXtBs/1+hlwr8GRRBjhBSuZ33USS/Pm3i
	21NEvcd8H3iveBacgpTaTNg=
X-Google-Smtp-Source: AAOMgpfjajau1nrkALL5j9DOEKqNXJFLKm2YYcyDZHXvq6RWrMJXcXe1eGZCm4vbekJbkKYTVRfXkQ==
X-Received: by 2002:aca:aa8d:: with SMTP id
	t135-v6mr14586249oie.218.1533580948454; 
	Mon, 06 Aug 2018 11:42:28 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:ac25:fc33:9f90:b6d1?
	([2601:202:4180:c33:ac25:fc33:9f90:b6d1])
	by smtp.gmail.com with ESMTPSA id
	r10-v6sm12151412oif.37.2018.08.06.11.42.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Aug 2018 11:42:27 -0700 (PDT)
To: Koen Kooi <koen@dominion.thruhere.net>, yocto@yoctoproject.org
References: <20180801080927.26522-1-koen.kooi@linaro.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
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
Message-ID: <8bdf70ea-df04-42f2-7c1d-f3cbe2a1e611@gmail.com>
Date: Mon, 6 Aug 2018 11:42:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: Re: [meta-security][PATCH 01/10] suricata: don't start service in postinst
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
X-List-Received-Date: Mon, 06 Aug 2018 18:42:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 08/01/2018 01:09 AM, Koen Kooi wrote:
> Apart from hardcoding the wrong networking device it won't survive device restart
>
> Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
series merged. thanks,
armin
> ---
>  recipes-security/suricata/suricata_4.0.0.bb | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
> index e163486..3f88920 100644
> --- a/recipes-security/suricata/suricata_4.0.0.bb
> +++ b/recipes-security/suricata/suricata_4.0.0.bb
> @@ -50,7 +50,6 @@ pkg_postinst_ontarget_${PN} () {
>  if [ -e /etc/init.d/populate-volatile.sh ] ; then
>      ${sysconfdir}/init.d/populate-volatile.sh update
>  fi
> -    ${bindir}/suricata -c ${sysconfdir}/suricata.yaml -i eth0 
>  }
>  
>  PACKAGES += "${PN}-python"


