Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192ECE00DE5; Thu,  1 Aug 2019 11:18:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B913DE00C22
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:18:13 -0700 (PDT)
Received: by mail-vs1-f68.google.com with SMTP id 2so49492386vso.8
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V9Nmgn0vxlFgr6AwKCUVAA97fAM18lISXEa8O6N9lmc=;
	b=fCSvwPZnQ/Ni4NStoyTQ9G6RlpEICUsjLtu9pjzVlkFMvvJYtnl8f2qg3x9ZKyNM6G
	9JHvQvWhdLHXib151i30l2Y40X6pdLilTlWSr48T17JWPLyfqCZTrWLjjL6dVnoM0YJ+
	NR1gCedXeq55p+QbtMX3K4oKB9TupKZJF02iOLcmoXAuMKv22lpd3LAhpcqgnYw+7EJd
	xHoSh1Ai52I7PQzX64jsoOqlFjyccpMizKbcQfrxhZAMCH7+SZBj5p8DcgY//tRkregS
	0u49WwP9jxMc6X1mvk1uhus2euDDdz+i0/JliRjoggMgYoNiUEFESLKw6W/oLS5EvUfq
	Lx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V9Nmgn0vxlFgr6AwKCUVAA97fAM18lISXEa8O6N9lmc=;
	b=Kcs9hwd8l3cepI533AlHJLTL+jcRsCNMoyazI2G0wCDw5qFULD9rVfaq5ZKNmSFyEw
	Tt+u8DVPkqlXRlu/YEFh3nSbo6kbAYfQn4hL2s60O6yBuKmGPpC9TVSPDCQocooygIgD
	Qs0tqDPKQeZks2fkJ0V9tDBMH0uGtaE7tWU3rkZZ8cirCKZcOVk1xbeiwHb55ov9PuMH
	zAauAAbkBLIskenbiT+NsAKnOmdxBQDec4BElzOnMtrPu/OU6WT+5+XlHHZoFT+XfmN+
	hOpZvXvZo3aqwZqucbpbIEOMpSO/dKOBFkuuV7qe0Drj2Yictdd8R1KfOmpgFZV6RpQS
	L3+A==
X-Gm-Message-State: APjAAAWCTSZ5CF195lOT39xFHruPvt+x1R4kImnv7QJch/raCC/EwOgd
	pQExB0X2xxYq15CyH1P74UZiusfFiURqWX5cD5v8/w==
X-Google-Smtp-Source: APXvYqys2VCcUvhPFPfSuoSb2X+8g5YpnZ2yM9H5yTL14n2YM76+UOOIXN1DOUFY/eTWrWXNJvZbMJ1Nt0kmp0UMxu8=
X-Received: by 2002:a67:eec2:: with SMTP id o2mr22981190vsp.221.1564683493036; 
	Thu, 01 Aug 2019 11:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
	<20190717183530.24893-4-Randy.MacLeod@windriver.com>
In-Reply-To: <20190717183530.24893-4-Randy.MacLeod@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Thu, 1 Aug 2019 13:19:22 -0500
Message-ID: <CA+_AqivTCYrO01kHZ0SKxH6XK84D5DZSWF-cH0G=8GfSeVeKrQ@mail.gmail.com>
To: Randy MacLeod <Randy.MacLeod@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner][PATCH 4/4] Fix additional warnings when using clang
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
X-List-Received-Date: Thu, 01 Aug 2019 18:18:15 -0000
Content-Type: multipart/alternative; boundary="000000000000c9e715058f12434b"

--000000000000c9e715058f12434b
Content-Type: text/plain; charset="UTF-8"

Hi Randy,

Just push your clang fixes to master and created v2.3.2 tag, feel free to
send a recipe upgrade.

Regards,
Anibal

On Wed, 17 Jul 2019 at 13:36, Randy MacLeod <Randy.MacLeod@windriver.com>
wrote:

