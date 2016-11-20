Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 861FBE00C7A; Sun, 20 Nov 2016 04:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 143A1E00D23
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 04:06:40 -0800 (PST)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])
	by msfrf2621.sfr.fr (SMTP Server) with ESMTP id 2F03A1C000828;
	Sun, 20 Nov 2016 13:06:40 +0100 (CET)
Received: from nbhjo (111-82-100-69.EMOME-IP.hinet.net [111.82.100.69])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2621.sfr.fr (SMTP Server) with ESMTPSA;
	Sun, 20 Nov 2016 13:06:38 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>, yocto@yoctoproject.org
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
	<f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
In-Reply-To: <f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
Date: Sun, 20 Nov 2016 13:06:31 +0100
Message-ID: <003b01d24326$8ae5cd20$a0b16760$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQFf1IQYxDJY5eNUZl6goLQmP6eODgOzOf0rAkG3uUmhlvvpkA==
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 20 Nov 2016 12:06:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Khem,

FYI, I am sending a slightly modified version (cortexa53hf-32 instead of
cortexa53-32 for raspberrypi3.conf).
They still depend on modifications in oe-core (heavier this time than
before), also posted to the list.

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com] 
Sent: samedi 19 novembre 2016 19:19
To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf
and add raspberrypi3-64.conf

Nevermind, I managed to apply it, there are some CR changes I guess which
was freaking git

On 11/19/16 5:03 AM, Herve Jourdain wrote:
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
>  conf/machine/raspberrypi3.conf    |  8 ++++++--
>  2 files changed, 25 insertions(+), 2 deletions(-)  create mode 100644 
> conf/machine/raspberrypi3-64.conf
> 
> diff --git a/conf/machine/raspberrypi3-64.conf 
> b/conf/machine/raspberrypi3-64.conf
> new file mode 100644
> index 0000000..a5ceddb
> --- /dev/null
> +++ b/conf/machine/raspberrypi3-64.conf
> @@ -0,0 +1,19 @@
> +#@TYPE: Machine
> +#@NAME: RaspberryPi 3 Development Board
> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits 
> +mode
> +
> +DEFAULTTUNE ?= "cortexa53-64"
> +
> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
> +
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
> +
> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?= "4.7.%"
> +
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +VC4_CMA_SIZE ?= "cma-256"
> +
> +UBOOT_MACHINE = "rpi_3_config"
> diff --git a/conf/machine/raspberrypi3.conf 
> b/conf/machine/raspberrypi3.conf index 9820209..f142323 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -2,12 +2,16 @@
>  #@NAME: RaspberryPi 3 Development Board
>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
>  
> -MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
> +DEFAULTTUNE ?= "cortexa53-32"
> +
> +MACHINEOVERRIDES = "raspberrypi2:raspberrypi:${MACHINE}"
>  
>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>  
> -include conf/machine/raspberrypi2.conf
> +require conf/machine/include/tune-cortexa53.inc
> +include conf/machine/include/rpi-base.inc
>  
>  SERIAL_CONSOLE = "115200 ttyS0"
>  VC4_CMA_SIZE ?= "cma-256"
>  
> +UBOOT_MACHINE = "rpi_3_config"
> 



