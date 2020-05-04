Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web10.8688.1588606204530559756
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 08:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 044FTv25025056
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 4 May 2020 08:29:57 -0700 (PDT)
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Mon, 4 May
 2020 08:29:56 -0700
Subject: Re: [yocto] [error-report-web][PATCH] Add SPDX license headers to source files
To: <yocto@lists.yoctoproject.org>, <michael.g.wood@intel.com>
CC: Milan Shah <mshah@mvista.com>
References: <15F6EABEC43B112A.19684@lists.yoctoproject.org>
 <CA+=qD9MGnqNRixYh30tps+Az4bsSkZ3DTKPncTpSHa6sRYmLUA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <5692b22a-1d1d-b9f0-dde4-a49bb11de58c@windriver.com>
Date: Mon, 4 May 2020 11:29:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CA+=qD9MGnqNRixYh30tps+Az4bsSkZ3DTKPncTpSHa6sRYmLUA@mail.gmail.com>
X-Originating-IP: [172.25.44.3]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 044FTv25025056
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2020-05-01 2:54 a.m., Milan Shah wrote:
> Hi All,
>=20
> This is Gentle Reminder to review these changes.
>=20
> This address bug #13530
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13530
>=20
> Patch to review:
> https://patchwork.openembedded.org/patch/170541/
>=20
>=20

Thanks Milan.
Looks good to me.

Michael,
Are you still maintaining the repo?

