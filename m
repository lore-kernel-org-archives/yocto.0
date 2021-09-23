Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.7312.1632414807152399582
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 09:33:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=I0J7oF6T;
 spf=pass (domain: linaro.org, ip: 209.85.221.50, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f50.google.com with SMTP id u18so18925949wrg.5
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 09:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5t5fAfJyORCp74+rOpoebRH5OqLcD+VO2Hfk5cYbVo0=;
        b=I0J7oF6TfOijO59hx24EEBBdMYlD9BYq4YD/ThoF4s1JnJCPndczoMlp061kmLI/mm
         1zcpm5Gkjhoq6lNCc9ykWlWha173/uP+rCiPZFddVRNiRdvaNe3+0EKQ38gWmbj6ljuF
         bxzzZSVnHVsBHASQ7MPHBB9jPWEmUZQK2aGB/HlZbH7weyDO9OxHtCoHHItr3YOUsDc3
         jhcnzqXcR2S9TzeOItN+FJP2FysVEYa9bdnLgwAp6VufkEdZu0KS18IYdvWtXzz1zTeG
         WO2Q1ohID7aEoVVohCm/6gVnTq0UudfjTGB6OfA//ovgnoetmI6vn/kin50c6+kYdSEV
         +Asw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5t5fAfJyORCp74+rOpoebRH5OqLcD+VO2Hfk5cYbVo0=;
        b=rIeEcTGW2SVYNZv2A7o6XVhhC3MPa2Sl3V4hhj8G9998dlnIzZWjriRjzSGnt7prj7
         GUTaOKBs2E/i3WsGWOH8rMORMgoKULaQI49prozIhROUROLelijIm+HRK1pKUIfxdQ5w
         L4vsXTVBSy3k3X8LSZ1xLM2e8437ZRJ5y9wH/xN+FwbbajKXS6qQzRJa79UWz4k/489x
         A4KCJ30y2x0OFqmCit1tO4UW7uvvWN6NALuCvPKMTfqsshJW53h+CFQVmTwqhinyMBb2
         QQyYPx161ochgFiM1boYA4ZE0ZurdRWyDpid2/LEEesm75szvyv6ucKmcYOZXOog+LKm
         ysMA==
X-Gm-Message-State: AOAM532TJP91eH14wc5kleff5AH/jE57vtS2fqqT+8HpPpvkklCpKUOG
	QSDPLVi+ZrL5MFKfBjgc7CWkMj1Ata+zGFT4hOrnpA==
X-Google-Smtp-Source: ABdhPJyr1roXgNFjKHy5O5QtKzP6jE3cVhRWLqMyk+ksa3n2Vcsz9VnrlCtxBok8Wu3dPc1EG7flgmrXWr1b1IlduIE=
X-Received: by 2002:a1c:7714:: with SMTP id t20mr16946610wmi.163.1632414805447;
 Thu, 23 Sep 2021 09:33:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210916124617.72791-1-alex@linutronix.de> <20210916124617.72791-3-alex@linutronix.de>
In-Reply-To: <20210916124617.72791-3-alex@linutronix.de>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Thu, 23 Sep 2021 11:33:14 -0500
Message-ID: <CA+_AqiuzWqMipirxNtDxUDBB1MoWD1Y4k6GSvu3aDgKOwhm4Hw@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Alexander Kanavin <alex@linutronix.de>
Content-Type: multipart/alternative; boundary="0000000000009aea0d05ccac3072"

--0000000000009aea0d05ccac3072
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

Do you have a repo/branch for this patch?.

I'm having issues applying...

...
alimon@blackbox:~/upstream/ptest-runner2$ git am -3
~/Downloads/\[ptest-runner\]\[PATCH\ 3_3\]\ utils.c_\ add\ system\ data\
collection\ when\ a\ test\ gets\ stuck..eml
Applying: utils.c: add system data collection when a test gets stuck.
error: sha1 information is lacking or useless (utils.c).
error: could not build fake ancestor
Patch failed at 0001 utils.c: add system data collection when a test gets
stuck.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
...

Regards,
Anibal

On Thu, 16 Sept 2021 at 07:46, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Currently, ptest-runner simply kills the offending test without further
> ado,
> which is not at all helpful when trying to figure out why it happens
> (especially if such hangs are intermittent and rare). There's now a script
> that gets executed before killing the test, so ideas on what to have in it
> are welcome.
>
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  Makefile                         |  2 +-
>  ptest-runner-collect-system-data |  5 +++++
>  utils.c                          | 24 ++++++++++++++++++++++++
>  3 files changed, 30 insertions(+), 1 deletion(-)
>  create mode 100755 ptest-runner-collect-system-data
>
> diff --git a/Makefile b/Makefile
> index a6372de..168cf5a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)
>         $(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC)
> $(TEST_LDFLAGS)
>
>  check: $(TEST_EXECUTABLE)
> -       ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> +       PATH=.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
>
>  .c.o:
>         $(CC) $(CFLAGS) -c $< -o $@
> diff --git a/ptest-runner-collect-system-data
> b/ptest-runner-collect-system-data
> new file mode 100755
> index 0000000..5bfeaf3
> --- /dev/null
> +++ b/ptest-runner-collect-system-data
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +# Other ideas on what to do when a ptest gets stuck welcome.
> +pstree -a -l
> +df
> +free
> diff --git a/utils.c b/utils.c
> index 58c3aa1..a67ac11 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -281,6 +281,27 @@ close_fds(void)
>         }
>  }
>
> +static void
> +collect_system_state(FILE* fout)
> +{
> +       char *cmd = "ptest-runner-collect-system-data";
> +
> +       char buf[1024];
> +       FILE *fp;
> +
> +       if ((fp = popen(cmd, "r")) == NULL) {
> +               fprintf(fout, "Error opening pipe!\n");
> +       }
> +
> +       while (fgets(buf, 1024, fp) != NULL) {
> +               fprintf(fout, "%s", buf);
> +       }
> +
> +       if(pclose(fp))  {
> +               fprintf(fout, "Command not found or exited with error
> status\n");
> +       }
> +}
> +
>  static void *
>  read_child(void *arg)
>  {
> @@ -313,6 +334,9 @@ read_child(void *arg)
>                         }
>
>                 } else if (r == 0) {
> +                       // no output from the test after a timeout; the
> test is stuck, so collect
> +                       // as much data from the system as possible and
> kill the test
> +                       collect_system_state(_child_reader.fps[0]);
>                         _child_reader.timeouted = 1;
>                         kill(-_child_reader.pid, SIGKILL);
>                  }
> --
> 2.33.0
>
>

