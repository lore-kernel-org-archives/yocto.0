Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F58E0074A
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2012 21:08:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1R58P4P017532
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 26 Feb 2012 21:08:25 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.219) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 26 Feb 2012 21:08:25 -0800
Message-ID: <4F4B0FC8.7030807@windriver.com>
Date: Mon, 27 Feb 2012 00:08:24 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1330319008.git.dvhart@linux.intel.com>
	<e43a5b93817dc1a4ed2c526e3e9ea825347bf212.1330319008.git.dvhart@linux.intel.com>
In-Reply-To: <e43a5b93817dc1a4ed2c526e3e9ea825347bf212.1330319008.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] linux-yocto-tiny: Bump SRCREV and PV to 3.0.18
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
X-List-Received-Date: Mon, 27 Feb 2012 05:08:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-27 12:04 AM, Darren Hart wrote:
> Bring linux-yocto-tiny inline with the other 3.0 linux-yocto-* recipes.
> Built and booted for qemux86.

I'm just about to pull the trigger (i.e. a matter of hours) on 3.0.22. If
you want to wait for that, or let this stand, either is fine with me, but
I thought I'd warn :)

Cheers,

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb |    6 +++---
>   1 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
> index 061476c..fe4033b 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
> @@ -5,10 +5,10 @@ require recipes-kernel/linux/linux-yocto.inc
>   KMACHINE = "yocto/standard/base"
>   KBRANCH = "${KMACHINE}"
>
> -LINUX_VERSION ?= "3.0.12"
> +LINUX_VERSION ?= "3.0.18"
>
> -SRCREV_machine ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
> -SRCREV_meta ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
> +SRCREV_machine ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
> +SRCREV_meta ?= "b78a519841bd8b477cad599af8d38df6760445c1"
>
>   PR = "r1"
>   PV = "${LINUX_VERSION}+git${SRCPV}"


