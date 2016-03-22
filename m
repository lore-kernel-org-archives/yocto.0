Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A80E0084E; Tue, 22 Mar 2016 07:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D658E004A0
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 07:04:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 22 Mar 2016 07:02:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,377,1455004800"; d="scan'208";a="939173127"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2016 07:02:52 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.10]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.174]) with mapi id
	14.03.0248.002; Tue, 22 Mar 2016 14:02:48 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Smith, Elliot" <elliot.smith@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH][layerindex-web] search: only match pn against
	search string for recipe searches
Thread-Index: AQHRhEOETUHQcHJgkU6WJhNe/qd2AQ==
Date: Tue, 22 Mar 2016 14:02:48 +0000
Message-ID: <D316FF10.77580%belen.barros.pena@intel.com>
References: <1458317541-16592-1-git-send-email-elliot.smith@intel.com>
In-Reply-To: <1458317541-16592-1-git-send-email-elliot.smith@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.2.160219
x-originating-ip: [10.237.224.41]
MIME-Version: 1.0
Subject: Re: [PATCH][layerindex-web] search: only match pn against search string for recipe searches
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
X-List-Received-Date: Tue, 22 Mar 2016 14:04:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <AE255688D2E7DE4BB04F6B3005D23245@intel.com>
Content-Transfer-Encoding: quoted-printable



On 18/03/2016 16:12, "yocto-bounces@yoctoproject.org on behalf of Elliot
Smith" <yocto-bounces@yoctoproject.org on behalf of
elliot.smith@intel.com> wrote:

>Using the search box creates a query against the pns,
>summaries, descriptions and filenames of recipes.
>This results in a lot of spurious results for common terms
>like "git" when performing a recipe search.
>
>Reduce the search fields used to just the pn so that the search
>will only return results where the recipe name matches.

Just a thought: searching the descriptions and layer names has certain
advantages. Sometimes you might not know the exact name of the recipe you
are looking for (what if I am just looking for a small image? Or a
development image? Or an image for the raspberry pi?).

I think the issue is with the ordering of the search results (a simple
alphabetical), and not so much with the fields being searched: that's what
I think we need to refine so that we show first results where recipe names
start with the search auery string, sorted in alphabetical order, then all
other results, also in alphabetical order.

Cheers

Bel=E9n

>
>[YOCTO #9159]
>
>Signed-off-by: Elliot Smith <elliot.smith@intel.com>
>---
> layerindex/views.py | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/layerindex/views.py b/layerindex/views.py
>index 7e877ac..2dbde24 100644
>--- a/layerindex/views.py
>+++ b/layerindex/views.py
>@@ -373,7 +373,7 @@ class RecipeSearchView(ListView):
>         query_string =3D self.request.GET.get('q', '')
>         init_qs =3D
>Recipe.objects.filter(layerbranch__branch__name=3Dself.kwargs['branch'])
>         if query_string.strip():
>-            entry_query =3D simplesearch.get_query(query_string, ['pn',
>'summary', 'description', 'filename'])
>+            entry_query =3D simplesearch.get_query(query_string, ['pn'])
>             qs =3D init_qs.filter(entry_query).order_by('pn',
>'layerbranch__layer')
>         else:
>             if 'q' in self.request.GET:
>@@ -689,7 +689,7 @@ class ClassicRecipeSearchView(RecipeSearchView):
>         if category:
>             init_qs =3D
>init_qs.filter(classic_category__icontains=3Dcategory)
>         if query_string.strip():
>-            entry_query =3D simplesearch.get_query(query_string, ['pn',
>'summary', 'description', 'filename'])
>+            entry_query =3D simplesearch.get_query(query_string, ['pn'])
>             qs =3D init_qs.filter(entry_query).order_by('pn',
>'layerbranch__layer')
>         else:
>             if 'q' in self.request.GET:
>--=20
>1.9.3
>
>---------------------------------------------------------------------
>Intel Corporation (UK) Limited
>Registered No. 1134945 (England)
>Registered Office: Pipers Way, Swindon SN3 1RJ
>VAT No: 860 2173 47
>
>This e-mail and any attachments may contain confidential material for
>the sole use of the intended recipient(s). Any review or distribution
>by others is strictly prohibited. If you are not the intended
>recipient, please contact the sender and delete all copies.
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


