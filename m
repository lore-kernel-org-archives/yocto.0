Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96A7CE00CD2; Wed,  9 Sep 2015 15:21:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED02E00AB5
	for <yocto@yoctoproject.org>; Wed,  9 Sep 2015 15:21:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t89MLV31001343
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Sep 2015 15:21:31 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Wed, 9 Sep 2015 15:21:31 -0700
To: <maninder1.s@samsung.com>
References: <1484215526.122031430894028615.JavaMail.weblogic@epmlwas03a>
From: Mark Hatle <mark.hatle@windriver.com>
X-Enigmail-Draft-Status: N1110
Organization: Wind River Systems
Message-ID: <55F0B0EA.8080507@windriver.com>
Date: Wed, 9 Sep 2015 17:21:30 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 09 Sep 2015 22:21:41 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

I'm finally getting caught up on these items.  I've looked at this, the function
in question is only used on arch-ia64.  I don't have any way to test arch-ia64,
nor do I think it's used much anymore (especially in the embedded space).  So
I'm going to be skipping this particular patch -- unless someone can convince me
it is the right fix -- or can verify behavior on an IA64 system.  (Note, ia64,
not x86-64)

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


