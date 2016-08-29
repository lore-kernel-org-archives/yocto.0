Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36E63E00F1F; Mon, 29 Aug 2016 05:15:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA83AE00F1A
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 05:15:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2016 05:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,596,1464678000"; d="scan'208";a="1021729276"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga001.jf.intel.com with ESMTP; 29 Aug 2016 05:15:11 -0700
Date: Mon, 29 Aug 2016 15:14:49 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Sujith H <sujith.h@gmail.com>
Message-ID: <20160829121449.GC5724@mbabyjoh-desk.ger.corp.intel.com>
References: <1472470312-22247-1-git-send-email-sujith.h@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1472470312-22247-1-git-send-email-sujith.h@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Sujith Haridasan <Sujith_Haridasan@mentor.com>,
	Christopher Larson <chris_larson@mentor.com>
Subject: Re: [meta][PATCH] ruby: ensure that .ext/rdoc is gone in compile
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
X-List-Received-Date: Mon, 29 Aug 2016 12:15:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sujith,

On Mon, Aug 29, 2016 at 05:01:52PM +0530, Sujith H wrote:
> From: Christopher Larson <chris_larson@mentor.com>
> 
> rdoc gets unhappy if this already exists, so remove it before building.
> 
> Without this, it's possible to hit this error:
> 
>     Directory .ext/rdoc already exists, but it looks like it isn't an RDoc
>     directory.
> 
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> Signed-off-by: Sujith Haridasan <Sujith_Haridasan@mentor.com>
> ---
>  meta/recipes-devtools/ruby/ruby.inc | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/meta/recipes-devtools/ruby/ruby.inc b/meta/recipes-devtools/ruby/ruby.inc
> index fde67e9..d8f6882 100644
> --- a/meta/recipes-devtools/ruby/ruby.inc
> +++ b/meta/recipes-devtools/ruby/ruby.inc
> @@ -37,3 +37,7 @@ do_configure_prepend() {
>      sed -i "s#%%TARGET_CFLAGS%%#$TARGET_CFLAGS#; s#%%TARGET_LDFLAGS%%#$TARGET_LDFLAGS#" ${S}/common.mk
>      rm -rf ${S}/ruby/
>  }
> +
> +do_compile_prepend () {
> +    rm -rf .ext/rdoc
> +}
> -- 

Please send this to oe-core mailing list.

Best Regards,
Maxin

