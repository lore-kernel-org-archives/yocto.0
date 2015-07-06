Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F73CE00A21; Mon,  6 Jul 2015 03:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BF0FE009CC
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 03:10:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 06 Jul 2015 03:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,414,1432623600"; d="scan'208";a="756765965"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jul 2015 03:10:16 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
	IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Mon, 6 Jul 2015 11:10:11 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.72]) by
	IRSMSX156.ger.corp.intel.com ([169.254.3.125]) with mapi id
	14.03.0224.002; Mon, 6 Jul 2015 11:10:11 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "mariano.lopez@linux.intel.com" <mariano.lopez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] views.py: Add how long a recipe hasn't been
	updated
Thread-Index: AQHQt9PxhwMz4znTJEuigyNp86+ITw==
Date: Mon, 6 Jul 2015 10:10:10 +0000
Message-ID: <D1C00F86.5EE1A%belen.barros.pena@intel.com>
References: <1435347331-11932-1-git-send-email-mariano.lopez@linux.intel.com>
In-Reply-To: <1435347331-11932-1-git-send-email-mariano.lopez@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.1.150515
x-originating-ip: [10.237.224.80]
MIME-Version: 1.0
Subject: Re: [PATCH] views.py: Add how long a recipe hasn't been updated
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
X-List-Received-Date: Mon, 06 Jul 2015 10:10:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <41F8F0D350439A4F96C78B52F5EA3964@intel.com>
Content-Transfer-Encoding: quoted-printable


On 26/06/2015 20:35, "mariano.lopez@linux.intel.com"
<mariano.lopez@linux.intel.com> wrote:

>From: Mariano Lopez <mariano.lopez@linux.intel.com>
>
>This add a tooltip in the upstream status field that
>show how long the recipe hasn't been updated.

A tooltip is probably not the best way of showing this. If this
information is of interest in the context of the recipes table, I would
suggest adding a "Last update" column to the table, between the 'Upstream
status' and the 'Maintainer' columns. The 'Last update' column should be
sortable if possible.

To improve readability and facilitate comparison between values in the
table, I would change the date format, since the one we are currently
using (e.g. Dec. 9, 2013, 6:01 p.m.) is too verbose. Something like
MM/DD/YYYY (or DD/MM/YYYY) would work better. Also, I would remove the
time, since it is probably not that relevant in this context (does it
really matter if the patch was merged at 6:01 pm or at 3:25 pm?).

The date format should be changed across the tool (both in the recipes
table and the recipe details page).

Cheers

Bel=E9n


