Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4BE3E00A9A; Tue, 11 Aug 2015 04:15:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3849AE00A92
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 04:15:27 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so198192035ioe.3
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 04:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=As+W0GKa80OFA+go9UHDtqJq0KX69o+OiUEkiuiqius=;
	b=rvEOMRDgpjp9fTwbyS+2xqWKEpLUnWR2xihUfuN+xFWFM2i7bOGgSVIf+83pl5gFe5
	9MeNlHevmTuqkHOAvfWl9HNyyTQhUSxkw4vI1t3wXURBBL7oLJTT3dRx0DvFelsnOR5a
	E2YZ2tiqJl2ivvSBnkHJdY3Mp2wOqHKzuBlVUmSpgrzDjYIHl9Q4DcdQa4H2vnQh9IwG
	59XzLTN9dDcvBe1fXsdqbz4VacUluPXnXXaYePfbxrQj0k7sh/lvi0jxMOZBQvACP6SD
	e9vaVSX88x7v5ZMs2WETY3tSehT90EQiwPRjMT75h1em5RsziMD6hW4IBcnj9/b5AyOT
	nM3g==
MIME-Version: 1.0
X-Received: by 10.107.128.28 with SMTP id b28mr27255825iod.84.1439291726848;
	Tue, 11 Aug 2015 04:15:26 -0700 (PDT)
Received: by 10.50.157.34 with HTTP; Tue, 11 Aug 2015 04:15:26 -0700 (PDT)
In-Reply-To: <1439271436-32621-1-git-send-email-liezhi.yang@windriver.com>
References: <1439271436-32621-1-git-send-email-liezhi.yang@windriver.com>
Date: Tue, 11 Aug 2015 16:45:26 +0530
Message-ID: <CALwQErpPD6pxceWxkOec1g5u7Qu5rHv3VJzb+yFqyMFJ4KQXGg@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] [PATCH] audit: remove add-system-call-table-for-ARM.patch
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
X-List-Received-Date: Tue, 11 Aug 2015 11:15:30 -0000
Content-Type: multipart/alternative; boundary=001a113f9a621b680c051d0738f3

--001a113f9a621b680c051d0738f3
Content-Type: text/plain; charset=UTF-8

Thanks for an update.

Works for me too..

Thanks
Shrikant

On Tue, Aug 11, 2015 at 11:07 AM, Robert Yang <liezhi.yang@windriver.com>
wrote:

