Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.5620.1588316076814199313
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 23:54:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=GIX/xJYA;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.208.43, mailfrom: mshah@mvista.com)
Received: by mail-ed1-f43.google.com with SMTP id d16so6634965edv.8
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2020 23:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WMb/C/lMRBHX4B9OCO7BBPqMnyLN6mLiVRZJ3uFj05s=;
        b=GIX/xJYAcFktCHYqVSNyccVPAW8XsX1pmg5d+KdLSs/pTK6NBAILTTeS40FsfPTAWP
         wlEfpvY9zbKU6czn5NMRkQHjmMQZfgiCYAK2smrfTNGSmfCx0kEZh/1dKd4KGSW1DHFZ
         h0MT+w12SNWdC/FG+psrNWK8486lIU2WoVcsMcNMOUVWbvMSkns91WX3HZCblC59i4n+
         TN00+s+sI0tM8OfyomSKsLWvX/UJ8tDIhCYeE8St4E0T4x0gOPWXAY6ep/lmDZZd0dh7
         cP4RNlBiXsgW0nDBRyo1BAP+FxZTmI3J5oBdh2w+4r2YTyr8G/luiUT8if2b6qUhO7Gu
         Im1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WMb/C/lMRBHX4B9OCO7BBPqMnyLN6mLiVRZJ3uFj05s=;
        b=Y+3CtuUhXHB9smj9L8T5ljCHJhvFzHeES7Atml2hTQH76Icbo2NbgI4UCBUgikFgWR
         8JtlVHGBTA1XOlS5AfX2UPzqbdIOOMqflHEyAJIPk3juUfhdshGAQJWh2TaDDLZHaCkP
         S7LOZJhG1WbST1z5xH4TsOPR6eFSkGUPBegvo4je6FWF6yrIOn0Kd8n4ENi/Jk1jQEqF
         UEvQ2zvg0AqyikZW3lX1maWm7g6Bryc+lOsxercMYOtEalsOQmMpvn5rPgZp/OH2wh8w
         Y8cMXxeJRKdeTQcDaobhuXT+IvbzTr9Geu37x7+aO0DD4Y652KkW9AvBe+Sp6Zq0MiAU
         AJ7A==
X-Gm-Message-State: AGi0PuYfqSnLyVYCJEuwk34D52b8ENwt/AAYEy/tf2Ev9avGiTCnsmzD
	hobcJrFFtFfBPbKaycQuVUHM6yflgYwq8uT+2oTFkg==
X-Google-Smtp-Source: APiQypJ8TQ/o75j7dyUv4s/p4t+S03gRIwOy4JeoljsaNVYoYohtUDkBtM49fEwF7h3nW3dr5fXmJ+rrf2d8Xl1YBgA=
X-Received: by 2002:a05:6402:31b6:: with SMTP id dj22mr2397736edb.258.1588316075391;
 Thu, 30 Apr 2020 23:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <15F6EABEC43B112A.19684@lists.yoctoproject.org>
In-Reply-To: <15F6EABEC43B112A.19684@lists.yoctoproject.org>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 1 May 2020 12:24:19 +0530
Message-ID: <CA+=qD9MGnqNRixYh30tps+Az4bsSkZ3DTKPncTpSHa6sRYmLUA@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH] Add SPDX license headers to source files
To: Milan Shah <mshah@mvista.com>
Cc: yocto@yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000077129b05a490a705"

--00000000000077129b05a490a705
Content-Type: text/plain; charset="UTF-8"

Hi All,

This is Gentle Reminder to review these changes.

This address bug #13530
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13530

Patch to review:
https://patchwork.openembedded.org/patch/170541/




Thanks & Regards,
*Milan Shah*
MontaVista Software, Bangaluru, India


On Wed, Feb 26, 2020 at 3:17 PM Milan Shah via Lists.Yoctoproject.Org
<mshah=mvista.com@lists.yoctoproject.org> wrote:

