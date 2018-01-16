Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF33BE00DCA; Mon, 15 Jan 2018 17:51:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 549BBE008A4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 17:51:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0G1pTBr018372
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 15 Jan 2018 17:51:29 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 15 Jan 2018 17:51:29 -0800
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
References: <cover.1514957938.git.liezhi.yang@windriver.com>
	<4642b69fffb6ec6ee24cf5e2af1f8d7473c04e0e.1514957938.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <cd0474cc-e848-d55b-d79c-9facb104b465@windriver.com>
Date: Tue, 16 Jan 2018 09:51:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <4642b69fffb6ec6ee24cf5e2af1f8d7473c04e0e.1514957938.git.liezhi.yang@windriver.com>
Subject: Re: [layerindex-web][PATCH 1/5] utils.py: fix remove obsolete dependencies
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
X-List-Received-Date: Tue, 16 Jan 2018 01:51:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

Do you have any comments, please ?

// Robert

On 01/03/2018 01:42 PM, Robert Yang wrote:
> The obsolete dependency is the one which is in database but not in
> conf/layer.conf anymore. The old code had a problem for newly created
> layerbranch, the new layerbranch has no dependencies, so no need remove. And it
> had a side effect was that when need_remove was cleaned up, it would be set
> again in the next for loop, thus might wrongly remove dependencies. This patch
> can fix the problem.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>   layerindex/utils.py | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index e58d8f6..08a4001 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -122,7 +122,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
>           logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
>           return
>   
> -    need_remove = None
> +    need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required)
>       for dep, ver_list in list(dep_dict.items()):
>           ver_str = None
>           if ver_list:
> @@ -142,9 +142,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
>                   continue
>   
>           # Preparing to remove obsolete ones
> -        if not need_remove:
> -            need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
> -        else:
> +        if need_remove:
>               need_remove = need_remove.exclude(dependency=dep_layer)
>   
>           # Skip existing entries.
> 

