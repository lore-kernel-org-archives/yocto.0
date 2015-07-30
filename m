Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCF13E00AAA; Thu, 30 Jul 2015 02:31:59 -0700 (PDT)
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
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B3EE00A5B
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:31:57 -0700 (PDT)
Received: by igk11 with SMTP id 11so7129979igk.1
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZvCAHEyIHaXxgoBhxF/tVsgUnLS2PZE44uREnJz9SlU=;
	b=zM7NJSlbgHTu1i7+iBXmNdRFNzLU+nBNmM6TgVixFbjuoqN3NZ2ecaV5EwgLgR0CvT
	hUZZNM3yNsWeEjgRPhI/6CjwpJ/dKvk9pLxY5kMqk3tUHBzMXOZXw+4zLenHeiCh7qkp
	ueoCTcteRZB0V9BhK8Rn30lyAdSVQlFvrXINnR8wRTnb8K2We0IEZ4g3gWtXKbtLeArQ
	LZgsNRs60Wv04goq0GrsYSL5s1Zu6FdFMUvm0fPofqdxTnU/yM+BYEvxLZe1W6x7eDon
	oONCynhwl1oQyBKIVvb9KTDj2IqIPfJL+/2ad51M3EXvje9HqmiH68CZtODXQPrV4Zrt
	qEYA==
MIME-Version: 1.0
X-Received: by 10.50.136.134 with SMTP id qa6mr3489212igb.26.1438248717003;
	Thu, 30 Jul 2015 02:31:57 -0700 (PDT)
Received: by 10.50.7.72 with HTTP; Thu, 30 Jul 2015 02:31:56 -0700 (PDT)
In-Reply-To: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
References: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
Date: Thu, 30 Jul 2015 15:01:56 +0530
Message-ID: <CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH v1] libpam: use wildcard for version and cleanup
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
X-List-Received-Date: Thu, 30 Jul 2015 09:31:59 -0000
Content-Type: multipart/alternative; boundary=089e0141a8dce0309a051c145f03

--089e0141a8dce0309a051c145f03
Content-Type: text/plain; charset=UTF-8

Hi,

This patch provides green build for core-image-selinux (meta-selinux:master
& poky:master) against libpam upgrade from 1.1.6 to 1.2.1,
image boots fine,but I am unable to login at target. I have prepared build
for qemuarm, does anyone else facing similar issue? please advice.

Observed the login issue appears even with disabled selinux support
(selinux=0).

Thanks
Shrikant Bobade

