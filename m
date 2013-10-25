Return-Path: <billie.alsup@ericsson.com>
Received: from usevmg20.ericsson.net (usevmg20.ericsson.net [198.24.6.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C4A2E01774
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 13:14:07 -0700 (PDT)
X-AuditID: c618062d-b7fda8e0000024c6-03-526ad10eceed
Received: from EUSAAHC005.ericsson.se (Unknown_Domain [147.117.188.87])
	by usevmg20.ericsson.net (Symantec Mail Security) with SMTP id
	AF.92.09414.E01DA625; Fri, 25 Oct 2013 22:14:06 +0200 (CEST)
Received: from EUSAAMB105.ericsson.se ([147.117.188.122]) by
	EUSAAHC005.ericsson.se ([147.117.188.87]) with mapi id 14.02.0328.009;
	Fri, 25 Oct 2013 16:14:06 -0400
From: Billie Alsup <billie.alsup@ericsson.com>
To: Yang Shi <yang.shi@windriver.com>, "bruce.ashfield@windriver.com"
	<bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] perf: mips64: Convert __u64 to unsigned long long
Thread-Index: AQHO0be1TtV4qCJmyk6NdihLCwyoz5oFpxKAgAAAs4A=
Date: Fri, 25 Oct 2013 20:14:05 +0000
Message-ID: <ABCAD024C4BA8A46A0FEA14F7B3AEC9039487B61@eusaamb105.ericsson.se>
In-Reply-To: <ABCAD024C4BA8A46A0FEA14F7B3AEC9039487B4B@eusaamb105.ericsson.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.8.130913
x-originating-ip: [147.117.188.135]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHLMWRmVeSWpSXmKPExsUyuXRPuC7fxawgg3XnTC1e9/5msjj8/gyr
	xaSXa9gcmD3Wb9nK5NF+oo8tgCmKyyYlNSezLLVI3y6BK2PmWYWCkyoV7e+/szUw7pbrYuTk
	kBAwkdjbcIwVwhaTuHBvPVsXIxeHkMBRRonm89tZQBJCAssZJfY38YLYbAJ6Et9vX2UHKRIR
	mM0o8fbSQyaQhLBAgMSXw+/BbBGBQImzv76xQdhWEnMObwYbxCKgKnHi2nwwm1fAV+LWqTOM
	IDangJ/E+g3XwGxGoCu+n1oDNodZQFzi1pP5TBDXCUgs2XOeGcIWlXj5+B/Y1aJAB3X+fMwC
	EVeW+D7nEQtEr47Egt2f2CBsa4k9r18zQ9jaEssWQti8AoISJ2c+YZnAKDYLybpZSNpnIWmf
	haR9FpL2BYysqxg5SotTy3LTjQw2MQLj6JgEm+4Oxj0vLQ8xSnOwKInzfnnrHCQkkJ5Ykpqd
	mlqQWhRfVJqTWnyIkYmDU6qBcb1q65utfTZtrxcf+S9y7oUTx5XDO8Uuzr7qGcuhtPusR2GR
	bM0Zq9rtd+VezjimFjbJYw2jt06F2UTZQqHg3oTCREdlv/0pJw7GKK1vaX789tYM2cdT7IrK
	HVrWFNw1u7hQcf/Ej8yJ6gcO2y+xMGAtmKw/YfO0l9ssV85oObe06W23nZRVoxJLcUaioRZz
	UXEiAO7wbCNxAgAA
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
X-List-Received-Date: Fri, 25 Oct 2013 20:14:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4FE898AB7A79B142997E09D707DE80C2@ericsson.com>
Content-Transfer-Encoding: quoted-printable

I guess for that example, you have to add % yourself

"%s/event-%d-%" PRIu64 "-%d"

but for all the WRITE_ASS examples, simply replace "llu" with PRIu64


On 10/25/13 1:11 PM, "Billie Alsup" <billie.alsup@ericsson.com> wrote:

>Wouldn't it be better to change "%llu" to PRIu64 (from inttypes.h)?
>Notice that PRIu32 is already used in places.
>You can use string catenation where necessary, e.g.
>
>"%s/event-%d-" PRIu64 "-%d"
>
>
>On 10/25/13 12:17 PM, "Yang Shi" <yang.shi@windriver.com> wrote:
>
>>On MIPS64, "__u64" is "unsigned long" type, so the "%llu" specifier will
>>cause
>>build error on MIPS64.
>>
>>Convert __u64 to unsigned long long in those sprintf calls to avoid the
>>build
>>error.
>>
>>Signed-off-by: Yang Shi <yang.shi@windriver.com>
>>---
>> tools/perf/tests/attr.c               |   20 ++++++++++----------
>> tools/perf/tests/bp_signal.c          |    2 +-
>> tools/perf/tests/bp_signal_overflow.c |    2 +-
>> 3 files changed, 12 insertions(+), 12 deletions(-)
>>
>>diff --git a/tools/perf/tests/attr.c b/tools/perf/tests/attr.c
>>index 00218f5..f045c2c 100644
>>--- a/tools/perf/tests/attr.c
>>+++ b/tools/perf/tests/attr.c
>>@@ -71,7 +71,7 @@ static int store_event(struct perf_event_attr *attr,
>>pid_t pid, int cpu,
>> 	char path[PATH_MAX];
>>=20
>> 	snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
>>-		 attr->type, attr->config, fd);
>>+		 attr->type, (unsigned long long)attr->config, fd);
>>=20
>> 	file =3D fopen(path, "w+");
>> 	if (!file) {
>>@@ -80,7 +80,7 @@ static int store_event(struct perf_event_attr *attr,
>>pid_t pid, int cpu,
>> 	}
>>=20
>> 	if (fprintf(file, "[event-%d-%llu-%d]\n",
>>-		    attr->type, attr->config, fd) < 0) {
>>+		    attr->type, (unsigned long long)attr->config, fd) < 0) {
>> 		perror("test attr - failed to write event file");
>> 		fclose(file);
>> 		return -1;
>>@@ -96,10 +96,10 @@ static int store_event(struct perf_event_attr *attr,
>>pid_t pid, int cpu,
>> 	/* struct perf_event_attr */
>> 	WRITE_ASS(type,   PRIu32);
>> 	WRITE_ASS(size,   PRIu32);
>>-	WRITE_ASS(config,  "llu");
>>-	WRITE_ASS(sample_period, "llu");
>>-	WRITE_ASS(sample_type,   "llu");
>>-	WRITE_ASS(read_format,   "llu");
>>+	__WRITE_ASS(config,        "llu", (unsigned long long)attr->config);
>>+	__WRITE_ASS(sample_period, "llu", (unsigned long
>>long)attr->sample_period);
>>+	__WRITE_ASS(sample_type,   "llu", (unsigned long
>>long)attr->sample_type);
>>+	__WRITE_ASS(read_format,   "llu", (unsigned long
>>long)attr->read_format);
>> 	WRITE_ASS(disabled,       "d");
>> 	WRITE_ASS(inherit,        "d");
>> 	WRITE_ASS(pinned,         "d");
>>@@ -124,10 +124,10 @@ static int store_event(struct perf_event_attr
>>*attr, pid_t pid, int cpu,
>> 	WRITE_ASS(exclude_callchain_user, "d");
>> 	WRITE_ASS(wakeup_events, PRIu32);
>> 	WRITE_ASS(bp_type, PRIu32);
>>-	WRITE_ASS(config1, "llu");
>>-	WRITE_ASS(config2, "llu");
>>-	WRITE_ASS(branch_sample_type, "llu");
>>-	WRITE_ASS(sample_regs_user,   "llu");
>>+	__WRITE_ASS(config1,            "llu", (unsigned long
>>long)attr->config1);
>>+	__WRITE_ASS(config2,            "llu", (unsigned long
>>long)attr->config2);
>>+	__WRITE_ASS(branch_sample_type, "llu", (unsigned long
>>long)attr->branch_sample_type);
>>+	__WRITE_ASS(sample_regs_user,   "llu", (unsigned long
>>long)attr->sample_regs_user);
>> 	WRITE_ASS(sample_stack_user,  PRIu32);
>>=20
>> 	fclose(file);
>>diff --git a/tools/perf/tests/bp_signal.c b/tools/perf/tests/bp_signal.c
>>index 68daa28..bf3a094 100644
>>--- a/tools/perf/tests/bp_signal.c
>>+++ b/tools/perf/tests/bp_signal.c
>>@@ -74,7 +74,7 @@ static int bp_event(void *fn, int setup_signal)
>>=20
>> 	fd =3D sys_perf_event_open(&pe, 0, -1, -1, 0);
>> 	if (fd < 0) {
>>-		pr_debug("failed opening event %llx\n", pe.config);
>>+		pr_debug("failed opening event %llx\n", (unsigned long
>>long)pe.config);
>> 		return TEST_FAIL;
>> 	}
>>=20
>>diff --git a/tools/perf/tests/bp_signal_overflow.c
>>b/tools/perf/tests/bp_signal_overflow.c
>>index fe7ed28..3662b15 100644
>>--- a/tools/perf/tests/bp_signal_overflow.c
>>+++ b/tools/perf/tests/bp_signal_overflow.c
>>@@ -87,7 +87,7 @@ int test__bp_signal_overflow(void)
>>=20
>> 	fd =3D sys_perf_event_open(&pe, 0, -1, -1, 0);
>> 	if (fd < 0) {
>>-		pr_debug("failed opening event %llx\n", pe.config);
>>+		pr_debug("failed opening event %llx\n", (unsigned long
>>long)pe.config);
>> 		return TEST_FAIL;
>> 	}
>>=20
>>--=20
>>1.7.5.4
>>
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>


