Return-Path: <alexander.rodatos@brose.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCD9C05027
	for <webhook@archiver.kernel.org>; Thu,  9 Feb 2023 08:05:20 +0000 (UTC)
Subject: [meta-oe][dunfell]nativesdk-postgresql - causing chown: invalid user: 'postgres:postgres' 
To: yocto@lists.yoctoproject.org
From: alexander.rodatos@brose.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (185.125.227.20)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Feb 2023 00:05:19 -0800
Message-ID: <YVtP.1675929919976550265.0bXA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="U54bz1yxRA0LGVGEcUEp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 08:05:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59201

--U54bz1yxRA0LGVGEcUEp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

i am trying to install the PostgreSQL and the development package (postgres=
ql-server-dev) as part of the SDK.

I added via bbappend BBCLASSEXTED_append =3D "nativesdk" to the postgresql_=
12.9.bb.

I can build an image for a raspberry 4 pi.
However when i try to populate the sdk it stops with an error during the do=
_install() for PostgreSQL:

| chown: invalid user: =E2=80=98postgres:postgres=E2=80=99
| WARNING: exit code 1 from a shell command.

This happens when the owner for pgsql libs is changed to the user postgres.
I did create a the user manually on the host system but this didn't help wi=
th the problem.

If i build the image itself it works flawlessly.

Any ideas what I'm doing wrong?

Best Regards

Alexander

--U54bz1yxRA0LGVGEcUEp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"line-height: 1.42857;">Hello,<br /><br />i am trying to install=
 the PostgreSQL and the development package (postgresql-server-dev) as part=
 of the SDK.&nbsp;<br /><br />I added via bbappend BBCLASSEXTED_append =3D =
"nativesdk" to the postgresql_12.9.bb.&nbsp;<br /><br />I can build an imag=
e for a raspberry 4 pi.&nbsp;<br />However when i try to populate the sdk i=
t stops with an error during the do_install() for PostgreSQL:</p>
<div style=3D"line-height: 1.42857;">| chown: invalid user: &lsquo;postgres=
:postgres&rsquo;</div>
<div style=3D"line-height: 1.42857;">| WARNING: exit code 1 from a shell co=
mmand.<br /><br />This happens when the owner for pgsql libs is changed to =
the user postgres.&nbsp;<br />I did create a the user manually on the host =
system but this didn't help with the problem.&nbsp;<br /><br />If i build t=
he image itself it works flawlessly.&nbsp;</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Any ideas what I'm doing wrong?</div>
<div style=3D"line-height: 1.42857;"><br />Best Regards</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Alexander</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>

--U54bz1yxRA0LGVGEcUEp--

