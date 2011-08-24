Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD498E0120D
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 07:55:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OEttO4012535
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Aug 2011 07:55:55 -0700 (PDT)
Received: from [128.224.162.211] (128.224.162.211) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 24 Aug 2011 07:55:55 -0700
Message-ID: <4E550D23.8020104@windriver.com>
Date: Wed, 24 Aug 2011 22:39:31 +0800
From: Wang Liming <liming.wang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1314153919-5306-1-git-send-email-liming.wang@windriver.com>
	<1314153919-5306-2-git-send-email-liming.wang@windriver.com>
	<4E54FF43.8050102@windriver.com>
In-Reply-To: <4E54FF43.8050102@windriver.com>
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
X-List-Received-Date: Wed, 24 Aug 2011 14:55:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 08/24/11 21:40, Bruce Ashfield wrote:
> On 11-08-23 10:45 PM, Liming Wang wrote:
>> __vdso_clock_gettime should fall back to call vdso_fallback_gettime
>> function
>> if no clockid is selected, not just return error.
>
> At a glance, this seems reasonable to me .. and then I
> looked a bit more. This is in fact introduced by lttng and
> the ENIVAL does look wrong. It's worth checking out the
> latest lttng to make sure that this error isn't there as
It's still in the latest lttng patch:
http://git.kernel.org/?p=linux/kernel/git/compudj/linux-2.6-lttng.git;a=blobdiff;f=arch/x86/vdso/vclock_gettime.c;h=7bc481508d004c4e8dd0f5cff51aeeac8bfd0766;hp=ee55754cc3c5ff378b76f2065a610b72e757f088;hb=98052998fe2aee4423dc24fccfe991b305969656;hpb=b6c4d0eaca66305984cf1ce6bc9d49a3244b412b
> well. Our 3.0 kernel won't have this bug yet, but I'll
Yes, our 3.0 kernel hasn't this bug.

> keep an eye out for this during any lttng work.
>
> I'll merge this into the 2.6.37 tree shortly.
Please replace subject "erorr" with "error" for my fault.

Liming Wang
>
> Cheers,
>
> Bruce
>
>>
>> Signed-off-by: Liming Wang<liming.wang@windriver.com>
>> ---
>> arch/x86/vdso/vclock_gettime.c | 2 --
>> 1 files changed, 0 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/x86/vdso/vclock_gettime.c
>> b/arch/x86/vdso/vclock_gettime.c
>> index 7bc4815..2365a5b 100644
>> --- a/arch/x86/vdso/vclock_gettime.c
>> +++ b/arch/x86/vdso/vclock_gettime.c
>> @@ -173,8 +173,6 @@ notrace int __vdso_clock_gettime(clockid_t clock,
>> struct timespec *ts)
>> return do_trace_clock(ts);
>> case CLOCK_TRACE_FREQ:
>> return do_trace_clock_freq(ts);
>> - default:
>> - return -EINVAL;
>> }
>> return vdso_fallback_gettime(clock, ts);
>> }
>
>


