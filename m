Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A51EEE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:16:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q22LGMCD027435
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:16:22 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:16:22 -0800
Message-ID: <4F513892.6020106@windriver.com>
Date: Fri, 2 Mar 2012 16:16:02 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<52339f4d415098f5903b6bce50206d404b12bb8d.1330644090.git.darren@dvhart.com>
In-Reply-To: <52339f4d415098f5903b6bce50206d404b12bb8d.1330644090.git.darren@dvhart.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/6] eg20t: Enable serial console for the pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 21:16:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-01 06:59 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> The FRI2 uses the pch_uart driver for the serial console. Enable the console
> driver.

It this safe for all eg20t users ? I see the crownbay also
uses this.

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
> index ff2f6fd..3d4969c 100644
> --- a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
> +++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
> @@ -3,6 +3,7 @@
>   CONFIG_PCH_DMA=y
>
>   CONFIG_SERIAL_PCH_UART=y
> +CONFIG_SERIAL_PCH_UART_CONSOLE=y
>   CONFIG_SERIAL_CORE=y
>
>   CONFIG_SPI=y


