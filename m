Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5717.1613235487510085498
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Feb 2021 08:58:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fRp31V5T;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jatedev@gmail.com)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 25B6338C06B0
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2021 16:58:06 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id t26so1713101pgv.3
        for <yocto@yoctoproject.org>; Sat, 13 Feb 2021 08:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Y7cyM60cdY+ngYTRgWlRgUrRw2z2blPPLE0AjueU5nI=;
        b=fRp31V5Tl/+Ke7EzPrhqzBYGA6Tqzugspc+H4P/Kpr+uaA7sf2g31VzKXlwBklTw4z
         AJCecwIrZw15+c8m2vXkxy7lJuf17K9MkNo3lA0pvZakWbIVSYgBuz38FRV3H5pGfRfz
         OqCHtJlmIatuO6R5HzaLH6LWfG2kpF7rAa5rlGq2rt6ZfMP+i3+pRvxcUmtWUCZnAOcx
         EWk6n3adhyMvks8VYP1BpuS7uFc/SbyPlxVwqLVzpBCzKEoK70vWpeP+QVquFTQ9K/d+
         mq/8UncJZC+MalJ2uSi4B/wkaiu5EwmbvTMTWabmf1KSxuzNeIy3OzZ+mUbMHI7OKhYl
         1S8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Y7cyM60cdY+ngYTRgWlRgUrRw2z2blPPLE0AjueU5nI=;
        b=Fb7IZj2dGFQwwhmcdmXw7vZywMbv8iMUgWaRKRvjrPBrTpxwjpMCgnnCR6/T8Mt9gC
         FJ/JWmCk7Jov0NPzGp+Mwql1PSv2YO5P5+TgTY08Hzx1tXpvN3WM2cXn7VHi9la+611e
         0C6iUjEEsvJzotNviT7cnSuq0zJTLYQCsCYVpsN0HeUyyqxW53YeSvMsn9d7jH1IzbaZ
         pjw99cOrz31wDk3ntfwbwUSKwCd38nzaJ2VQa8v5qW4Aypu5WMPTZ8P3r1M5GXm85/Bo
         4cOGkBrBn8RbbYWFWRTElo0rIKkzJ33boCoy9l/jwtonEQ4r+5lW1F5C27+zuIVCuQj5
         ATGg==
X-Gm-Message-State: AOAM5311/z2WDegFc9qvRou5dNmxf1luQM1SWL8a2Y09DZmYgl8F74AY
	trOhNuvtOKMLqZNJddQ+0oGE2Sm3iogS8EALNC4O951Z
X-Google-Smtp-Source: ABdhPJy+PnzeDUH60FqyHbQ556QGiISABLxaF1q/G7wxZtYYg6fQk48Hv6hpX8iOK6KC+pXOefhW3GGM8qq5elFsAUg=
X-Received: by 2002:a62:92d7:0:b029:1d9:1591:e1fe with SMTP id
 o206-20020a6292d70000b02901d91591e1femr8071343pfd.72.1613235485115; Sat, 13
 Feb 2021 08:58:05 -0800 (PST)
MIME-Version: 1.0
References: <20210110162104.85436-1-jatedev@gmail.com>
In-Reply-To: <20210110162104.85436-1-jatedev@gmail.com>
From: "Jate Sujjavanich" <jatedev@gmail.com>
Date: Sat, 13 Feb 2021 11:57:53 -0500
Message-ID: <CAPphmgY0JmX5Ug5g17ZE60itUmtqCt-S68L3rKiWqEN_m-3XEw@mail.gmail.com>
Subject: Re: [meta-security-compliance][PATCH] scap-security-guide: Fix openembedded platform tests and build
To: Yocto Project <yocto@yoctoproject.org>, akuster808@gmail.com
Content-Type: multipart/alternative; boundary="00000000000007893505bb3aa8a0"

--00000000000007893505bb3aa8a0
Content-Type: text/plain; charset="UTF-8"

Ping

On Sun, Jan 10, 2021 at 11:21 AM Jate Sujjavanich <jatedev@gmail.com> wrote:

