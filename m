Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 925FBE00524; Wed, 24 May 2017 17:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B75E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 17:17:00 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 May 2017 17:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,388,1491289200"; d="scan'208";a="266080320"
Received: from hsharma-mobl1.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.176.196])
	by fmsmga004.fm.intel.com with ESMTP; 24 May 2017 17:16:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Thu, 25 May 2017 12:16:54 +1200
Message-ID: <6834896.yorQbjXbBY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH] views: support querying by layer name
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
X-List-Received-Date: Thu, 25 May 2017 00:17:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jose,

Sorry for the extreme delay reviewing this.

On Tuesday, 4 April 2017 7:31:29 AM NZST Jose Lamego wrote:
> This change supports querying recipes that belong to a specific layer
> by using the prefix "layer:" + the desired layer name, for example:
> "layer: openembedded-core" and this string can be used by itself or
> combined with other supported options.
> 
> [YOCTO #6618]
> 
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 65a536a..5b66892 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -383,13 +383,16 @@ class RecipeSearchView(ListView):
>          query_string = self.request.GET.get('q', '')
>          init_qs = 
Recipe.objects.filter(layerbranch__branch__name=self.kwargs['branch'])
>  
> -        # Support slightly crude search on inherits field
> +        # Support slightly crude search on inherits/layer fields
>          query_items = query_string.split()
>          inherits = []
> +        layers = []
>          query_terms = []
>          for item in query_items:
>              if item.startswith('inherits:'):
>                  inherits.append(item.split(':')[1])
> +            elif item.startswith('layer:'):
> +                layers.append(item.split(':')[1])
>              else:
>                  query_terms.append(item)
>          if inherits:
> @@ -397,6 +400,14 @@ class RecipeSearchView(ListView):
>              for inherit in inherits:
>                  init_qs = init_qs.filter(Q(inherits=inherit) | 
Q(inherits__startswith=inherit + ' ') | Q(inherits__endswith=' ' + inherit) | 
Q(inherits__contains=' %s ' % inherit))
>              query_string = ' '.join(query_terms)
> +        if layers:
> +            for layer in layers:
> +                init_qs = init_qs.filter(
> +                    Q(layerbranch__layer__name=layer) |
> +                    Q(layerbranch__layer__name__startswith=layer + ' ') |
> +                    Q(layerbranch__layer__name__endswith=' ' + layer) |
> +                    Q(layerbranch__layer__name__contains=' %s ' % layer))
> +            query_string = ' '.join(query_terms)

Could we instead determine which layers match the query (i.e. the IDs), and 
then do an layerbranch__layer__in (or layerbranch__layer__id__in, not sure 
which)? That way we can also return a specific message if no layers match the 
query. I'm not sure we really need the fuzzy matches either - just exact name 
match.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

