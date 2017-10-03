Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 152DCE00CFF; Tue,  3 Oct 2017 08:31:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9E9E00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:31:14 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Oct 2017 08:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,474,1500966000"; d="scan'208";a="158854080"
Received: from unknown (HELO jlock-mobl3.ger.corp.intel.com) ([10.252.2.166])
	by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2017 08:31:13 -0700
To: Jiwei Sun <jiwei.sun@windriver.com>, yocto@yoctoproject.org
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <2e003ee6-b5b8-2db6-190e-afaffc2dfa22@linux.intel.com>
Date: Tue, 3 Oct 2017 16:31:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
Subject: Re: [ptest-runner 1/8] Corrected return code interpreter
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
X-List-Received-Date: Tue, 03 Oct 2017 15:31:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Can you add a commit message detailing what changed and why? Most of the 
commit messages in this series don't help me understand what changed and 
why: https://chris.beams.io/posts/git-commit/

This is especially important as the original author of the code has 
moved on from the project.

On 29/09/17 03:09, Jiwei Sun wrote:
> Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
> ---
>   utils.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/utils.c b/utils.c
> index 6d65388..a07faec 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -300,9 +300,19 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
>   	}
>   
>   	if (status) {
> -		fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
>   		if (timeouted)
> -			fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
> +			fprintf(fps[0], "TIMEOUT: %s ", ptest_dir);
> +
> +		if(WIFEXITED(status)) {
> +			fprintf(fps[0], "\nERROR: Exit status is %d\n", WEXITSTATUS(status));
> +			return WEXITSTATUS(status);
> +		}
> +		else if(WIFSIGNALED(status)) {
> +			fprintf(fps[0], " Killed by signal\n");
> +			return 127;

Why 127? That's "command not found" in bash and EKEYEXPIRED in my errno.h

Could we just include errno and use a named error code?

> +		}
> +		else
> +			fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
>   	}
>   
>   	return status;
> 

Thanks,

Joshua

