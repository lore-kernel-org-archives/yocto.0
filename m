Return-Path: <prvs=53954843c=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D48F5E00DEB; Mon,  8 Jan 2018 03:28:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail01.prevas.se (mail01.prevas.se [62.95.78.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05809E00A00
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 03:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=1520; q=dns/txt;
	s=ironport1; t=1515410900; x=1546946900;
	h=subject:to:cc:references:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=SJRaCJPz2rp0WobBYFnlOUITmQnFxklPwFkISxEDV0Y=;
	b=0YPT0EvYC3DPZyRY6xwCJvAlRxQT9vjm0hPjyER1YS5+qX1ZOsQ8VCqu
	Y++jPqvNSfMtjhpWfFN0x5Ew78AgJX3P4aQNpkGb/pKxTcvp+uvid88TL
	RZtSv3I/+E0IEI1My1FlilqL2YNXzlIDBdMD917pac2SfrKayqWj+EzsJ U=;
X-IronPort-AV: E=Sophos;i="5.46,330,1511823600"; 
   d="scan'208";a="3040934"
Received: from vmprevas3.prevas.se (HELO smtp.prevas.se) ([172.16.8.103])
	by ironport1.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 12:28:18 +0100
Received: from [172.17.20.236] (172.16.8.31) by smtp.prevas.se (172.16.8.103)
	with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 8 Jan 2018 12:28:17 +0100
To: Marek Vasut <marex@denx.de>, <yocto@yoctoproject.org>
References: <20180107161641.30206-1-marex@denx.de>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>
Message-ID: <3e538aaf-fded-9ea7-7b9c-b43559346bbd@prevas.dk>
Date: Mon, 8 Jan 2018 12:28:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20180107161641.30206-1-marex@denx.de>
X-Originating-IP: [172.16.8.31]
Cc: Joshua Lock <joshua.g.lock@intel.com>
Subject: Re: [PATCH] beaglebone: Fix serial console device node
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
X-List-Received-Date: Mon, 08 Jan 2018 11:28:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Marek,

On 2018-01-07 17:16, Marek Vasut wrote:
> The serial console on BBB is on /dev/ttyS0 , not /dev/ttyO0 .
> This changed again, so fix this.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Joshua Lock <joshua.g.lock@intel.com>
> Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 990c967416..4f6c05f3ea 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -20,7 +20,7 @@ WKS_FILE ?= "beaglebone-yocto.wks"
>   IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
>   do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
>   
> -SERIAL_CONSOLE = "115200 ttyO0"
> +SERIAL_CONSOLE = "115200 ttyS0"

You can add both to SERIAL_CONSOLES instead:

   SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"

Maybe add a comment with hints about which kernels versions that make 
the change(s).

OE-core wraps *getty with in script that checks for the existence of the 
configured devices before starting *getty.

This also makes the recipe work on kernel versions still using ttyO0.

// Martin

>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>   PREFERRED_VERSION_linux-yocto ?= "4.12%"
> 

