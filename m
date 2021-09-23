Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.26.1632415111512518595
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 09:38:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XXGSlqq8;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id b67so2822784vkb.13
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 09:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yzrpTu09bXiDBV0dXFUHqKKhgLCL7T7+d5+3h5ZehzY=;
        b=XXGSlqq8oHT8w9DzdD2SL1QlUsbqKid10FOVNVIbMhb874MLTDr32hwgXwQLDe+53D
         u/n+Xu93adbfRLsXHADQled8lfgxT9RWdBNl0ybizPp6zUsIKKY2Fw6zD+bJdlUJ6a4n
         Q/dnyPQVB29QUue4x07L5HkWpM8aHCrY3eoxnrqqB2XKi9R2Mg92HLm5934tNBQDSKAm
         qB1ZvbIZGWxR2+7cAF7EJRm/pLZEPwD2C+YIh9IBd5srCmvZQTqKZZnMb9gASQ1NxqE/
         9DFJTyS0csc9ghScEUtMwkuTTSNT9WsseuKx4f7THefx5gAbpaKtxJhybg8sC692CgUQ
         2QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yzrpTu09bXiDBV0dXFUHqKKhgLCL7T7+d5+3h5ZehzY=;
        b=1r+kSTsqZp/VPWAIf5z3xOF86xgq+GF06c9hvkodBVzshT4d05sUsBVndKjAWrT3VW
         sFnKx1Qk6W/Y+MDm1nj/Z6kyjhPgAf9FKp4c/ozXSAhDRYYdhM8znS/U1fPzjsWugfLy
         Ql70SE5ooemdoXjOy2vUWbWARndCnC3PSErrVCNIEExiubHfyoMX2C6plzG0OCam9tc4
         tTgtU50uUhzYz/UAnNIb3/5CGCRoMmI6AnIVhrCiEkhTVTtXm3cpH+6FaRmxX3JpJnS0
         srOLGrD2ssq9uK2ND9/QLNfczN4GF46mjJ1JeniF2GcMW52XULu7ojYlsb7wXsQFn2UC
         vifQ==
X-Gm-Message-State: AOAM533Ed2PNBXHbpJgXRENmKeRZJftXNaq8NMYHnlJQtiaw/BGVgv9o
	oxESKvAZv5v1IOmz8yZA89UQBWh7QOMZ3u4Jlyo=
X-Google-Smtp-Source: ABdhPJy5xFBLkmmw7e18ma8rQtl2rYLfi2z5JwA6W0Kh1REbpyuLb/bzPtNrIfolj5TMFTNrjiUm2ADv2Bp9rw2DGuU=
X-Received: by 2002:a1f:2493:: with SMTP id k141mr4526035vkk.6.1632415110630;
 Thu, 23 Sep 2021 09:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210916124617.72791-1-alex@linutronix.de> <20210916124617.72791-3-alex@linutronix.de>
 <CA+_AqiuzWqMipirxNtDxUDBB1MoWD1Y4k6GSvu3aDgKOwhm4Hw@mail.gmail.com>
In-Reply-To: <CA+_AqiuzWqMipirxNtDxUDBB1MoWD1Y4k6GSvu3aDgKOwhm4Hw@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 23 Sep 2021 18:38:19 +0200
Message-ID: <CANNYZj9yHJhEPNMX960f+hMT64U7a2Z8=dxSb8RAtvQgQeDfwA@mail.gmail.com>
Subject: Re: [ptest-runner][PATCH 3/3] utils.c: add system data collection when a test gets stuck.
To: Anibal Limon <anibal.limon@linaro.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Alexander Kanavin <alex@linutronix.de>
Content-Type: multipart/alternative; boundary="000000000000cb90c605ccac4292"

--000000000000cb90c605ccac4292
Content-Type: text/plain; charset="UTF-8"

Not sure what happened here, I published the patches in
https://github.com/kanavin/ptest-runner2

Alex

On Thu, 23 Sept 2021 at 18:33, Anibal Limon <anibal.limon@linaro.org> wrote:

