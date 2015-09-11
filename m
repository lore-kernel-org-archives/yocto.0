Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 519EAE00D90; Fri, 11 Sep 2015 07:09:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E206E00D7F
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 07:09:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BE9qD9022562
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 07:09:52 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 07:09:52 -0700
To: <maninder1.s@samsung.com>
References: <389650514.118101430891486083.JavaMail.weblogic@epmlwas03a>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F2E0AF.9060001@windriver.com>
Date: Fri, 11 Sep 2015 09:09:51 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <389650514.118101430891486083.JavaMail.weblogic@epmlwas03a>
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AKHILESH KUMAR <akhilesh.k@samsung.com>, AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [EDT][prelink-cross][PATCH] cleanup code
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
X-List-Received-Date: Fri, 11 Sep 2015 14:09:55 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Merged to the staging branch.

On 5/6/15 12:51 AM, Maninder Singh wrote:
> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> Hi,
> 
> Remove dso NULL check because before calling this API
> already checking for dso NULL and also dso pointer is used before this check.
> 
> Signed-off-by: Akhilesh Kumar <akhilesh.k@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.y@samsung.com>
> ---
>  trunk/src/gather.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/trunk/src/gather.c b/trunk/src/gather.c
> index c3d3128..8f310f6 100644
> --- a/trunk/src/gather.c
> +++ b/trunk/src/gather.c
> @@ -561,7 +561,6 @@ make_unprelinkable:
> 
>        assert (ent->type == ET_NONE);
>        ent->type = ET_UNPRELINKABLE;
> -      if (dso)
>     close_dso (dso);
>        return 0;
>      }
> --
> 1.7.1
> 
> Thanks 
> Maninder Singh
> 


