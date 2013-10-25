Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF1FE01774
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 13:52:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9PKqPg3016614
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 25 Oct 2013 13:52:25 -0700 (PDT)
Received: from [147.11.152.84] (147.11.152.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 25 Oct 2013 13:52:24 -0700
Message-ID: <526ADA08.1010308@windriver.com>
Date: Fri, 25 Oct 2013 13:52:24 -0700
From: Yang Shi <yang.shi@windriver.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0.1
MIME-Version: 1.0
To: Billie Alsup <billie.alsup@ericsson.com>, "bruce.ashfield@windriver.com"
	<bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ABCAD024C4BA8A46A0FEA14F7B3AEC9039487B61@eusaamb105.ericsson.se>
In-Reply-To: <ABCAD024C4BA8A46A0FEA14F7B3AEC9039487B61@eusaamb105.ericsson.se>
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
X-List-Received-Date: Fri, 25 Oct 2013 20:52:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/25/2013 1:14 PM, Billie Alsup wrote:
> I guess for that example, you have to add % yourself
>
> "%s/event-%d-%" PRIu64 "-%d"
>
> but for all the WRITE_ASS examples, simply replace "llu" with PRIu64

Thanks for the suggestion. I had a try, but it failed to build for x86_64.

| tests/attr.c:74:4: error: format '%lu' expects argument of type 'long 
unsigned int', but argument 6 has type '__u64' [-Werror=format=]
|     attr->type, attr->config, fd);

Yang

>
>
> On 10/25/13 1:11 PM, "Billie Alsup" <billie.alsup@ericsson.com> wrote:
>
>> Wouldn't it be better to change "%llu" to PRIu64 (from inttypes.h)?
>> Notice that PRIu32 is already used in places.
>> You can use string catenation where necessary, e.g.
>>
>> "%s/event-%d-" PRIu64 "-%d"
>>
>>
>> On 10/25/13 12:17 PM, "Yang Shi" <yang.shi@windriver.com> wrote:
>>
>>> On MIPS64, "__u64" is "unsigned long" type, so the "%llu" specifier will
>>> cause
>>> build error on MIPS64.
>>>
>>> Convert __u64 to unsigned long long in those sprintf calls to avoid the
>>> build
>>> error.
>>>
>>> Signed-off-by: Yang Shi <yang.shi@windriver.com>
>>> ---
>>> tools/perf/tests/attr.c               |   20 ++++++++++----------
>>> tools/perf/tests/bp_signal.c          |    2 +-
>>> tools/perf/tests/bp_signal_overflow.c |    2 +-
>>> 3 files changed, 12 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/tools/perf/tests/attr.c b/tools/perf/tests/attr.c
>>> index 00218f5..f045c2c 100644
>>> --- a/tools/perf/tests/attr.c
>>> +++ b/tools/perf/tests/attr.c
>>> @@ -71,7 +71,7 @@ static int store_event(struct perf_event_attr *attr,
>>> pid_t pid, int cpu,
>>> 	char path[PATH_MAX];
>>>
>>> 	snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
>>> -		 attr->type, attr->config, fd);
>>> +		 attr->type, (unsigned long long)attr->config, fd);
>>>
>>> 	file = fopen(path, "w+");
>>> 	if (!file) {
>>> @@ -80,7 +80,7 @@ static int store_event(struct perf_event_attr *attr,
>>> pid_t pid, int cpu,
>>> 	}
>>>
>>> 	if (fprintf(file, "[event-%d-%llu-%d]\n",
>>> -		    attr->type, attr->config, fd) < 0) {
>>> +		    attr->type, (unsigned long long)attr->config, fd) < 0) {
>>> 		perror("test attr - failed to write event file");
>>> 		fclose(file);
>>> 		return -1;
>>> @@ -96,10 +96,10 @@ static int store_event(struct perf_event_attr *attr,
>>> pid_t pid, int cpu,
>>> 	/* struct perf_event_attr */
>>> 	WRITE_ASS(type,   PRIu32);
>>> 	WRITE_ASS(size,   PRIu32);
>>> -	WRITE_ASS(config,  "llu");
>>> -	WRITE_ASS(sample_period, "llu");
>>> -	WRITE_ASS(sample_type,   "llu");
>>> -	WRITE_ASS(read_format,   "llu");
>>> +	__WRITE_ASS(config,        "llu", (unsigned long long)attr->config);
>>> +	__WRITE_ASS(sample_period, "llu", (unsigned long
>>> long)attr->sample_period);
>>> +	__WRITE_ASS(sample_type,   "llu", (unsigned long
>>> long)attr->sample_type);
>>> +	__WRITE_ASS(read_format,   "llu", (unsigned long
>>> long)attr->read_format);
>>> 	WRITE_ASS(disabled,       "d");
>>> 	WRITE_ASS(inherit,        "d");
>>> 	WRITE_ASS(pinned,         "d");
>>> @@ -124,10 +124,10 @@ static int store_event(struct perf_event_attr
>>> *attr, pid_t pid, int cpu,
>>> 	WRITE_ASS(exclude_callchain_user, "d");
>>> 	WRITE_ASS(wakeup_events, PRIu32);
>>> 	WRITE_ASS(bp_type, PRIu32);
>>> -	WRITE_ASS(config1, "llu");
>>> -	WRITE_ASS(config2, "llu");
>>> -	WRITE_ASS(branch_sample_type, "llu");
>>> -	WRITE_ASS(sample_regs_user,   "llu");
>>> +	__WRITE_ASS(config1,            "llu", (unsigned long
>>> long)attr->config1);
>>> +	__WRITE_ASS(config2,            "llu", (unsigned long
>>> long)attr->config2);
>>> +	__WRITE_ASS(branch_sample_type, "llu", (unsigned long
>>> long)attr->branch_sample_type);
>>> +	__WRITE_ASS(sample_regs_user,   "llu", (unsigned long
>>> long)attr->sample_regs_user);
>>> 	WRITE_ASS(sample_stack_user,  PRIu32);
>>>
>>> 	fclose(file);
>>> diff --git a/tools/perf/tests/bp_signal.c b/tools/perf/tests/bp_signal.c
>>> index 68daa28..bf3a094 100644
>>> --- a/tools/perf/tests/bp_signal.c
>>> +++ b/tools/perf/tests/bp_signal.c
>>> @@ -74,7 +74,7 @@ static int bp_event(void *fn, int setup_signal)
>>>
>>> 	fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>> 	if (fd < 0) {
>>> -		pr_debug("failed opening event %llx\n", pe.config);
>>> +		pr_debug("failed opening event %llx\n", (unsigned long
>>> long)pe.config);
>>> 		return TEST_FAIL;
>>> 	}
>>>
>>> diff --git a/tools/perf/tests/bp_signal_overflow.c
>>> b/tools/perf/tests/bp_signal_overflow.c
>>> index fe7ed28..3662b15 100644
>>> --- a/tools/perf/tests/bp_signal_overflow.c
>>> +++ b/tools/perf/tests/bp_signal_overflow.c
>>> @@ -87,7 +87,7 @@ int test__bp_signal_overflow(void)
>>>
>>> 	fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>>> 	if (fd < 0) {
>>> -		pr_debug("failed opening event %llx\n", pe.config);
>>> +		pr_debug("failed opening event %llx\n", (unsigned long
>>> long)pe.config);
>>> 		return TEST_FAIL;
>>> 	}
>>>
>>> -- 
>>> 1.7.5.4
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>


