Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web12.4134.1590872797548983742
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 May 2020 14:06:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VXvV/iyh;
 spf=pass (domain: gmail.com, ip: 209.85.166.169, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f169.google.com with SMTP id j3so5821696ilk.11
        for <yocto@lists.yoctoproject.org>; Sat, 30 May 2020 14:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9y42Z7a17/9QPbCRehnF7IsFB1vMXiE34K3Fz2XcF5U=;
        b=VXvV/iyhDheCuyLD10+xxcCEdGWd7vIq6m5q1b5paCHDvMz3SKaiiJEahGrc8lwgl4
         DyFL3xZKEt5mKI14bV62OlzMKic8cMrfjqsacoErYCIk60dq16+JthI1tAOLl1pQ7vZx
         liuFZiVXMLKBiRrDMYFxhbyC0s+WQhFFP6q6hh54Qh33/oCm4q7MeLnbnkt+nyWDdVbM
         X1ZemNZQWLGr7Ip72q1hgJiljrh7wdnllEsrUaSeMSZcyrFaEzjbtMkEUrLUbUiwgjLC
         WE1ZwTJTZ5NZXy4r5FgJVoWsEl1Xq8Dt/gMmQN8UXGH2y52OtAOmYmPe0Y2KKTZ+6L8Y
         jYLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9y42Z7a17/9QPbCRehnF7IsFB1vMXiE34K3Fz2XcF5U=;
        b=kPiiWoivz1gTF2kWBWf2eopgCtGhvVWUol5ovBbLOOc7WYU25r/KVR9mk+EGAQsvKc
         EG54bSifKWG+RjK5Uhib10NdudDoK2Jev3RbFVnTuTBt3uAHAsK6Ycfu6Qjn1WDU12Sa
         0YftIb02djEGj+D17CPpsgA2tfG5OK7+9plANTjpGaJridyV4ByDgk1sRWBYyMtUUVAI
         r6aVo8zh+z58UAIUoladtSHlJm0ZtsEZrU8TCLL15Zh2qnp0kLZxDwoqPnWINPXFqLmV
         UcKiVyrMefmxV7HfQxp3ji/JyKhs5EjOW31MIE39rR6ytVhQqbZ7gD4CP5fYpr32BnXd
         mzxw==
X-Gm-Message-State: AOAM531qJiZLVofgOd4banVcI6VmRkk3B7lPk6YFyqnttgw8c4DBH/iu
	o7zLtCqvxtFVZrPiPMYFrz1aGfwUJTytAm5axwa6Pw==
X-Google-Smtp-Source: ABdhPJxVPXfovyMbuwHfIvcNqchN2NHCO87f54i4syWrVCYqXbHhmNnhxnira4qkDyIb6YUjlodlxoxEL/bD0VvJoCA=
X-Received: by 2002:a92:cf52:: with SMTP id c18mr2079615ilr.142.1590872796853;
 Sat, 30 May 2020 14:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <8eeb9582-680b-889c-7228-074a998540f9@faresoftware.it>
In-Reply-To: <8eeb9582-680b-889c-7228-074a998540f9@faresoftware.it>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Sat, 30 May 2020 14:06:26 -0700
Message-ID: <CANx9H-CL_VHaxUBC4Mrb=2ZYg477r=awDvTZzuX9QG-q+QwWpg@mail.gmail.com>
Subject: Re: [yocto] python3, pyscard, setuptools ModuleNotFound. Why?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f079ec05a6e3ef0f"

--000000000000f079ec05a6e3ef0f
Content-Type: text/plain; charset="UTF-8"

On Sat, May 30, 2020 at 5:14 AM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> I'd like to include pyscard from pypi in my bsp.
>
> I'm using zeus and python3.
>
>
> The recipe for pyscard is placed in recipes-devtools/python of my layer
>
> The recipe name s python3-pyscard_1.9.9.bb
>
> This is the recipe
>
>
> # PYScard
> #
> #
> LICENSE="LGPL-2.1"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=d0227c3c90dc0a9eae8b0a64acd8c6e1"
>
> PYPI_PACKAGE="pyscard"
>
> You don't need this as this is the default value.

>
> inherit pypi setuptools3
>
> SRC_URI[md5sum] = "a8e94032ca8dec22a6c559a7afd41998"
> SRC_URI[sha256sum] =
> "e6bde541990183858740793806b1c7f4e798670519ae4c96145f35d5d7944c20"
>
>
> DEPENDS = " \
>      swig \
>
This has to be swig-native. When in doubt, DEPENDS should be the -native
version.

After this, you will be missing <winscard.h>, which comes from pcsc-lite
recipe in meta-oe, but it didn't readily build even with RDEPENDS_${PN} +=
"python3-core pcsc-lite" (or pcsc-lite in DEPENDS for that matter).

You'll probably have to figure out how to tell swig where to look for the
file.


> "
>
> Why bitbake tell this error?
>
> Sstate summary: Wanted 5 Found 0 Missed 5 Current 168 (0% match, 97%
> complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> NOTE: Running task 678 of 773
>
> (/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:
> do_configure)
> NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Started
> ERROR: python3-pyscard-1.9.9-r0 do_configure: Execution of
> '/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/run.do_configure.1232'
>
> failed with exit code 1:
> Traceback (most recent call last):
>    File "setup.py", line 31, in <module>
>      from setuptools import setup, Extension
> ModuleNotFoundError: No module named 'setuptools'
> WARNING: exit code 1 from a shell command.
>
> ERROR: Logfile of failure stored in:
>
> /home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/log.do_configure.1232
> Log data follows:
> | DEBUG: Executing shell function do_configure
> | Traceback (most recent call last):
> |   File "setup.py", line 31, in <module>
> |     from setuptools import setup, Extension
> | ModuleNotFoundError: No module named 'setuptools'
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of
> '/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3-pyscard/1.9.9-r0/temp/run.do_configure.1232'
>
> failed with exit code 1:
> | Traceback (most recent call last):
> |   File "setup.py", line 31, in <module>
> |     from setuptools import setup, Extension
> | ModuleNotFoundError: No module named 'setuptools'
> | WARNING: exit code 1 from a shell command.
> |
> NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Failed
> ERROR: Task
>
> (/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:do_configure)
>
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 765 tasks of which 764 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3-pyscard_1.9.9.bb:
> do_configure
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Thanks all
>
> MZ
>
> 
>

--000000000000f079ec05a6e3ef0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 30, 2020 at 5:14 AM Mauro=
 Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi all.<br>
<br>
I&#39;d like to include pyscard from pypi in my bsp.<br>
<br>
I&#39;m using zeus and python3.<br>
<br>
<br>
The recipe for pyscard is placed in recipes-devtools/python of my layer<br=
>
<br>
The recipe name s <a href=3D"http://python3-pyscard_1.9.9.bb" rel=3D"noref=
errer" target=3D"_blank">python3-pyscard_1.9.9.bb</a><br>
<br>
This is the recipe<br>
<br>
<br>
# PYScard<br>
#<br>
#<br>
LICENSE=3D&quot;LGPL-2.1&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3Dd0227c3c90dc0a9eae8b0a64ac=
d8c6e1&quot;<br>
<br>
PYPI_PACKAGE=3D&quot;pyscard&quot;<br>
<br></blockquote><div>You don&#39;t need this as this is the default value=
.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
inherit pypi setuptools3<br>
<br>
SRC_URI[md5sum] =3D &quot;a8e94032ca8dec22a6c559a7afd41998&quot;<br>
SRC_URI[sha256sum] =3D <br>
&quot;e6bde541990183858740793806b1c7f4e798670519ae4c96145f35d5d7944c20&quo=
t;<br>
<br>
<br>
DEPENDS =3D &quot; \<br>
=C2=A0=C2=A0=C2=A0=C2=A0 swig \<br></blockquote><div>This has to be swig-n=
ative. When in doubt, DEPENDS should be the -native version.</div><div><br>=
</div><div>After this, you will be missing &lt;winscard.h&gt;, which comes =
from pcsc-lite recipe in meta-oe, but it didn&#39;t readily build even with=
 RDEPENDS_${PN}=C2=A0+=3D &quot;python3-core pcsc-lite&quot; (or pcsc-lite =
in DEPENDS for that matter).</div><div><br></div><div>You&#39;ll probably h=
ave to figure out how to tell swig where to look for the file.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&quot;<br>
<br>
Why bitbake tell this error?<br>
<br>
Sstate summary: Wanted 5 Found 0 Missed 5 Current 168 (0% match, 97% <br>
complete)<br>
NOTE: Executing Tasks<br>
NOTE: Setscene tasks completed<br>
NOTE: Running task 678 of 773 <br>
(/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python=
3-pyscard_1.9.9.bb:do_configure)<br>
NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Started<br>
ERROR: python3-pyscard-1.9.9-r0 do_configure: Execution of <br>
&#39;/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/py=
thon3-pyscard/1.9.9-r0/temp/run.do_configure.1232&#39; <br>
failed with exit code 1:<br>
Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;setup.py&quot;, line 31, in &lt;module&gt;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 from setuptools import setup, Extension<br>
ModuleNotFoundError: No module named &#39;setuptools&#39;<br>
WARNING: exit code 1 from a shell command.<br>
<br>
ERROR: Logfile of failure stored in: <br>
/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/python3=
-pyscard/1.9.9-r0/temp/log.do_configure.1232<br>
Log data follows:<br>
| DEBUG: Executing shell function do_configure<br>
| Traceback (most recent call last):<br>
|=C2=A0=C2=A0 File &quot;setup.py&quot;, line 31, in &lt;module&gt;<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 from setuptools import setup, Extension<br>
| ModuleNotFoundError: No module named &#39;setuptools&#39;<br>
| WARNING: exit code 1 from a shell command.<br>
| ERROR: Execution of <br>
&#39;/home/mauro/yocto/zeus/qt10-build/tmp-glibc/work/core2-32-oe-linux/py=
thon3-pyscard/1.9.9-r0/temp/run.do_configure.1232&#39; <br>
failed with exit code 1:<br>
| Traceback (most recent call last):<br>
|=C2=A0=C2=A0 File &quot;setup.py&quot;, line 31, in &lt;module&gt;<br>
|=C2=A0=C2=A0=C2=A0=C2=A0 from setuptools import setup, Extension<br>
| ModuleNotFoundError: No module named &#39;setuptools&#39;<br>
| WARNING: exit code 1 from a shell command.<br>
|<br>
NOTE: recipe python3-pyscard-1.9.9-r0: task do_configure: Failed<br>
ERROR: Task <br>
(/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python=
3-pyscard_1.9.9.bb:do_configure) <br>
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 765 tasks of which 764 didn&#39;t need to b=
e <br>
rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
/home/mauro/yocto/zeus/sources/meta-custom/recipes-devtools/python/python3=
-pyscard_1.9.9.bb:do_configure<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<=
br>
<br>
<br>
Thanks all<br>
<br>
MZ<br>
<br>
<br>
</blockquote></div></div>

--000000000000f079ec05a6e3ef0f--