--0000000000009aea0d05ccac3072
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alex,<div><br></div><div>Do you have a repo/branch for =
this patch?.</div><div><br></div><div>I&#39;m having issues applying...</di=
v><div><br></div><div>...</div><div>alimon@blackbox:~/upstream/ptest-runner=
2$ git am -3 ~/Downloads/\[ptest-runner\]\[PATCH\ 3_3\]\ utils.c_\ add\ sys=
tem\ data\ collection\ when\ a\ test\ gets\ stuck..eml<br>Applying: utils.c=
: add system data collection when a test gets stuck.<br>error: sha1 informa=
tion is lacking or useless (utils.c).<br>error: could not build fake ancest=
or<br>Patch failed at 0001 utils.c: add system data collection when a test =
gets stuck.<br>hint: Use &#39;git am --show-current-patch=3Ddiff&#39; to se=
e the failed patch<br>When you have resolved this problem, run &quot;git am=
 --continue&quot;.<br>If you prefer to skip this patch, run &quot;git am --=
skip&quot; instead.<br>To restore the original branch and stop patching, ru=
n &quot;git am --abort&quot;.<br></div><div>...</div><div><br></div><div>Re=
gards,</div><div>Anibal</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 16 Sept 2021 at 07:46, Alexander Kana=
vin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Cur=
rently, ptest-runner simply kills the offending test without further ado,<b=
r>
which is not at all helpful when trying to figure out why it happens<br>
(especially if such hangs are intermittent and rare). There&#39;s now a scr=
ipt<br>
that gets executed before killing the test, so ideas on what to have in it<=
br>
are welcome.<br>
<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex@linutronix.de" =
target=3D"_blank">alex@linutronix.de</a>&gt;<br>
---<br>
=C2=A0Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
=C2=A0ptest-runner-collect-system-data |=C2=A0 5 +++++<br>
=C2=A0utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 24 ++++++++++++++++++++++++<br>
=C2=A03 files changed, 30 insertions(+), 1 deletion(-)<br>
=C2=A0create mode 100755 ptest-runner-collect-system-data<br>
<br>
diff --git a/Makefile b/Makefile<br>
index a6372de..168cf5a 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_L=
IBSTATIC) $(TEST_LDFLAGS)<br>
<br>
=C2=A0check: $(TEST_EXECUTABLE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0./$(TEST_EXECUTABLE) -d $(TEST_DATA)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0PATH=3D.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST=
_DATA)<br>
<br>
=C2=A0.c.o:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) -c $&lt; -o $@<br>
diff --git a/ptest-runner-collect-system-data b/ptest-runner-collect-system=
-data<br>
new file mode 100755<br>
index 0000000..5bfeaf3<br>
--- /dev/null<br>
+++ b/ptest-runner-collect-system-data<br>
@@ -0,0 +1,5 @@<br>
+#!/bin/sh<br>
+# Other ideas on what to do when a ptest gets stuck welcome.<br>
+pstree -a -l<br>
+df<br>
+free<br>
diff --git a/utils.c b/utils.c<br>
index 58c3aa1..a67ac11 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -281,6 +281,27 @@ close_fds(void)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
+static void<br>
+collect_system_state(FILE* fout)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0char *cmd =3D &quot;ptest-runner-collect-system=
-data&quot;;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0char buf[1024];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0FILE *fp;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((fp =3D popen(cmd, &quot;r&quot;)) =3D=3D N=
ULL) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fout, &quot=
;Error opening pipe!\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0while (fgets(buf, 1024, fp) !=3D NULL) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fout, &quot=
;%s&quot;, buf);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if(pclose(fp))=C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fout, &quot=
;Command not found or exited with error status\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+}<br>
+<br>
=C2=A0static void *<br>
=C2=A0read_child(void *arg)<br>
=C2=A0{<br>
@@ -313,6 +334,9 @@ read_child(void *arg)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else if (r =3D=3D=
 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0// no output from the test after a timeout; the test is stuck, so=
 collect<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0// as much data from the system as possible and kill the test<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0collect_system_state(_child_reader.fps[0]);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 _child_reader.timeouted =3D 1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 kill(-_child_reader.pid, SIGKILL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-- <br>
2.33.0<br>
<br>
</blockquote></div>

--0000000000009aea0d05ccac3072--
