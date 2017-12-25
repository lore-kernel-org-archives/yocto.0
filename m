Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EB16E00D6E; Mon, 25 Dec 2017 01:12:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D329BE00D64
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:12:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBP9CN4v019451
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 01:12:23 -0800 (PST)
Received: from [128.224.162.167] (128.224.162.167) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 25 Dec 2017 01:12:21 -0800
To: <yocto@yoctoproject.org>
References: <20171225090657.2022-1-Qi.Chen@windriver.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <93135ba5-54cb-4f37-3a8c-16a6441fd7ee@windriver.com>
Date: Mon, 25 Dec 2017 17:14:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20171225090657.2022-1-Qi.Chen@windriver.com>
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
X-List-Received-Date: Mon, 25 Dec 2017 09:12:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

Sorry for the noise.
This patchset has a problem.

I'll send out a new series ASAP.

Best Regards,
Chen Qi

On 12/25/2017 05:06 PM, Chen Qi wrote:
> Fix to correctly set SRC_URI and S to avoid do_fetch failure in case of multilib.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   .../dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb  | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
> index e40c63b..2313f73 100644
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
> +S = "${WORKDIR}/libibverbs-${PV}"
>   COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
>   DEPENDS = "libnl"
>   



