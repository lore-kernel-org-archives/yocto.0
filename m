Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 991B5E00BFF; Mon,  7 May 2018 07:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B8CE00B8E
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 07:54:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w47ErElI021728
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 May 2018 07:54:10 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 7 May 2018 07:53:54 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <cover.1525663905.git.paul.eggleton@linux.intel.com>
	<5be1d731d1a4df7528f6a46183aefdceb9949279.1525663905.git.paul.eggleton@linux.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <b977c4fe-0cc1-b8ff-e37d-8b0ff96519c2@windriver.com>
Date: Mon, 7 May 2018 09:53:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <5be1d731d1a4df7528f6a46183aefdceb9949279.1525663905.git.paul.eggleton@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 2/2] Add CSV export for layer recipes
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
X-List-Received-Date: Mon, 07 May 2018 14:54:38 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 5/6/18 10:35 PM, Paul Eggleton wrote:
> Add the ability to export the recipe listing for a layer to a CSV file
> for importing into external tools. At the moment we include name,
> version and license, but there is a parameter that lets you specify the
> fields to include in the URL if desired.
> 
> Implements [YOCTO #12722].

With the bitbake layer library I'm working on, it should be possible to do this
directly out of bitbake.

This wouldn't limit it to just recipes either, but any data.  Loading (querying)
the json data from the layer index is easy, and the library would know how to
filter to the right branch/layer/etc.

Something to consider as we go forward with this and other work.

--Mark

> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  layerindex/urls_branch.py        |  5 ++++-
>  layerindex/views.py              | 22 ++++++++++++++++++++++
>  templates/layerindex/detail.html | 14 +++++++-------
>  3 files changed, 33 insertions(+), 8 deletions(-)
> 
> diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
> index 0e41435e..2809147b 100644
> --- a/layerindex/urls_branch.py
> +++ b/layerindex/urls_branch.py
> @@ -7,7 +7,7 @@
>  from django.conf.urls import *
>  from django.views.defaults import page_not_found
>  from django.core.urlresolvers import reverse_lazy
> -from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView
> +from layerindex.views import LayerListView, RecipeSearchView, MachineSearchView, DistroSearchView, ClassSearchView, LayerDetailView, edit_layer_view, delete_layer_view, edit_layernote_view, delete_layernote_view, RedirectParamsView, DuplicatesView, LayerUpdateDetailView, layer_export_recipes_csv_view
>  
>  urlpatterns = [
>      url(r'^$', 
> @@ -20,6 +20,9 @@ urlpatterns = [
>          LayerDetailView.as_view(
>              template_name='layerindex/detail.html'),
>              name='layer_item'),
> +    url(r'^layer/(?P<slug>[-\w]+)/recipes/csv/$',
> +        layer_export_recipes_csv_view,
> +        name='layer_export_recipes_csv'),
>      url(r'^recipes/$',
>          RecipeSearchView.as_view(
>              template_name='layerindex/recipes.html'),
> diff --git a/layerindex/views.py b/layerindex/views.py
> index dbf08497..06d35261 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -1022,3 +1022,25 @@ class StatsView(TemplateView):
>                  machine_count=Count('layerbranch__machine', distinct=True),
>                  distro_count=Count('layerbranch__distro', distinct=True))
>          return context
> +
> +
> +def layer_export_recipes_csv_view(request, branch, slug):
> +    import csv
> +    layer = get_object_or_404(LayerItem, name=slug)
> +    layerbranch = layer.get_layerbranch(branch)
> +
> +    response = HttpResponse(content_type='text/csv')
> +    response['Content-Disposition'] = 'attachment; filename="recipes_%s_%s.csv"' % (layer.name, layerbranch.branch.name)
> +
> +    fieldlist = request.GET.get('fields', 'pn,pv,license').split(',')
> +    recipe_fields = [f.name for f in Recipe._meta.get_fields() if not (f.auto_created and f.is_relation)]
> +    for field in fieldlist:
> +        if field not in recipe_fields:
> +            return HttpResponse('Field %s is invalid' % field)
> +
> +    writer = csv.writer(response)
> +    for recipe in layerbranch.sorted_recipes():
> +        values = [getattr(recipe, field) for field in fieldlist]
> +        writer.writerow(values)
> +
> +    return response
> diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
> index 220d475b..67c21126 100644
> --- a/templates/layerindex/detail.html
> +++ b/templates/layerindex/detail.html
> @@ -199,13 +199,13 @@
>                          <div class="navbar-inner">
>                              <a class="brand pull-left">{{ layeritem.name }} recipes <span class="muted">({{ layerbranch.sorted_recipes.count }})</span></a>
>  
> -                            <ul class="nav pull-right">
> -                                <li>
> -                                    <form action="" class="navbar-search pull-right" id="filter-form">
> -                                        <input type="text" placeholder="Search recipes" class="search-query" id="filter">
> -                                    </form>
> -                                </li>
> -                            </ul>
> +                            <div class="pull-right">
> +                                <a href="{% url 'layer_export_recipes_csv' layerbranch.branch.name layerbranch.layer.name %}" class="btn"><i class="icon-file"></i> Export CSV</a>
> +
> +                                <form action="" class="navbar-search nav-spacer pull-right" id="filter-form">
> +                                    <input type="text" placeholder="Search recipes" class="search-query" id="filter">
> +                                </form>
> +                            </div>
>                          </div>
>                      </div>
>  
> 


