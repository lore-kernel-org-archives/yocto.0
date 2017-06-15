Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6594E00B9E; Thu, 15 Jun 2017 07:06:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B027DE00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 07:06:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jun 2017 07:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,343,1493708400"; d="scan'208";a="99845088"
Received: from hadjizad-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.63.65])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2017 07:06:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Thu, 15 Jun 2017 16:06:06 +0200
Message-ID: <4682467.PJCNH4DyGX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <aa0d77b0-ed15-40ba-393f-f3a805533d4f@linux.intel.com>
References: <1491247889-13977-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1496263644-16202-1-git-send-email-jose.a.lamego@linux.intel.com>
	<aa0d77b0-ed15-40ba-393f-f3a805533d4f@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2] layerindex/views: support querying by layer name
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
X-List-Received-Date: Thu, 15 Jun 2017 14:06:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jose,

Sorry for the delay. The patch looks good except it displays two errors if 
there's no layer after the layer: prefix. I've fixed that myself and merged to 
layerindex-web master.

Thanks,
Paul

On Thursday, 15 June 2017 3:19:48 PM CEST Jose Lamego wrote:
> ping
> 
> On 05/31/2017 03:47 PM, Jose Lamego wrote:
> > This change supports querying recipes that belong to a specific layer
> > by using the prefix "layer:" + the desired layer name, for example:
> > "layer: openembedded-core" and this string can be used by itself or
> > combined with other supported options.
> > 
> > A descriptive error message is displayed when the query string has an
> > unexpected formatting or a non-valid layer name is searched.
> > 
> > [YOCTO #6618]
> > 
> > Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> > ---
> >  layerindex/views.py | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/layerindex/views.py b/layerindex/views.py
> > index 65a536a..3eac3ac 100644
> > --- a/layerindex/views.py
> > +++ b/layerindex/views.py
> > @@ -390,13 +390,28 @@ class RecipeSearchView(ListView):
> >          for item in query_items:
> >              if item.startswith('inherits:'):
> >                  inherits.append(item.split(':')[1])
> > +            # support searches by layer name
> > +            elif item.startswith('layer:'):
> > +                query_layername = item.split(':')[1].strip().lower()
> > +                if not query_layername:
> > +                    messages.add_message(self.request, messages.ERROR, 
'The \
> > +layer name is expected to follow the \"layer:\" prefix without any 
spaces.')
> > +                query_layer = LayerBranch.objects.filter(
> > +                    layer__name=query_layername)
> > +                if query_layer:
> > +                    init_qs = init_qs.filter(
> > +                        layerbranch__layer__id=query_layer[0].id)
> > +                else:
> > +                    messages.add_message(self.request, messages.ERROR,
> > +                                         'No layer \"%s\" was found.'
> > +                                         % query_layername)
> >              else:
> >                  query_terms.append(item)
> >          if inherits:
> >              # FIXME This is a bit ugly, perhaps we should consider having 
this as a one-many relationship instead
> >              for inherit in inherits:
> >                  init_qs = init_qs.filter(Q(inherits=inherit) | 
Q(inherits__startswith=inherit + ' ') | Q(inherits__endswith=' ' + inherit) | 
Q(inherits__contains=' %s ' % inherit))
> > -            query_string = ' '.join(query_terms)
> > +        query_string = ' '.join(query_terms)
> >  
> >          if query_string.strip():
> >              order_by = ('pn', 'layerbranch__layer')
> > 
> 
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

