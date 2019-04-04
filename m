Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E392BE00D20; Thu,  4 Apr 2019 08:41:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3335E00D5F
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 08:41:51 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id m10so2769613otp.2
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 08:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=yXOMxj1tOj7pXAeJfM7hOLjpS9Uhysaa8YiJRYsA2is=;
	b=RlUDMKrgnT4P+4RiA68xBW5ZUFlL1f/BHtUQ2SnRZsOiuXi1VVJI501HJvjjAS/+3v
	VGV/BnFxOSUpUcDcp8bAHFXCWnfzDeBr6SgPKvTw2F37AgKYU25qlozNjDwuFz3ea5B0
	182y/Yt97F60AORkIW5JVDwPJs6+/DMpOYqtOnPJUbit00JxR3DjsmkUSIxKz8qqqqXC
	OOeF9XfdecZH7BPgFPJ5Cc9nQvRaKAICk10xr//x2sYMEntGlscfdOnBTSJ4isrVDJCe
	X5hTNJGWPoVoxXAye1q3RFz1FYOr9czvSPcUtu9nr2IEEIz8nLF60UqM0q/R3gaQebZk
	/oLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yXOMxj1tOj7pXAeJfM7hOLjpS9Uhysaa8YiJRYsA2is=;
	b=KrzyNXjs/qibjjUpv+7GOpcXGmyZgQQFbrlaGfouWSgzmADOxMX/3RP9yyCZkNceWH
	DS0H9pxevScnjY+ZyBzI5V6vbcpCB6BWFRJgS/RVaiB62jJJBFkuWmvNL7OH8hSPm7Ug
	TSYgsSi+BGpb2tvYJT5PWkKbtm/USkqGEYhKYtqxCj3+4hxKJNMK7SB+ipHBSIEOHt0S
	+CV6f26T/902FP59UKlGV1AdhvUIP3PyK2WT1k//yJXeKeAENrgyCm9sSQ+WHgnzJsHs
	8wznHn1KpnX+7sOMKfnS4c9idJtabj4b4odETRB8MkTEG6mYoIUDniCgMiQipN2wyZzm
	dyaQ==
X-Gm-Message-State: APjAAAVt0xi9NXRPDN8hZJlZhAZmI10B8r8dx+hBAb/hdA/lKGBF0igL
	SdS+3hTUJPV3gGzGWDtBbJqOw4Mjzpi3GQ9B3RYPIQ==
X-Google-Smtp-Source: APXvYqx8+SjHURALr/RojhOwh20CgtnboRBYgTyz2qqEWQ24dZvMm+gbvVTVjlTW86kPChRS8Z7GMGypGotg7anorwE=
X-Received: by 2002:a9d:62c8:: with SMTP id z8mr4890534otk.144.1554392511007; 
	Thu, 04 Apr 2019 08:41:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190404153429.37636-1-alex.kanavin@gmail.com>
In-Reply-To: <20190404153429.37636-1-alex.kanavin@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Apr 2019 17:41:39 +0200
Message-ID: <CANNYZj_T+sGa1kEQhho-8s0Rfg5jp8=JaXEF6mpdmHZaoAtoVg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>, anibal.limon@linaro.org
Subject: Re: [ptest-runner] Run ptests via stdbuf configured to line-buffering
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
X-List-Received-Date: Thu, 04 Apr 2019 15:41:53 -0000
Content-Type: text/plain; charset="UTF-8"

Bah, sorry, debugging got into the patch.

Will resend.

Alex

On Thu, 4 Apr 2019 at 17:34, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> As ptest-runner communicates with child processes via pipe2(),
> the corresponding channels are not attached to a pty. In that
> situation stdio facilities like printf() or fwrite() are fully
> buffered. If a ptest would use them, without bothering
> to fflush() the output, ptest-runner will only receive what
> was written by the child ptest process after a buffer gets filled.
> If the unit tests are proceeding slowly, this may mean that
> ptest-runner will erroneously timeout due to an apparent lack of
> 'signs of life' from the child process.
>
> stdbuf utility from coreutils adjusts the buffering to a line-buffered
> one, and so ptest-runner will get the lines as soon as they are
> written.
>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  utils.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/utils.c b/utils.c
> index 504df0b..c130fbd 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -243,16 +243,13 @@ filter_ptests(struct ptest_list *head, char **ptests, int ptest_num)
>  static inline void
>  run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>  {
> -       char **argv = malloc(sizeof(char) * 2);
> +       char* argv[] = {"stdbuf", "-oL", "-eL", "./run-ptest", NULL};
>         chdir(dirname(strdup(run_ptest)));
>
> -       argv[0] = run_ptest;
> -       argv[1] = NULL;
> -
>         dup2(fd_stdout, STDOUT_FILENO);
>         // XXX: Redirect stderr to stdout to avoid buffer ordering problems.
>         dup2(fd_stdout, STDERR_FILENO);
> -       execv(run_ptest, argv);
> +       execvp(argv[0], argv);
>
>         exit(1);
>  }
> @@ -291,12 +288,12 @@ wait_child(const char *ptest_dir, const char *run_ptest, pid_t pid,
>
>                         if (pfds[0].revents != 0) {
>                                 while ((n = read(fds[0], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> -                                       fwrite(buf, n, 1, fps[0]);
> +                                       fwrite(buf, n, 1, fps[0]); fwrite("hallo", 5 ,1 ,fps[0]); fflush(fps[0]);
>                         }
>
>                         if (pfds[1].revents != 0) {
>                                 while ((n = read(fds[1], buf, WAIT_CHILD_BUF_MAX_SIZE)) > 0)
> -                                       fwrite(buf, n, 1, fps[1]);
> +                                       fwrite(buf, n, 1, fps[1]); fwrite("hallo-err", 9 ,1 ,fps[0]); fflush(fps[1]);
>                         }
>
>                         clock_gettime(clock, &sentinel);
> --
> 2.17.1
>

