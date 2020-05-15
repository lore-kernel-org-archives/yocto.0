Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.7706.1589517846583448434
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 21:44:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=OeZLxi3z;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.208.52, mailfrom: mshah@mvista.com)
Received: by mail-ed1-f52.google.com with SMTP id k19so1089366edv.9
        for <yocto@lists.yoctoproject.org>; Thu, 14 May 2020 21:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v1mkVyaaDG8mLH/6kV/cGS9w+C9pSZdvMbEHtKtPjrs=;
        b=OeZLxi3z0DaOThmCXLSTmJb1jPYCEodyyjOLzmN9tQhWOo1rX5aFErV83sHbbxTEf9
         Zq+733Irt65Zk1Jg5+7w/pSInadPMa5jznlKBeVUpl9oXSqK9hsZx2ArY5GZOdtp0eDa
         Rqi5RP6daa0moGARYjCJ/VPoEcdncM+yMwQWC4dsUaDFUpln/qLyxt7br4C3mVjncT1T
         OO6JD1WlIDjCpkIwvsnhdE4QQmAoIwjJ9Tdc0XF7HHpRhdY1iSXD7tAE9atTwvLBuTE1
         4rd1ezjSWHG0dkcMvmZgXU2VOyXiGTuVlBHtCDaoiMZrn+tmaIYaetj86COr1EL5m9pa
         sDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v1mkVyaaDG8mLH/6kV/cGS9w+C9pSZdvMbEHtKtPjrs=;
        b=DqIwuOH55L0lLb+qm+2HuXhg0xLc51wlSpvxVxALzywZ/v7aiM4MZczz8aQlmE1912
         +ikUMEv7w/nGiwEYmidoV5B6u9Bl0ka6WkiNHePt+l1ixQTXsDbIinee0bA2PHxsYv9H
         C/nVx/KLYnCkNkIXD3cU7XCStZztr2xoySMlhDP9B7ioa09976RcQEEdZuxLBIkRckQ0
         fIIdcUxUQ5hzRAfqiayjfSXSoRvaX3xT/ra6mnp0e/vayJnCqJrLmo3ounVDf3Q9BRgH
         K1T7nmn2v7lf1wZD7tYFqBxUTDODZSeObOxwGALTXbUDKsqN1zKggTDOWKykhhWmQnYG
         v/fw==
X-Gm-Message-State: AOAM530NlKPzS4ZF8tUk09hHEE37PsfXvWGmqAmA0UM5Xjta4s0EZg/s
	rNvMiutcQK7+d2t5IHYdt9trqexF6Thp94mOC4sErQ==
X-Google-Smtp-Source: ABdhPJzAvWYsmHYnVzRs6VRxP9TPMs0UZ8cVa38lGjagmLtc3beK/4B+nRY0OHKoH3IzW/8ZNrbQHasEUfHn+IQYpXg=
X-Received: by 2002:a50:fa87:: with SMTP id w7mr1229650edr.0.1589517840100;
 Thu, 14 May 2020 21:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <15F6EABEC43B112A.19684@lists.yoctoproject.org>
 <CA+=qD9MGnqNRixYh30tps+Az4bsSkZ3DTKPncTpSHa6sRYmLUA@mail.gmail.com> <5692b22a-1d1d-b9f0-dde4-a49bb11de58c@windriver.com>
In-Reply-To: <5692b22a-1d1d-b9f0-dde4-a49bb11de58c@windriver.com>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 15 May 2020 10:13:43 +0530
Message-ID: <CA+=qD9NG163NvLsjj7enGcQXb71wsJ_vL1q4TxKt3gMqkGcBjQ@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH] Add SPDX license headers to source files
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@lists.yoctoproject.org, michael.g.wood@intel.com
Content-Type: multipart/alternative; boundary="000000000000393f2605a5a876b9"

--000000000000393f2605a5a876b9
Content-Type: text/plain; charset="UTF-8"

Randy

Thanks for reviewing it. Hope it will be merged into the main repo soon.


Thanks & Regards,
*Milan Shah*
MontaVista Software, Bangaluru, India


