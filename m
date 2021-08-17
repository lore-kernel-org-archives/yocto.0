Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.40216.1629212081096540514
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:54:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JG97/RMp;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 690DC60F41;
	Tue, 17 Aug 2021 14:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629212079;
	bh=TFihvY77cPKbh02vRb0SGOB5WbXf9bYD2+othA5I0Yc=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=JG97/RMpoaCeJtVrIhxWT4kAjDH+oCX2w1HBrmz3K10avGcMLLP09dCKSf1OJTHHl
	 mtkakA9aKaRH30FPSQsUUfnTA8b7mrexto48qAaOADDBq3VVG6F+ldPPcxJTsAKdGF
	 RT+BtgaEkHaNzxEP2JgTIjagV7A73DBT9UmvazXgHnmQiXr30xdkfgUMzz/cxkXlk1
	 /nsoXZu5aAjyWaLN18i/2mifb5nuQg3nxs56FTyNcjqNkztuRHiHxsAqRzTq8NDXch
	 KXfTCiHKi+VycAwtd2fxxJ3an5Z50PTK6S+FEnRwrqsb1lutLH4p4PkLAURM7ikXD0
	 73F6dMxV+TADA==
Subject: Re: [meta-mingw] [PATCH v2 1/3] protobuf: static link tools when generating sdk
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210817140742.3110-1-okaya@kernel.org>
 <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
 <299fcf00-d052-fd02-694c-d23a19b3a98d@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <64f2a953-58b8-3331-7227-93c8a56bc5f2@kernel.org>
Date: Tue, 17 Aug 2021 17:54:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <299fcf00-d052-fd02-694c-d23a19b3a98d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/17/2021 5:44 PM, Joshua Watt wrote:
> These 3 recipes are in meta-oe, not OE-core which means that the
> bbappends are going to cause a dangling appends error/warning. Please
> add a dynamic BBFILES pattern[1] so that these are conditionally applied
> only if meta-oe is present, something like:
> 
>  BBFILES_DYNAMIC += "\
> openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bb
> \
> openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bbappend
> \
>  "
> 
> [1]:
> https://docs.yoctoproject.org/ref-manual/variables.html#term-BBFILES_DYNAMIC

I wasn't aware of this functionality. Will post v3.
