Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AED9EE0030B
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 14:31:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Apr 2012 14:31:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93988090"
Received: from unknown (HELO [10.255.12.123]) ([10.255.12.123])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Apr 2012 14:31:52 -0700
Message-ID: <4F9B1047.5080608@linux.intel.com>
Date: Fri, 27 Apr 2012 14:31:51 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Martin Donnelly <martin.donnelly@ge.com>
References: <1326202324-21839-1-git-send-email-martin.donnelly@ge.com>
In-Reply-To: <1326202324-21839-1-git-send-email-martin.donnelly@ge.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] augeas: Add libxml2 dependency
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
X-List-Received-Date: Fri, 27 Apr 2012 21:31:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2012 05:32 AM, Martin Donnelly wrote:
> This patch fixes the following Augeas configure error.
>
> | checking for LIBXML... no
> | configure: error: Package requirements (libxml-2.0) were not met:
> |
> | No package 'libxml-2.0' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables LIBXML_CFLAGS
> | and LIBXML_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | ERROR: oe_runconf failed
>
> Signed-off-by: Martin Donnelly<martin.donnelly@ge.com>
> ---
>   meta/recipes-extended/augeas/augeas.inc |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-extended/augeas/augeas.inc b/meta/recipes-extended/augeas/augeas.inc
> index 0c6d534..f9263cf 100644
> --- a/meta/recipes-extended/augeas/augeas.inc
> +++ b/meta/recipes-extended/augeas/augeas.inc
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bbb461211a33b134d42ed5ee802b37ff"
>
>   SRC_URI = "http://augeas.net/download/${BP}.tar.gz"
>
> -DEPENDS = "readline"
> +DEPENDS = "readline libxml2"
>
>   inherit autotools
>

Merged into OE-Core

Thanks
	Sau!

