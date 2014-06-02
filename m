Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4EF6E00B66; Mon,  2 Jun 2014 07:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 609BAE00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 07:18:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s52EIQQw003991
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Jun 2014 07:18:26 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Mon, 2 Jun 2014 07:18:26 -0700
Message-ID: <538C87B1.7090807@windriver.com>
Date: Mon, 2 Jun 2014 09:18:25 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <jackie.huang@windriver.com>, <yocto@yoctoproject.org>
References: <1399975273-12971-1-git-send-email-jackie.huang@windriver.com>
In-Reply-To: <1399975273-12971-1-git-send-email-jackie.huang@windriver.com>
Subject: Re: [meta-selinux][PATCH] refpolicy: Allow udev the block_suspend capability
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
X-List-Received-Date: Mon, 02 Jun 2014 14:18:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Merged to master.

On 5/13/14, 5:01 AM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> Fix the avc denied issue:
> type=1400 audit(1399440994.656:14): avc: denied { block_suspend } for pid=80 comm="udevd" capability=36 scontext=system_u:system_r:udev_t:s0-s15:c0.c1023 tcontext=system_u:system_r:udev_t:s0-s15:c0.c1023 tclass=capability2
>
> The patch is backported from upstream
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>   .../Allow-udev-the-block_suspend-capability.patch  |   25 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   2 files changed, 26 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/Allow-udev-the-block_suspend-capability.patch
>
> diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/Allow-udev-the-block_suspend-capability.patch b/recipes-security/refpolicy/refpolicy-2.20130424/Allow-udev-the-block_suspend-capability.patch
> new file mode 100644
> index 0000000..3c6a979
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-2.20130424/Allow-udev-the-block_suspend-capability.patch
> @@ -0,0 +1,25 @@
> +Allow udev the block_suspend capability
> +
> +Upstream-Status: backport
> +upstream commit: 5905067f2acf710ffbb13ba32575e6316619ddd8
> +
> +Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> +---
> + policy/modules/system/udev.te |    1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/policy/modules/system/udev.te b/policy/modules/system/udev.te
> +index 90e4ab3..efe6c02 100644
> +--- a/policy/modules/system/udev.te
> ++++ b/policy/modules/system/udev.te
> +@@ -39,6 +39,7 @@ ifdef(`enable_mcs',`
> +
> + allow udev_t self:capability { chown dac_override dac_read_search fowner fsetid sys_admin mknod net_raw net_admin sys_nice sys_rawio sys_resource setuid setgid sys_nice sys_ptrace };
> + dontaudit udev_t self:capability sys_tty_config;
> ++allow udev_t self:capability2 block_suspend;
> + allow udev_t self:process ~{ setcurrent setexec setfscreate setrlimit execmem execstack execheap };
> + allow udev_t self:process { execmem setfscreate };
> + allow udev_t self:fd use;
> +--
> +1.7.9.5
> +
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> index 5dbb2dc..0e7419d 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -61,6 +61,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
>   # Backport from upstream
>   SRC_URI += "file://Allow-ping-to-get-set-capabilities.patch \
>               file://filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch \
> +            file://Allow-udev-the-block_suspend-capability.patch \
>              "
>
>   include refpolicy_common.inc
>