> There isn't lib/machinetabs.h any more, there isn't data structures like
> "static const char machine_strings", either.
>
> This fixed a do_patch error when arm.
>
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  .../audit/add-system-call-table-for-ARM.patch      |   46
> --------------------
>  recipes-security/audit/audit_2.4.3.bb              |    2 -
>  2 files changed, 48 deletions(-)
>  delete mode 100644
> recipes-security/audit/audit/add-system-call-table-for-ARM.patch
>
> diff --git
> a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
> b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
> deleted file mode 100644
> index ad94d11..0000000
> --- a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
> +++ /dev/null
> @@ -1,46 +0,0 @@
> -From 52ff74be2f01182ed9d4fcc3da059512fad63d72 Mon Sep 17 00:00:00 2001
> -From: Han Chao <chan@windriver.com>
> -Date: Thu, 27 Feb 2014 14:58:57 +0800
> -Subject: [PATCH] add system call table for ARM.
> -
> -This change enable audit system call on ARM.
> -Add arm System call table on machinetabs.h.
> -Audit system call need enable kernel config CONFIG_AUDITSYSCALL.
> -
> -Signed-off-by: Han Chao <chan@windriver.com>
> ----
> - lib/machinetabs.h |   11 ++++++-----
> - 1 file changed, 6 insertions(+), 5 deletions(-)
> -
> -diff --git a/lib/machinetabs.h b/lib/machinetabs.h
> -index ec2d033..1c2e284 100644
> ---- a/lib/machinetabs.h
> -+++ b/lib/machinetabs.h
> -@@ -1,10 +1,11 @@
> --/* This is a generated file, see Makefile.am for its inputs. */
> --static const char machine_strings[] =
> "i386\0i486\0i586\0i686\0ia64\0ppc\0ppc64\0s390\0s390x\0x86_64";
> -+/* Such is aways generated file, see Makefile.am for its inputs.
> -+ * But this version is not generated file, which is for ARM. */
> -+static const char machine_strings[] =
> "armeb\0armv5tejl\0armv5tel\0armv6l\0armv7l";
> - static const unsigned machine_s2i_s[] = {
> --      0,5,10,15,20,25,29,35,40,46,
> -+      0,6,16,25,32,
> - };
> - static const int machine_s2i_i[] = {
> --      0,0,0,0,2,4,3,6,5,1,
> -+      8,8,8,8,8,
> - };
> - static int machine_s2i(const char *s, int *value) {
> -       size_t len, i;
> -@@ -19,7 +20,7 @@ static int machine_s2i(const char *s, int *value) {
> -       }
> - }
> - static const unsigned machine_i2s_direct[] = {
> --      0,46,20,29,25,40,35,
> -+    39,85,59,68,64,
> - };
> - static const char *machine_i2s(int v) {
> -       return i2s_direct__(machine_strings, machine_i2s_direct, 0, 6, v);
> ---
> -1.7.9.5
> -
> diff --git a/recipes-security/audit/audit_2.4.3.bb
> b/recipes-security/audit/audit_2.4.3.bb
> index 233fb00..3f5026c 100644
> --- a/recipes-security/audit/audit_2.4.3.bb
> +++ b/recipes-security/audit/audit_2.4.3.bb
> @@ -20,8 +20,6 @@ SRC_URI = "
> http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
>  SRC_URI[md5sum] = "544d863af2016b76afd8d1691b251164"
>  SRC_URI[sha256sum] =
> "9c914704fecc602e143e37152f3efbab2469692684c1a8cc1b801c1b49c7abc6"
>
> -SRC_URI_append_arm = "file://add-system-call-table-for-ARM.patch"
> -
>  inherit autotools pythonnative update-rc.d systemd
>
>  UPDATERCPN = "auditd"
> --
> 1.7.9.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113f9a621b680c051d0738f3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks for an update. <br><br></div>Works f=
or me too.. <br><br></div>Thanks<br></div>Shrikant<br><div><div><div><div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 11, 20=
15 at 11:07 AM, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"mailto:liezhi.=
yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">There isn&#39;t lib/machinetab=
s.h any more, there isn&#39;t data structures like<br>
&quot;static const char machine_strings&quot;, either.<br>
<br>
This fixed a do_patch error when arm.<br>
<br>
Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com"=
>liezhi.yang@windriver.com</a>&gt;<br>
---<br>
=C2=A0.../audit/add-system-call-table-for-ARM.patch=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 =C2=A046 --------------------<br>
=C2=A0recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 2 -<br>
=C2=A02 files changed, 48 deletions(-)<br>
=C2=A0delete mode 100644 recipes-security/audit/audit/add-system-call-table=
-for-ARM.patch<br>
<br>
diff --git a/recipes-security/audit/audit/add-system-call-table-for-ARM.pat=
ch b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch<br>
deleted file mode 100644<br>
index ad94d11..0000000<br>
--- a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch<br>
+++ /dev/null<br>
@@ -1,46 +0,0 @@<br>
-From 52ff74be2f01182ed9d4fcc3da059512fad63d72 Mon Sep 17 00:00:00 2001<br>
-From: Han Chao &lt;<a href=3D"mailto:chan@windriver.com">chan@windriver.co=
m</a>&gt;<br>
-Date: Thu, 27 Feb 2014 14:58:57 +0800<br>
-Subject: [PATCH] add system call table for ARM.<br>
-<br>
-This change enable audit system call on ARM.<br>
-Add arm System call table on machinetabs.h.<br>
-Audit system call need enable kernel config CONFIG_AUDITSYSCALL.<br>
-<br>
-Signed-off-by: Han Chao &lt;<a href=3D"mailto:chan@windriver.com">chan@win=
driver.com</a>&gt;<br>
----<br>
- lib/machinetabs.h |=C2=A0 =C2=A011 ++++++-----<br>
- 1 file changed, 6 insertions(+), 5 deletions(-)<br>
-<br>
-diff --git a/lib/machinetabs.h b/lib/machinetabs.h<br>
-index ec2d033..1c2e284 100644<br>
---- a/lib/machinetabs.h<br>
-+++ b/lib/machinetabs.h<br>
-@@ -1,10 +1,11 @@<br>
--/* This is a generated file, see Makefile.am for its inputs. */<br>
--static const char machine_strings[] =3D &quot;i386\0i486\0i586\0i686\0ia6=
4\0ppc\0ppc64\0s390\0s390x\0x86_64&quot;;<br>
-+/* Such is aways generated file, see Makefile.am for its inputs.<br>
-+ * But this version is not generated file, which is for ARM. */<br>
-+static const char machine_strings[] =3D &quot;armeb\0armv5tejl\0armv5tel\=
0armv6l\0armv7l&quot;;<br>
- static const unsigned machine_s2i_s[] =3D {<br>
--=C2=A0 =C2=A0 =C2=A0 0,5,10,15,20,25,29,35,40,46,<br>
-+=C2=A0 =C2=A0 =C2=A0 0,6,16,25,32,<br>
- };<br>
- static const int machine_s2i_i[] =3D {<br>
--=C2=A0 =C2=A0 =C2=A0 0,0,0,0,2,4,3,6,5,1,<br>
-+=C2=A0 =C2=A0 =C2=A0 8,8,8,8,8,<br>
- };<br>
- static int machine_s2i(const char *s, int *value) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0size_t len, i;<br>
-@@ -19,7 +20,7 @@ static int machine_s2i(const char *s, int *value) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
- }<br>
- static const unsigned machine_i2s_direct[] =3D {<br>
--=C2=A0 =C2=A0 =C2=A0 0,46,20,29,25,40,35,<br>
-+=C2=A0 =C2=A0 39,85,59,68,64,<br>
- };<br>
- static const char *machine_i2s(int v) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return i2s_direct__(machine_strings, machine_i2=
s_direct, 0, 6, v);<br>
---<br>
-1.7.9.5<br>
-<br>
diff --git a/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=
=3D"noreferrer" target=3D"_blank">audit_2.4.3.bb</a> b/recipes-security/aud=
it/<a href=3D"http://audit_2.4.3.bb" rel=3D"noreferrer" target=3D"_blank">a=
udit_2.4.3.bb</a><br>
index 233fb00..3f5026c 100644<br>
--- a/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a><br>
+++ b/recipes-security/audit/<a href=3D"http://audit_2.4.3.bb" rel=3D"noref=
errer" target=3D"_blank">audit_2.4.3.bb</a><br>
@@ -20,8 +20,6 @@ SRC_URI =3D &quot;<a href=3D"http://people.redhat.com/sgr=
ubb/audit/audit-${PV}.tar.gz" rel=3D"noreferrer" target=3D"_blank">http://p=
eople.redhat.com/sgrubb/audit/audit-${PV}.tar.gz</a> \<br>
=C2=A0SRC_URI[md5sum] =3D &quot;544d863af2016b76afd8d1691b251164&quot;<br>
=C2=A0SRC_URI[sha256sum] =3D &quot;9c914704fecc602e143e37152f3efbab24696926=
84c1a8cc1b801c1b49c7abc6&quot;<br>
<br>
-SRC_URI_append_arm =3D &quot;file://add-system-call-table-for-ARM.patch&qu=
ot;<br>
-<br>
=C2=A0inherit autotools pythonnative update-rc.d systemd<br>
<br>
=C2=A0UPDATERCPN =3D &quot;auditd&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div></div></div></div></div>

--001a113f9a621b680c051d0738f3--
