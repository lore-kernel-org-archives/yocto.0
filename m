Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2637EE007B6; Wed,  6 May 2015 12:15:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DA8E00306
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 12:15:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t46JF934029819
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 May 2015 12:15:09 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 6 May 2015 12:15:08 -0700
Message-ID: <554A683B.4040109@windriver.com>
Date: Wed, 6 May 2015 14:15:07 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <maninder1.s@samsung.com>
References: <1484215526.122031430894028615.JavaMail.weblogic@epmlwas03a>
In-Reply-To: <1484215526.122031430894028615.JavaMail.weblogic@epmlwas03a>
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AKHILESH KUMAR <akhilesh.k@samsung.com>,
	"v.narang@samsung.com" <v.narang@samsung.com>
Subject: Re: [EDT][prelink-cross] possible memory leak in opd_size
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
X-List-Received-Date: Wed, 06 May 2015 19:15:16 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

I will hopefully get to reviewing this and the other 3 patches by early next week.

Thanks for the submission, I'll let you know what the outcome is.

--Mark

On 5/6/15 1:33 AM, Maninder Singh wrote:
> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> 
> Hi,
> 
> we found one issue through code-walk through
> and it seems we are creating unusable OPD table , Not sure about fix, please check below fix. 
> 
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.y@samsung.com>
> ---
>  trunk/src/fptr.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/trunk/src/fptr.c b/trunk/src/fptr.c
> index cfe3aed..39271d5 100644
> --- a/trunk/src/fptr.c
> +++ b/trunk/src/fptr.c
> @@ -458,6 +458,7 @@ opd_size (struct prelink_info *info, GElf_Word entsize)
>     e->val = f->val;
>     e->gp = f->gp;
>     e->opd = ret | OPD_ENT_NEW;
> +   f->ent = e;
>     ret += entsize;
>        }
> 
> --
> 1.7.1
> 
> 
> Thanks and Regards,
> Maninder Singh
> 


