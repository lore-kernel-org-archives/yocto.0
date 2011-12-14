Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D1EE013A8
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 06:20:52 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBEEKq64024407
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 06:20:52 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 14 Dec 2011 06:20:52 -0800
Message-ID: <4EE8B0C1.5010202@windriver.com>
Date: Wed, 14 Dec 2011 09:20:49 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <1323855077-16683-1-git-send-email-zumeng.chen@windriver.com>
In-Reply-To: <1323855077-16683-1-git-send-email-zumeng.chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] remove usbgadget from routerstationpro
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
X-List-Received-Date: Wed, 14 Dec 2011 14:20:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-14 04:31 AM, Zumeng Chen wrote:
>    1. No mass storage needed to be accessed by usbgadget.
>    2. This is a router station&  switch, so it should not
>       be taken as a USB_NET device too.

Zumeng,

The comment from the bug reporter was also that the target
doesn't have USB slave hardware to support usbgadget. So mentioning
that in the header is probably a good idea as well.

And small comment indicating that as a result of these conditions,
we remove usbgadget from MACHINE_FEATURES, since it can't be used.
Would complete the header.

Cheers,

Bruce

>
> Signed-off-by: Zumeng.chen@windriver.com>
> ---
>   meta-yocto/conf/machine/routerstationpro.conf |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
> index 9338ca1..52124d9 100644
> --- a/meta-yocto/conf/machine/routerstationpro.conf
> +++ b/meta-yocto/conf/machine/routerstationpro.conf
> @@ -5,7 +5,7 @@
>   require conf/machine/include/tune-mips32.inc
>
>   MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
> -                    serial usbgadget"
> +                    serial"
>
>   KERNEL_IMAGETYPE = "vmlinux"
>   KERNEL_ALT_IMAGETYPE = "vmlinux.bin"