> Post/* all ( except Post/migrations/* , __init__.py and templatetags/* )
> have some sort of MIT headers; adding SPDX header to make it obvious.
>
> project/* & test-data/* all ( except __init__.py ) have some sort of MIT
> headers;
> adding SPDX header to make it obvious.
>
> This address bug #13530
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13530
>
> Signed-off-by: Milan Shah <mshah@mvista.com>
> ---
>  Post/admin.py                      | 2 ++
>  Post/createStatistics.py           | 1 +
>  Post/feed.py                       | 2 ++
>  Post/management/commands/culldb.py | 2 ++
>  Post/models.py                     | 2 ++
>  Post/parser.py                     | 1 +
>  Post/views.py                      | 2 ++
>  manage.py                          | 2 ++
>  project/settings.py                | 2 ++
>  project/urls.py                    | 2 ++
>  project/wsgi.py                    | 4 ++++
>  test-data/test-send-error.py       | 3 ++-
>  12 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/Post/admin.py b/Post/admin.py
> index f11ff65..43aa9a6 100644
> --- a/Post/admin.py
> +++ b/Post/admin.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error reporting tool - admin interface definitions
>  #
>  # Copyright (C) 2013 Intel Corporation
> diff --git a/Post/createStatistics.py b/Post/createStatistics.py
> index 213927a..09d098e 100644
> --- a/Post/createStatistics.py
> +++ b/Post/createStatistics.py
> @@ -1,4 +1,5 @@
>  #!/usr/bin/env python
> +# SPDX-License-Identifier: MIT
>
>  # Create statistics. Update database.
>  #
> diff --git a/Post/feed.py b/Post/feed.py
> index 745ee23..7e5bfdb 100644
> --- a/Post/feed.py
> +++ b/Post/feed.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error-reporting-tool - URL definitions
>  #
>  # Copyright (C) 2013 Intel Corporation
> diff --git a/Post/management/commands/culldb.py
> b/Post/management/commands/culldb.py
> index 698537c..bd70ffc 100644
> --- a/Post/management/commands/culldb.py
> +++ b/Post/management/commands/culldb.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error-reporting-tool -  culldb
>  #
>  # Copyright (C) 2015 Intel Corporation
> diff --git a/Post/models.py b/Post/models.py
> index ddf2fc7..cf8c1c2 100644
> --- a/Post/models.py
> +++ b/Post/models.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error-reporting-tool - model definitions
>  #
>  # Copyright (C) 2013 Intel Corporation
> diff --git a/Post/parser.py b/Post/parser.py
> index 9639308..ed65d4f 100644
> --- a/Post/parser.py
> +++ b/Post/parser.py
> @@ -1,4 +1,5 @@
>  #!/usr/bin/env python
> +# SPDX-License-Identifier: MIT
>
>  # Add errors to database from client
>  #
> diff --git a/Post/views.py b/Post/views.py
> index 7f2cffb..cc6aed9 100644
> --- a/Post/views.py
> +++ b/Post/views.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error-reporting-tool - view definitions
>  #
>  # Copyright (C) 2013 Intel Corporation
> diff --git a/manage.py b/manage.py
> index 82cfa83..8edb2e4 100755
> --- a/manage.py
> +++ b/manage.py
> @@ -1,4 +1,6 @@
>  #!/usr/bin/env python
> +# SPDX-License-Identifier: MIT
> +
>  import os
>  import sys
>
> diff --git a/project/settings.py b/project/settings.py
> index 3c6c87e..2d1ab92 100644
> --- a/project/settings.py
> +++ b/project/settings.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # Django settings for error-reporting-tool project.
>  # Based on settings.py from the Django project template
>  # Copyright (c) Django Software Foundation and individual contributors.
> diff --git a/project/urls.py b/project/urls.py
> index 0e8f39c..1f51c7c 100644
> --- a/project/urls.py
> +++ b/project/urls.py
> @@ -1,3 +1,5 @@
> +# SPDX-License-Identifier: MIT
> +#
>  # error-reporting-tool - URL definitions
>  #
>  # Copyright (C) 2013 Intel Corporation
> diff --git a/project/wsgi.py b/project/wsgi.py
> index 7d4fc73..8d3ba66 100644
> --- a/project/wsgi.py
> +++ b/project/wsgi.py
> @@ -1,3 +1,7 @@
> +#
> +# SPDX-License-Identifier: MIT
> +#
> +
>  """
>  WSGI config for errorsreport project.
>
> diff --git a/test-data/test-send-error.py b/test-data/test-send-error.py
> index 7070c18..1252855 100755
> --- a/test-data/test-send-error.py
> +++ b/test-data/test-send-error.py
> @@ -1,5 +1,6 @@
>  #!/usr/bin/env python
> -#
> +# SPDX-License-Identifier: MIT
> +
>  # test/example script for sending data to error-report-web
>
>  import urllib2
> --
> 2.7.4
>
> 
>

--00000000000077129b05a490a705
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>This is Gentle Remin=
der to review these changes.</div><div><br></div><div>This address bug #135=
30<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13530" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13530</a></div><div><br></div><div>Patch to review:</div><div><=
a href=3D"https://patchwork.openembedded.org/patch/170541/">https://patchwo=
rk.openembedded.org/patch/170541/</a></div><div><br></div><div><br></div><d=
iv><div><div dir=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><font face=3D"times new roman, serif"><br></font></=
div><div dir=3D"ltr"><font face=3D"times new roman, serif"><br></font></div=
><div dir=3D"ltr"><font face=3D"times new roman, serif">Thanks &amp; Regard=
s,</font><div><font face=3D"times new roman, serif"><b>Milan Shah</b></font=
></div><div><span style=3D"background-color:rgb(255,255,255)"><font color=
=3D"#ff0000"><font face=3D"times new roman, serif">MontaVista Software,=C2=
=
=A0</font><span style=3D"font-family:&quot;times new roman&quot;,serif">Ba=
ngaluru, India</span></font></span><br></div></div></div></div></div></div>=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Feb 26, 2020 at 3:17 PM Milan Shah via <a href=3D"http://=
Lists.Yoctoproject.Org" target=3D"_blank">Lists.Yoctoproject.Org</a> &lt;ms=
hah=3D<a href=3D"mailto:mvista.com@lists.yoctoproject.org" target=3D"_blank=
">mvista.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Post/* all ( except Post/migrations/* , =
__init__.py and templatetags/* )<br>
have some sort of MIT headers; adding SPDX header to make it obvious.<br>
<br>
project/* &amp; test-data/* all ( except __init__.py ) have some sort of M=
IT headers;<br>
adding SPDX header to make it obvious.<br>
<br>
This address bug #13530<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13530" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13530</a><br>
<br>
Signed-off-by: Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=
=3D"_blank">mshah@mvista.com</a>&gt;<br>
---<br>
=C2=A0Post/admin.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0Post/createStatistics.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1=
 +<br>
=C2=A0Post/feed.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0Post/management/commands/culldb.py | 2 ++<br>
=C2=A0Post/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
=C2=A0Post/parser.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 1 +<br>
=C2=A0Post/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0manage.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0project/settings.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 | 2 ++<br>
=C2=A0project/urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 2 ++<br>
=C2=A0project/wsgi.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 4 ++++<br>
=C2=A0test-data/test-send-error.py=C2=A0 =C2=A0 =C2=A0 =C2=A0| 3 ++-<br>
=C2=A012 files changed, 24 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/Post/admin.py b/Post/admin.py<br>
index f11ff65..43aa9a6 100644<br>
--- a/Post/admin.py<br>
+++ b/Post/admin.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error reporting tool - admin interface definitions<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
diff --git a/Post/createStatistics.py b/Post/createStatistics.py<br>
index 213927a..09d098e 100644<br>
--- a/Post/createStatistics.py<br>
+++ b/Post/createStatistics.py<br>
@@ -1,4 +1,5 @@<br>
=C2=A0#!/usr/bin/env python<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0# Create statistics. Update database.<br>
=C2=A0#<br>
diff --git a/Post/feed.py b/Post/feed.py<br>
index 745ee23..7e5bfdb 100644<br>
--- a/Post/feed.py<br>
+++ b/Post/feed.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error-reporting-tool - URL definitions<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
diff --git a/Post/management/commands/culldb.py b/Post/management/commands=
/culldb.py<br>
index 698537c..bd70ffc 100644<br>
--- a/Post/management/commands/culldb.py<br>
+++ b/Post/management/commands/culldb.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error-reporting-tool -=C2=A0 culldb<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2015 Intel Corporation<br>
diff --git a/Post/models.py b/Post/models.py<br>
index ddf2fc7..cf8c1c2 100644<br>
--- a/Post/models.py<br>
+++ b/Post/models.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error-reporting-tool - model definitions<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
diff --git a/Post/parser.py b/Post/parser.py<br>
index 9639308..ed65d4f 100644<br>
--- a/Post/parser.py<br>
+++ b/Post/parser.py<br>
@@ -1,4 +1,5 @@<br>
=C2=A0#!/usr/bin/env python<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0# Add errors to database from client<br>
=C2=A0#<br>
diff --git a/Post/views.py b/Post/views.py<br>
index 7f2cffb..cc6aed9 100644<br>
--- a/Post/views.py<br>
+++ b/Post/views.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error-reporting-tool - view definitions<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
diff --git a/manage.py b/manage.py<br>
index 82cfa83..8edb2e4 100755<br>
--- a/manage.py<br>
+++ b/manage.py<br>
@@ -1,4 +1,6 @@<br>
=C2=A0#!/usr/bin/env python<br>
+# SPDX-License-Identifier: MIT<br>
+<br>
=C2=A0import os<br>
=C2=A0import sys<br>
<br>
diff --git a/project/settings.py b/project/settings.py<br>
index 3c6c87e..2d1ab92 100644<br>
--- a/project/settings.py<br>
+++ b/project/settings.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# Django settings for error-reporting-tool project.<br>
=C2=A0# Based on settings.py from the Django project template<br>
=C2=A0# Copyright (c) Django Software Foundation and individual contributo=
rs.<br>
diff --git a/project/urls.py b/project/urls.py<br>
index 0e8f39c..1f51c7c 100644<br>
--- a/project/urls.py<br>
+++ b/project/urls.py<br>
@@ -1,3 +1,5 @@<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
=C2=A0# error-reporting-tool - URL definitions<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
diff --git a/project/wsgi.py b/project/wsgi.py<br>
index 7d4fc73..8d3ba66 100644<br>
--- a/project/wsgi.py<br>
+++ b/project/wsgi.py<br>
@@ -1,3 +1,7 @@<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
+#<br>
+<br>
=C2=A0&quot;&quot;&quot;<br>
=C2=A0WSGI config for errorsreport project.<br>
<br>
diff --git a/test-data/test-send-error.py b/test-data/test-send-error.py<b=
r>
index 7070c18..1252855 100755<br>
--- a/test-data/test-send-error.py<br>
+++ b/test-data/test-send-error.py<br>
@@ -1,5 +1,6 @@<br>
=C2=A0#!/usr/bin/env python<br>
-#<br>
+# SPDX-License-Identifier: MIT<br>
+<br>
=C2=A0# test/example script for sending data to error-report-web<br>
<br>
=C2=A0import urllib2<br>
-- <br>
2.7.4<br>
<br>
<br>
</blockquote></div>

--00000000000077129b05a490a705--