> Drop unused function parameters in wait_child().
>
> The remaining warning in the top dir code is:
>   utils.c:25:9: warning: macro name is a reserved identifier
> [-Wreserved-id-macro]
>   #define _GNU_SOURCE
> and it's not clear how to deal with that in a portable manner.
>
> Drop unused variable in analizer code.
> Rename analizer to analyzer.
>
> Avoid program scope global by adding a set function for
> the opts directory variable.
>
> Free strdup()ed memory before exit.
>
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
>  tests/main.c       | 13 ++++++++-----
>  tests/ptest_list.c |  2 ++
>  tests/utils.c      | 22 ++++++++++++++--------
>  utils.c            |  6 ++----
>  utils.h            |  2 ++
>  5 files changed, 28 insertions(+), 17 deletions(-)
>
> diff --git a/tests/main.c b/tests/main.c
> index e1a8b69..1344bc0 100644
> --- a/tests/main.c
> +++ b/tests/main.c
> @@ -38,14 +38,14 @@ static SuiteFunction *suites[] = {
>         NULL,
>  };
>
> +extern void set_opts_dir(char *);
> +
>  static inline void
>  print_usage(FILE *stream, char *progname)
>  {
>         fprintf(stream, "Usage: %s <-d directory>\n", progname);
>  }
>
> -char *opts_directory;
> -
>  int
>  main(int argc, char *argv[])
>  {
> @@ -54,12 +54,12 @@ main(int argc, char *argv[])
>         int number_failed;
>         SuiteFunction *sf;
>
> -       opts_directory = NULL;
> +       char *opts_dir = NULL;
>
>         while ((opt = getopt(argc, argv, "d:t:h")) != -1) {
>                 switch (opt) {
>                         case 'd':
> -                               opts_directory = strdup(optarg);
> +                               opts_dir = strdup(optarg);
>                         break;
>                         case 'h':
>                                 /* fall though !! */
> @@ -69,10 +69,11 @@ main(int argc, char *argv[])
>                 }
>         }
>
> -       if (opts_directory == NULL) {
> +       if (opts_dir == NULL) {
>                 print_usage(stdout, argv[0]);
>                 exit(1);
>         }
> +       set_opts_dir(opts_dir);
>
>         i = 0;
>         number_failed = 0;
> @@ -88,6 +89,8 @@ main(int argc, char *argv[])
>                 i++;
>                 sf = suites[i];
>         }
> +       set_opts_dir(NULL);
> +       free(opts_dir);
>
>         return number_failed;
>  }
> diff --git a/tests/ptest_list.c b/tests/ptest_list.c
> index e0ec276..081f027 100644
> --- a/tests/ptest_list.c
> +++ b/tests/ptest_list.c
> @@ -29,6 +29,8 @@
>
>  #include "ptest_list.h"
>
> +extern Suite *ptest_list_suite(void);
> +
>  static int ptests_num = 6;
>  static char *ptest_names[] = {
>         "python",
> diff --git a/tests/utils.c b/tests/utils.c
> index 571d488..4fa4609 100644
> --- a/tests/utils.c
> +++ b/tests/utils.c
> @@ -32,9 +32,15 @@
>  #include "ptest_list.h"
>  #include "utils.h"
>
> +Suite *utils_suite(void);
> +
>  #define PRINT_PTEST_BUF_SIZE 8192
>
> -extern char *opts_directory;
> +static char *opts_directory = NULL;
> +
> +void set_opts_dir(char * od) {
> +       opts_directory = od;
> +}
>
>  static char *ptests_found[] = {
>         "bash",
> @@ -68,7 +74,7 @@ find_word(int *found, const char *line, const char *word)
>  }
>
>  static void test_ptest_expected_failure(struct ptest_list *, const int,
> char *,
> -       void (*h_analizer)(const int, FILE *, FILE *));
> +       void (*h_analyzer)(const int, FILE *));
>
>  START_TEST(test_get_available_ptests)
>  {
> @@ -189,7 +195,7 @@ START_TEST(test_run_ptests)
>  END_TEST
>
>  static void
> -search_for_timeout_and_duration(const int rp, FILE *fp_stdout, FILE
> *fp_stderr)
> +search_for_timeout_and_duration(const int rp, FILE *fp_stdout)
>  {
>         const char *timeout_str = "TIMEOUT";
>         const char *duration_str = "DURATION";
> @@ -218,7 +224,7 @@ START_TEST(test_run_timeout_duration_ptest)
>  END_TEST
>
>  static void
> -search_for_fail(const int rp, FILE *fp_stdout, FILE *fp_stderr)
> +search_for_fail(const int rp, FILE *fp_stdout)
>  {
>          const char *fail_str = "ERROR: Exit status is";
>          char line_buf[PRINT_PTEST_BUF_SIZE];
> @@ -284,7 +290,7 @@ START_TEST(test_xml_fail)
>  END_TEST
>
>  Suite *
> -utils_suite()
> +utils_suite(void)
>  {
>         Suite *s;
>         TCase *tc_core;
> @@ -308,7 +314,7 @@ utils_suite()
>
>  static void
>  test_ptest_expected_failure(struct ptest_list *head, const int timeout,
> char *progname,
> -               void (*h_analizer)(const int, FILE *, FILE *))
> +               void (*h_analyzer)(const int, FILE *))
>  {
>         char *buf_stdout;
>         size_t size_stdout = PRINT_PTEST_BUF_SIZE;
> @@ -329,9 +335,9 @@ test_ptest_expected_failure(struct ptest_list *head,
> const int timeout, char *pr
>                 struct ptest_options opts = EmptyOpts;
>                 opts.timeout = timeout;
>
> -               h_analizer(
> +               h_analyzer(
>                         run_ptests(filtered, opts, progname, fp_stdout,
> fp_stderr),
> -                       fp_stdout, fp_stderr
> +                       fp_stdout
>                 );
>
>                 PTEST_LIST_FREE_ALL_CLEAN(filtered);
> diff --git a/utils.c b/utils.c
> index 92654bf..a8ba190 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -288,8 +288,7 @@ run_child(char *run_ptest, int fd_stdout, int
> fd_stderr)
>  }
>
>  static inline int
> -wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
> -               int timeout, int *fds, FILE **fps, int *timeouted)
> +wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)
>  {
>         struct pollfd pfds[2];
>         struct timespec sentinel;
> @@ -490,8 +489,7 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                                 fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE, sttime));
>                                 fprintf(fp, "BEGIN: %s\n", ptest_dir);
>
> -                               status = wait_child(ptest_dir,
> p->run_ptest, child,
> -                                               opts.timeout, fds, fps,
> &timeouted);
> +                               status = wait_child(child, opts.timeout,
> fds, fps, &timeouted);
>                                 entime = time(NULL);
>                                 duration = entime - sttime;
>
> diff --git a/utils.h b/utils.h
> index f6a56f1..aa53707 100644
> --- a/utils.h
> +++ b/utils.h
> @@ -53,4 +53,6 @@ extern FILE *xml_create(int, char *);
>  extern void xml_add_case(FILE *, int, const char *, int, int);
>  extern void xml_finish(FILE *);
>
> +void set_opts_dir(char * od);
> +
>  #endif
> --
> 2.17.0
>
>

--000000000000c9e715058f12434b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Randy,</div><div><br></div>Just push your clang fi=
xes to master and created v2.3.2 tag, feel free to send a recipe upgrade.<d=
iv><br></div><div>Regards,</div><div>Anibal</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 17 Jul 2019 at 13:=
36, Randy MacLeod &lt;<a href=3D"mailto:Randy.MacLeod@windriver.com">Randy.=
MacLeod@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Drop unused function parameters in wait_child().<br>
<br>
The remaining warning in the top dir code is:<br>
=C2=A0 utils.c:25:9: warning: macro name is a reserved identifier [-Wreserv=
ed-id-macro]<br>
=C2=A0 #define _GNU_SOURCE<br>
and it&#39;s not clear how to deal with that in a portable manner.<br>
<br>
Drop unused variable in analizer code.<br>
Rename analizer to analyzer.<br>
<br>
Avoid program scope global by adding a set function for<br>
the opts directory variable.<br>
<br>
Free strdup()ed memory before exit.<br>
<br>
Signed-off-by: Randy MacLeod &lt;<a href=3D"mailto:Randy.MacLeod@windriver.=
com" target=3D"_blank">Randy.MacLeod@windriver.com</a>&gt;<br>
---<br>
=C2=A0tests/main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 13 ++++++++-----<br>
=C2=A0tests/ptest_list.c |=C2=A0 2 ++<br>
=C2=A0tests/utils.c=C2=A0 =C2=A0 =C2=A0 | 22 ++++++++++++++--------<br>
=C2=A0utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++----<br>
=C2=A0utils.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 ++<br>
=C2=A05 files changed, 28 insertions(+), 17 deletions(-)<br>
<br>
diff --git a/tests/main.c b/tests/main.c<br>
index e1a8b69..1344bc0 100644<br>
--- a/tests/main.c<br>
+++ b/tests/main.c<br>
@@ -38,14 +38,14 @@ static SuiteFunction *suites[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL,<br>
=C2=A0};<br>
<br>
+extern void set_opts_dir(char *);<br>
+<br>
=C2=A0static inline void<br>
=C2=A0print_usage(FILE *stream, char *progname)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stream, &quot;Usage: %s &lt;-d director=
y&gt;\n&quot;, progname);<br>
=C2=A0}<br>
<br>
-char *opts_directory;<br>
-<br>
=C2=A0int<br>
=C2=A0main(int argc, char *argv[])<br>
=C2=A0{<br>
@@ -54,12 +54,12 @@ main(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int number_failed;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SuiteFunction *sf;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0opts_directory =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0char *opts_dir =3D NULL;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 while ((opt =3D getopt(argc, argv, &quot;d:t:h&=
quot;)) !=3D -1) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (opt) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 case &#39;d&#39;:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opts_directory =3D strdup(optarg);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opts_dir =3D strdup(optarg);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 case &#39;h&#39;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* fall though !! */<br>
@@ -69,10 +69,11 @@ main(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (opts_directory =3D=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (opts_dir =3D=3D NULL) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print_usage(stdout,=
 argv[0]);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit(1);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0set_opts_dir(opts_dir);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 number_failed =3D 0;<br>
@@ -88,6 +89,8 @@ main(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i++;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sf =3D suites[i];<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0set_opts_dir(NULL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0free(opts_dir);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return number_failed;<br>
=C2=A0}<br>
diff --git a/tests/ptest_list.c b/tests/ptest_list.c<br>
index e0ec276..081f027 100644<br>
--- a/tests/ptest_list.c<br>
+++ b/tests/ptest_list.c<br>
@@ -29,6 +29,8 @@<br>
<br>
=C2=A0#include &quot;ptest_list.h&quot;<br>
<br>
+extern Suite *ptest_list_suite(void);<br>
+<br>
=C2=A0static int ptests_num =3D 6;<br>
=C2=A0static char *ptest_names[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;python&quot;,<br>
diff --git a/tests/utils.c b/tests/utils.c<br>
index 571d488..4fa4609 100644<br>
--- a/tests/utils.c<br>
+++ b/tests/utils.c<br>
@@ -32,9 +32,15 @@<br>
=C2=A0#include &quot;ptest_list.h&quot;<br>
=C2=A0#include &quot;utils.h&quot;<br>
<br>
+Suite *utils_suite(void);<br>
+<br>
=C2=A0#define PRINT_PTEST_BUF_SIZE 8192<br>
<br>
-extern char *opts_directory;<br>
+static char *opts_directory =3D NULL;<br>
+<br>
+void set_opts_dir(char * od) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0opts_directory =3D od;<br>
+}<br>
<br>
=C2=A0static char *ptests_found[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;bash&quot;,<br>
@@ -68,7 +74,7 @@ find_word(int *found, const char *line, const char *word)=
<br>
=C2=A0}<br>
<br>
=C2=A0static void test_ptest_expected_failure(struct ptest_list *, const in=
t, char *,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0void (*h_analizer)(const int, FILE *, FILE *));=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0void (*h_analyzer)(const int, FILE *));<br>
<br>
=C2=A0START_TEST(test_get_available_ptests)<br>
=C2=A0{<br>
@@ -189,7 +195,7 @@ START_TEST(test_run_ptests)<br>
=C2=A0END_TEST<br>
<br>
=C2=A0static void<br>
-search_for_timeout_and_duration(const int rp, FILE *fp_stdout, FILE *fp_st=
derr)<br>
+search_for_timeout_and_duration(const int rp, FILE *fp_stdout)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *timeout_str =3D &quot;TIMEOUT&quot;=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *duration_str =3D &quot;DURATION&quo=
t;;<br>
@@ -218,7 +224,7 @@ START_TEST(test_run_timeout_duration_ptest)<br>
=C2=A0END_TEST<br>
<br>
=C2=A0static void<br>
-search_for_fail(const int rp, FILE *fp_stdout, FILE *fp_stderr)<br>
+search_for_fail(const int rp, FILE *fp_stdout)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const char *fail_str =3D &quot;ERROR: Exi=
t status is&quot;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0char line_buf[PRINT_PTEST_BUF_SIZE];<br>
@@ -284,7 +290,7 @@ START_TEST(test_xml_fail)<br>
=C2=A0END_TEST<br>
<br>
=C2=A0Suite *<br>
-utils_suite()<br>
+utils_suite(void)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Suite *s;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TCase *tc_core;<br>
@@ -308,7 +314,7 @@ utils_suite()<br>
<br>
=C2=A0static void<br>
=C2=A0test_ptest_expected_failure(struct ptest_list *head, const int timeou=
t, char *progname,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0void (*h_analizer)(=
const int, FILE *, FILE *))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0void (*h_analyzer)(=
const int, FILE *))<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *buf_stdout;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 size_t size_stdout =3D PRINT_PTEST_BUF_SIZE;<br=
>
@@ -329,9 +335,9 @@ test_ptest_expected_failure(struct ptest_list *head, co=
nst int timeout, char *pr<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptest_option=
s opts =3D EmptyOpts;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 opts.timeout =3D ti=
meout;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h_analizer(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h_analyzer(<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 run_ptests(filtered, opts, progname, fp_stdout, fp_stderr),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fp_stdout, fp_stderr<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0fp_stdout<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PTEST_LIST_FREE_ALL=
_CLEAN(filtered);<br>
diff --git a/utils.c b/utils.c<br>
index 92654bf..a8ba190 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -288,8 +288,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_stderr=
)<br>
=C2=A0}<br>
<br>
=C2=A0static inline int<br>
-wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int timeout, int *f=
ds, FILE **fps, int *timeouted)<br>
+wait_child(pid_t pid, int timeout, int *fds, FILE **fps, int *timeouted)<b=
r>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct pollfd pfds[2];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct timespec sentinel;<br>
@@ -490,8 +489,7 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;%s\n&quot;, get_st=
ime(stime, GET_STIME_BUF_SIZE, sttime));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;BEGIN: %s\n&quot;,=
 ptest_dir);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D wait_child(ptest_dir, p-&g=
t;run_ptest, child,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0opts.timeout, fds, fps, &amp;timeouted);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status =3D wait_child(child, opts.tim=
eout, fds, fps, &amp;timeouted);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 entime =3D time(NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 duration =3D entime - sttime;<br>
<br>
diff --git a/utils.h b/utils.h<br>
index f6a56f1..aa53707 100644<br>
--- a/utils.h<br>
+++ b/utils.h<br>
@@ -53,4 +53,6 @@ extern FILE *xml_create(int, char *);<br>
=C2=A0extern void xml_add_case(FILE *, int, const char *, int, int);<br>
=C2=A0extern void xml_finish(FILE *);<br>
<br>
+void set_opts_dir(char * od);<br>
+<br>
=C2=A0#endif<br>
-- <br>
2.17.0<br>
<br>
</blockquote></div>

--000000000000c9e715058f12434b--