>
>Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
>---
> rrs/models.py              | 15 +++++++++++++++
> rrs/views.py               | 23 ++++++++++++++++++++++-
> templates/rrs/recipes.html |  8 ++++----
> 3 files changed, 41 insertions(+), 5 deletions(-)
>
>diff --git a/rrs/models.py b/rrs/models.py
>index 320670c..77e8442 100644
>--- a/rrs/models.py
>+++ b/rrs/models.py
>@@ -448,6 +448,21 @@ class Raw():
>         return Raw.dictfetchall(cur)
>=20
>     @staticmethod
>+    def get_reup_by_last_updated(date):
>+        cur =3D connection.cursor()
>+        cur.execute("""SELECT te.recipe_id, te.status, te.date,
>te.rownum FROM(
>+                    SELECT  recipe_id, status, date, ROW_NUMBER() OVER(
>+                        PARTITION BY recipe_id
>+                        ORDER BY date DESC
>+                    ) AS rownum
>+                    FROM rrs_RecipeUpstream
>+                    WHERE status =3D 'Y'
>+                    AND date <=3D %s) AS te
>+            WHERE te.rownum =3D 1;
>+            """, [date])
>+        return Raw.dictfetchall(cur)
>+
>+    @staticmethod
>     def dictfetchall(cursor):
>         "Returns all rows from a cursor as a dict"
>         desc =3D cursor.description
>diff --git a/rrs/views.py b/rrs/views.py
>index ad741f6..b0a5935 100644
>--- a/rrs/views.py
>+++ b/rrs/views.py
>@@ -3,7 +3,7 @@ import urllib
> import csv
> from django.http import HttpResponse
>=20
>-from datetime import date
>+from datetime import date, datetime
> from django.http import Http404
> from django.shortcuts import get_object_or_404
> from django.views.generic import ListView, DetailView
>@@ -96,6 +96,7 @@ class RecipeList():
>     summary =3D None
>     upstream_status =3D None
>     upstream_version =3D None
>+    outdated =3D None
>     maintainer_name =3D None
>     no_update_reason =3D None
>=20
>@@ -116,6 +117,7 @@ def _get_recipe_list(milestone):
>     recipe_list =3D []
>     recipes_ids =3D []
>     recipe_upstream_dict_all =3D {}
>+    recipe_last_updated_dict_all =3D {}
>     maintainers_dict_all =3D {}
>     current_date =3D date.today()
>=20
>@@ -127,12 +129,17 @@ def _get_recipe_list(milestone):
>     if recipe_upstream_history:
>         recipe_upstream_all =3D Raw.get_reup_by_recipes_and_date(
>                 recipes_ids, recipe_upstream_history.id)
>+        recipe_last_updated =3D Raw.get_reup_by_last_updated(
>+                milestone.end_date)
>         maintainers_all =3D Raw.get_ma_by_recipes_and_date(
>                 recipes_ids, recipe_maintainer_history[0])
>         for reup in recipe_upstream_all:
>             recipe_upstream_dict_all[reup['recipe_id']] =3D reup
>+        for rela in recipe_last_updated:
>+            recipe_last_updated_dict_all[rela['recipe_id']] =3D rela
>         for ma in maintainers_all:
>             maintainers_dict_all[ma['recipe_id']] =3D ma['name']
>+
>     else:
>         recipe_upstream_all =3D None
>=20
>@@ -140,6 +147,7 @@ def _get_recipe_list(milestone):
>         upstream_version =3D ''
>         upstream_status =3D ''
>         no_update_reason =3D ''
>+        outdated =3D ''
>=20
>         if recipe_upstream_history:
>             recipe_upstream =3D recipe_upstream_dict_all.get(recipe['id']=
)
>@@ -167,11 +175,24 @@ def _get_recipe_list(milestone):
>             upstream_version =3D recipe_upstream['version']
>             no_update_reason =3D recipe_upstream['no_update_reason']
>=20
>+            #Get how long the recipe hasn't been updated
>+            if recipe_upstream['status'] !=3D 'Y':
>+                recipe_last_updated =3D \
>+                    recipe_last_updated_dict_all.get(recipe['id'])
>+                if recipe_last_updated:
>+                    recipe_date =3D recipe_last_updated['date']
>+                    outdated =3D (current_date - recipe_date.date()).days
>+                else:
>+                    outdated =3D 'Unknown'
>+            else:
>+                outdated =3D 'Up-to-date'
>+
>         maintainer_name =3D  maintainers_dict_all.get(recipe['id'], '')
>         recipe_list_item =3D RecipeList(recipe['id'], recipe['pn'],
>recipe['summary'])
>         recipe_list_item.version =3D recipe['version']
>         recipe_list_item.upstream_status =3D upstream_status
>         recipe_list_item.upstream_version =3D upstream_version
>+        recipe_list_item.outdated =3D outdated
>         recipe_list_item.maintainer_name =3D maintainer_name
>         recipe_list_item.no_update_reason =3D no_update_reason
>         recipe_list.append(recipe_list_item)
>diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
>index 493b7cf..ca3c93e 100644
>--- a/templates/rrs/recipes.html
>+++ b/templates/rrs/recipes.html
>@@ -88,13 +88,13 @@
>     <td class=3D"version_column">{{ r.version }}</td>
>     <td class=3D"upstream_version_column">{{ r.upstream_version }}</td>
>     {% if r.upstream_status =3D=3D "Up-to-date" %}
>-    <td class=3D"text-success">
>+    <td class=3D"text-success" data-toggle=3D"tooltip"
>title=3D"{{r.outdated}}">
>     {% elif r.upstream_status =3D=3D "Not updated" %}
>-    <td class=3D"text-error">
>+    <td class=3D"text-error" data-toggle=3D"tooltip" title=3D"{{r.outdate=
d}}">
>     {% elif r.upstream_status =3D=3D "Can't be updated" %}
>-    <td class=3D"muted">
>+    <td class=3D"muted" data-toggle=3D"tooltip" title=3D"{{r.outdated}}">
>     {% else %}
>-    <td class=3D"text-warning">
>+    <td class=3D"text-warning" data-toggle=3D"tooltip"
>title=3D"{{r.outdated}}">
>     {% endif %}
>         {{ r.upstream_status }}
>     </td>
>--=20
>1.9.1
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


