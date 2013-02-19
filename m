Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118D9E006CB
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 06:11:51 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id E2684B6A02F;
	Tue, 19 Feb 2013 15:11:44 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.1 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from [129.187.155.160] (philipp.lis.ei.tum.de [129.187.155.160])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lists@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id AF081B6A054; 
	Tue, 19 Feb 2013 15:11:44 +0100 (CET)
Message-ID: <51238820.3080500@philipp-wagner.com>
Date: Tue, 19 Feb 2013 15:11:44 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/7] rpi-default-providers: Remove virtual/libgl provider
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Feb 2013 14:11:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrei,

I applied and tested all 7 patches and they work as the binary firmware 
did before. Maybe in a later patch a pkgconfig file can be added (I 
think it was there before, but I'm not using it yet, so I'm not really 
sure).

I don't like the name "userland" (it's not really describing that we're 
actually talking about graphics libraries), but that's just a nitpick. 
Maybe it can be renamed to rpi-graphics-userland or something more 
descriptive like that?

Philipp

Am 09.02.2013 23:11, schrieb Andrei Gherzan:
> There are no libgl binary shipped in raspberrypi firmware repo.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   conf/machine/include/rpi-default-providers.inc |    1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index ce963b3..6abab60 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -4,5 +4,4 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>   PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>   PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
>   PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgl ?= "vc-graphics-hardfp"
>   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
>

