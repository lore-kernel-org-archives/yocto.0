Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F4DE0179C
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 17:39:21 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id u16so12427624iet.21
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 17:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rTIDmRrg3YZVPJEsAeZ69NycFOC7UYcEqu8R+SOyXgk=;
	b=ztMZK087UoZKodtYubibsPHbj8LF5IpyjJfo0GPPMLpb3kSGeDb5mWs6A9j91lfn+f
	/p/KzWAJDbEC2LoR74nqlMQlgiiofL8LUHAEVIZBJU1voEru19cltZTkhnpqhbRZarDa
	FWPgz9DxKtKQ+GuMPwAA3xUVWG2+c1w/SLVitlTJnD9NSgUX+a7HO6x3yCvmlDZ74j4V
	H30st9bpX+KcAeUJSXMLBkt75ZMV8wE7ix3I6Jcr+8+cSm3/v715mErxm6AhJz2yhA6Z
	UQC0cLBdoDXtlad5vK5jq3KqeyMIaYL7MoAScliTGC6Udn6EGkG+DTXS0CyJ/v6uZBsj
	7U/w==
X-Received: by 10.50.57.44 with SMTP id f12mr10481782igq.39.1383007160526;
	Mon, 28 Oct 2013 17:39:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Mon, 28 Oct 2013 17:38:50 -0700 (PDT)
In-Reply-To: <1382728670-8235-1-git-send-email-yang.shi@windriver.com>
References: <1382728670-8235-1-git-send-email-yang.shi@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Oct 2013 17:38:50 -0700
Message-ID: <CAMKF1srcebkiq+NgLFZORMJcDRKNif4vR3Djrpf9QctyeLcjDA@mail.gmail.com>
To: Yang Shi <yang.shi@windriver.com>
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
X-List-Received-Date: Tue, 29 Oct 2013 00:39:21 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 25, 2013 at 12:17 PM, Yang Shi <yang.shi@windriver.com> wrote:
> On MIPS64, "__u64" is "unsigned long" type, so the "%llu" specifier will cause
> build error on MIPS64.
>
> Convert __u64 to unsigned long long in those sprintf calls to avoid the build
> error.
>
> Signed-off-by: Yang Shi <yang.shi@windriver.com>
> ---
>  tools/perf/tests/attr.c               |   20 ++++++++++----------
>  tools/perf/tests/bp_signal.c          |    2 +-
>  tools/perf/tests/bp_signal_overflow.c |    2 +-
>  3 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/tools/perf/tests/attr.c b/tools/perf/tests/attr.c
> index 00218f5..f045c2c 100644
> --- a/tools/perf/tests/attr.c
> +++ b/tools/perf/tests/attr.c
> @@ -71,7 +71,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>         char path[PATH_MAX];
>
>         snprintf(path, PATH_MAX, "%s/event-%d-%llu-%d", dir,
> -                attr->type, attr->config, fd);
> +                attr->type, (unsigned long long)attr->config, fd);
>

hmm may be you can convert %llu into PRIu64

e.g.

printf(  "%" PRIu64 "\n", val);



>         file = fopen(path, "w+");
>         if (!file) {
> @@ -80,7 +80,7 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>         }
>
>         if (fprintf(file, "[event-%d-%llu-%d]\n",
> -                   attr->type, attr->config, fd) < 0) {
> +                   attr->type, (unsigned long long)attr->config, fd) < 0) {
>                 perror("test attr - failed to write event file");
>                 fclose(file);
>                 return -1;
> @@ -96,10 +96,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>         /* struct perf_event_attr */
>         WRITE_ASS(type,   PRIu32);
>         WRITE_ASS(size,   PRIu32);
> -       WRITE_ASS(config,  "llu");
> -       WRITE_ASS(sample_period, "llu");
> -       WRITE_ASS(sample_type,   "llu");
> -       WRITE_ASS(read_format,   "llu");
> +       __WRITE_ASS(config,        "llu", (unsigned long long)attr->config);
> +       __WRITE_ASS(sample_period, "llu", (unsigned long long)attr->sample_period);
> +       __WRITE_ASS(sample_type,   "llu", (unsigned long long)attr->sample_type);
> +       __WRITE_ASS(read_format,   "llu", (unsigned long long)attr->read_format);
>         WRITE_ASS(disabled,       "d");
>         WRITE_ASS(inherit,        "d");
>         WRITE_ASS(pinned,         "d");
> @@ -124,10 +124,10 @@ static int store_event(struct perf_event_attr *attr, pid_t pid, int cpu,
>         WRITE_ASS(exclude_callchain_user, "d");
>         WRITE_ASS(wakeup_events, PRIu32);
>         WRITE_ASS(bp_type, PRIu32);
> -       WRITE_ASS(config1, "llu");
> -       WRITE_ASS(config2, "llu");
> -       WRITE_ASS(branch_sample_type, "llu");
> -       WRITE_ASS(sample_regs_user,   "llu");
> +       __WRITE_ASS(config1,            "llu", (unsigned long long)attr->config1);
> +       __WRITE_ASS(config2,            "llu", (unsigned long long)attr->config2);
> +       __WRITE_ASS(branch_sample_type, "llu", (unsigned long long)attr->branch_sample_type);
> +       __WRITE_ASS(sample_regs_user,   "llu", (unsigned long long)attr->sample_regs_user);
>         WRITE_ASS(sample_stack_user,  PRIu32);
>
>         fclose(file);
> diff --git a/tools/perf/tests/bp_signal.c b/tools/perf/tests/bp_signal.c
> index 68daa28..bf3a094 100644
> --- a/tools/perf/tests/bp_signal.c
> +++ b/tools/perf/tests/bp_signal.c
> @@ -74,7 +74,7 @@ static int bp_event(void *fn, int setup_signal)
>
>         fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>         if (fd < 0) {
> -               pr_debug("failed opening event %llx\n", pe.config);
> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>                 return TEST_FAIL;
>         }
>
> diff --git a/tools/perf/tests/bp_signal_overflow.c b/tools/perf/tests/bp_signal_overflow.c
> index fe7ed28..3662b15 100644
> --- a/tools/perf/tests/bp_signal_overflow.c
> +++ b/tools/perf/tests/bp_signal_overflow.c
> @@ -87,7 +87,7 @@ int test__bp_signal_overflow(void)
>
>         fd = sys_perf_event_open(&pe, 0, -1, -1, 0);
>         if (fd < 0) {
> -               pr_debug("failed opening event %llx\n", pe.config);
> +               pr_debug("failed opening event %llx\n", (unsigned long long)pe.config);
>                 return TEST_FAIL;
>         }
>
> --
> 1.7.5.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