On Mon, May 4, 2020 at 9:00 PM Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2020-05-01 2:54 a.m., Milan Shah wrote:
> > Hi All,
> >
> > This is Gentle Reminder to review these changes.
> >
> > This address bug #13530
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13530
> >
> > Patch to review:
> > https://patchwork.openembedded.org/patch/170541/
> >
> >
>
> Thanks Milan.
> Looks good to me.
>
> Michael,
> Are you still maintaining the repo?
>
> ../Randy
> >
> >
> > Thanks & Regards,
> > *Milan Shah*
> > MontaVista Software, Bangaluru, India
> >
> >
> > On Wed, Feb 26, 2020 at 3:17 PM Milan Shah via Lists.Yoctoproject.Org
> > <http://Lists.Yoctoproject.Org> <mshah=mvista.com@lists.yoctoproject.org
> > <mailto:mvista.com@lists.yoctoproject.org>> wrote:
> >
> >     Post/* all ( except Post/migrations/* , __init__.py and
> templatetags/* )
> >     have some sort of MIT headers; adding SPDX header to make it obvious.
> >
> >     project/* & test-data/* all ( except __init__.py ) have some sort of
> >     MIT headers;
> >     adding SPDX header to make it obvious.
> >
> >     This address bug #13530
> >     https://bugzilla.yoctoproject.org/show_bug.cgi?id=13530
> >
> >     Signed-off-by: Milan Shah <mshah@mvista.com <mailto:mshah@mvista.com
> >>
> >     ---
> >       Post/admin.py                      | 2 ++
> >       Post/createStatistics.py           | 1 +
> >       Post/feed.py                       | 2 ++
> >       Post/management/commands/culldb.py | 2 ++
> >       Post/models.py                     | 2 ++
> >       Post/parser.py                     | 1 +
> >       Post/views.py                      | 2 ++
> >       manage.py                          | 2 ++
> >       project/settings.py                | 2 ++
> >       project/urls.py                    | 2 ++
> >       project/wsgi.py                    | 4 ++++
> >       test-data/test-send-error.py       | 3 ++-
> >       12 files changed, 24 insertions(+), 1 deletion(-)
> >
> >     diff --git a/Post/admin.py b/Post/admin.py
> >     index f11ff65..43aa9a6 100644
> >     --- a/Post/admin.py
> >     +++ b/Post/admin.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error reporting tool - admin interface definitions
> >       #
> >       # Copyright (C) 2013 Intel Corporation
> >     diff --git a/Post/createStatistics.py b/Post/createStatistics.py
> >     index 213927a..09d098e 100644
> >     --- a/Post/createStatistics.py
> >     +++ b/Post/createStatistics.py
> >     @@ -1,4 +1,5 @@
> >       #!/usr/bin/env python
> >     +# SPDX-License-Identifier: MIT
> >
> >       # Create statistics. Update database.
> >       #
> >     diff --git a/Post/feed.py b/Post/feed.py
> >     index 745ee23..7e5bfdb 100644
> >     --- a/Post/feed.py
> >     +++ b/Post/feed.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error-reporting-tool - URL definitions
> >       #
> >       # Copyright (C) 2013 Intel Corporation
> >     diff --git a/Post/management/commands/culldb.py
> >     b/Post/management/commands/culldb.py
> >     index 698537c..bd70ffc 100644
> >     --- a/Post/management/commands/culldb.py
> >     +++ b/Post/management/commands/culldb.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error-reporting-tool -  culldb
> >       #
> >       # Copyright (C) 2015 Intel Corporation
> >     diff --git a/Post/models.py b/Post/models.py
> >     index ddf2fc7..cf8c1c2 100644
> >     --- a/Post/models.py
> >     +++ b/Post/models.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error-reporting-tool - model definitions
> >       #
> >       # Copyright (C) 2013 Intel Corporation
> >     diff --git a/Post/parser.py b/Post/parser.py
> >     index 9639308..ed65d4f 100644
> >     --- a/Post/parser.py
> >     +++ b/Post/parser.py
> >     @@ -1,4 +1,5 @@
> >       #!/usr/bin/env python
> >     +# SPDX-License-Identifier: MIT
> >
> >       # Add errors to database from client
> >       #
> >     diff --git a/Post/views.py b/Post/views.py
> >     index 7f2cffb..cc6aed9 100644
> >     --- a/Post/views.py
> >     +++ b/Post/views.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error-reporting-tool - view definitions
> >       #
> >       # Copyright (C) 2013 Intel Corporation
> >     diff --git a/manage.py b/manage.py
> >     index 82cfa83..8edb2e4 100755
> >     --- a/manage.py
> >     +++ b/manage.py
> >     @@ -1,4 +1,6 @@
> >       #!/usr/bin/env python
> >     +# SPDX-License-Identifier: MIT
> >     +
> >       import os
> >       import sys
> >
> >     diff --git a/project/settings.py b/project/settings.py
> >     index 3c6c87e..2d1ab92 100644
> >     --- a/project/settings.py
> >     +++ b/project/settings.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # Django settings for error-reporting-tool project.
> >       # Based on settings.py from the Django project template
> >       # Copyright (c) Django Software Foundation and individual
> >     contributors.
> >     diff --git a/project/urls.py b/project/urls.py
> >     index 0e8f39c..1f51c7c 100644
> >     --- a/project/urls.py
> >     +++ b/project/urls.py
> >     @@ -1,3 +1,5 @@
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >       # error-reporting-tool - URL definitions
> >       #
> >       # Copyright (C) 2013 Intel Corporation
> >     diff --git a/project/wsgi.py b/project/wsgi.py
> >     index 7d4fc73..8d3ba66 100644
> >     --- a/project/wsgi.py
> >     +++ b/project/wsgi.py
> >     @@ -1,3 +1,7 @@
> >     +#
> >     +# SPDX-License-Identifier: MIT
> >     +#
> >     +
> >       """
> >       WSGI config for errorsreport project.
> >
> >     diff --git a/test-data/test-send-error.py
> b/test-data/test-send-error.py
> >     index 7070c18..1252855 100755
> >     --- a/test-data/test-send-error.py
> >     +++ b/test-data/test-send-error.py
> >     @@ -1,5 +1,6 @@
> >       #!/usr/bin/env python
> >     -#
> >     +# SPDX-License-Identifier: MIT
> >     +
> >       # test/example script for sending data to error-report-web
> >
> >       import urllib2
> >     --
> >     2.7.4
> >
> >
> >
> > 
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--000000000000393f2605a5a876b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Randy</div><div><br></div><div>Thanks for reviewing i=
t. Hope it will be merged into the main repo soon.<br></div><div><div><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"times new roman, serif">=
<br></font></div><div dir=3D"ltr"><font face=3D"times new roman, serif"><br=
></font></div><div dir=3D"ltr"><font face=3D"times new roman, serif">Thanks=
 &amp; Regards,</font><div><font face=3D"times new roman, serif"><b>Milan S=
hah</b></font></div><div><span style=3D"background-color:rgb(255,255,255)">=
<font color=3D"#ff0000"><font face=3D"times new roman, serif">MontaVista So=
ftware,=C2=A0</font><span style=3D"font-family:&quot;times new roman&quot;,=
serif">Bangaluru, India</span></font></span><br></div></div></div></div></d=
iv></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, May 4, 2020 at 9:00 PM Randy MacLeod &lt;<a href=
=
=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2020=
-05-01 2:54 a.m., Milan Shah wrote:<br>
&gt; Hi All,<br>
&gt; <br>
&gt; This is Gentle Reminder to review these changes.<br>
&gt; <br>
&gt; This address bug #13530<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13530"=
 rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/sho=
w_bug.cgi?id=3D13530</a><br>
&gt; <br>
&gt; Patch to review:<br>
&gt; <a href=3D"https://patchwork.openembedded.org/patch/170541/" rel=3D"n=
oreferrer" target=3D"_blank">https://patchwork.openembedded.org/patch/17054=
1/</a><br>
&gt; <br>
&gt; <br>
<br>
Thanks Milan.<br>
Looks good to me.<br>
<br>
Michael,<br>
Are you still maintaining the repo?<br>
<br>
../Randy<br>
&gt; <br>
&gt; <br>
&gt; Thanks &amp; Regards,<br>
&gt; *Milan Shah*<br>
&gt; MontaVista Software, Bangaluru, India<br>
&gt; <br>
&gt; <br>
&gt; On Wed, Feb 26, 2020 at 3:17 PM Milan Shah via <a href=3D"http://List=
s.Yoctoproject.Org" rel=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject=
.Org</a> <br>
&gt; &lt;<a href=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer" targ=
et=3D"_blank">http://Lists.Yoctoproject.Org</a>&gt; &lt;mshah=3D<a href=3D"=
mailto:mvista.com@lists.yoctoproject.org" target=3D"_blank">mvista.com@list=
s.yoctoproject.org</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:mvista.com@lists.yoctoproject.org" targe=
t=3D"_blank">mvista.com@lists.yoctoproject.org</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Post/* all ( except Post/migrations/* , __init__.p=
y and templatetags/* )<br>
&gt;=C2=A0 =C2=A0 =C2=A0have some sort of MIT headers; adding SPDX header =
to make it obvious.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0project/* &amp; test-data/* all ( except __init__.=
py ) have some sort of<br>
&gt;=C2=A0 =C2=A0 =C2=A0MIT headers;<br>
&gt;=C2=A0 =C2=A0 =C2=A0adding SPDX header to make it obvious.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0This address bug #13530<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D13530" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D13530</a><br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Milan Shah &lt;<a href=3D"mailto:ms=
hah@mvista.com" target=3D"_blank">mshah@mvista.com</a> &lt;mailto:<a href=
=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista.com</a>&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/admin.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/createStatistics.py=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 1 +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/feed.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/management/commands/culldb.py | 2 ++<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/parser.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1 +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Post/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0manage.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0project/settings.py=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0project/urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0project/wsgi.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0test-data/test-send-error.py=C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 3 ++-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A012 files changed, 24 insertions(+), 1 delet=
ion(-)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/admin.py b/Post/admin.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index f11ff65..43aa9a6 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/admin.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/admin.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error reporting tool - admin interface de=
finitions<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2013 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/createStatistics.py b/Post/creat=
eStatistics.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 213927a..09d098e 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/createStatistics.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/createStatistics.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,4 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#!/usr/bin/env python<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Create statistics. Update database.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/feed.py b/Post/feed.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 745ee23..7e5bfdb 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/feed.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/feed.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error-reporting-tool - URL definitions<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2013 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/management/commands/culldb.py<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0b/Post/management/commands/culldb.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 698537c..bd70ffc 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/management/commands/culldb.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/management/commands/culldb.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error-reporting-tool -=C2=A0 culldb<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2015 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/models.py b/Post/models.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index ddf2fc7..cf8c1c2 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/models.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/models.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error-reporting-tool - model definitions<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2013 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/parser.py b/Post/parser.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 9639308..ed65d4f 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/parser.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/parser.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,4 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#!/usr/bin/env python<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Add errors to database from client<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/Post/views.py b/Post/views.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 7f2cffb..cc6aed9 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/Post/views.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/Post/views.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error-reporting-tool - view definitions<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2013 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/manage.py b/manage.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 82cfa83..8edb2e4 100755<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/manage.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/manage.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,4 +1,6 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#!/usr/bin/env python<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0import os<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0import sys<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/project/settings.py b/project/setting=
s.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 3c6c87e..2d1ab92 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/project/settings.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/project/settings.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Django settings for error-reporting-tool =
project.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Based on settings.py from the Django proj=
ect template<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (c) Django Software Foundation =
and individual<br>
&gt;=C2=A0 =C2=A0 =C2=A0contributors.<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/project/urls.py b/project/urls.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 0e8f39c..1f51c7c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/project/urls.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/project/urls.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,5 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# error-reporting-tool - URL definitions<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# Copyright (C) 2013 Intel Corporation<br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/project/wsgi.py b/project/wsgi.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 7d4fc73..8d3ba66 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/project/wsgi.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/project/wsgi.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,3 +1,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+#<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;&quot;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WSGI config for errorsreport project.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/test-data/test-send-error.py b/test-d=
ata/test-send-error.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0index 7070c18..1252855 100755<br>
&gt;=C2=A0 =C2=A0 =C2=A0--- a/test-data/test-send-error.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++ b/test-data/test-send-error.py<br>
&gt;=C2=A0 =C2=A0 =C2=A0@@ -1,5 +1,6 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0#!/usr/bin/env python<br>
&gt;=C2=A0 =C2=A0 =C2=A0-#<br>
&gt;=C2=A0 =C2=A0 =C2=A0+# SPDX-License-Identifier: MIT<br>
&gt;=C2=A0 =C2=A0 =C2=A0+<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0# test/example script for sending data to e=
rror-report-web<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0import urllib2<br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A02.7.4<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--000000000000393f2605a5a876b9--
