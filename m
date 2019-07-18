Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C5E4E00B8F; Thu, 18 Jul 2019 01:09:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98DC0E00A5C
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 01:09:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6I888bl018655
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Jul 2019 01:08:45 -0700
Received: from [128.224.162.221] (128.224.162.221) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 18 Jul 2019 01:08:14 -0700
To: <yocto@yoctoproject.org>, <anuj.mittal@intel.com>
References: <1562748326-346221-1-git-send-email-zhe.he@windriver.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <9cc5277d-958c-a55b-1b40-a47973741092@windriver.com>
Date: Thu, 18 Jul 2019 16:08:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562748326-346221-1-git-send-email-zhe.he@windriver.com>
X-Originating-IP: [128.224.162.221]
Subject: Re: [meta-dpdk][PATCH] dpdk: Fix exmples and test _FORTIFY_SOURCE build failure
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
X-List-Received-Date: Thu, 18 Jul 2019 08:09:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Kindly ping.

Zhe

On 7/10/19 4:45 PM, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
>
> When building examples and tests with GCC9, the following errors come up,
>
>  error: #warning _FORTIFY_SOURCE requires compiling with optimization (-O) [-Werror=cpp]
>   382 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
>       |    ^~~~~~~
> cc1: all warnings being treated as errors
>
> dpdk itself already appends -O3 the EXTRA_CFLAGS for some of those cases, but
> dpdk.inc overwrites EXTRA_CFLAGS when evoking make. This patches adds it back.
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  recipes-extended/dpdk/dpdk.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-extended/dpdk/dpdk.inc b/recipes-extended/dpdk/dpdk.inc
> index a0e081a..9dcec76 100644
> --- a/recipes-extended/dpdk/dpdk.inc
> +++ b/recipes-extended/dpdk/dpdk.inc
> @@ -106,12 +106,12 @@ do_compile () {
>  
>  	cd ${S}/examples/
>  	oe_runmake EXTRA_LDFLAGS="-L${STAGING_LIBDIR} --hash-style=gnu -fuse-ld=bfd" \
> -		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS} -I${STAGING_INCDIR}" \
> +		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS} -O3 -I${STAGING_INCDIR}" \
>  		   CROSS="${TARGET_PREFIX}" O="${S}/examples/$@/"
>  
>  	cd ${S}/test/
>  	oe_runmake EXTRA_LDFLAGS="-L${STAGING_LIBDIR} --hash-style=gnu -fuse-ld=bfd" \
> -		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS} -I${STAGING_INCDIR}" \
> +		   EXTRA_CFLAGS="${HOST_CC_ARCH} ${TOOLCHAIN_OPTIONS} -O3 -I${STAGING_INCDIR}" \
>  		   CROSS="${TARGET_PREFIX}" O="${S}/test/$@/"
>  }
>  


