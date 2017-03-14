Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C27E00A4F; Mon, 13 Mar 2017 19:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ACFAE0094C
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 19:22:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 13 Mar 2017 19:22:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,162,1486454400"; d="scan'208";a="59924745"
Received: from nuritamo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.31])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2017 19:22:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Tue, 14 Mar 2017 15:22:54 +1300
Message-ID: <2981565.BsZMip2jzr@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <02120cfb-c133-2b1d-54b6-5054cd047a19@linux.intel.com>
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484777982-7168-2-git-send-email-jose.a.lamego@linux.intel.com>
	<02120cfb-c133-2b1d-54b6-5054cd047a19@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 14 Mar 2017 02:23:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

This should be using a reverse() call instead of a hardcoded URL path suffix. 
However, since that was a trivial fix I've done that and merged it - it'll 
appear in the layer index once we do the next upgrade (fairly soon).

Cheers,
Paul

On Tuesday, 14 March 2017 9:35:16 AM NZDT Jose Lamego wrote:
> Ping.
> 
> On 01/18/2017 04:19 PM, Jose Lamego wrote:
> > From: Alex Franco <alejandro.franco@linux.intel.com>
> > 
> > When a recipe search returns only one result, clicking the single
> > result at the results view is still required to view further
> > recipe detail.
> > 
> > This change automatically redirects to the recipe details view
> > when the recipe search returns a single result.
> > 
> > [YOCTO #6618]
> > 
> > Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> > ---
> > 
> >  layerindex/views.py | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/layerindex/views.py b/layerindex/views.py
> > index 0f73e93..03fadbb 100644
> > --- a/layerindex/views.py
> > +++ b/layerindex/views.py
> > 
> > @@ -372,6 +372,14 @@ class RecipeSearchView(ListView):
> >      context_object_name = 'recipe_list'
> >      paginate_by = 50
> > 
> > +    def render_to_response(self, context, **kwargs):
> > +        if len(self.object_list) == 1:
> > +            return HttpResponseRedirect("/layerindex/recipe/%s/"
> > +                                        % self.object_list[0].id)
> > +        else:
> > +            return super(ListView, self).render_to_response(context,
> > +                                                            **kwargs)
> > +
> > 
> >      def get_queryset(self):
> >          _check_url_branch(self.kwargs)
> >          query_string = self.request.GET.get('q', '')


-- 

Paul Eggleton
Intel Open Source Technology Centre

