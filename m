Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25865E0092C; Fri, 27 Jan 2017 07:09:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3EC0E0052B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:09:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v0RF9QX4031716
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 27 Jan 2017 07:09:26 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 27 Jan 2017 07:09:26 -0800
To: David Vincent <freesilicon@gmail.com>, <bruce.ashfield@gmail.com>,
	<yocto@yoctoproject.org>
References: <CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
	<20170126083808.27949-1-freesilicon@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <daad1200-47bd-90b1-573c-b9bcebfbeb44@windriver.com>
Date: Fri, 27 Jan 2017 10:09:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20170126083808.27949-1-freesilicon@gmail.com>
Subject: Re: [PATCH] kernel-yocto: Update source tree with kgit-meta
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
X-List-Received-Date: Fri, 27 Jan 2017 15:09:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-26 03:38 AM, David Vincent wrote:
> kgit-meta processes a file called meta-series to update the source tree
> (create, merge branches, ...). This fixes the merging of feature
> branches using the new merge command of yocto-kernel-tools.

I have this queued, with some modifications. I as traveling this week,
so it'll be early next week before this goes out for merge.

cheers,

Bruce

>
> Signed-off-by: David Vincent <freesilicon@gmail.com>
> ---
>  meta/classes/kernel-yocto.bbclass | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
> index 5cfd8aff50..b37ac01a84 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -162,6 +162,19 @@ do_kernel_metadata() {
>  			bbfatal_log "Could not generate configuration queue for ${KMACHINE}."
>  		fi
>  	fi
> +
> +	# Update git repository by running kgit-meta
> +	cd ${S}
> +
> +	check_git_config
> +	meta_dir=$(kgit --meta)
> +	if [ -f "${meta_dir}/meta-series" ]; then
> +		kgit-meta ${meta_dir}/meta-series
> +		if [ $? -ne 0 ]; then
> +			bberror "Could not apply metadata for ${KMACHINE}."
> +			bbfatal_log "Failures can be resolved in the linux source directory ${S})"
> +		fi
> +	fi
>  }
>
>  do_patch() {
>


