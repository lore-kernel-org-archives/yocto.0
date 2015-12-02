Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5222E00956; Wed,  2 Dec 2015 06:06:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EC2E0074C
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 06:05:42 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D9BD4F81199; Wed,  2 Dec 2015 07:05:41 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id EA414F81188;
	Wed,  2 Dec 2015 07:05:31 -0700 (MST)
To: yocto@yoctoproject.org
References: <1447951930-18686-1-git-send-email-gary@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <565EFAB2.1070105@mlbassoc.com>
Date: Wed, 2 Dec 2015 07:05:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <1447951930-18686-1-git-send-email-gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: SPI bus support
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
X-List-Received-Date: Wed, 02 Dec 2015 14:06:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Ping?

On 2015-11-19 09:52, Gary Thomas wrote:
> With the newer kernels that use device tree, the SPI bus is only
> enabled by a device tree setting.  This is now supported by adding
>    ENABLE_SPI_BUS = "1"
> in local.conf
>
> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
> ---
>   README                                  | 5 +++++
>   recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>   2 files changed, 11 insertions(+)
>
> diff --git a/README b/README
> index e16dee9..bef13a3 100644
> --- a/README
> +++ b/README
> @@ -189,6 +189,11 @@ kernels.
>   NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
>         older kernel versions.
>
> +2.M. Optional - enable SPI bus
> +==============================
> +When using device tree kernels, set this variable to enable the SPI bus
> +ENABLE_SPI_BUS = "1"
> +
>   3. Extra apps
>   =============
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 45b9f1d..aa11b25 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -66,6 +66,12 @@ do_deploy() {
>           echo "# Enable offline compositing" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>           echo "dispmanx_offline=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>       fi
> +
> +    # SPI bus support
> +    if [ -n "${ENABLE_SPI_BUS}" ]; then
> +        echo "# Enable SPI bus" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtparam=spi=on" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +    fi
>   }
>
>   addtask deploy before do_package after do_install
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

