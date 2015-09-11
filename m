Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DC57E00D85; Fri, 11 Sep 2015 07:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB7FE00D10
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 07:09:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BE9Y8J023557
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 07:09:34 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 07:09:33 -0700
To: <maninder1.s@samsung.com>
References: <1402879333.114481430889362699.JavaMail.weblogic@epmlwas03a>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F2E09C.2060602@windriver.com>
Date: Fri, 11 Sep 2015 09:09:32 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1402879333.114481430889362699.JavaMail.weblogic@epmlwas03a>
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"v.narang@samsung.com" <v.narang@samsung.com>
Subject: Re: [EDT][PATCH][prelink-cross] dso validation check fix
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
X-List-Received-Date: Fri, 11 Sep 2015 14:09:38 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Merged to the staging branch.

On 5/6/15 12:16 AM, Maninder Singh wrote:
> EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> Hi Mark,
> 
> dso null pointer check is wrongly placed.
> 
> 
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.y@samsung.com>
> ---
>  trunk/src/rtld/rtld.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/trunk/src/rtld/rtld.c b/trunk/src/rtld/rtld.c
> index 35dfde7..f88ce7f 100644
> --- a/trunk/src/rtld/rtld.c
> +++ b/trunk/src/rtld/rtld.c
> @@ -479,13 +479,13 @@ find_lib_in_path (struct search_path *path, const char *soname,
>        if (wrap_access (ret, F_OK) == 0)
>     {
>       DSO *dso = open_dso (ret);
> +     if (dso == NULL)
> +       continue;
>            int dso_class = gelf_getclass (dso->elf);
>       int dso_machine = (dso_class == ELFCLASS32) ?
>                 elf32_getehdr (dso->elf)->e_machine :
>                 elf64_getehdr (dso->elf)->e_machine;
> 
> -     if (dso == NULL)
> -       continue;
> 
>       /* Skip 32-bit libraries when looking for 64-bit.  Also
>          skip libraries for alternative machines.  */
> --
> 1.7.1
> 
> 
> Thanks and Regards,
> Maninder Singh
> 


