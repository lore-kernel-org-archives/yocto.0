Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96753E0085D; Tue, 24 Jan 2017 10:47:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B125E00828
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:47:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 24 Jan 2017 10:47:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,279,1477983600"; d="scan'208";a="1098363285"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.123])
	([10.219.128.123])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2017 10:47:42 -0800
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484778698-14581-3-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <374da41c-b7f3-4522-32ad-4774cc681fa4@linux.intel.com>
Date: Tue, 24 Jan 2017 12:47:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1484778698-14581-3-git-send-email-jose.a.lamego@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 2/2] views.py: Consider layer name in recipe search
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
X-List-Received-Date: Tue, 24 Jan 2017 18:47:45 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

ping

On 01/18/2017 04:31 PM, Jose Lamego wrote:
> From: Alex Franco <alejandro.franco@linux.intel.com>
> 
> Recipe search cannot be narrowed to a specific layer, producing
> unnecessary results.
> 
> This change allows including a layers name when searching for recipes to
> narrow the yielded results by adding a layer name to the simplesearch.getquery
> call in the recipe search view.
> 
> [YOCTO #6618]
> 
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 03fadbb..5db6fbc 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -406,7 +406,8 @@ class RecipeSearchView(ListView):
>              qs0 = init_qs.filter(pn=query_string).order_by(*order_by)
>              qs0 = recipes_preferred_count(qs0)
>  
> -            entry_query = simplesearch.get_query(query_string, ['pn'])
> +            entry_query = simplesearch.get_query(
> +                query_string, ['pn', 'layerbranch__layer__name'])
>              qs1 = init_qs.filter(entry_query).order_by(*order_by)
>              qs1 = recipes_preferred_count(qs1)
>  
> 

-- 
Jose Lamego | OTC Embedded Platforms & Tools | GDC

