Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E2A7E01280
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 07:24:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8UEODCY013364
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Sep 2011 07:24:13 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Sep 2011 07:24:13 -0700
Message-ID: <4E85D10C.5050509@windriver.com>
Date: Fri, 30 Sep 2011 10:24:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110925 Thunderbird/7.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
	<18c191cc7f26dfec74fbecf2fa4ede8a6828d81a.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <18c191cc7f26dfec74fbecf2fa4ede8a6828d81a.1317326894.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/5][KERNEL] meta: add vesafb feature
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
X-List-Received-Date: Fri, 30 Sep 2011 14:24:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-29 04:17 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Add a 'vesafb feature' that adds basic vesa framebuffer support.

This one is quite useful. I've seen a similar set of options
collected in other kernels and it has come in handy.

Bruce

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../kernel-cache/features/framebuffer/vesafb.cfg   |    8 ++++++++
>   .../kernel-cache/features/framebuffer/vesafb.scc   |    1 +
>   2 files changed, 9 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
>   create mode 100644 meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
>
> diff --git a/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg b/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
> new file mode 100644
> index 0000000..9c7f35d
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/framebuffer/vesafb.cfg
> @@ -0,0 +1,8 @@
> +CONFIG_FB=y
> +CONFIG_FB_VESA=y
> +CONFIG_FB_BOOT_VESA_SUPPORT=y
> +CONFIG_FB_MODE_HELPERS=y
> +CONFIG_FB_CFB_COPYAREA=y
> +CONFIG_FB_CFB_IMAGEBLIT=y
> +CONFIG_FB_CFB_FILLRECT=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
> diff --git a/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc b/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
> new file mode 100644
> index 0000000..c113097
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/framebuffer/vesafb.scc
> @@ -0,0 +1 @@
> +kconf non-hardware vesafb.cfg


