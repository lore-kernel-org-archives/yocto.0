Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8C27E00C44; Mon, 30 Oct 2017 15:10:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C236E009B4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 15:10:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2017 15:10:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,321,1505804400"; d="scan'208";a="1212088537"
Received: from wsclemen-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.19])
	by fmsmga001.fm.intel.com with ESMTP; 30 Oct 2017 15:10:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Oct 2017 11:10:01 +1300
Message-ID: <6482199.42UzUZds2r@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <a2a29050d3b05b61ce7ef1c1d46fce40f1dbe7d1.1508881202.git.amanda.r.brindle@intel.com>
References: <cover.1508881202.git.amanda.r.brindle@intel.com>
	<a2a29050d3b05b61ce7ef1c1d46fce40f1dbe7d1.1508881202.git.amanda.r.brindle@intel.com>
MIME-Version: 1.0
Cc: Amanda Brindle <amanda.r.brindle@intel.com>
Subject: Re: [layerindex-web][patch v3 1/1] Send email notification on publication
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
X-List-Received-Date: Mon, 30 Oct 2017 22:10:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 25 October 2017 10:49:42 AM NZDT Amanda Brindle wrote:
> When publishing a layer, send an email notification to all of that
> layer's maintainers.
> 
> Fixes [YOCTO #11208]
> 
> Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
> ---
>  layerindex/views.py                          | 34 +++++++++++++++++++++++++
++-
>  templates/layerindex/publishemail.txt        |  9 ++++++++
>  templates/layerindex/publishemailsubject.txt |  1 +
>  3 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 templates/layerindex/publishemail.txt
>  create mode 100644 templates/layerindex/publishemailsubject.txt
> 
> diff --git a/layerindex/views.py b/layerindex/views.py
> index bcf6671..095f428 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -5,7 +5,7 @@
>  # Licensed under the MIT license, see COPYING.MIT for details
>  
>  import sys
> -from django.shortcuts import get_object_or_404, render
> +from django.shortcuts import get_object_or_404, get_list_or_404, render
>  from django.http import HttpResponse, HttpResponseRedirect, 
HttpResponseForbidden, Http404
>  from django.core.urlresolvers import reverse, reverse_lazy, resolve
>  from django.core.exceptions import PermissionDenied
> @@ -261,6 +261,38 @@ def _check_url_branch(kwargs):
>  def publish(request, name):
>      if not (request.user.is_authenticated() and 
request.user.has_perm('layerindex.publish_layer')):
>          raise PermissionDenied
> +    layeritem = get_object_or_404(LayerItem, name=name)
> +    layerbranch = get_object_or_404(LayerBranch, layer=layeritem)
> +    layer_url = request.build_absolute_uri(reverse('layer_item', 
args=(layerbranch.branch, layeritem.name)))
> +    maintainers = get_list_or_404(LayerMaintainer, layerbranch=layerbranch)
> +    from_email = settings.SUBMIT_EMAIL_FROM
> +    subjecttext = get_template('layerindex/publishemailsubject.txt')
> +    bodytext = get_template('layerindex/publishemail.txt')
> +    maintainer_names = [m.name for m in maintainers]
> +    # find appropriate help contact
> +    for user in User.objects.all():
> +        if user.username != 'root' and user.is_active:
> +            help_contact = user
> +            break

Just to follow up here, I've merged this with a change to the above lines to 
only include staff/superusers.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

