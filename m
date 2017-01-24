Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F5A1E00833; Tue, 24 Jan 2017 10:47:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06FEEE00826
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 10:47:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 24 Jan 2017 10:47:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,279,1477983600"; d="scan'208";a="1098363193"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.128.123])
	([10.219.128.123])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2017 10:47:26 -0800
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1484778698-14581-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484778698-14581-2-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <987b9708-e3a3-3dce-8735-2bc2ee942a35@linux.intel.com>
Date: Tue, 24 Jan 2017 12:47:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1484778698-14581-2-git-send-email-jose.a.lamego@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 1/2] views.py: Redirect to recipe details for single results
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
X-List-Received-Date: Tue, 24 Jan 2017 18:47:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

ping

On 01/18/2017 04:31 PM, Jose Lamego wrote:
> From: Alex Franco <alejandro.franco@linux.intel.com>
> 
> When a recipe search returns only one result, clicking the single
> result at the results view is still required to view further
> recipe detail.
> 
> This change automatically redirects to the recipe details view
> when the recipe search returns a single result.
> 
> [YOCTO #6618]
> 
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  layerindex/views.py | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 0f73e93..03fadbb 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -372,6 +372,14 @@ class RecipeSearchView(ListView):
>      context_object_name = 'recipe_list'
>      paginate_by = 50
>  
> +    def render_to_response(self, context, **kwargs):
> +        if len(self.object_list) == 1:
> +            return HttpResponseRedirect("/layerindex/recipe/%s/"
> +                                        % self.object_list[0].id)
> +        else:
> +            return super(ListView, self).render_to_response(context,
> +                                                            **kwargs)
> +
>      def get_queryset(self):
>          _check_url_branch(self.kwargs)
>          query_string = self.request.GET.get('q', '')
> 

-- 
Jose Lamego | OTC Embedded Platforms & Tools | GDC

