Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78340E013CE
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 17:47:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBF1lBQO002649
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 14 Dec 2011 17:47:11 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 14 Dec 2011 17:47:11 -0800
Message-ID: <4EE9519D.2070906@windriver.com>
Date: Wed, 14 Dec 2011 20:47:09 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.24) Gecko/20111103 Thunderbird/3.1.16
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <4EE8B0C1.5010202@windriver.com>
	<1323910951-26916-1-git-send-email-zumeng.chen@windriver.com>
In-Reply-To: <1323910951-26916-1-git-send-email-zumeng.chen@windriver.com>
Cc: yocto@yoctoproject.org, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [V2 PATCH 1/1] remove usbgadget from routerstationpro
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
X-List-Received-Date: Thu, 15 Dec 2011 01:47:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-12-14 8:02 PM, Zumeng Chen wrote:
>    Since the target doesn't have the related requirement
>    to use USB slave hardware supporting usb gadget, so
>    remove it from MACHINE_FEATURES.

Indention went a bit out of whack there, but the wording is what
we want.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>


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