On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <shrikant_bobade@mentor.com>
>
> use wildcard for version: adopting libpam upgrade from 1.1.6 to 1.2.1,
> cleanup older recipe and remove patch sepermit-add-DESTDIR-prefix.patch
> since the changes already available with latest source.
>
> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
> ---
>  .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31
> --------------------
>  recipes-extended/pam/libpam_%.bbappend             |    3 ++
>  recipes-extended/pam/libpam_1.1.6.bbappend         |   10 -------
>  3 files changed, 3 insertions(+), 41 deletions(-)
>  delete mode 100644
> recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>  create mode 100644 recipes-extended/pam/libpam_%.bbappend
>  delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend
>
> diff --git a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> deleted file mode 100644
> index d48d386..0000000
> --- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -Subject: [PATCH] libpam: add missing DESTDIR prefix
> -
> -The DESTDIR prefix is missing, this will cause build failures for
> -mkdir /var/run/sepermit on the host.
> -
> -| mkdir -p /var/run/sepermit
> -| mkdir: cannot create directory `/var/run/sepermit': Permission denied
> -
> -Upstream-Status: Pending
> -
> -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
> ----
> - modules/pam_sepermit/Makefile.am |    2 +-
> - 1 files changed, 1 insertions(+), 1 deletions(-)
> -
> -diff --git a/modules/pam_sepermit/Makefile.am
> b/modules/pam_sepermit/Makefile.am
> -index cfc5594..bc82275 100644
> ---- a/modules/pam_sepermit/Makefile.am
> -+++ b/modules/pam_sepermit/Makefile.am
> -@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
> -   securelib_LTLIBRARIES = pam_sepermit.la
> -
> - install-data-local:
> --      mkdir -p $(sepermitlockdir)
> -+      mkdir -p $(DESTDIR)$(sepermitlockdir)
> - endif
> - if ENABLE_REGENERATE_MAN
> - noinst_DATA = README pam_sepermit.8 sepermit.conf.5
> ---
> -1.7.5.4
> -
> diff --git a/recipes-extended/pam/libpam_%.bbappend
> b/recipes-extended/pam/libpam_%.bbappend
> new file mode 100644
> index 0000000..adcf938
> --- /dev/null
> +++ b/recipes-extended/pam/libpam_%.bbappend
> @@ -0,0 +1,3 @@
> +inherit enable-selinux
> +
> +RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
> diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend
> b/recipes-extended/pam/libpam_1.1.6.bbappend
> deleted file mode 100644
> index 71acecc..0000000
> --- a/recipes-extended/pam/libpam_1.1.6.bbappend
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -FILESPATH_append := ":${@base_set_filespath(['${THISDIR}/${PN}'], d)}"
> -
> -SRC_URI += "file://sepermit-add-DESTDIR-prefix.patch"
> -
> -PR .= ".4"
> -
> -inherit enable-selinux
> -
> -RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
> --
> 1.7.9.5
>
>

--089e0141a8dce0309a051c145f03
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br></div><div><br>This patch provides g=
reen build for core-image-selinux (meta-selinux:master &amp; poky:master) a=
gainst libpam upgrade from 1.1.6 to 1.2.1,<br></div><div>image boots fine,b=
ut I am unable to login at target. I have prepared build for qemuarm, does =
anyone else facing similar issue? please advice. <br><br></div><div>Observe=
d the login issue appears even with disabled selinux support (selinux=3D0).=
 <br></div><br></div>Thanks<br></div>Shrikant Bobade<br><div><div><div><div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 30, =
2015 at 2:55 PM, Shrikant Bobade <span dir=3D"ltr">&lt;<a href=3D"mailto:bo=
badeshrikant@gmail.com" target=3D"_blank">bobadeshrikant@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div =
class=3D"h5">From: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_bobade@me=
ntor.com">shrikant_bobade@mentor.com</a>&gt;<br>
<br>
use wildcard for version: adopting libpam upgrade from 1.1.6 to 1.2.1,<br>
cleanup older recipe and remove patch sepermit-add-DESTDIR-prefix.patch<br>
since the changes already available with latest source.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:shrikant_bobade@mentor=
.com">shrikant_bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0.../pam/libpam/sepermit-add-DESTDIR-prefix.patch=C2=A0 =C2=A0|=C2=A0 =
=C2=A031 --------------------<br>
=C2=A0recipes-extended/pam/libpam_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 3 ++<br>
=C2=A0recipes-extended/pam/libpam_1.1.6.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A010 -------<br>
=C2=A03 files changed, 3 insertions(+), 41 deletions(-)<br>
=C2=A0delete mode 100644 recipes-extended/pam/libpam/sepermit-add-DESTDIR-p=
refix.patch<br>
=C2=A0create mode 100644 recipes-extended/pam/libpam_%.bbappend<br>
=C2=A0delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend<br>
<br>
diff --git a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch =
b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch<br>
deleted file mode 100644<br>
index d48d386..0000000<br>
--- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch<br>
+++ /dev/null<br>
@@ -1,31 +0,0 @@<br>
-Subject: [PATCH] libpam: add missing DESTDIR prefix<br>
-<br>
-The DESTDIR prefix is missing, this will cause build failures for<br>
-mkdir /var/run/sepermit on the host.<br>
-<br>
-| mkdir -p /var/run/sepermit<br>
-| mkdir: cannot create directory `/var/run/sepermit&#39;: Permission denie=
d<br>
-<br>
-Upstream-Status: Pending<br>
-<br>
-Signed-off-by: Xin Ouyang &lt;<a href=3D"mailto:Xin.Ouyang@windriver.com">=
Xin.Ouyang@windriver.com</a>&gt;<br>
----<br>
- modules/pam_sepermit/Makefile.am |=C2=A0 =C2=A0 2 +-<br>
- 1 files changed, 1 insertions(+), 1 deletions(-)<br>
-<br>
-diff --git a/modules/pam_sepermit/Makefile.am b/modules/pam_sepermit/Makef=
ile.am<br>
-index cfc5594..bc82275 100644<br>
---- a/modules/pam_sepermit/Makefile.am<br>
-+++ b/modules/pam_sepermit/Makefile.am<br>
-@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX<br>
-=C2=A0 =C2=A0securelib_LTLIBRARIES =3D <a href=3D"http://pam_sepermit.la" =
rel=3D"noreferrer" target=3D"_blank">pam_sepermit.la</a><br>
-<br>
- install-data-local:<br>
--=C2=A0 =C2=A0 =C2=A0 mkdir -p $(sepermitlockdir)<br>
-+=C2=A0 =C2=A0 =C2=A0 mkdir -p $(DESTDIR)$(sepermitlockdir)<br>
- endif<br>
- if ENABLE_REGENERATE_MAN<br>
- noinst_DATA =3D README pam_sepermit.8 sepermit.conf.5<br>
---<br>
-1.7.5.4<br>
-<br>
diff --git a/recipes-extended/pam/libpam_%.bbappend b/recipes-extended/pam/=
libpam_%.bbappend<br>
new file mode 100644<br>
index 0000000..adcf938<br>
--- /dev/null<br>
+++ b/recipes-extended/pam/libpam_%.bbappend<br>
@@ -0,0 +1,3 @@<br>
+inherit enable-selinux<br>
+<br>
+RDEPENDS_${PN}-runtime +=3D &quot;${@target_selinux(d, &#39;pam-plugin-sel=
inux&#39;)}&quot;<br>
diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend b/recipes-extended/=
pam/libpam_1.1.6.bbappend<br>
deleted file mode 100644<br>
index 71acecc..0000000<br>
--- a/recipes-extended/pam/libpam_1.1.6.bbappend<br>
+++ /dev/null<br>
@@ -1,10 +0,0 @@<br>
-#FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
-FILESPATH_append :=3D &quot;:${@base_set_filespath([&#39;${THISDIR}/${PN}&=
#39;], d)}&quot;<br>
-<br>
-SRC_URI +=3D &quot;file://sepermit-add-DESTDIR-prefix.patch&quot;<br>
-<br>
-PR .=3D &quot;.4&quot;<br>
-<br>
-inherit enable-selinux<br>
-<br>
-RDEPENDS_${PN}-runtime +=3D &quot;${@target_selinux(d, &#39;pam-plugin-sel=
inux&#39;)}&quot;<br>
--<br>
1.7.9.5<br>
<br>
</div></div></blockquote></div><br></div></div></div></div></div></div>

--089e0141a8dce0309a051c145f03--
