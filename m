Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.17357.1600876722575841375
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 08:58:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 60AB838C1459
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 08:58:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 08NFwfQY015468
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 08:58:41 -0700 (PDT)
Received: from [172.25.44.2] (172.25.44.2) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 23 Sep
 2020 08:58:40 -0700
Subject: Re: [yocto] [meta-cgl][PATCH] meta-cgl-common: depend on meta-python2 layer
To: Chen Qi <Qi.Chen@windriver.com>, <yocto@yoctoproject.org>
References: <20200923080109.24229-1-Qi.Chen@windriver.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <3e915e94-4ebf-1100-45d7-f09a7a8f4cdd@windriver.com>
Date: Wed, 23 Sep 2020 11:58:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200923080109.24229-1-Qi.Chen@windriver.com>
X-Originating-IP: [172.25.44.2]
Content-Type: multipart/alternative;
	boundary="------------F53A5C7CF365B5DCBE76E12F"
Content-Language: en-CA

--------------F53A5C7CF365B5DCBE76E12F
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-09-23 4:01 a.m., Chen Qi wrote:
> It requires meta-python2 to be there at the moment.
> More specifically, the crmsh recipe needs python-setuptools-native.

Hi Qi,

Are you sure?
It looks like crmsh moved to python3 a while ago as
indicated below.

If there's still a dependency, please open an issue:

https://github.com/ClusterLabs/crmsh/issues?q=3Dis%3Aissue+is%3Aopen+setup=
tools

Thanks,

../Randy


$ cd .../crmsh.git

$ git status
HEAD detached at 4.2.0
nothing to commit, working tree clean

$ grep -r setuptools *

contrib/setup.py:from setuptools import setup
crmsh.spec.in:BuildRequires:=C2=A0 python3-setuptools
doc/website-v1/development.adoc:* `setuptools`
Dockerfile:RUN zypper -n --gpg-auto-import-keys ref && zypper -n=20
--gpg-auto-import-keys in pacemaker python3 python3-lxml=20
python3-python-dateutil python3-parallax libglue-devel=20
python3-setuptools python3-tox asciidoc autoconf automake make pkgconfig=
=20
which libxslt-tools mailx procps python3-nose python3-PyYAML=20
python3-curses tar
README.md:It then calls the python setuptools setup.py to actually=20
process the
setup.py:from setuptools import setup


git log -1 --stat 845af7b9fb7a4c212d2e67b8a44cf655e702edaa
commit 845af7b9fb7a4c212d2e67b8a44cf655e702edaa
Author: Kristoffer Gr=C3=B6nlund <krig@koru.se>
Date:=C2=A0=C2=A0 Fri Oct 27 05:47:02 2017

 =C2=A0=C2=A0=C2=A0 dev: Updated spec file

 =C2=A0crmsh.spec | 106=20
+++++++++++++++++...+++++++++-----------------------------------------
 =C2=A01 file changed, 65 insertions(+), 41 deletions(-)

$ grep setuptools crmsh.spec.in
BuildRequires:=C2=A0 python3-setuptools


>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   meta-cgl-common/conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/laye=
r.conf
> index 6035b4b..6b689ea 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D "cgl-common"
>   BBFILE_PATTERN_cgl-common =3D "^${LAYERDIR}/"
>   BBFILE_PRIORITY_cgl-common =3D "7"
>  =20
> -LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer p=
erl-layer filesystems-layer security selinux"
> +LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer p=
erl-layer filesystems-layer security selinux meta-python2"
>  =20
>   LAYERSERIES_COMPAT_cgl-common =3D "warrior zeus dunfell"
>  =20
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------F53A5C7CF365B5DCBE76E12F
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2020-09-23 4:01 a.m., Chen Qi wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20200923080109.24229-1-Qi.Chen@windriver.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">It requires meta-python2 to b=
e there at the moment.
More specifically, the crmsh recipe needs python-setuptools-native.</pre>
    </blockquote>
    <p>Hi Qi,<br>
    </p>
    <p>Are you sure? <br>
      It looks like crmsh moved to python3 a while ago as<br>
      indicated below.</p>
    <p>If there's still a dependency, please open an issue:</p>
    <p>=C2=A0=C2=A0
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/ClusterLabs/=
crmsh/issues?q=3Dis%3Aissue+is%3Aopen+setuptools">https://github.com/Cluste=
rLabs/crmsh/issues?q=3Dis%3Aissue+is%3Aopen+setuptools</a></p>
    <p>Thanks,<br>
    </p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <p>$ cd .../crmsh.git <br>
    </p>
    <p>$ git status<br>
      HEAD detached at 4.2.0<br>
      nothing to commit, working tree clean<br>
      <br>
    </p>
    <p>$ grep -r setuptools *</p>
    contrib/setup.py:from setuptools import setup<br>
    crmsh.spec.in:BuildRequires:=C2=A0 python3-setuptools<br>
    doc/website-v1/development.adoc:* `setuptools`<br>
    Dockerfile:RUN zypper -n --gpg-auto-import-keys ref &amp;&amp;
    zypper -n --gpg-auto-import-keys in pacemaker python3 python3-lxml
    python3-python-dateutil python3-parallax libglue-devel
    python3-setuptools python3-tox asciidoc autoconf automake make
    pkgconfig which libxslt-tools mailx procps python3-nose
    python3-PyYAML python3-curses tar<br>
    README.md:It then calls the python setuptools setup.py to actually
    process the<br>
    setup.py:from setuptools import setup<br>
    <p><br>
    </p>
    <p>git log -1 --stat 845af7b9fb7a4c212d2e67b8a44cf655e702edaa<br>
      commit 845af7b9fb7a4c212d2e67b8a44cf655e702edaa<br>
      Author: Kristoffer Gr=C3=B6nlund <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:krig@koru.se">&lt;krig@koru.se&gt;</a><br>
      Date:=C2=A0=C2=A0 Fri Oct 27 05:47:02 2017<br>
      <br>
      =C2=A0=C2=A0=C2=A0 dev: Updated spec file<br>
      <br>
      =C2=A0crmsh.spec | 106
      +++++++++++++++++...+++++++++---------------------------------------=
--<br>
      =C2=A01 file changed, 65 insertions(+), 41 deletions(-)<br>
      <br>
    </p>
    <p>$ grep setuptools crmsh.spec.in <br>
      BuildRequires:=C2=A0 python3-setuptools<br>
      <br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:20200923080109.24229-1-Qi.Chen@windriver.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Signed-off-by: Chen Qi <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:Q=
i.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.=
conf
index 6035b4b..6b689ea 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D "cgl-common"
 BBFILE_PATTERN_cgl-common =3D "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common =3D "7"
=20
-LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer per=
l-layer filesystems-layer security selinux"
+LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer per=
l-layer filesystems-layer security selinux meta-python2"
=20
 LAYERSERIES_COMPAT_cgl-common =3D "warrior zeus dunfell"
=20
</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------F53A5C7CF365B5DCBE76E12F--
