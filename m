Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24486E00C2E; Mon, 17 Jul 2017 06:54:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57029E00B1B
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 06:54:20 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2017 06:54:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="879706673"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2017 06:54:18 -0700
Message-ID: <1500300247.5349.105.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Pierre FICHEUX <pierre.ficheux@smile.fr>
Date: Mon, 17 Jul 2017 09:04:07 -0500
In-Reply-To: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 13:54:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-07-17 at 10:00 +0200, Pierre FICHEUX wrote:
> This problem causes the following error :
> 
> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary
> 
> 
> Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
> ---
>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb    | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
> index 5fbf594..2c478ad 100644
> --- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
> +++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
> @@ -14,7 +14,8 @@ SRC_URI = "file://helloworld.c"
>  S = "${WORKDIR}"
>  
>  do_compile() {
> -	     ${CC} helloworld.c -o helloworld
> +	     ${CC} ${CPPFLAGS} ${CFLAGS} -c helloworld.c -o helloworld.o
> +	     ${CC} ${LDFLAGS} helloworld.o -o helloworld

master has the second line (LDFLAGS) but not the first one (CPPFLAGS and
CFLAGS) so the problem may also be present on master. Would you mind
checking this and sent patches to the poky mailing list?

Leo

>  }
>  
>  do_install() {
> -- 
> 2.7.4
> 



