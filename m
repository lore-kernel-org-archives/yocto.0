Return-Path: <limon.anibal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBAC6E00D74; Thu,  7 Dec 2017 15:45:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (limon.anibal[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FB0E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 15:45:42 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id f140so658897wmd.2
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 15:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PzmSo9tkFDkOc6nUGHIEYLa/Ff5t1rESInCH5cauR7o=;
	b=mJmgkWZlnktR9USk934yIuLDut6cLq3hhCVxx+ZJvml8xy0xfIjEBkLrciGhW8UdAx
	1lbodrPuz+WVZthf/VrOaXELBf45WCWwSkSO90zyk5riir3qfhIDLc7rjqoO5uzcMeMZ
	agqii2QTqcusXlqndYDJpu4QUcOaYcSDIJsr5924x4ycyCKE1mH5eFShLspkvmEmsz16
	7b1p6cwBa8EDHqrxPJDIhVxgusT9LHL2nziaQQ/VUmgh45bFLPNWqG01gUKkce/GEUgR
	Y358eDcRytrTLvP5xK9BbQRYJ/LGMXPnnV1oJHiMnJdz4t4oQWJi7p6huUGBCdZPd4wW
	OIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PzmSo9tkFDkOc6nUGHIEYLa/Ff5t1rESInCH5cauR7o=;
	b=PiazhPdJvaDrbpvwdgX9mwko0cJW7y0XrDe9DfDfoouJQXnjB+AnxqIkvM5LPcDAnT
	OXTzZVs226SJRIreBqmU1uJbXUkmObxaslWkruiFvisHr7x4Fw2Q9CmMgbrGp6UKpw75
	A+hg2Tr/tgIvw4KLxvYraf/D1majosX8+H+QB5FAPtdoX2RfDPEzeVjat41EUUNCEyqP
	DYw2NbclLLhAuPow0iXtDlGxQyi3Y7DCgcM7/CjwTVk9up9PsApWGnoew6cL0EjqFjCj
	TnTNNcvpK4jNKerm6Z7xfjstKd7GG3++exljoH8bTycI0yP+6lpBJydguuC2/8B5OYQj
	JEfQ==
X-Gm-Message-State: AKGB3mKhlaBtdILzEYvmld50RKVTaXav8b8zZzIro48a3qzOT/apg2+N
	KKIF6BDhPwBzQH0f/1DoazUzCHuWoAzCvtdxy3DpcA==
X-Google-Smtp-Source: AGs4zMYIV6w33DPPFKQq2qPvjdRhNbT2ZU1fmMnrHE59z1PpuWfnYQckcSctSk7cW5dfp19mkWyV8xVFOVByDrwnEpY=
X-Received: by 10.80.136.49 with SMTP id b46mr7323503edb.155.1512690341263;
	Thu, 07 Dec 2017 15:45:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.241.18 with HTTP; Thu, 7 Dec 2017 15:45:40 -0800 (PST)
In-Reply-To: <20171207234246.6364-2-limon.anibal@gmail.com>
References: <20171207234246.6364-1-limon.anibal@gmail.com>
	<20171207234246.6364-2-limon.anibal@gmail.com>
From: =?UTF-8?Q?Anibal_Lim=C3=B3n?= <limon.anibal@gmail.com>
Date: Thu, 7 Dec 2017 17:45:40 -0600
Message-ID: <CAPS-YPC+wL38fEhHJ8GiVuxofh04RYKP94hYpTGALGJr0uBNwQ@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: Joshua Lock <joshua.g.lock@intel.com>,
	=?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>
Subject: Re: [ptest-runner][PATCHv2 2/3] Add support to avoid load/run twice a run_ptest script
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
X-List-Received-Date: Thu, 07 Dec 2017 23:45:44 -0000
Content-Type: multipart/alternative; boundary="f403045c10bc723f28055fc8aa1f"

--f403045c10bc723f28055fc8aa1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 7, 2017 at 5:42 PM, An=C3=ADbal Lim=C3=B3n <limon.anibal@gmail.=
com> wrote:

> From: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>
> In some ptest packages exists symlink in the ptest directory causing
> to load/run twice the same ptest,
>
> For example in perl5:
>
> /usr/lib/perl -> /usr/lib/perl5
>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
> ---
>  ptest_list.c       | 40 ++++++++++++++++++++++++++++++++++++++++
>  ptest_list.h       |  3 +++
>  tests/data/python3 |  1 +
>  tests/utils.c      |  1 +
>  utils.c            |  6 ++++++
>  5 files changed, 51 insertions(+)
>  create mode 120000 tests/data/python3
>
> diff --git a/ptest_list.c b/ptest_list.c
> index 2e1aa30..3e393d5 100644
> --- a/ptest_list.c
> +++ b/ptest_list.c
> @@ -110,6 +110,46 @@ ptest_list_search(struct ptest_list *head, char
> *ptest)
>         return q;
>  }
>
> +
> +struct ptest_list *
> +ptest_list_search_by_file(struct ptest_list *head, char *run_ptest,
> struct stat st_buf)
> +{
> +       struct ptest_list *q =3D NULL;
> +       struct ptest_list *p;
> +       struct stat st_buf_p;
> +
> +       VALIDATE_PTR_RNULL(head);
> +       VALIDATE_PTR_RNULL(run_ptest);
> +
> +       for (p =3D head; p !=3D NULL; p =3D p->next) {
> +               if (p->ptest =3D=3D NULL)
> +                       continue;
> +
> +               if (stat(p->run_ptest, &st_buf_p) =3D=3D -1)
> +                       continue;
> +
> +               if (strcmp(p->run_ptest, run_ptest) =3D=3D 0) {
> +                       q =3D p;
> +                       break;
> +               }
> +
> +               /* *
> +                * In some ptest packages exists symlink in the ptest
> directory
> +                * causing to load/run twice the same ptest,
> +                *
> +                * For example in perl5:
> +                * /usr/lib/perl -> /usr/lib/perl5
> +                * */
> +               if (st_buf.st_dev =3D=3D st_buf_p.st_dev &&
> +                   st_buf.st_ino =3D=3D st_buf_p.st_ino) {
> +                       q =3D p;
> +                       break;
> +               }
> +       }
> +
> +       return q;
> +}
> +
>  struct ptest_list *
>  ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)
>  {
> diff --git a/ptest_list.h b/ptest_list.h
> index 8b39485..03d7539 100644
> --- a/ptest_list.h
> +++ b/ptest_list.h
> @@ -28,6 +28,8 @@
>  #define PTEST_LIST_ITERATE_START(head, p) for (p =3D head->next; p !=3D =
NULL;
> p =3D p->next) {
>  #define PTEST_LIST_ITERATE_END }
>
> +#include <sys/stat.h>
> +
>  struct ptest_list {
>         char *ptest;
>         char *run_ptest;
> @@ -42,6 +44,7 @@ extern int ptest_list_free_all(struct ptest_list *);
>
>  extern int ptest_list_length(struct ptest_list *);
>  extern struct ptest_list *ptest_list_search(struct ptest_list *, char *)=
;
> +extern struct ptest_list *ptest_list_search_by_file(struct ptest_list *,
> char *, struct stat);
>  extern struct ptest_list *ptest_list_add(struct ptest_list *, char *,
> char *);
>  extern struct ptest_list *ptest_list_remove(struct ptest_list *, char *,
> int);
>
> diff --git a/tests/data/python3 b/tests/data/python3
> new file mode 120000
> index 0000000..d8654aa
> --- /dev/null
> +++ b/tests/data/python3
>

I forget to add symlink of python3 to python, used in testing.

Cheers,
Anibal


> @@ -0,0 +1 @@
> +python
> \ No newline at end of file
> diff --git a/tests/utils.c b/tests/utils.c
> index ecf3e8a..cf09379 100644
> --- a/tests/utils.c
> +++ b/tests/utils.c
> @@ -48,6 +48,7 @@ static int ptests_found_length =3D 6;
>  static char *ptests_not_found[] =3D {
>         "busybox",
>         "perl",
> +       "python3",
>         NULL,
>  };
>
> diff --git a/utils.c b/utils.c
> index 933eced..ed2eff7 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -143,6 +143,12 @@ get_available_ptests(const char *dir)
>                                 continue;
>                         }
>
> +                       if (ptest_list_search_by_file(head, run_ptest,
> st_buf)) {
> +                               free(run_ptest);
> +                               free(d_name);
> +                               continue;
> +                       }
> +
>                         struct ptest_list *p =3D ptest_list_add(head,
>                                 d_name, run_ptest);
>                         CHECK_ALLOCATION(p, sizeof(struct ptest_list *),
> 0);
> --
> 2.11.0
>
>

--f403045c10bc723f28055fc8aa1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Dec 7, 2017 at 5:42 PM, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr=
">&lt;<a href=3D"mailto:limon.anibal@gmail.com" target=3D"_blank">limon.ani=
bal@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span=
 class=3D"">From: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon=
@linaro.org">anibal.limon@linaro.org</a>&gt;<br>
<br>
In some ptest packages exists symlink in the ptest directory causing<br>
to load/run twice the same ptest,<br>
<br>
For example in perl5:<br>
<br>
/usr/lib/perl -&gt; /usr/lib/perl5<br>
<br>
Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.limon@li=
naro.org">anibal.limon@linaro.org</a>&gt;<br>
---<br>
=C2=A0ptest_list.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 40 +++++++++++++++++++++++++=
+++++<wbr>++++++++++<br>
=C2=A0ptest_list.h=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 3 +++<br>
</span>=C2=A0tests/data/python3 |=C2=A0 1 +<br>
<span class=3D"">=C2=A0tests/utils.c=C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A0utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++++++<br>
</span>=C2=A05 files changed, 51 insertions(+)<br>
=C2=A0create mode 120000 tests/data/python3<br>
<div><div class=3D"h5"><br>
diff --git a/ptest_list.c b/ptest_list.c<br>
index 2e1aa30..3e393d5 100644<br>
--- a/ptest_list.c<br>
+++ b/ptest_list.c<br>
@@ -110,6 +110,46 @@ ptest_list_search(struct ptest_list *head, char *ptest=
)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return q;<br>
=C2=A0}<br>
<br>
+<br>
+struct ptest_list *<br>
+ptest_list_search_by_file(<wbr>struct ptest_list *head, char *run_ptest, s=
truct stat st_buf)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *q =3D NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptest_list *p;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct stat st_buf_p;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VALIDATE_PTR_RNULL(head);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VALIDATE_PTR_RNULL(run_ptest);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for (p =3D head; p !=3D NULL; p =3D p-&gt;next)=
 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (p-&gt;ptest =3D=
=3D NULL)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0continue;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stat(p-&gt;run_=
ptest, &amp;st_buf_p) =3D=3D -1)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0continue;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (strcmp(p-&gt;ru=
n_ptest, run_ptest) =3D=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0q =3D p;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * In some ptest pa=
ckages exists symlink in the ptest directory<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * causing to load/=
run twice the same ptest,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * For example in p=
erl5:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * /usr/lib/perl -&=
gt; /usr/lib/perl5<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (st_buf.st_dev =
=3D=3D st_buf_p.st_dev &amp;&amp;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0st_bu=
f.st_ino =3D=3D st_buf_p.st_ino) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0q =3D p;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return q;<br>
+}<br>
+<br>
=C2=A0struct ptest_list *<br>
=C2=A0ptest_list_add(struct ptest_list *head, char *ptest, char *run_ptest)=
<br>
=C2=A0{<br>
diff --git a/ptest_list.h b/ptest_list.h<br>
index 8b39485..03d7539 100644<br>
--- a/ptest_list.h<br>
+++ b/ptest_list.h<br>
@@ -28,6 +28,8 @@<br>
=C2=A0#define PTEST_LIST_ITERATE_START(head, p) for (p =3D head-&gt;next; p=
 !=3D NULL; p =3D p-&gt;next) {<br>
=C2=A0#define PTEST_LIST_ITERATE_END }<br>
<br>
+#include &lt;sys/stat.h&gt;<br>
+<br>
=C2=A0struct ptest_list {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *ptest;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 char *run_ptest;<br>
@@ -42,6 +44,7 @@ extern int ptest_list_free_all(struct ptest_list *);<br>
<br>
=C2=A0extern int ptest_list_length(struct ptest_list *);<br>
=C2=A0extern struct ptest_list *ptest_list_search(struct ptest_list *, char=
 *);<br>
+extern struct ptest_list *ptest_list_search_by_file(<wbr>struct ptest_list=
 *, char *, struct stat);<br>
=C2=A0extern struct ptest_list *ptest_list_add(struct ptest_list *, char *,=
 char *);<br>
=C2=A0extern struct ptest_list *ptest_list_remove(struct ptest_list *, char=
 *, int);<br>
<br>
</div></div>diff --git a/tests/data/python3 b/tests/data/python3<br>
new file mode 120000<br>
index 0000000..d8654aa<br>
--- /dev/null<br>
+++ b/tests/data/python3<br></blockquote><div><br></div><div>I forget to ad=
d symlink of python3 to python, used in testing.</div><div><br></div><div>C=
heers,</div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
@@ -0,0 +1 @@<br>
+python<br>
\ No newline at end of file<br>
<div class=3D"HOEnZb"><div class=3D"h5">diff --git a/tests/utils.c b/tests/=
utils.c<br>
index ecf3e8a..cf09379 100644<br>
--- a/tests/utils.c<br>
+++ b/tests/utils.c<br>
@@ -48,6 +48,7 @@ static int ptests_found_length =3D 6;<br>
=C2=A0static char *ptests_not_found[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;busybox&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;perl&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;python3&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 NULL,<br>
=C2=A0};<br>
<br>
diff --git a/utils.c b/utils.c<br>
index 933eced..ed2eff7 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -143,6 +143,12 @@ get_available_ptests(const char *dir)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 continue;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ptest_list_search_by_file(<wbr>head, run_ptest, st_buf)) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(run_ptest);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(d_name);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct ptest_list *p =3D ptest_list_add(head,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d_name, run_ptest);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 CHECK_ALLOCATION(p, sizeof(struct ptest_list *), 0);<br>
--<br>
2.11.0<br>
<br>
</div></div></blockquote></div><br></div></div>

--f403045c10bc723f28055fc8aa1f--
