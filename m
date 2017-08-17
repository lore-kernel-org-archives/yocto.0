Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D972FE00D2E; Thu, 17 Aug 2017 02:56:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBD6FE00C45
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 02:56:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 02:56:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,387,1498546800"; d="scan'208";a="1163566539"
Received: from qnguye5-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.6])
	by orsmga001.jf.intel.com with ESMTP; 17 Aug 2017 02:56:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Date: Thu, 17 Aug 2017 21:56:45 +1200
Message-ID: <2475727.3HKUMKbhUm@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1502751056-7648-1-git-send-email-amanda.r.brindle@intel.com>
References: <1502751056-7648-1-git-send-email-amanda.r.brindle@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH] Redirect user to correct url after editing a layer
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
X-List-Received-Date: Thu, 17 Aug 2017 09:56:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amanda,

Thanks - a few issues noted below.

On Tuesday, 15 August 2017 10:50:56 AM NZST Amanda Brindle wrote:
> Before, if a user edited a layer's name, they would be redirected
> to a url utilizing the old name and then receive a 404 Page not
> found error. Now, the url utilizes the new name.

Include here a reference to the bugzilla entry, typically like so:

Fixes [YOCTO #11932].

> Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
> ---
>  layerindex/views.py | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/layerindex/views.py b/layerindex/views.py
> index eaeb5c3..2a25455 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -105,11 +105,6 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
>          layerbranch = get_object_or_404(LayerBranch, layer=layeritem, branch=branchobj)
>          deplistlayers = LayerItem.objects.exclude(id=layeritem.id).order_by('name')
>          returnto = request.GET.get('returnto', 'layer_item')
> -        if returnto:
> -            if returnto == 'layer_review':
> -                return_url = reverse_lazy(returnto, args=(layeritem.name,))
> -            else:
> -                return_url = reverse_lazy(returnto, args=(branch, layeritem.name))

Moving this unfortunately breaks the return_url sent to the template on GET for the "Cancel" button, so I guess it needs to be set in both places.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

