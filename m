Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F661E006F3; Thu, 10 Jul 2014 08:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A71E00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 08:07:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2014 08:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,638,1400050800"; d="scan'208";a="571177273"
Received: from unknown (HELO [10.255.13.46]) ([10.255.13.46])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2014 08:06:59 -0700
Message-ID: <53BEAC13.5000208@linux.intel.com>
Date: Thu, 10 Jul 2014 08:06:59 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Armin Kuster <akuster@mvista.com>, yocto@yoctoproject.org
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
	<1405002633-2125-2-git-send-email-akuster@mvista.com>
In-Reply-To: <1405002633-2125-2-git-send-email-akuster@mvista.com>
Subject: Re: [meta-security][PATCH 1/3] packagegroup: Add initial set of package groups
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
X-List-Received-Date: Thu, 10 Jul 2014 15:07:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2014 07:30 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   .../packagegroup/packagegroup-core-security.bb     | 45 ++++++++++++++++++++++
>   1 file changed, 45 insertions(+)
>   create mode 100644 recipes-security/packagegroup/packagegroup-core-security.bb
>
> diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
> new file mode 100644
> index 0000000..1acc4a9
> --- /dev/null
> +++ b/recipes-security/packagegroup/packagegroup-core-security.bb
> @@ -0,0 +1,45 @@
> +DESCRIPTION = "Security packagegroup for Poky"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
> +                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +PR = "r0"
> +
You can drop the PR as they are un-needed now with the PR Server

> +inherit packagegroup
> +
> +PACKAGES = "\
> +    packagegroup-core-security \
> +    packagegroup-security-utils \
> +    packagegroup-security-scanners \
> +    "
> +
> +RDEPENDS_packagegroup-core-security = "\
> +    packagegroup-security-utils \
> +    packagegroup-security-scanners \
> +    "
> +
> +SUMMARY_packagegroup-security-utils = "Security utilities"
> +RDEPENDS_packagegroup-security-utils = "\
> +    nmap \
> +    libseccomp \
> +    pinentry \
> +    ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
> +    "
> +
> +SUMMARY_packagegroup-security-scanners = "Security scanners"
> +RDEPENDS_packagegroup-security-scanners = "\
> +    nikto \
> +    checksecurity \
> +	"
> +
> +SUMMARY_packagegroup-security-audit = "Security Audit tools "
> +RDEPENDS_packagegroup-security-audit = " \
> +    buck-security \
> +    redhat-security \
> +    "
> +
> +SUMMARY_packagegroup-security-hardening = "Security Hardening tools"
> +RDEPENDS_packagegroup-security-hardening = " \
> +    bastille \
> +    "
> +
>

