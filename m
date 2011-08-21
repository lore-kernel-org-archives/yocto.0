Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BEC6E0048B
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 21:22:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7L4MR6S025447
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 20 Aug 2011 21:22:27 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.19.102) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 20 Aug 2011 21:22:27 -0700
Message-ID: <4E508800.704@windriver.com>
Date: Sun, 21 Aug 2011 00:22:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: walimis <walimisdev@gmail.com>
References: <1313747029-10209-1-git-send-email-walimisdev@gmail.com>
In-Reply-To: <1313747029-10209-1-git-send-email-walimisdev@gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH] meta: add APM Emulation option to beagleboard
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
X-List-Received-Date: Sun, 21 Aug 2011 04:22:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-19 5:43 AM, walimis wrote:
> From: Liming Wang<liming.wang@windriver.com>
>
> apmd daemon needs this option to work, so add this to beagleboard
> kernel config file.

Merged into the 3.x and 2.6.37 meta branches. I'll push this
out early next week.

Bruce

>
> Signed-off-by: Liming Wang<liming.wang@windriver.com>
> ---
>   .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |    5 +++++
>   1 files changed, 5 insertions(+), 0 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> index 00485d2..56fce58 100644
> --- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> +++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> @@ -328,3 +328,8 @@ CONFIG_VIDEO_OMAP3_ISP=y
>   # CONFIG_VIDEO_OMAP34XX_ISP_PREVIEWER is not set
>   CONFIG_VIDEO_OMAP34XX_ISP_RESIZER=y
>   # CONFIG_VIDEO_HELPER_CHIPS_AUTO is not set
> +
> +#
> +# Advanced Power Management Emulation support
> +#
> +CONFIG_APM_EMULATION=y


