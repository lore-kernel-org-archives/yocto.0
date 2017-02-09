Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1191CE009DA; Thu,  9 Feb 2017 00:26:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2521E006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 00:25:59 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D693468A019; Thu,  9 Feb 2017 08:25:58 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2ECF868A019;
	Thu,  9 Feb 2017 08:25:58 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D77BE6740245;
	Thu,  9 Feb 2017 09:25:57 +0100 (CET)
To: yocto@yoctoproject.org
References: <20170209054903.31598-1-raj.khem@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <94b61132-855c-7290-51d6-c0708fe34f87@mlbassoc.com>
Date: Thu, 9 Feb 2017 09:25:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/9] Add raspberrypi3-64.conf
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
X-List-Received-Date: Thu, 09 Feb 2017 08:26:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-09 06:48, Khem Raj wrote:
> From: Herve Jourdain <herve.jourdain@neuf.fr>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 conf/machine/raspberrypi3-64.conf
>
> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
> new file mode 100644
> index 0000000..5598e50
> --- /dev/null
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -0,0 +1,15 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi 3 Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
> +
> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
> +
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
> +
> +require conf/machine/include/arm/arch-armv8.inc
> +include conf/machine/include/rpi-base.inc
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +VC4_CMA_SIZE ?= "cma-256"
> +
> +UBOOT_MACHINE = "rpi_3_config"
>

I know it's 2017, but what are the real advantages of rpi3-64 over rpi3?
Should I care (or use it)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

