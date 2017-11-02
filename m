Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E667E00C45; Thu,  2 Nov 2017 14:10:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7048BE00AAF
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 14:10:19 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Nov 2017 14:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,335,1505804400"; d="scan'208";a="916920435"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.10.114])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Nov 2017 14:10:18 -0700
To: yocto@yoctoproject.org
References: <1509478719-23960-1-git-send-email-jeffrey.pautler@ni.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <d81a5326-d536-f7d7-f0a3-91bf37bc55b8@linux.intel.com>
Date: Thu, 2 Nov 2017 21:10:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1509478719-23960-1-git-send-email-jeffrey.pautler@ni.com>
Subject: Re: [ptest-runner] utils.c: Prefer monotonic clock to calculate elapsed time
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
X-List-Received-Date: Thu, 02 Nov 2017 21:10:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 31/10/17 19:38, Jeffrey Pautler wrote:
> The current implementation uses the system clock to calculate how long
> a ptest has been running with no output. If a ptest changes the system
> clock as part of the test, that can cause the current implementation
> to falsely trigger a timeout or miss an actual timeout. It is
> preferrable to use a monotonic clock for calculating elapsed time in
> order to avoid these issues.
> 
> This change tries to use the monotonic clock first and falls back to
> the realtime clock if the monotonic clock is not supported.

This patch looks good to me, merged & pushed to ptest-runner2 repo.

Thanks,

Joshua

> 
> Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
> ---
>   utils.c | 24 +++++++++++++++++-------
>   1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/utils.c b/utils.c
> index 6d65388..933eced 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -257,7 +257,8 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
>   		int timeout, int *fds, FILE **fps)
>   {
>   	struct pollfd pfds[2];
> -	time_t sentinel;
> +	struct timespec sentinel;
> +	clockid_t clock = CLOCK_MONOTONIC;
>   	int r;
>   
>   	int timeouted = 0;
> @@ -269,7 +270,11 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
>   	pfds[1].fd = fds[1];
>   	pfds[1].events = POLLIN;
>   
> -	sentinel = time(NULL);
> +	if (clock_gettime(clock, &sentinel) == -1) {
> +		clock = CLOCK_REALTIME;
> +		clock_gettime(clock, &sentinel);
> +	}
> +
>   	while (1) {
>   		waitflags = WNOHANG;
>   
> @@ -288,11 +293,16 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
>   					fwrite(buf, n, 1, fps[1]);
>   			}
>   
> -			sentinel = time(NULL);
> -		} else if (timeout >= 0 && ((time(NULL) - sentinel) > timeout)) {
> -			timeouted = 1;
> -			kill(pid, SIGKILL);
> -			waitflags = 0;
> +			clock_gettime(clock, &sentinel);
> +		} else if (timeout >= 0) {
> +			struct timespec time;
> +
> +			clock_gettime(clock, &time);
> +			if ((time.tv_sec - sentinel.tv_sec) > timeout) {
> +				timeouted = 1;
> +				kill(pid, SIGKILL);
> +				waitflags = 0;
> +			}
>   		}
>   
>   		if (waitpid(pid, &status, waitflags) == pid)
> 

