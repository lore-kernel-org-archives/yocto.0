Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 695D7E00D8F; Fri, 20 Sep 2019 04:27:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AAFEE007E1
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 04:27:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Sep 2019 04:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="217621216"
Received: from creinhar-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.39.119])
	by fmsmga002.fm.intel.com with ESMTP; 20 Sep 2019 04:27:10 -0700
To: yocto@yoctoproject.org
References: <20190918154818.5425-1-pkj@axis.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <ebecad3b-fe12-a8c5-1621-b031ecd098d5@intel.com>
Date: Fri, 20 Sep 2019 12:27:09 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190918154818.5425-1-pkj@axis.com>
Subject: Re: [meta-gplv2][master][warrior][PATCH] tar: Make it build with GCC 8.3
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
X-List-Received-Date: Fri, 20 Sep 2019 11:27:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Missing an upstream-status, but good to push when that's fixed.

Ross

On 18/09/2019 16:48, Peter Kjellerstedt wrote:
> From: Joakim Roubert <joakimr@axis.com>
> 
> This avoids the following error:
> 
>    lib/argp-parse.c: In function 'argp_version_parser':
>    lib/argp-parse.c:158:2: error: format not a string literal and no
>    format arguments [-Werror=format-security]
>      __argp_error (state, dgettext (state->root_argp->argp_domain,
>      ^~~~~~~~~~~~
> 
> Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>   ...-lib-argp-parse.c-Fix-compiler-error.patch | 34 +++++++++++++++++++
>   recipes-extended/tar/tar_1.17.bb              |  1 +
>   2 files changed, 35 insertions(+)
>   create mode 100644 recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch
> 
> diff --git a/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch b/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch
> new file mode 100644
> index 0000000..3de9fd1
> --- /dev/null
> +++ b/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-error.patch
> @@ -0,0 +1,34 @@
> +From 153c0aab9e2a4a97b1a2c6b530594cd9a211e9ec Mon Sep 17 00:00:00 2001
> +From: Joakim Roubert <joakimr@axis.com>
> +Date: Thu, 6 Dec 2018 10:33:14 +0100
> +Subject: [PATCH] lib/argp-parse.c: Fix compiler error
> +
> +This avoids the following error:
> +
> +  lib/argp-parse.c: In function 'argp_version_parser':
> +  lib/argp-parse.c:158:2: error: format not a string literal and no
> +  format arguments [-Werror=format-security]
> +    __argp_error (state, dgettext (state->root_argp->argp_domain,
> +    ^~~~~~~~~~~~
> +
> +Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
> +---
> + lib/argp-parse.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/lib/argp-parse.c b/lib/argp-parse.c
> +index a7de729..09511ba 100644
> +--- a/lib/argp-parse.c
> ++++ b/lib/argp-parse.c
> +@@ -155,7 +155,7 @@ argp_version_parser (int key, char *arg, struct argp_state *state)
> +       else if (argp_program_version)
> + 	fprintf (state->out_stream, "%s\n", argp_program_version);
> +       else
> +-	__argp_error (state, dgettext (state->root_argp->argp_domain,
> ++	__argp_error (state, "%s", dgettext (state->root_argp->argp_domain,
> + 				       "(PROGRAM ERROR) No version known!?"));
> +       if (! (state->flags & ARGP_NO_EXIT))
> + 	exit (0);
> +--
> +2.11.0
> +
> diff --git a/recipes-extended/tar/tar_1.17.bb b/recipes-extended/tar/tar_1.17.bb
> index b9ca206..1ee5e34 100644
> --- a/recipes-extended/tar/tar_1.17.bb
> +++ b/recipes-extended/tar/tar_1.17.bb
> @@ -8,6 +8,7 @@ PR = "r3"
>   SRC_URI += "file://m4extensions.patch \
>       file://gcc43build.patch \
>       file://avoid_heap_overflow.patch \
> +    file://0001-lib-argp-parse.c-Fix-compiler-error.patch \
>       "
>   
>   SRC_URI[md5sum] = "c6c4f1c075dbf0f75c29737faa58f290"
> 


