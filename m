Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBACCE0076B; Mon,  6 Apr 2015 08:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F39BE003A8
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 08:55:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t36FtVDj014674
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 6 Apr 2015 08:55:31 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Mon, 6 Apr 2015 08:55:31 -0700
Message-ID: <5522AC72.2070101@windriver.com>
Date: Mon, 6 Apr 2015 10:55:30 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <maninder1.s@samsung.com>
References: <1789275301.445341428309468219.JavaMail.weblogic@epmlwas01c>
In-Reply-To: <1789275301.445341428309468219.JavaMail.weblogic@epmlwas01c>
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [prelink-cross] [PATCH 1/1] debug-for-missing-loader-and-libc
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
X-List-Received-Date: Mon, 06 Apr 2015 15:55:37 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 4/6/15 3:37 AM, Maninder Singh wrote:
> Hi,
> 
> During cross prelink if we miss out ld-linux.so.* or libc.so.* It prints below info:
> ./prelink: /test_binary: Could not parse `prelink-rtld: dl-version.c:219: rtld_check_map_versions:
>  Assertion `needed != ((void *)0)' failed.'
> 
> And thus we miss actual cause for this failure,  by this patch we will know failure reason.
> ./prelink: /test_binary: Could not parse `./prelink-rtld: error while loading shared libraries: ld-linux.so.3'
> (In this case ld-linux.so.3 was missing)
> 
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Signed-off-by: Vaneet Narang <v.narang@samsung.com>
> Reviewed-by: Ajeet Yadav <ajeet.v@samsung.com>
> Reviewed-by: Geon-ho Kim <gh007.kim@samsung.com>
> ---
>  src/rtld/dl-version.c |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)
> diff --git a/src/rtld/dl-version.c b/src/rtld/dl-version.c
> index e4040a6..eb62943 100644
> --- a/src/rtld/dl-version.c
> +++ b/src/rtld/dl-version.c
> @@ -216,6 +216,12 @@ _dl_check_map_versions (struct ldlibs_link_map *map, int verbose, int trace_mode
>       /* If NEEDED is NULL this means a dependency was not found
>          and no stub entry was created.  This should never happen.  */
> +     if(needed == NULL)
> +       {
> +         _dl_signal_error (errval, NULL, NULL, strtab + ent->vn_file);
> +         printf("error while loading shared libraries: %s", strtab + ent->vn_file);
> +         exit(0);

I'm likely to change this to an exit 1.  As I want to make sure that any
failures have a non 0 return code.

I believe the assert is in the original rtld code, but I'll check that and
remove it if it's something I added.

--Mark

> +       }
>       assert (needed != NULL);
>       /* Make sure this is no stub we created because of a missing
> --
> 1.7.1
> 
> And also if it is ok we can remove this one --- assert (needed != NULL); 
> because we are using exit(0) for (needed==NULL) 
> 
> Thanks,
> Maninder Singh
> 


