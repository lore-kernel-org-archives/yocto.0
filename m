Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331DAE017A2
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 05:40:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9TCeUNs021623
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 Oct 2013 05:40:30 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 29 Oct 2013 05:40:29 -0700
Message-ID: <526FACB0.2070303@windriver.com>
Date: Tue, 29 Oct 2013 08:40:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>, Khem Raj
	<raj.khem@gmail.com>
References: <1382728670-8235-1-git-send-email-yang.shi@windriver.com>	<CAMKF1srcebkiq+NgLFZORMJcDRKNif4vR3Djrpf9QctyeLcjDA@mail.gmail.com>
	<CAFyqS9rL0G+7y3eMJAB3cbNuegg+MvvLYexkSj6kh9Ww71wV_w@mail.gmail.com>
In-Reply-To: <CAFyqS9rL0G+7y3eMJAB3cbNuegg+MvvLYexkSj6kh9Ww71wV_w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] perf: mips64: Convert __u64 to unsigned long long
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
X-List-Received-Date: Tue, 29 Oct 2013 12:40:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-10-29 05:28 AM, Hans Beckérus wrote:
> On Tue, Oct 29, 2013 at 1:38 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Fri, Oct 25, 2013 at 12:17 PM, Yang Shi <yang.shi@windriver.com> wrote:
>>> On MIPS64, "__u64" is "unsigned long" type, so the "%llu" specifier will cause
>>> build error on MIPS64.
>>>
>>> Convert __u64 to unsigned long long in those sprintf calls to avoid the build
>>> error.
>>>
>>> Signed-off-by: Yang Shi <yang.shi@windriver.com>
>>> ---
>>>   tools/perf/tests/attr.c               |   20 ++++++++++----------
>>>   tools/perf/tests/bp_signal.c          |    2 +-
>>>   tools/perf/tests/bp_signal_overflow.c |    2 +-
>>>   3 files changed, 12 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/tools/perf/tests/attr.c b/tools/perf/tests/attr.c
>>> index 00218f5..f045c2c 100644
>>> --- a/tools/perf/tests/attr.c
>>> +++ b/tools/perf/tests/attr.c
>>> @@ -71,7 +71,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>>          char path[PATH_MAX];
>>>
>>>          snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
>>> -                attr->type, attr->config, fd);
>>> +                attr->type, (unsigned long long)attr->config, fd);
>>>
>>
>> hmm may be you can convert %llu into PRIu64
>>
>> e.g.
>>
>> printf(  "%" PRIu64 "\n", val);
>>
> I think there was a thread/patch on the exact same package and issue in OE-core.
> The solution I think was to define __SANE_USERSPACE_TYPES__ to get
> proper definition of __u64.
> http://patchwork.openembedded.org/patch/59641/
> Or maybe this is something completely different?

The are the same, just a kernel guy versus a userspace guy looking
at the same issue from different points of view. :)

Bruce

>
> Thanks.
> Hans
>
>>
>>
>>>          file = fopen(path, "w+");
>>>          if (!file) {
>>> @@ -80,7 +80,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>>          }
>>>
>>>          if (fprintf(file, "[event-%d-%llu-%d]\n",
>>> -                   attr->type, attr->config, fd) < 0) {
>>> +                   attr->type, (unsigned long long)attr->config, fd) < 0) {
>>>                  perror("test attr - failed to write event file");
>>>                  fclose(file);
>>>                  return -1;
>>> @@ -96,10 +96,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>>          /* struct perf_event_attr */
>>>          WRITE_ASS(type,   PRIu32);
>>>          WRITE_ASS(size,   PRIu32);
>>> -       WRITE_ASS(config,  "llu");
>>> -       WRITE_ASS(sample_period, "llu");
>>> -       WRITE_ASS(sample_type,   "llu");
>>> -       WRITE_ASS(read_format,   "llu");
>>> +       __WRITE_ASS(config,        "llu", (unsigned long long)attr->config);
>>> +       __WRITE_ASS(sample_period, "llu", (unsigned long long)attr->sample_period);
>>> +       __WRITE_ASS(sample_type,   "llu", (unsigned long long)attr->sample_type);
>>> +       __WRITE_ASS(read_format,   "llu", (unsigned long long)attr->read_format);
>>>          WRITE_ASS(disabled,       "d");
>>>          WRITE_ASS(inherit,        "d");
>>>          WRITE_ASS(pinned,         "d");
>>> @@ -124,10 +124,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>>          WRITE_ASS(exclude_callchain_user, "d");
>>>          WRITE_ASS(wakeup_events, PRIu32);
>>>          WRITE_ASS(bp_type, PRIu32);
>>> -       WRITE_ASS(config1, "llu");
>>> -       WRITE_ASS(config2, "llu");
>>> -       WRITE_ASS(branch_sample_type, "llu");
>>> -       WRITE_ASS(sample_regs_user,   "llu");
>>> +       __WRITE_ASS(config1,            "llu", (unsigned long long)attr->config1);
>>> +       __WRITE_ASS(config2,            "llu", (unsigned long long)attr->config2);
>>> +       __WRITE_ASS(branch_sample_type, "llu", (unsigned long long)attr->branch_sample_type);
>>> +       __WRITE_ASS(sample_regs_user,   "llu", (unsigned long long)attr->sample_regs_user);
>>>          WRITE_ASS(sample_stack_user,  PRIu32);
>>>
>>>          fclose(file);
>>> diff --git a/tools/perf/tests/bp_signal.c b/tools/perf/tests/bp_signal.c
>>> index 68daa28..bf3a094 100644
>>> --- a/tools/perf/tests/bp_signal.c
>>> +++ b/tools/perf/tests/bp_signal.c
>>> @@ -74,7 +74,7 @@ static int bp_event(void *fn, int setup_signal)
>>>
>>>          fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>>          if (fd < 0) {
>>> -               pr_debug("failed opening event %llx\n", pe.config);
>>> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>>>                  return TEST_FAIL;
>>>          }
>>>
>>> diff --git a/tools/perf/tests/bp_signal_overflow.c b/tools/perf/tests/bp_signal_overflow.c
>>> index fe7ed28..3662b15 100644
>>> --- a/tools/perf/tests/bp_signal_overflow.c
>>> +++ b/tools/perf/tests/bp_signal_overflow.c
>>> @@ -87,7 +87,7 @@ int test__bp_signal_overflow(void)
>>>
>>>          fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>>          if (fd < 0) {
>>> -               pr_debug("failed opening event %llx\n", pe.config);
>>> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>>>                  return TEST_FAIL;
>>>          }
>>>
>>> --
>>> 1.7.5.4
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


