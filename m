Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A2EE00887; Mon, 13 Mar 2017 19:01:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0AE4E00655
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 19:01:19 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 19:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,162,1486454400"; d="scan'208";a="834256319"
Received: from nuritamo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.31])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Mar 2017 19:01:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Tue, 14 Mar 2017 15:01:14 +1300
Message-ID: <1547728.gaXEvVxRZb@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
References: <1484777982-7168-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1484777982-7168-3-git-send-email-jose.a.lamego@linux.intel.com>
	<af345555-3ff8-e443-cd51-6686a676cb3d@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 14 Mar 2017 02:01:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jose,

Sorry for the delay in responding to this.

I'd prefer if this were implemented like the recently added "inherits:" where 
we have a special prefix e.g. "layer:" in order to search for things in a 
particular layer. Then it's much clearer as to what's going on.

Cheers,
Paul

On Tuesday, 14 March 2017 9:35:34 AM NZDT Jose Lamego wrote:
> Ping.
> 
> On 01/18/2017 04:19 PM, Jose Lamego wrote:
> > From: Alex Franco <alejandro.franco@linux.intel.com>
> > 
> > Recipe search cannot be narrowed to a specific layer, producing
> > unnecessary results.
> > 
> > This change allows including a layers name when searching for recipes to
> > narrow the yielded results by adding a layer name to the
> > simplesearch.getquery call in the recipe search view.
> > 
> > [YOCTO #6618]
> > 
> > Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> > ---
> > 
> >  layerindex/views.py | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/layerindex/views.py b/layerindex/views.py
> > index 03fadbb..5db6fbc 100644
> > --- a/layerindex/views.py
> > +++ b/layerindex/views.py
> > 
> > @@ -406,7 +406,8 @@ class RecipeSearchView(ListView):
> >              qs0 = init_qs.filter(pn=query_string).order_by(*order_by)
> >              qs0 = recipes_preferred_count(qs0)
> > 
> > -            entry_query = simplesearch.get_query(query_string, ['pn'])
> > +            entry_query = simplesearch.get_query(
> > +                query_string, ['pn', 'layerbranch__layer__name'])
> > 
> >              qs1 = init_qs.filter(entry_query).order_by(*order_by)
> >              qs1 = recipes_preferred_count(qs1)


-- 

Paul Eggleton
Intel Open Source Technology Centre

