Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28864E00746
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 07:42:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2SEgqVS018473
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Mar 2012 07:42:53 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 28 Mar 2012 07:42:53 -0700
Message-ID: <4F732366.7050305@windriver.com>
Date: Wed, 28 Mar 2012 10:42:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
	<1332796758-9702-3-git-send-email-yang.shi@windriver.com>
In-Reply-To: <1332796758-9702-3-git-send-email-yang.shi@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 2/2] sato: Remove questioned ISO image
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
X-List-Received-Date: Wed, 28 Mar 2012 14:42:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-26 05:19 PM, Yang Shi wrote:
> [YOCTO #1487]
>
> For the liveCD image, interactive bootup is needed, but psplash prevents from
> booting interactively. In such case ISO image is not usable, so remove ISO image
> and the corresponding link and throw error info to warn outside to enable
> unionfs in kenrel.

I'm just bumping Yang's review. I worked with him on this problem
(which turned out to harder than we initially thought).

Does anyone else have better suggestions than this ? This keeps the
live image bootable and interactive when X is in play, but it has
some obvious side effects.

Cheers,

Bruce

>
> Signed-off-by: Yang Shi<yang.shi@windriver.com>
> ---
>   meta/recipes-sato/images/core-image-sato.bb |   16 ++++++++++++++++
>   1 files changed, 16 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
> index 11c3318..10e2239 100644
> --- a/meta/recipes-sato/images/core-image-sato.bb
> +++ b/meta/recipes-sato/images/core-image-sato.bb
> @@ -9,3 +9,19 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
>   LICENSE = "MIT"
>
>   inherit core-image
> +
> +LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
> +
> +do_check_unionfs() {
> +        if [ "${NOISO}" = "1" ]; then
> +                return
> +        fi
> +
> +        if [ "${LIVE}" = "yes" ]&&  ! grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
> +                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.iso
> +                rm -f ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.iso
> +                bbfatal "Building LIVE CD without UNION FS enabled in kernel"
> +        fi
> +}
> +
> +addtask check_unionfs before do_build after do_bootimg


