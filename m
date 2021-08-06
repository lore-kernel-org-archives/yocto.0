Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web10.5457.1628260417886206384
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 07:33:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 176EXZ6t019894
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 6 Aug 2021 09:33:36 -0500
Subject: Re: [meta-openssl102][PATCH 1/2] layer.conf: add honister to LAYERSERIES_COMPAT
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20210806070934.413792-1-yi.zhao@windriver.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <63a6d0d9-84f8-e533-34ca-94e9a27f2939@kernel.crashing.org>
Date: Fri, 6 Aug 2021 09:33:34 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210806070934.413792-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I'll get this staged later today.

Thanks for running the conversion.


On 8/6/21 2:09 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 4ea1009..2997785 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two = "5"
>  
>  LAYERVERSION_meta-openssl-one-zero-two = "1"
>  
> -LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "hardknott"
> +LAYERSERIES_COMPAT_meta-openssl-one-zero-two = "honister"
>  
>  LAYERDEPENDS_meta-openssl-one-zero-two = " \
>          core \
> 