> Hi Alex,
>
> Do you have a repo/branch for this patch?.
>
> I'm having issues applying...
>
> ...
> alimon@blackbox:~/upstream/ptest-runner2$ git am -3
> ~/Downloads/\[ptest-runner\]\[PATCH\ 3_3\]\ utils.c_\ add\ system\ data\
> collection\ when\ a\ test\ gets\ stuck..eml
> Applying: utils.c: add system data collection when a test gets stuck.
> error: sha1 information is lacking or useless (utils.c).
> error: could not build fake ancestor
> Patch failed at 0001 utils.c: add system data collection when a test gets
> stuck.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> ...
>
> Regards,
> Anibal
>
> On Thu, 16 Sept 2021 at 07:46, Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> Currently, ptest-runner simply kills the offending test without further
>> ado,
>> which is not at all helpful when trying to figure out why it happens
>> (especially if such hangs are intermittent and rare). There's now a script
>> that gets executed before killing the test, so ideas on what to have in it
>> are welcome.
>>
>> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
>> ---
>>  Makefile                         |  2 +-
>>  ptest-runner-collect-system-data |  5 +++++
>>  utils.c                          | 24 ++++++++++++++++++++++++
>>  3 files changed, 30 insertions(+), 1 deletion(-)
>>  create mode 100755 ptest-runner-collect-system-data
>>
>> diff --git a/Makefile b/Makefile
>> index a6372de..168cf5a 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -43,7 +43,7 @@ $(TEST_EXECUTABLE): $(TEST_OBJECTS)
>>         $(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC)
>> $(TEST_LDFLAGS)
>>
>>  check: $(TEST_EXECUTABLE)
>> -       ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
>> +       PATH=.:$(PATH) ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
>>
>>  .c.o:
>>         $(CC) $(CFLAGS) -c $< -o $@
>> diff --git a/ptest-runner-collect-system-data
>> b/ptest-runner-collect-system-data
>> new file mode 100755
>> index 0000000..5bfeaf3
>> --- /dev/null
>> +++ b/ptest-runner-collect-system-data
>> @@ -0,0 +1,5 @@
>> +#!/bin/sh
>> +# Other ideas on what to do when a ptest gets stuck welcome.
>> +pstree -a -l
>> +df
>> +free
>> diff --git a/utils.c b/utils.c
>> index 58c3aa1..a67ac11 100644
>> --- a/utils.c
>> +++ b/utils.c
>> @@ -281,6 +281,27 @@ close_fds(void)
>>         }
>>  }
>>
>> +static void
>> +collect_system_state(FILE* fout)
>> +{
>> +       char *cmd = "ptest-runner-collect-system-data";
>> +
>> +       char buf[1024];
>> +       FILE *fp;
>> +
>> +       if ((fp = popen(cmd, "r")) == NULL) {
>> +               fprintf(fout, "Error opening pipe!\n");
>> +       }
>> +
>> +       while (fgets(buf, 1024, fp) != NULL) {
>> +               fprintf(fout, "%s", buf);
>> +       }
>> +
>> +       if(pclose(fp))  {
>> +               fprintf(fout, "Command not found or exited with error
>> status\n");
>> +       }
>> +}
>> +
>>  static void *
>>  read_child(void *arg)
>>  {
>> @@ -313,6 +334,9 @@ read_child(void *arg)
>>                         }
>>
>>                 } else if (r == 0) {
>> +                       // no output from the test after a timeout; the
>> test is stuck, so collect
>> +                       // as much data from the system as possible and
>> kill the test
>> +                       collect_system_state(_child_reader.fps[0]);
>>                         _child_reader.timeouted = 1;
>>                         kill(-_child_reader.pid, SIGKILL);
>>                  }
>> --
>> 2.33.0
>>
>>

--000000000000cb90c605ccac4292
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Not sure what happened here, I published the patches =
in <a href=3D"https://github.com/kanavin/ptest-runner2">https://github.com/=
kanavin/ptest-runner2</a></div><div><br></div><div>Alex<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 23=
 Sept 2021 at 18:33, Anibal Limon &lt;<a href=3D"mailto:anibal.limon@linaro=
.org">anibal.limon@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Alex,<div><br></div><div>D=
o you have a repo/branch for this patch?.</div><div><br></div><div>I&#39;m =
having issues applying...</div><div><br></div><div>...</div><div>alimon@bla=
ckbox:~/upstream/ptest-runner2$ git am -3 ~/Downloads/\[ptest-runner\]\[PAT=
CH\ 3_3\]\ utils.c_\ add\ system\ data\ collection\ when\ a\ test\ gets\ st=
uck..eml<br>Applying: utils.c: add system data collection when a test gets =
stuck.<br>error: sha1 information is lacking or useless (utils.c).<br>error=
: could not build fake ancestor<br>Patch failed at 0001 utils.c: add system=
 data collection when a test gets stuck.<br>hint: Use &#39;git am --show-cu=
rrent-patch=3Ddiff&#39; to see the failed patch<br>When you have resolved t=
his problem, run &quot;git am --continue&quot;.<br>If you prefer to skip th=
is patch, run &quot;git am --skip&quot; instead.<br>To restore the original=
 branch and stop patching, run &quot;git am --abort&quot;.<br></div><div>..=
.</div><div><br></div><div>Regards,</div><div>Anibal</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 16 Sept 2=
021 at 07:46, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.co=
m" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Currently, ptest-runner simply k=
ills the offending test without further ado,<br>
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
</blockquote></div>

--000000000000cb90c605ccac4292--
