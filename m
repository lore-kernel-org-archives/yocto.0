Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99077E0151B
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 21:12:40 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id 15so660352pdi.15
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 21:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=BmBL3hNXiIpgFXTyCeqO/L0MHEryKYvbvjIx6/FpVlQ=;
	b=bmm+l0tuP4PFTQVd7GEmRnD43YYop+MrHskYTVjEgbgMSuUOJUJBW+/384QPaqAAt0
	G51fsmKvJKGX/znqKJs535ql92jv/qNMwoTkiXtkFgExoiso+zHv1zhkWdJc26CYt5LP
	O45ywxTMMIkIdagoXa+LejBg+svjFFJiRtEl30M9WsajouDuKyajkJ+VvCp5ydxIUsZU
	+iehegr3WNJW9Q9eMCR4xjQ6FJWWUpX/wpcVnkAY0rht2mwr7RWXFphcu5fIOiXy3Sv2
	ahc2HXsNAwfL+NzvEF52rF367tTF+L05QADCG8bAJIxJIq2mWB+AxAFyAdVfFQqxwamP
	3rIw==
X-Received: by 10.66.88.38 with SMTP id bd6mr2963544pab.184.1367381560239;
	Tue, 30 Apr 2013 21:12:40 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id x2sm1313800pba.32.2013.04.30.21.12.38
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 30 Apr 2013 21:12:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1367378157-8574-1-git-send-email-Randy.MacLeod@windriver.com>
Date: Tue, 30 Apr 2013 21:12:35 -0700
Message-Id: <DAF195EB-C48B-48DC-A9C5-42A2D4D9F214@gmail.com>
References: <1367378157-8574-1-git-send-email-Randy.MacLeod@windriver.com>
To: Randy MacLeod <randy.macleod@windriver.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] libsemanage: drop flag: -Wno-unused-but-set-variable
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
X-List-Received-Date: Wed, 01 May 2013 04:12:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 30, 2013, at 8:15 PM, Randy MacLeod <randy.macleod@windriver.com> =
wrote:

> The flag: -Wno-unused-but-set-variable isn't supported on older
> versions of gcc such as gcc-4.1.2 which is the native compiler for
> RHEL-5.9. Drop this warning flag for both the native and target =
builds.


why drop from target build ?

>=20
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
> ...semanage-drop-Wno-unused-but-set-variable.patch |   17 =
+++++++++++++++++
> recipes-security/selinux/libsemanage_2.1.9.bb      |    6 ++++--
> recipes-security/selinux/libsemanage_git.bb        |    6 ++++--
> 3 files changed, 25 insertions(+), 4 deletions(-)
> create mode 100644 =
recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set-v=
ariable.patch
>=20
> diff --git =
a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set=
-variable.patch =
b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set=
-variable.patch
> new file mode 100644
> index 0000000..faf8fc5
> --- /dev/null
> +++ =
b/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-but-set=
-variable.patch
> @@ -0,0 +1,17 @@
> +Subject: libselinux: drop flag: -Wno-unused-but-set-variable
> +
> +Upstream status: inappropriate (older compilers only).
> +
> +Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> +
> +--- libsemanage-2.1.9.orig/src/Makefile
> ++++ libsemanage-2.1.9/src/Makefile
> +@@ -57,7 +57,7 @@
> + LOBJS=3D $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
> + CFLAGS ?=3D -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn =
-Wmissing-format-attribute
> +=20
> +-SWIG_CFLAGS +=3D -Wno-error -Wno-unused-but-set-variable =
-Wno-unused-variable -Wno-shadow \
> ++SWIG_CFLAGS +=3D -Wno-error -Wno-unused-variable -Wno-shadow \
> + 		-Wno-unused-parameter
> +=20
> + override CFLAGS +=3D -I../include -I$(INCLUDEDIR) -D_GNU_SOURCE=20
> diff --git a/recipes-security/selinux/libsemanage_2.1.9.bb =
b/recipes-security/selinux/libsemanage_2.1.9.bb
> index 0e0bc41..3b1d8db 100644
> --- a/recipes-security/selinux/libsemanage_2.1.9.bb
> +++ b/recipes-security/selinux/libsemanage_2.1.9.bb
> @@ -1,4 +1,4 @@
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> include selinux_20120924.inc
> include ${BPN}.inc
> @@ -11,4 +11,6 @@ SRC_URI[sha256sum] =3D =
"6f01d17f9751412f7b76e6e7daafeb2faf301b9bfeea83506160c81bec
> SRC_URI +=3D "\
> 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
> 	file://libsemanage-fix-path-len-limit.patch \
> -	file://libsemanage-fix-path-nologin.patch"
> +	file://libsemanage-fix-path-nologin.patch \
> +	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
> +	"
> diff --git a/recipes-security/selinux/libsemanage_git.bb =
b/recipes-security/selinux/libsemanage_git.bb
> index 562512c..b3819a0 100644
> --- a/recipes-security/selinux/libsemanage_git.bb
> +++ b/recipes-security/selinux/libsemanage_git.bb
> @@ -1,4 +1,4 @@
> -PR =3D "r4"
> +PR =3D "r5"
> PV =3D "2.1.6+git${SRCPV}"
>=20
> include selinux_git.inc
> @@ -10,4 +10,6 @@ SRC_URI +=3D =
"file://Fix-segfault-for-standard-policy.patch \
> 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
> 	file://libsemanage-semanage.conf-for-cross-compile.patch \
> 	file://libsemanage-fix-path-len-limit.patch \
> -	file://libsemanage-fix-path-nologin.patch"
> +	file://libsemanage-fix-path-nologin.patch \
> +	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
> +	"
> --=20
> 1.7.4.1
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


