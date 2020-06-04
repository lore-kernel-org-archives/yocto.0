Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9146.1591255686663515103
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jun 2020 00:28:06 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 234C0E01C6F; Thu,  4 Jun 2020 00:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [212.18.0.10 listed in list.dnswl.org]
X-Greylist: delayed 357 seconds by postgrey-1.32 at yocto-www; Thu, 04 Jun 2020 00:28:04 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5761E01C5E
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2020 00:28:04 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49cxzy69W8z1rtyj;
	Thu,  4 Jun 2020 09:22:06 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49cxzy5XfBz1r3l9;
	Thu,  4 Jun 2020 09:22:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id 8Is5b0o4mdhO; Thu,  4 Jun 2020 09:22:04 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu,  4 Jun 2020 09:22:04 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 2F4F64540564;
	Thu,  4 Jun 2020 09:22:04 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id Tf79wP3kNB4E; Thu,  4 Jun 2020 09:22:01 +0200 (CEST)
Received: from [192.168.178.47] (stefano-MacBookPro.fritz.box [192.168.178.47])
	by babic.homelinux.org (Postfix) with ESMTPS id 086844540451;
	Thu,  4 Jun 2020 09:22:00 +0200 (CEST)
Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
To: zhengruoqin <zhengrq.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Cc: swupdate <swupdate@googlegroups.com>
From: "Stefano Babic" <sbabic@denx.de>
Message-ID: <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
Date: Thu, 4 Jun 2020 09:22:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Zheng,

there is a ML for SWUpdate and meta-swupdate (see CC), we are 
cross-posting here:

On 04.06.20 14:26, zhengruoqin wrote:
>   -c -o mongoose/mongoose.o mongoose/mongoose.c
> | mongoose/mongoose.c:4496:10: fatal error: openssl/ssl.h: No such file
> or directory
> 
> Signed-off-by: Zheng Ruoqing <zhengrq.fnst@cn.fujitsu.com>
> ---
>   recipes-support/swupdate/swupdate.inc | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/recipes-support/swupdate/swupdate.inc b/recipes-support/swupdate/swupdate.inc
> index 9ea0a8a..3d9a3fa 100644
> --- a/recipes-support/swupdate/swupdate.inc
> +++ b/recipes-support/swupdate/swupdate.inc
> @@ -123,6 +123,9 @@ python () {
>       elif 'CONFIG_SSL_IMPL_MBEDTLS=y\n' in features:
>           depends += ' mbedtls'
>   
> +    if 'CONFIG_MONGOOSESSL=y\n' in features:
> +        depends += ' openssl'
> +

openSSL is not the only supported SSL library, the Webserver runs also 
with mbedTLS. This patch forces to use openSSL and conflicts in case 
mbedTLS is used as signing and crypto library.

>       if 'CONFIG_JSON=y\n' in features:
>           depends += ' json-c'
>   
> 
> 
> 
> 

Best regards,
Stefano Babic




