Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19263E0074B; Fri, 12 Aug 2016 09:03:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB811E0043F
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 09:03:32 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2016 09:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,511,1464678000"; d="scan'208";a="747893972"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.28.64])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Aug 2016 09:03:30 -0700
Message-ID: <1471017809.19073.9.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Piotr Figiel <figiel@gmail.com>, yocto@yoctoproject.org
Date: Fri, 12 Aug 2016 17:03:29 +0100
In-Reply-To: <1470918465-6002-1-git-send-email-figiel@gmail.com>
References: <1470918465-6002-1-git-send-email-figiel@gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-image: Fix files ownership if IMAGE_BASENAME is not default
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
X-List-Received-Date: Fri, 12 Aug 2016 16:03:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-08-11 at 14:27 +0200, Piotr Figiel wrote:
> From: Piotr Figiel <p.figiel@camlintechnologies.com>
> 
> In case IMAGE_BASENAME is set on image recipe level the files
> ownership on
> target rootfs is incorrect for recipes inheriting swupd-
> image.bbclass.
> Depending on the context swupd-image.bbclass used either PN (PN_BASE)
> or
> IMAGE_BASENAME when generating path to pseudo shared state directory.
> This
> seems correct only when IMAGE_BASENAME is not set as it defaults to
> PN.
> 
> This patch resolves above problem.
> 
> Addresses [YOCTO #10108].

Good catch, thanks! Patch pushed to meta-swupd master.

Joshua

> 
> Signed-off-by: Piotr Figiel <p.figiel@camlintechnologies.com>
> ---
>  classes/swupd-image.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/classes/swupd-image.bbclass b/classes/swupd-
> image.bbclass
> index 08ab3f5..ed9bd24 100644
> --- a/classes/swupd-image.bbclass
> +++ b/classes/swupd-image.bbclass
> @@ -81,7 +81,7 @@ python () {
>          # Because real image building via SWUPD_IMAGES can happen
> also after
>          # the initial "bitbake <core image>" invocation, we have to
> keep that
>          # pseudo database around and cannot delete it.
> -        pseudo_state = d.expand('${TMPDIR}/work-
> shared/${PN_BASE}/pseudo')
> +        pseudo_state = d.expand('${TMPDIR}/work-
> shared/${IMAGE_BASENAME}/pseudo')
>          d.setVar('PSEUDO_LOCALSTATEDIR', pseudo_state)
>  
>          # Non mega virtual images must depend on the mega image
> having been
> -- 
> 1.9.1
> 

