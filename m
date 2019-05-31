Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 287DCE00B43; Fri, 31 May 2019 10:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B6DDE00A7D
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 10:53:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4VHr2uT003034
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 31 May 2019 10:53:03 -0700 (PDT)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 31 May 2019 10:53:02 -0700
To: Sakib Sajal <sakib.sajal@windriver.com>, <yocto@yoctoproject.org>
References: <20190531174440.18333-1-sakib.sajal@windriver.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <da99f99d-23d1-13e5-1460-71914932aecc@windriver.com>
Date: Fri, 31 May 2019 13:53:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190531174440.18333-1-sakib.sajal@windriver.com>
X-Originating-IP: [172.25.44.4]
Subject: Re: [meta-oe][PATCH] utils.c: close all file descriptors after completing a ptest
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
X-List-Received-Date: Fri, 31 May 2019 17:53:05 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Thanks Sakib.

Next time please use --prefix to add the ptest-runner tag:
so you'll have a subject line like:

[meta-oe][ptest-runner] utils.c: close all file descriptors after 
completing a ptest

The subject line is wrongg since we are closing the fds
*before* the tests. Resend with something like:
    utils.c: close all fds in child for each ptest


Wait to see if Anibal has any comment then send a v2
with a 'v2' prefix in the subject like:
    [yocto] [ptest-runner][PATCHv2 1/3] Makefile: libcheck now requires 
to link subunit

Thanks,
../Randy

On 5/31/19 1:44 PM, Sakib Sajal wrote:
> vredir ptest fails since too many file descriptors were open.
> 
>  From the failed ptest log:
>     run-vredir
>     87,88c87,88
>     < ./vredir6.sub: line 10: /dev/null: Too many open files
>     < ./vredir6.sub: line 13: /dev/null: Too many open files
>     FAIL: run-vredir
> 
> Added function to close file descriptors before starting a new process.
> 
> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> Signed-off-by: Randy Macleod <randy.macleod@windriver.com>
> ---
>   utils.c | 19 +++++++++++++++++++
>   1 file changed, 19 insertions(+)
> 
> diff --git a/utils.c b/utils.c
> index 504df0b..05c2bfe 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -28,6 +28,7 @@
>   #include <fcntl.h>
>   #include <time.h>
>   #include <dirent.h>
> +#include <sys/resource.h>
>   #include <sys/types.h>
>   #include <sys/wait.h>
>   #include <sys/stat.h>
> @@ -240,6 +241,23 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
>   	return head_new;
>   }
>   
> +/* Close all fds from 3 up to 'ulimit -n'
> + * i.e. do not close STDIN, STDOUT, STDERR.
> + * Typically called in in a child process after forking
> + * but before exec as a good policy especially for security.
> + */
> +static void
> +close_fds(void)
> +{
> +	struct rlimit curr_lim;
> +	getrlimit(RLIMIT_NOFILE, &curr_lim);
> +
> +	int fd;
> +	for (fd=3; fd < curr_lim.rlim_cur; fd++) {
> +		(void) close(fd);
> +   	}
> +}
> +
>   static inline void
>   run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>   {
> @@ -252,6 +270,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>   	dup2(fd_stdout, STDOUT_FILENO);
>   	// XXX: Redirect stderr to stdout to avoid buffer ordering problems.
>   	dup2(fd_stdout, STDERR_FILENO);
> +	close_fds();
>   	execv(run_ptest, argv);
>   
>   	exit(1);
> 


-- 
# Randy MacLeod
# Wind River Linux

