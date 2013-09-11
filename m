Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C45E005B3;
	Wed, 11 Sep 2013 10:50:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Sep 2013 10:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,885,1371106800"; d="scan'208";a="293641526"
Received: from unknown (HELO [10.255.14.99]) ([10.255.14.99])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Sep 2013 10:50:20 -0700
Message-ID: <5230AD5B.3050000@linux.intel.com>
Date: Wed, 11 Sep 2013 10:50:19 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130805 Thunderbird/17.0.8
MIME-Version: 1.0
To: b40290@freescale.com
References: <1378872408-16125-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1378872408-16125-1-git-send-email-b40290@freescale.com>
Cc: yocto@yoctoproject.org, mulhern <mulhern@yoctoproject.org>
Subject: Re: [Meta-security][PATCH 3/3] barnyard: add recipe
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
X-List-Received-Date: Wed, 11 Sep 2013 17:50:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2013 09:06 PM, b40290@freescale.com wrote:
> From: Chunrong Guo <B40290@freescale.com>
>
>     *Barnyard is a output system for Snort
>
> Signed-off-by: Chunrong Guo <B40290@freescale.com>
> ---
>   recipes-security/barnyard/barnyard_0.2.0.bb |   22 ++++++++++++++++++++++
>   1 files changed, 22 insertions(+), 0 deletions(-)
>   create mode 100644 recipes-security/barnyard/barnyard_0.2.0.bb
>
> diff --git a/recipes-security/barnyard/barnyard_0.2.0.bb b/recipes-security/barnyard/barnyard_0.2.0.bb
> new file mode 100644
> index 0000000..a13ebdc
> --- /dev/null
> +++ b/recipes-security/barnyard/barnyard_0.2.0.bb
> @@ -0,0 +1,22 @@
> +DESCRIPTION = "Barnyard is a output system for Snort."
> +HOMEPAGE = "http://www.snort.org/"
> +LICENSE = "QPL"
> +LIC_FILES_CHKSUM = "file://LICENSE.QPL;md5=1b8ff8c0012b5a2d647357699bf44b41"
> +
> +DEPENDS = "libpcap"
> +RDEPENDS_${PN} = "libpcap"
DEPENDS are also RDEPENDS so this is extra and not needed.
> +
> +SRC_URI = " ${GENTOO_MIRROR}/${P}.tar.gz;name=tarball \
You don't want to use ${P} as it will be prefixed with any multilib type 
of extension, it's better to use ${BP} which won't be expanded.

> +          "
> +SRC_URI[tarball.md5sum] = "be3283028cf414b52b220308ceb411e9"
> +SRC_URI[tarball.sha256sum] = "09e0f8e095e79cfe70ea069d13e7d02521a504a1f400a45556a634dccfd31a3a"
> +
> +
> +S = "${WORKDIR}/${P}"
Same as above, this is also the default, so you should not need to 
specify this item.

> +inherit autotools pkgconfig
> +
> +do_configure_prepend () {
> +	#fix hardcoded include path
> +	sed -i -e 's:extra_incl=-I/usr/include/pcap::g' ${S}/configure.in
> +}
> +
>

