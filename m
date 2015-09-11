Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC032E00DE4; Fri, 11 Sep 2015 07:11:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AB2E00D90
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 07:11:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BEAwuR022580
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 07:10:58 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 07:10:58 -0700
To: Maninder Singh <maninder1.s@samsung.com>, <yocto@yoctoproject.org>
References: <1435062512-34808-1-git-send-email-maninder1.s@samsung.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F2E0F1.8040609@windriver.com>
Date: Fri, 11 Sep 2015 09:10:57 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1435062512-34808-1-git-send-email-maninder1.s@samsung.com>
Cc: pankaj.m@samsung.com
Subject: Re: [prelink-cross][PATCH 1/1] rtld: remove if check before free
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
X-List-Received-Date: Fri, 11 Sep 2015 14:11:23 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

I did not merge this patch.  While it's not strictly necessary to get for
allocation before free.  It's also not a bad practice to do so.

--Mark

On 6/23/15 7:28 AM, Maninder Singh wrote:
> No need of explicit NULL check before free
> 
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> ---
>  trunk/src/rtld/rtld.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/trunk/src/rtld/rtld.c b/trunk/src/rtld/rtld.c
> index 35dfde7..3ed1db3 100644
> --- a/trunk/src/rtld/rtld.c
> +++ b/trunk/src/rtld/rtld.c
> @@ -1270,7 +1270,6 @@ process_one_dso (DSO *dso, int host_paths)
>  		       (uint32_t) l->l_map_start);
>  	}
>  
> -      if (filename)
>  	free (filename);
>  
>        cur_dso_ent = cur_dso_ent->next;
> 


