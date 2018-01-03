Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7962AE00DA5; Tue,  2 Jan 2018 17:40:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEFA3E00D79
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 17:40:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w031eYSF026776
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Jan 2018 17:40:34 -0800 (PST)
Received: from [128.224.162.167] (128.224.162.167) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 2 Jan 2018 17:40:33 -0800
To: <yocto@yoctoproject.org>, Saul Wold <sgw@linux.intel.com>
References: <20171226011946.23545-1-Qi.Chen@windriver.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <171ee232-84e7-23f2-a0ae-5ee74b5ab86e@windriver.com>
Date: Wed, 3 Jan 2018 09:42:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20171226011946.23545-1-Qi.Chen@windriver.com>
X-Originating-IP: [128.224.162.167]
Subject: Re: [meta-dpdk][PATCH 1/3] dpdk-dev-libibverbs: fix do_fetch failure in case of multilib
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
X-List-Received-Date: Wed, 03 Jan 2018 01:40:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Saul,

I sent this patch series to yocto mailing list, and also to meta-intel 
mailing list. I'm not sure if this is the correct mailing list to send.
Anyway, could you please help review this patch series when convenient?

Best Regards,
Chen Qi

On 12/26/2017 09:19 AM, Chen Qi wrote:
> Fix to correctly set SRC_URI and S to avoid do_fetch failure in case of multilib.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   .../dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb  | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
> index e40c63b..9118494 100644
> --- a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
> +++ b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
> @@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/Mellanox/dpdk-dev-libibverbs"
>   LICENSE = "GPLv2"
>   LIC_FILES_CHKSUM =  "file://COPYING;md5=7c557f27dd795ba77cc419dddc656b51"
>   
> -SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz;name=${PN} \
> +SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz \
>              file://init_c.patch \
>              file://0001-Fix-build-with-clang.patch \
>              file://0002-typecast-enum-to-int-before-comparison.patch \
> @@ -11,8 +11,8 @@ SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${
>              file://0004-Fix-clang-warnings.patch \
>              "
>   
> -SRC_URI[dpdk-dev-libibverbs.md5sum] = "65234ee278eb437a7069326f37cd4d86"
> -SRC_URI[dpdk-dev-libibverbs.sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248a28aceb57d4534d50d572f56cd"
> +SRC_URI[md5sum] = "65234ee278eb437a7069326f37cd4d86"
> +SRC_URI[sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248a28aceb57d4534d50d572f56cd"
>   
>   # A machine needs to enable this using:
>   # COMPATIBLE_MACHINE_pn-dpdk-dev-libibverbs = "<machine name>"
> @@ -20,7 +20,7 @@ SRC_URI[dpdk-dev-libibverbs.sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248
>   COMPATIBLE_MACHINE = "null"
>   COMPATIBLE_HOST_libc-musl_class-target = "null"
>   
> -S = "${WORKDIR}/${PN}-libibverbs-${PV}"
> +S = "${WORKDIR}/dpdk-dev-libibverbs-libibverbs-${PV}"
>   COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
>   DEPENDS = "libnl"
>   



