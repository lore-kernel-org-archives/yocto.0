Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50093E0179C
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 02:28:11 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id wp18so4939302obc.15
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 02:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+nXaKqOljErIuhdRME8Y9rcJCbUWc4L4+2dsGPaawDs=;
	b=B3InkNEOgwUa4BoCuYeo4j9IdRWozU3o/kxU7IZYvJrkxkLgkIl68s/XmchQ3OiP+U
	tFCdNZdfE5xuh53Oo1GwSqspG7zBEq4wj2wSmIspKyJzToIRLYtG595oKRLCiAxEV+cu
	RWzmVYPnBu+8bHAfWBpw+Xix0mrp7AQwmltNED4DYwm3Jj0P0LgPXiOWeorrz3znnrN2
	giyMylejHjcXavh3JeEUItgO8+U5V8obBLqr/fuBJ4anwBVSy2R0dcE3hi+WtduKxwvV
	hKtNoHLt72Z6acm8BlHYEOq3DzopuLHiD9hj8iec99nlRkYK3pme/rM/1dGyzKnNhmjo
	XV7A==
MIME-Version: 1.0
X-Received: by 10.60.155.166 with SMTP id vx6mr18833293oeb.28.1383038890996;
	Tue, 29 Oct 2013 02:28:10 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 29 Oct 2013 02:28:10 -0700 (PDT)
In-Reply-To: <CAMKF1srcebkiq+NgLFZORMJcDRKNif4vR3Djrpf9QctyeLcjDA@mail.gmail.com>
References: <1382728670-8235-1-git-send-email-yang.shi@windriver.com>
	<CAMKF1srcebkiq+NgLFZORMJcDRKNif4vR3Djrpf9QctyeLcjDA@mail.gmail.com>
Date: Tue, 29 Oct 2013 10:28:10 +0100
Message-ID: <CAFyqS9rL0G+7y3eMJAB3cbNuegg+MvvLYexkSj6kh9Ww71wV_w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 29 Oct 2013 09:28:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 29, 2013 at 1:38 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Oct 25, 2013 at 12:17 PM, Yang Shi <yang.shi@windriver.com> wrote:
>> On MIPS64, "__u64" is "unsigned long" type, so the "%llu" specifier will cause
>> build error on MIPS64.
>>
>> Convert __u64 to unsigned long long in those sprintf calls to avoid the build
>> error.
>>
>> Signed-off-by: Yang Shi <yang.shi@windriver.com>
>> ---
>>  tools/perf/tests/attr.c               |   20 ++++++++++----------
>>  tools/perf/tests/bp_signal.c          |    2 +-
>>  tools/perf/tests/bp_signal_overflow.c |    2 +-
>>  3 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/tools/perf/tests/attr.c b/tools/perf/tests/attr.c
>> index 00218f5..f045c2c 100644
>> --- a/tools/perf/tests/attr.c
>> +++ b/tools/perf/tests/attr.c
>> @@ -71,7 +71,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>         char path[PATH_MAX];
>>
>>         snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
>> -                attr->type, attr->config, fd);
>> +                attr->type, (unsigned long long)attr->config, fd);
>>
>
> hmm may be you can convert %llu into PRIu64
>
> e.g.
>
> printf(  "%" PRIu64 "\n", val);
>
I think there was a thread/patch on the exact same package and issue in OE-core.
The solution I think was to define __SANE_USERSPACE_TYPES__ to get
proper definition of __u64.
http://patchwork.openembedded.org/patch/59641/
Or maybe this is something completely different?

Thanks.
Hans

>
>
>>         file = fopen(path, "w+");
>>         if (!file) {
>> @@ -80,7 +80,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>         }
>>
>>         if (fprintf(file, "[event-%d-%llu-%d]\n",
>> -                   attr->type, attr->config, fd) < 0) {
>> +                   attr->type, (unsigned long long)attr->config, fd) < 0) {
>>                 perror("test attr - failed to write event file");
>>                 fclose(file);
>>                 return -1;
>> @@ -96,10 +96,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>         /* struct perf_event_attr */
>>         WRITE_ASS(type,   PRIu32);
>>         WRITE_ASS(size,   PRIu32);
>> -       WRITE_ASS(config,  "llu");
>> -       WRITE_ASS(sample_period, "llu");
>> -       WRITE_ASS(sample_type,   "llu");
>> -       WRITE_ASS(read_format,   "llu");
>> +       __WRITE_ASS(config,        "llu", (unsigned long long)attr->config);
>> +       __WRITE_ASS(sample_period, "llu", (unsigned long long)attr->sample_period);
>> +       __WRITE_ASS(sample_type,   "llu", (unsigned long long)attr->sample_type);
>> +       __WRITE_ASS(read_format,   "llu", (unsigned long long)attr->read_format);
>>         WRITE_ASS(disabled,       "d");
>>         WRITE_ASS(inherit,        "d");
>>         WRITE_ASS(pinned,         "d");
>> @@ -124,10 +124,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>>         WRITE_ASS(exclude_callchain_user, "d");
>>         WRITE_ASS(wakeup_events, PRIu32);
>>         WRITE_ASS(bp_type, PRIu32);
>> -       WRITE_ASS(config1, "llu");
>> -       WRITE_ASS(config2, "llu");
>> -       WRITE_ASS(branch_sample_type, "llu");
>> -       WRITE_ASS(sample_regs_user,   "llu");
>> +       __WRITE_ASS(config1,            "llu", (unsigned long long)attr->config1);
>> +       __WRITE_ASS(config2,            "llu", (unsigned long long)attr->config2);
>> +       __WRITE_ASS(branch_sample_type, "llu", (unsigned long long)attr->branch_sample_type);
>> +       __WRITE_ASS(sample_regs_user,   "llu", (unsigned long long)attr->sample_regs_user);
>>         WRITE_ASS(sample_stack_user,  PRIu32);
>>
>>         fclose(file);
>> diff --git a/tools/perf/tests/bp_signal.c b/tools/perf/tests/bp_signal.c
>> index 68daa28..bf3a094 100644
>> --- a/tools/perf/tests/bp_signal.c
>> +++ b/tools/perf/tests/bp_signal.c
>> @@ -74,7 +74,7 @@ static int bp_event(void *fn, int setup_signal)
>>
>>         fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>         if (fd < 0) {
>> -               pr_debug("failed opening event %llx\n", pe.config);
>> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>>                 return TEST_FAIL;
>>         }
>>
>> diff --git a/tools/perf/tests/bp_signal_overflow.c b/tools/perf/tests/bp_signal_overflow.c
>> index fe7ed28..3662b15 100644
>> --- a/tools/perf/tests/bp_signal_overflow.c
>> +++ b/tools/perf/tests/bp_signal_overflow.c
>> @@ -87,7 +87,7 @@ int test__bp_signal_overflow(void)
>>
>>         fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>         if (fd < 0) {
>> -               pr_debug("failed opening event %llx\n", pe.config);
>> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>>                 return TEST_FAIL;
>>         }
>>
>> --
>> 1.7.5.4
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

