Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web09.9284.1623137467689155991
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 00:31:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@datenfreihafen.org header.s=2021 header.b=jxvLNwD5;
 spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from [IPv6:2003:e9:d72e:cf4:8a17:bcad:1c5c:e2a7] (p200300e9d72e0cf48a17bcad1c5ce2a7.dip0.t-ipconnect.de [IPv6:2003:e9:d72e:cf4:8a17:bcad:1c5c:e2a7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@datenfreihafen.org)
	by proxima.lasnet.de (Postfix) with ESMTPSA id B84A4C0151
	for <yocto@lists.yoctoproject.org>; Tue,  8 Jun 2021 09:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datenfreihafen.org;
	s=2021; t=1623137464;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N6vlzePICXDgSlOlW5w+X6ebJT/KHYhCTz1GAOWA3Dc=;
	b=jxvLNwD5JRll82htRBeP4/0uUf+8AQG4xpk3dIPQhya1k8WY45DeQXSTU25vlEmCGKGM1L
	tiY7Kz9/3qS8CKR08J8r1ncKTIfL5Y3nTzypxYZ0E7V5sG+YuuQ5aR+a7P7bB8T9dQqXP9
	UCyGQziKuzDQzc7+PVlWfDSW8efVCoS4vISkfJxUqsd8YBC/Mur3bOo68ARw0tXpUEQEK2
	mIl+iPB8UChxLIr9a0QF1695fkbONW56W2bZrZE7rRSOk4EZJb2qZqKVr+CSqXgkTHgHy8
	B+1SqJNbpBC1VMTMx4RMI0yWyJxKG5aw+MGIUxwgJV+gYdj76wCmgH0bU0mzDQ==
Subject: Re: [yocto] [PATCH 1/2] zephyr-kernel: Add OpenThread module to build
To: yocto@lists.yoctoproject.org
References: <1684311F98CA2297.21857@lists.yoctoproject.org>
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
Message-ID: <6c0d25a1-6e4f-ab00-0d96-ae12ee45bb64@datenfreihafen.org>
Date: Tue, 8 Jun 2021 09:31:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1684311F98CA2297.21857@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello.

On 31.05.21 17:42, Stefan Schmidt wrote:
> From: Stefan Schmidt <stefan.schmidt@huawei.com>
> 
> OpenThread support in Zephyr is realised as an external module. Make
> sure we pull it in and have it available for applications to use it.
> 
> Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
> ---
>   recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc        | 1 +
>   recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc | 1 +
>   recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc           | 1 +
>   3 files changed, 3 insertions(+)
> 
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> index c9acbbb..eb5e75a 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
> @@ -30,6 +30,7 @@ ZEPHYR_MODULES_append_nordic = "\;${S}/modules/hal/nordic"
>   ZEPHYR_MODULES_append_stm32 = "\;${S}/modules/hal/stm32"
>   ZEPHYR_MODULES_append_mbedtls = "\;${S}/modules/lib/mbedtls"
>   ZEPHYR_MODULES_append_openamp = "\;${S}/modules/lib/open-amp\;${S}/modules/hal/libmetal"
> +ZEPHYR_MODULES_append_openthread = "\;${S}/modules/lib/openthread"
>   
>   EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
>   
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> index a0e358e..546eb35 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0-rc1.inc
> @@ -4,6 +4,7 @@ SRCREV_cmsis = "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
>   SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
>   SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
>   SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
> +SRCREV_openthread = "385e19da1ae15f27872c2543b97276a42f102ead"
>   SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
>   SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
>   SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> index 069fa56..4df5e7e 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -15,6 +15,7 @@ SRC_URI = "\
>       git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
>       git://github.com/zephyrproject-rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=mbedtls \
>       git://github.com/zephyrproject-rtos/open-amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-amp \
> +    git://github.com/zephyrproject-rtos/openthread.git;protocol=https;branch=zephyr;destsuffix=git/modules/lib/openthread;name=openthread \
>       git://github.com/zephyrproject-rtos/libmetal.git;protocol=https;destsuffix=git/modules/hal/libmetal;name=libmetal \
>       git://github.com/zephyrproject-rtos/tinycrypt.git;protocol=https;destsuffix=git/modules/crypto/tinycrypt;name=tinycrypt \
>       file://0001-cmake-add-yocto-toolchain.patch \
> 


Friendly reminder on these two. :-)

regards
Stefan Schmidt