> Add patches to fix openembedded nodistro tests and openembedded build
> within
> ssg metadata.
>
> Signed-Off-By: Jate Sujjavanich <jatedev@gmail.com>
> ---
>  ...c-file-check-tests-in-installed-OS-d.patch | 46 +++++++++++++++++++
>  ...g-openembedded-from-ssg-constants.py.patch | 34 ++++++++++++++
>  .../scap-security-guide_git.bb                |  2 +
>  3 files changed, 82 insertions(+)
>  create mode 100644
> meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
>  create mode 100644
> meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
>
> diff --git
> a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
> b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
> new file mode 100644
> index 0000000..60664a3
> --- /dev/null
> +++
> b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch
> @@ -0,0 +1,46 @@
> +From 2beb4bc83a157b21edb1a3fef295cd4cced467df Mon Sep 17 00:00:00 2001
> +From: Jate Sujjavanich <jatedev@gmail.com>
> +Date: Thu, 7 Jan 2021 18:10:01 -0500
> +Subject: [PATCH 1/3] Fix platform spec, file check, tests in installed OS
> + detect for openembedded
> +
> +Change platform to multi in openembedded installed check matching others
> +and allowing compile of xml into oval
> +---
> + shared/checks/oval/installed_OS_is_openembedded.xml | 11 ++++++-----
> + 1 file changed, 6 insertions(+), 5 deletions(-)
> +
> +diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml
> b/shared/checks/oval/installed_OS_is_openembedded.xml
> +index 763d17bcb..01df16b43 100644
> +--- a/shared/checks/oval/installed_OS_is_openembedded.xml
> ++++ b/shared/checks/oval/installed_OS_is_openembedded.xml
> +@@ -1,11 +1,9 @@
> +-</def-group>
> +-
> + <def-group>
> +   <definition class="inventory" id="installed_OS_is_openembedded"
> version="2">
> +     <metadata>
> +       <title>OpenEmbedded</title>
> +       <affected family="unix">
> +-        <platform>OPENEMBEDDED</platform>
> ++        <platform>multi_platform_all</platform>
> +       </affected>
> +       <reference ref_id="cpe:/o:openembedded:openembedded:0"
> +       source="CPE" />
> +@@ -20,8 +18,11 @@
> +     </criteria>
> +   </definition>
> +
> +-  <ind:textfilecontent54_object id="test_openembedded" version="1"
> comment="Check OPenEmbedded version">
> +-    <ind:filepath>/etc/os-release/ind:filepath>
> ++  <ind:textfilecontent54_test check="all"
> check_existence="at_least_one_exists" comment="Check OpenEmbedded version"
> id="test_openembedded" version="1">
> ++    <ind:object object_ref="obj_openembedded" />
> ++  </ind:textfilecontent54_test>
> ++  <ind:textfilecontent54_object id="obj_openembedded" version="1"
> comment="Check OpenEmbedded version">
> ++    <ind:filepath>/etc/os-release</ind:filepath>
> +     <ind:pattern operation="pattern
> match">^VERSION_ID=\"nodistro\.[0-9].$</ind:pattern>
> +     <ind:instance datatype="int">1</ind:instance>
> +   </ind:textfilecontent54_object>
> +--
> +2.24.3 (Apple Git-128)
> +
> diff --git
> a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
> b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
> new file mode 100644
> index 0000000..1e712f6
> --- /dev/null
> +++
> b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch
> @@ -0,0 +1,34 @@
> +From 037a12301968a56f0c7e492ea4a05d2eecbd4cc6 Mon Sep 17 00:00:00 2001
> +From: Jate Sujjavanich <jatedev@gmail.com>
> +Date: Fri, 8 Jan 2021 20:18:00 -0500
> +Subject: [PATCH 2/3] Fix missing openembedded from ssg/constants.py
> +
> +---
> + ssg/constants.py | 4 +++-
> + 1 file changed, 3 insertions(+), 1 deletion(-)
> +
> +diff --git a/ssg/constants.py b/ssg/constants.py
> +index fab7cda5d..2ca289f84 100644
> +--- a/ssg/constants.py
> ++++ b/ssg/constants.py
> +@@ -234,7 +234,8 @@ PRODUCT_TO_CPE_MAPPING = {
> + }
> +
> + MULTI_PLATFORM_LIST = ["rhel", "fedora", "rhosp", "rhv", "debian",
> "ubuntu",
> +-                       "wrlinux", "opensuse", "sle", "ol", "ocp",
> "example"]
> ++                       "wrlinux", "opensuse", "sle", "ol", "ocp",
> "example",
> ++                       "openembedded"]
> +
> + MULTI_PLATFORM_MAPPING = {
> +     "multi_platform_debian": ["debian8"],
> +@@ -249,6 +250,7 @@ MULTI_PLATFORM_MAPPING = {
> +     "multi_platform_sle": ["sle11", "sle12"],
> +     "multi_platform_ubuntu": ["ubuntu1404", "ubuntu1604", "ubuntu1804"],
> +     "multi_platform_wrlinux": ["wrlinux"],
> ++    "multi_platform_openembedded": ["openembedded"],
> + }
> +
> + RHEL_CENTOS_CPE_MAPPING = {
> +--
> +2.24.3 (Apple Git-128)
> +
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/
> scap-security-guide_git.bb
> b/meta-security-compliance/recipes-openscap/scap-security-guide/
> scap-security-guide_git.bb
> index 6e7180f..0617c56 100644
> --- a/meta-security-compliance/recipes-openscap/scap-security-guide/
> scap-security-guide_git.bb
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/
> scap-security-guide_git.bb
> @@ -7,6 +7,8 @@ SRC_URI = "git://
> github.com/akuster/scap-security-guide.git;branch=oe-0.1.44; \
>
> file://0001-fix-deprecated-instance-of-element.getchildren.patch \
>             file://0002-fix-deprecated-getiterator-function.patch \
>
> file://0003-fix-remaining-getchildren-and-getiterator-functions.patch \
> +
>  file://0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch \
> +
>  file://0002-Fix-missing-openembedded-from-ssg-constants.py.patch \
>            "
>  PV = "0.1.44+git${SRCPV}"
>
> --
> 2.25.1
>
>

--00000000000007893505bb3aa8a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ping<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sun, Jan 10, 2021 at 11:21 AM Jate Sujjavanich =
&lt;<a href=3D"mailto:jatedev@gmail.com" target=3D"_blank">jatedev@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Add patches to fix openembedded nodistro tests and openembedded build with=
in<br>
ssg metadata.<br>
<br>
Signed-Off-By: Jate Sujjavanich &lt;<a href=3D"mailto:jatedev@gmail.com" ta=
rget=3D"_blank">jatedev@gmail.com</a>&gt;<br>
---<br>
=C2=A0...c-file-check-tests-in-installed-OS-d.patch | 46 ++++++++++++++++++=
+<br>
=C2=A0...g-openembedded-from-ssg-constants.py.patch | 34 ++++++++++++++<br>
=C2=A0.../<a href=3D"http://scap-security-guide_git.bb" rel=3D"noreferrer" =
target=3D"_blank">scap-security-guide_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 +<br>
=C2=A03 files changed, 82 insertions(+)<br>
=C2=A0create mode 100644 meta-security-compliance/recipes-openscap/scap-sec=
urity-guide/files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d=
.patch<br>
=C2=A0create mode 100644 meta-security-compliance/recipes-openscap/scap-sec=
urity-guide/files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch=
<br>
<br>
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/=
files/0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch b/met=
a-security-compliance/recipes-openscap/scap-security-guide/files/0001-Fix-p=
latform-spec-file-check-tests-in-installed-OS-d.patch<br>
new file mode 100644<br>
index 0000000..60664a3<br>
--- /dev/null<br>
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0=
001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch<br>
@@ -0,0 +1,46 @@<br>
+From 2beb4bc83a157b21edb1a3fef295cd4cced467df Mon Sep 17 00:00:00 2001<br>
+From: Jate Sujjavanich &lt;<a href=3D"mailto:jatedev@gmail.com" target=3D"=
_blank">jatedev@gmail.com</a>&gt;<br>
+Date: Thu, 7 Jan 2021 18:10:01 -0500<br>
+Subject: [PATCH 1/3] Fix platform spec, file check, tests in installed OS<=
br>
+ detect for openembedded<br>
+<br>
+Change platform to multi in openembedded installed check matching others<b=
r>
+and allowing compile of xml into oval<br>
+---<br>
+ shared/checks/oval/installed_OS_is_openembedded.xml | 11 ++++++-----<br>
+ 1 file changed, 6 insertions(+), 5 deletions(-)<br>
+<br>
+diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/=
checks/oval/installed_OS_is_openembedded.xml<br>
+index 763d17bcb..01df16b43 100644<br>
+--- a/shared/checks/oval/installed_OS_is_openembedded.xml<br>
++++ b/shared/checks/oval/installed_OS_is_openembedded.xml<br>
+@@ -1,11 +1,9 @@<br>
+-&lt;/def-group&gt;<br>
+-<br>
+ &lt;def-group&gt;<br>
+=C2=A0 =C2=A0&lt;definition class=3D&quot;inventory&quot; id=3D&quot;insta=
lled_OS_is_openembedded&quot; version=3D&quot;2&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0&lt;metadata&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;title&gt;OpenEmbedded&lt;/title&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;affected family=3D&quot;unix&quot;&gt;<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;platform&gt;OPENEMBEDDED&lt;/platform&gt;=
<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;platform&gt;multi_platform_all&lt;/platfo=
rm&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/affected&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;reference ref_id=3D&quot;cpe:/o:openembedde=
d:openembedded:0&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0source=3D&quot;CPE&quot; /&gt;<br>
+@@ -20,8 +18,11 @@<br>
+=C2=A0 =C2=A0 =C2=A0&lt;/criteria&gt;<br>
+=C2=A0 =C2=A0&lt;/definition&gt;<br>
+ <br>
+-=C2=A0 &lt;ind:textfilecontent54_object id=3D&quot;test_openembedded&quot=
; version=3D&quot;1&quot; comment=3D&quot;Check OPenEmbedded version&quot;&=
gt;<br>
+-=C2=A0 =C2=A0 &lt;ind:filepath&gt;/etc/os-release/ind:filepath&gt;<br>
++=C2=A0 &lt;ind:textfilecontent54_test check=3D&quot;all&quot; check_exist=
ence=3D&quot;at_least_one_exists&quot; comment=3D&quot;Check OpenEmbedded v=
ersion&quot; id=3D&quot;test_openembedded&quot; version=3D&quot;1&quot;&gt;=
<br>
++=C2=A0 =C2=A0 &lt;ind:object object_ref=3D&quot;obj_openembedded&quot; /&=
gt;<br>
++=C2=A0 &lt;/ind:textfilecontent54_test&gt;<br>
++=C2=A0 &lt;ind:textfilecontent54_object id=3D&quot;obj_openembedded&quot;=
 version=3D&quot;1&quot; comment=3D&quot;Check OpenEmbedded version&quot;&g=
t;<br>
++=C2=A0 =C2=A0 &lt;ind:filepath&gt;/etc/os-release&lt;/ind:filepath&gt;<br=
>
+=C2=A0 =C2=A0 =C2=A0&lt;ind:pattern operation=3D&quot;pattern match&quot;&=
gt;^VERSION_ID=3D\&quot;nodistro\.[0-9].$&lt;/ind:pattern&gt;<br>
+=C2=A0 =C2=A0 =C2=A0&lt;ind:instance datatype=3D&quot;int&quot;&gt;1&lt;/i=
nd:instance&gt;<br>
+=C2=A0 =C2=A0&lt;/ind:textfilecontent54_object&gt;<br>
+-- <br>
+2.24.3 (Apple Git-128)<br>
+<br>
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/=
files/0002-Fix-missing-openembedded-from-ssg-constants.py.patch b/meta-secu=
rity-compliance/recipes-openscap/scap-security-guide/files/0002-Fix-missing=
-openembedded-from-ssg-constants.py.patch<br>
new file mode 100644<br>
index 0000000..1e712f6<br>
--- /dev/null<br>
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0=
002-Fix-missing-openembedded-from-ssg-constants.py.patch<br>
@@ -0,0 +1,34 @@<br>
+From 037a12301968a56f0c7e492ea4a05d2eecbd4cc6 Mon Sep 17 00:00:00 2001<br>
+From: Jate Sujjavanich &lt;<a href=3D"mailto:jatedev@gmail.com" target=3D"=
_blank">jatedev@gmail.com</a>&gt;<br>
+Date: Fri, 8 Jan 2021 20:18:00 -0500<br>
+Subject: [PATCH 2/3] Fix missing openembedded from ssg/constants.py<br>
+<br>
+---<br>
+ ssg/constants.py | 4 +++-<br>
+ 1 file changed, 3 insertions(+), 1 deletion(-)<br>
+<br>
+diff --git a/ssg/constants.py b/ssg/constants.py<br>
+index fab7cda5d..2ca289f84 100644<br>
+--- a/ssg/constants.py<br>
++++ b/ssg/constants.py<br>
+@@ -234,7 +234,8 @@ PRODUCT_TO_CPE_MAPPING =3D {<br>
+ }<br>
+ <br>
+ MULTI_PLATFORM_LIST =3D [&quot;rhel&quot;, &quot;fedora&quot;, &quot;rhos=
p&quot;, &quot;rhv&quot;, &quot;debian&quot;, &quot;ubuntu&quot;,<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;wrlinux&quot;, &quot;opensuse&quot;, &quot;sle&quot;, &quot=
;ol&quot;, &quot;ocp&quot;, &quot;example&quot;]<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;wrlinux&quot;, &quot;opensuse&quot;, &quot;sle&quot;, &quot=
;ol&quot;, &quot;ocp&quot;, &quot;example&quot;,<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;openembedded&quot;]<br>
+ <br>
+ MULTI_PLATFORM_MAPPING =3D {<br>
+=C2=A0 =C2=A0 =C2=A0&quot;multi_platform_debian&quot;: [&quot;debian8&quot=
;],<br>
+@@ -249,6 +250,7 @@ MULTI_PLATFORM_MAPPING =3D {<br>
+=C2=A0 =C2=A0 =C2=A0&quot;multi_platform_sle&quot;: [&quot;sle11&quot;, &q=
uot;sle12&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0&quot;multi_platform_ubuntu&quot;: [&quot;ubuntu1404&q=
uot;, &quot;ubuntu1604&quot;, &quot;ubuntu1804&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0&quot;multi_platform_wrlinux&quot;: [&quot;wrlinux&quo=
t;],<br>
++=C2=A0 =C2=A0 &quot;multi_platform_openembedded&quot;: [&quot;openembedde=
d&quot;],<br>
+ }<br>
+ <br>
+ RHEL_CENTOS_CPE_MAPPING =3D {<br>
+-- <br>
+2.24.3 (Apple Git-128)<br>
+<br>
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/=
<a href=3D"http://scap-security-guide_git.bb" rel=3D"noreferrer" target=3D"=
_blank">scap-security-guide_git.bb</a> b/meta-security-compliance/recipes-o=
penscap/scap-security-guide/<a href=3D"http://scap-security-guide_git.bb" r=
el=3D"noreferrer" target=3D"_blank">scap-security-guide_git.bb</a><br>
index 6e7180f..0617c56 100644<br>
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/<a href=
=3D"http://scap-security-guide_git.bb" rel=3D"noreferrer" target=3D"_blank"=
>scap-security-guide_git.bb</a><br>
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/<a href=
=3D"http://scap-security-guide_git.bb" rel=3D"noreferrer" target=3D"_blank"=
>scap-security-guide_git.bb</a><br>
@@ -7,6 +7,8 @@ SRC_URI =3D &quot;git://<a href=3D"http://github.com/akuste=
r/scap-security-guide.git;branch=3Doe-0.1.44" rel=3D"noreferrer" target=3D"=
_blank">github.com/akuster/scap-security-guide.git;branch=3Doe-0.1.44</a>; =
\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-fix-deprecated-instan=
ce-of-element.getchildren.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0002-fix-deprecated-getite=
rator-function.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0003-fix-remaining-getchil=
dren-and-getiterator-functions.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Fix-platform-spec-fil=
e-check-tests-in-installed-OS-d.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0002-Fix-missing-openembed=
ded-from-ssg-constants.py.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0PV =3D &quot;0.1.44+git${SRCPV}&quot;<br>
<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div>

--00000000000007893505bb3aa8a0--
