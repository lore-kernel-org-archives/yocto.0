Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2331.1607976209346003962
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 12:03:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: balister.org, ip: 198.145.29.25, mailfrom: philip@balister.org)
Received: from smtp7.emailarray.com (smtp7.emailarray.com [65.39.216.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8358F38C0895
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2020 20:03:28 +0000 (UTC)
Received: (qmail 30837 invoked by uid 89); 14 Dec 2020 20:03:25 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp7.emailarray.com with SMTP; 14 Dec 2020 20:03:25 -0000
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
From: "Philip Balister" <philip@balister.org>
Message-ID: <ff6f0dc7-7f91-6135-3abe-c7ecb7a0f118@balister.org>
Date: Mon, 14 Dec 2020 15:03:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/14/20 7:56 AM, Marek Belisko wrote:
> Hi,
> 
> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
> have support for it (also saw that gatesgarth branch is there) but I
> cannot build tensorflow + tensorflow seems to be a bit outdated.
> Anybody know if this layer is maintained? Thanks.

Searching the layer index for tensorflow shows:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=tensorflow

So the recipe exists in several layers. Looks like it is time to try and
get everyone to work on together on one layer. I ahve a recipe that
mostly works to build the c library part of torch that needs a home.

Philip


> 
> BR,
> 
> marek
> 
> 
> 
> 
> 