../Randy
>=20
>=20
> Thanks & Regards,
> *Milan Shah*
> MontaVista Software, Bangaluru, India
>=20
>=20
> On Wed, Feb 26, 2020 at 3:17 PM Milan Shah via Lists.Yoctoproject.Org=20
> <http://Lists.Yoctoproject.Org> <mshah=3Dmvista.com@lists.yoctoproject.o=
rg=20
> <mailto:mvista.com@lists.yoctoproject.org>> wrote:
>=20
>     Post/* all ( except Post/migrations/* , __init__.py and templatetags=
/* )
>     have some sort of MIT headers; adding SPDX header to make it obvious=
.
>=20
>     project/* & test-data/* all ( except __init__.py ) have some sort of
>     MIT headers;
>     adding SPDX header to make it obvious.
>=20
>     This address bug #13530
>     https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13530
>=20
>     Signed-off-by: Milan Shah <mshah@mvista.com <mailto:mshah@mvista.com=
>>
>     ---
>      =C2=A0Post/admin.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++
>      =C2=A0Post/createStatistics.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| 1 +
>      =C2=A0Post/feed.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++
>      =C2=A0Post/management/commands/culldb.py | 2 ++
>      =C2=A0Post/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++
>      =C2=A0Post/parser.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 1 +
>      =C2=A0Post/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++
>      =C2=A0manage.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++
>      =C2=A0project/settings.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 | 2 ++
>      =C2=A0project/urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++
>      =C2=A0project/wsgi.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++++
>      =C2=A0test-data/test-send-error.py=C2=A0 =C2=A0 =C2=A0 =C2=A0| 3 ++=
-
>      =C2=A012 files changed, 24 insertions(+), 1 deletion(-)
>=20
>     diff --git a/Post/admin.py b/Post/admin.py
>     index f11ff65..43aa9a6 100644
>     --- a/Post/admin.py
>     +++ b/Post/admin.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error reporting tool - admin interface definitions
>      =C2=A0#
>      =C2=A0# Copyright (C) 2013 Intel Corporation
>     diff --git a/Post/createStatistics.py b/Post/createStatistics.py
>     index 213927a..09d098e 100644
>     --- a/Post/createStatistics.py
>     +++ b/Post/createStatistics.py
>     @@ -1,4 +1,5 @@
>      =C2=A0#!/usr/bin/env python
>     +# SPDX-License-Identifier: MIT
>=20
>      =C2=A0# Create statistics. Update database.
>      =C2=A0#
>     diff --git a/Post/feed.py b/Post/feed.py
>     index 745ee23..7e5bfdb 100644
>     --- a/Post/feed.py
>     +++ b/Post/feed.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error-reporting-tool - URL definitions
>      =C2=A0#
>      =C2=A0# Copyright (C) 2013 Intel Corporation
>     diff --git a/Post/management/commands/culldb.py
>     b/Post/management/commands/culldb.py
>     index 698537c..bd70ffc 100644
>     --- a/Post/management/commands/culldb.py
>     +++ b/Post/management/commands/culldb.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error-reporting-tool -=C2=A0 culldb
>      =C2=A0#
>      =C2=A0# Copyright (C) 2015 Intel Corporation
>     diff --git a/Post/models.py b/Post/models.py
>     index ddf2fc7..cf8c1c2 100644
>     --- a/Post/models.py
>     +++ b/Post/models.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error-reporting-tool - model definitions
>      =C2=A0#
>      =C2=A0# Copyright (C) 2013 Intel Corporation
>     diff --git a/Post/parser.py b/Post/parser.py
>     index 9639308..ed65d4f 100644
>     --- a/Post/parser.py
>     +++ b/Post/parser.py
>     @@ -1,4 +1,5 @@
>      =C2=A0#!/usr/bin/env python
>     +# SPDX-License-Identifier: MIT
>=20
>      =C2=A0# Add errors to database from client
>      =C2=A0#
>     diff --git a/Post/views.py b/Post/views.py
>     index 7f2cffb..cc6aed9 100644
>     --- a/Post/views.py
>     +++ b/Post/views.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error-reporting-tool - view definitions
>      =C2=A0#
>      =C2=A0# Copyright (C) 2013 Intel Corporation
>     diff --git a/manage.py b/manage.py
>     index 82cfa83..8edb2e4 100755
>     --- a/manage.py
>     +++ b/manage.py
>     @@ -1,4 +1,6 @@
>      =C2=A0#!/usr/bin/env python
>     +# SPDX-License-Identifier: MIT
>     +
>      =C2=A0import os
>      =C2=A0import sys
>=20
>     diff --git a/project/settings.py b/project/settings.py
>     index 3c6c87e..2d1ab92 100644
>     --- a/project/settings.py
>     +++ b/project/settings.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# Django settings for error-reporting-tool project.
>      =C2=A0# Based on settings.py from the Django project template
>      =C2=A0# Copyright (c) Django Software Foundation and individual
>     contributors.
>     diff --git a/project/urls.py b/project/urls.py
>     index 0e8f39c..1f51c7c 100644
>     --- a/project/urls.py
>     +++ b/project/urls.py
>     @@ -1,3 +1,5 @@
>     +# SPDX-License-Identifier: MIT
>     +#
>      =C2=A0# error-reporting-tool - URL definitions
>      =C2=A0#
>      =C2=A0# Copyright (C) 2013 Intel Corporation
>     diff --git a/project/wsgi.py b/project/wsgi.py
>     index 7d4fc73..8d3ba66 100644
>     --- a/project/wsgi.py
>     +++ b/project/wsgi.py
>     @@ -1,3 +1,7 @@
>     +#
>     +# SPDX-License-Identifier: MIT
>     +#
>     +
>      =C2=A0"""
>      =C2=A0WSGI config for errorsreport project.
>=20
>     diff --git a/test-data/test-send-error.py b/test-data/test-send-erro=
r.py
>     index 7070c18..1252855 100755
>     --- a/test-data/test-send-error.py
>     +++ b/test-data/test-send-error.py
>     @@ -1,5 +1,6 @@
>      =C2=A0#!/usr/bin/env python
>     -#
>     +# SPDX-License-Identifier: MIT
>     +
>      =C2=A0# test/example script for sending data to error-report-web
>=20
>      =C2=A0import urllib2
>     --=20
>     2.7.4
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
