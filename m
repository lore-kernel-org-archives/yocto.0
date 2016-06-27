Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C0B1E00EC2; Mon, 27 Jun 2016 05:12:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CBCFE00EBF
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 05:12:14 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jun 2016 05:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,536,1459839600"; d="scan'208";a="129185175"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.16.145])
	by fmsmga004.fm.intel.com with ESMTP; 27 Jun 2016 05:12:12 -0700
Message-ID: <1467029531.2892.9.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 27 Jun 2016 13:12:11 +0100
In-Reply-To: <1466828551-11784-1-git-send-email-william.c.randle@intel.com>
References: <1466828551-11784-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [PATCH] keep platform_extra and default_platform_extra lists ordered
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
X-List-Received-Date: Mon, 27 Jun 2016 12:12:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Bill,

This patch is for OE-Core so should go to 

openembedded-core@lists.openembedded.org

Thanks,

Joshua

On Fri, 2016-06-24 at 21:22 -0700, Bill Randle wrote:
> In RpmPM:insert_feeds_uris, the paths are kept in sets, which are
> unordered,
> but they are later used to set the priority for the Smart channels,
> so
> unexpected results could occur. Change the sets to lists and use the
> same
> code as in create_configs() to add items to the list, reather than
> the set
> operators.
> 
> [YOCTO #9717]
> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  meta/lib/oe/package_manager.py | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/meta/lib/oe/package_manager.py
> b/meta/lib/oe/package_manager.py
> index 717246d..2004a42 100644
> --- a/meta/lib/oe/package_manager.py
> +++ b/meta/lib/oe/package_manager.py
> @@ -700,18 +700,19 @@ class RpmPM(PackageManager):
>              arch_list = self.feed_archs.split()
>          else:
>              # List must be prefered to least preferred order
> -            default_platform_extra = set()
> -            platform_extra = set()
> +            default_platform_extra = list()
> +            platform_extra = list()
>              bbextendvariant = self.d.getVar('BBEXTENDVARIANT', True)
> or ""
>              for mlib in self.ml_os_list:
>                  for arch in self.ml_prefix_list[mlib]:
>                      plt = arch.replace('-', '_') + '-.*-' +
> self.ml_os_list[mlib]
>                      if mlib == bbextendvariant:
> -                            default_platform_extra.add(plt)
> +                        if plt not in default_platform_extra:
> +                            default_platform_extra.append(plt)
>                      else:
> -                            platform_extra.add(plt)
> -
> -            platform_extra =
> platform_extra.union(default_platform_extra)
> +                        if plt not in platform_extra:
> +                            platform_extra.append(plt)
> +            platform_extra = default_platform_extra + platform_extra
>  
>              for canonical_arch in platform_extra:
>                  arch = canonical_arch.split('-')[0]
> -- 
> 2.5.5
> 

