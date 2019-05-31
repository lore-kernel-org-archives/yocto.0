Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B04BE00B5F; Fri, 31 May 2019 14:15:47 -0700 (PDT)
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
	*      [209.85.222.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
	[209.85.222.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFEC5E00942
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 14:15:46 -0700 (PDT)
Received: by mail-ua1-f68.google.com with SMTP id e9so4357990uar.9
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 14:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7BeJXIdb7elA81GtVcSjbaMS7wywkg4WFcUDo50t7RU=;
	b=EquVbgx2JGqnzuJ4n284QPeM1qo+Yqbk/ahilaHmwoeaQvcoOtrj2haRr1hdM+Hadn
	WYj3LGqKx7BI9GMnP/e8n26oU86M24ocuirGOgGpG4RUdpcGKL4sXNRknNQmU+WMPZq8
	9BUo4Ga+aNbvNqipoO7+oD9y751oV2fjELvJ3sfC7I0mcVdbZQbpOpm4BjlYIIGJL73v
	R6S5k677Fdj+waluKChOX0Wh6v0vyyqGyAonDX1AeMMCu++hsEQ4SqZvBbG/3RsBF66L
	wcvWLDp+kIGwpCnWSFB7NwEFpt2KA/WWH4C8pMuDolE3jJBLMF3mal4mqf1k0tCrgvF+
	6xug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7BeJXIdb7elA81GtVcSjbaMS7wywkg4WFcUDo50t7RU=;
	b=Pyt+S49OlRp36KSbLHmiRAsNUJW401KGZCWVExnHOGWYk+czZgFBxlF+fnsQ9FEJMf
	Owetn5itDqCT+iDu0KTYYBijfhHXDcZrpszhYHVQCSNmuCV6u8EWd72CccauGEtTOpmd
	9tfpqKGK99WRHK5d3GMVduSqMMN4oM1CMGXtB3sf729OaUvBS7qpiR+Fwxo7B7Q6C88d
	wt01i/uW9o2JPlSO1KmUhgOnBFfnmbSIVAEe5f44F1eKsPsc9BbJrc6X4Pha5znPeBEx
	ZYfxd77+mDgZfHc8rKenHKxx2yPsbrZPSsiCMIGjUhkrCoxP+Nj1w+srCbvQgSOcDw95
	q0EQ==
X-Gm-Message-State: APjAAAUHY6hg+ZNxS+oIVopDbQsxkxBxbgzvBxU4e0HTqgdXSsIaZxBh
	Vcha746rCtH+zkp6EVDSSXIStt8DVsahRpQb38QrXQ==
X-Google-Smtp-Source: APXvYqzYnprNNFmwrImy1C4+ot9tgMS4yU2nxez8jFzdiT1poCrErczjXB7l6Q2xxz2A94RrAA8Bplu9on4QVVs5B7I=
X-Received: by 2002:a9f:2103:: with SMTP id 3mr6655401uab.100.1559337345828;
	Fri, 31 May 2019 14:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190531174440.18333-1-sakib.sajal@windriver.com>
	<da99f99d-23d1-13e5-1460-71914932aecc@windriver.com>
In-Reply-To: <da99f99d-23d1-13e5-1460-71914932aecc@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Fri, 31 May 2019 16:15:45 -0500
Message-ID: <CA+_AqiuWh8Mi86-bzQ_PaX9pQQXBP0J6uGev8X-XNE5pJ-tAmg@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
	Sakib Sajal <sakib.sajal@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oe][PATCH] utils.c: close all file descriptors after completing a ptest
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
X-List-Received-Date: Fri, 31 May 2019 21:15:47 -0000
Content-Type: multipart/alternative; boundary="00000000000095584a058a358437"

--00000000000095584a058a358437
Content-Type: text/plain; charset="UTF-8"

LGTM, pushed.

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/commit/?id=fb93c99e1e771a8ada0476b76da6f2ba665e03ba

Thanks!,
Anibal

On Fri, 31 May 2019 at 12:53, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> Thanks Sakib.
>
> Next time please use --prefix to add the ptest-runner tag:
> so you'll have a subject line like:
>
> [meta-oe][ptest-runner] utils.c: close all file descriptors after
> completing a ptest
>
> The subject line is wrongg since we are closing the fds
> *before* the tests. Resend with something like:
>     utils.c: close all fds in child for each ptest
>
>
> Wait to see if Anibal has any comment then send a v2
> with a 'v2' prefix in the subject like:
>     [yocto] [ptest-runner][PATCHv2 1/3] Makefile: libcheck now requires
> to link subunit
>
> Thanks,
> ../Randy
>
> On 5/31/19 1:44 PM, Sakib Sajal wrote:
> > vredir ptest fails since too many file descriptors were open.
> >
> >  From the failed ptest log:
> >     run-vredir
> >     87,88c87,88
> >     < ./vredir6.sub: line 10: /dev/null: Too many open files
> >     < ./vredir6.sub: line 13: /dev/null: Too many open files
> >     FAIL: run-vredir
> >
> > Added function to close file descriptors before starting a new process.
> >
> > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> > Signed-off-by: Randy Macleod <randy.macleod@windriver.com>
> > ---
> >   utils.c | 19 +++++++++++++++++++
> >   1 file changed, 19 insertions(+)
> >
> > diff --git a/utils.c b/utils.c
> > index 504df0b..05c2bfe 100644
> > --- a/utils.c
> > +++ b/utils.c
> > @@ -28,6 +28,7 @@
> >   #include <fcntl.h>
> >   #include <time.h>
> >   #include <dirent.h>
> > +#include <sys/resource.h>
> >   #include <sys/types.h>
> >   #include <sys/wait.h>
> >   #include <sys/stat.h>
> > @@ -240,6 +241,23 @@ filter_ptests(struct ptest_list *head, char
> **ptests, int ptest_num)
> >       return head_new;
> >   }
> >
> > +/* Close all fds from 3 up to 'ulimit -n'
> > + * i.e. do not close STDIN, STDOUT, STDERR.
> > + * Typically called in in a child process after forking
> > + * but before exec as a good policy especially for security.
> > + */
> > +static void
> > +close_fds(void)
> > +{
> > +     struct rlimit curr_lim;
> > +     getrlimit(RLIMIT_NOFILE, &curr_lim);
> > +
> > +     int fd;
> > +     for (fd=3; fd < curr_lim.rlim_cur; fd++) {
> > +             (void) close(fd);
> > +     }
> > +}
> > +
> >   static inline void
> >   run_child(char *run_ptest, int fd_stdout, int fd_stderr)
> >   {
> > @@ -252,6 +270,7 @@ run_child(char *run_ptest, int fd_stdout, int
> fd_stderr)
> >       dup2(fd_stdout, STDOUT_FILENO);
> >       // XXX: Redirect stderr to stdout to avoid buffer ordering
> problems.
> >       dup2(fd_stdout, STDERR_FILENO);
> > +     close_fds();
> >       execv(run_ptest, argv);
> >
> >       exit(1);
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--00000000000095584a058a358437
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">LGTM, pushed.<div><br></div><div><a href=3D"http://git.yoc=
toproject.org/cgit/cgit.cgi/ptest-runner2/commit/?id=3Dfb93c99e1e771a8ada04=
76b76da6f2ba665e03ba">http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runne=
r2/commit/?id=3Dfb93c99e1e771a8ada0476b76da6f2ba665e03ba</a><br></div><div>=
<br></div><div>Thanks!,</div><div>Anibal</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 31 May 2019 at 12:53,=
 Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.mac=
leod@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Thanks Sakib.<br>
<br>
Next time please use --prefix to add the ptest-runner tag:<br>
so you&#39;ll have a subject line like:<br>
<br>
[meta-oe][ptest-runner] utils.c: close all file descriptors after <br>
completing a ptest<br>
<br>
The subject line is wrongg since we are closing the fds<br>
*before* the tests. Resend with something like:<br>
=C2=A0 =C2=A0 utils.c: close all fds in child for each ptest<br>
<br>
<br>
Wait to see if Anibal has any comment then send a v2<br>
with a &#39;v2&#39; prefix in the subject like:<br>
=C2=A0 =C2=A0 [yocto] [ptest-runner][PATCHv2 1/3] Makefile: libcheck now re=
quires <br>
to link subunit<br>
<br>
Thanks,<br>
../Randy<br>
<br>
On 5/31/19 1:44 PM, Sakib Sajal wrote:<br>
&gt; vredir ptest fails since too many file descriptors were open.<br>
&gt; <br>
&gt;=C2=A0 From the failed ptest log:<br>
&gt;=C2=A0 =C2=A0 =C2=A0run-vredir<br>
&gt;=C2=A0 =C2=A0 =C2=A087,88c87,88<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt; ./vredir6.sub: line 10: /dev/null: Too many op=
en files<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt; ./vredir6.sub: line 13: /dev/null: Too many op=
en files<br>
&gt;=C2=A0 =C2=A0 =C2=A0FAIL: run-vredir<br>
&gt; <br>
&gt; Added function to close file descriptors before starting a new process=
.<br>
&gt; <br>
&gt; Signed-off-by: Sakib Sajal &lt;<a href=3D"mailto:sakib.sajal@windriver=
.com" target=3D"_blank">sakib.sajal@windriver.com</a>&gt;<br>
&gt; Signed-off-by: Randy Macleod &lt;<a href=3D"mailto:randy.macleod@windr=
iver.com" target=3D"_blank">randy.macleod@windriver.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0utils.c | 19 +++++++++++++++++++<br>
&gt;=C2=A0 =C2=A01 file changed, 19 insertions(+)<br>
&gt; <br>
&gt; diff --git a/utils.c b/utils.c<br>
&gt; index 504df0b..05c2bfe 100644<br>
&gt; --- a/utils.c<br>
&gt; +++ b/utils.c<br>
&gt; @@ -28,6 +28,7 @@<br>
&gt;=C2=A0 =C2=A0#include &lt;fcntl.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;time.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;dirent.h&gt;<br>
&gt; +#include &lt;sys/resource.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/types.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/wait.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/stat.h&gt;<br>
&gt; @@ -240,6 +241,23 @@ filter_ptests(struct ptest_list *head, char **pte=
sts, int ptest_num)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return head_new;<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +/* Close all fds from 3 up to &#39;ulimit -n&#39;<br>
&gt; + * i.e. do not close STDIN, STDOUT, STDERR.<br>
&gt; + * Typically called in in a child process after forking<br>
&gt; + * but before exec as a good policy especially for security.<br>
&gt; + */<br>
&gt; +static void<br>
&gt; +close_fds(void)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct rlimit curr_lim;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0getrlimit(RLIMIT_NOFILE, &amp;curr_lim);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int fd;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0for (fd=3D3; fd &lt; curr_lim.rlim_cur; fd++) {<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(void) close(fd);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0static inline void<br>
&gt;=C2=A0 =C2=A0run_child(char *run_ptest, int fd_stdout, int fd_stderr)<b=
r>
&gt;=C2=A0 =C2=A0{<br>
&gt; @@ -252,6 +270,7 @@ run_child(char *run_ptest, int fd_stdout, int fd_s=
tderr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dup2(fd_stdout, STDOUT_FILENO);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0// XXX: Redirect stderr to stdout to avoid b=
uffer ordering problems.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dup2(fd_stdout, STDERR_FILENO);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0close_fds();<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0execv(run_ptest, argv);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0exit(1);<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--00000000000095584a058a358437--
