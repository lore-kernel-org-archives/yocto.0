Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A271E011B7
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 06:40:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7ODeNmE029693
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Aug 2011 06:40:23 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 24 Aug 2011 06:40:23 -0700
Message-ID: <4E54FF43.8050102@windriver.com>
Date: Wed, 24 Aug 2011 09:40:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <1314153919-5306-1-git-send-email-liming.wang@windriver.com>
	<1314153919-5306-2-git-send-email-liming.wang@windriver.com>
In-Reply-To: <1314153919-5306-2-git-send-email-liming.wang@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] x86: fix a bug of wrong return erorr.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2011 13:40:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-23 10:45 PM, Liming Wang wrote:
> __vdso_clock_gettime should fall back to call vdso_fallback_gettime function
> if no clockid is selected, not just return error.

At a glance, this seems reasonable to me .. and then I
looked a bit more. This is in fact introduced by lttng and
the ENIVAL does look wrong. It's worth checking out the
latest lttng to make sure that this error isn't there as
well. Our 3.0 kernel won't have this bug yet, but I'll
keep an eye out for this during any lttng work.

I'll merge this into the 2.6.37 tree shortly.

Cheers,

Bruce

>
> Signed-off-by: Liming Wang<liming.wang@windriver.com>
> ---
>   arch/x86/vdso/vclock_gettime.c |    2 --
>   1 files changed, 0 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/vdso/vclock_gettime.c b/arch/x86/vdso/vclock_gettime.c
> index 7bc4815..2365a5b 100644
> --- a/arch/x86/vdso/vclock_gettime.c
> +++ b/arch/x86/vdso/vclock_gettime.c
> @@ -173,8 +173,6 @@ notrace int __vdso_clock_gettime(clockid_t clock, struct timespec *ts)
>   			return do_trace_clock(ts);
>   		case CLOCK_TRACE_FREQ:
>   			return do_trace_clock_freq(ts);
> -		default:
> -			return -EINVAL;
>   		}
>   	return vdso_fallback_gettime(clock, ts);
>   }


