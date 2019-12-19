Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.174.1576776785289823954
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 09:33:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deserted-net.20150623.gappssmtp.com header.s=20150623 header.b=pe3ocNCM;
 spf=none, err=permanent DNS error (domain: deserted.net, ip: 140.211.169.56, mailfrom: joe@deserted.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3AD6E01283; Thu, 19 Dec 2019 09:33:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EAF4E0078F
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 09:33:02 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id s15so5578049iln.1
        for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 09:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=deserted-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f6hy5C7ga73fT0x9Uho0jgzbZcVQPZXjyR25R3a8yd0=;
        b=pe3ocNCMbNvhfH0BDaNgBBtzxUY+tsdsNmV0bSHYRlTEym7wkcszGh2T8DnRFbGr8/
         ehX1WLQiT4b9K7kdSv7boUHbLll4TFHtI67+9hR8MaVaY3XkCrUm7hMBrcF1J3nzrYM8
         pN5TuQynlRZrlX4f/qRfSEw2s7PfHGXHiD2/0cHToWyVJW66QJNgGRdsqwRrs6Kp4tCF
         9uvOf/RGLGIWOoUh29YdqssXPNCSKLD6m8RMPrKJLb6cWs/iu0NHGpNHKR6RcKF7vmrQ
         jpHSHOuIVGc6pDfwFbtlhEPMXH+I9JxlTJkqLfwdzqk2HH2ixP4SvoSc4mP4UYzZn1Tc
         C8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f6hy5C7ga73fT0x9Uho0jgzbZcVQPZXjyR25R3a8yd0=;
        b=dg6QZrkpYz736jb/B1s57QQcUshUOYy09wC5qQYAqO7GyAPcJqExqP7CFSLz7pQlIf
         /DJJDyXYoCcDvzBPGTTn75r+vmFfYgvR0EQguqSwakyEew/uqMV5cYNt2OGiIZPnIl+g
         diXsl5eQV8QdnmY8S5GqBU6PIJXLXRokRsFiT3MVoigpfQwvsQW1bu+NQRFi+dvaQVZp
         7bSMiS/3mFZ/L450NnIFSs03FCRi4f5ZIs8AlOK/A0zrrBrilRyAx785Ap3hC4Pt9UqA
         y/Ok1GRk1Y9EsmJNlOUTwwj1BK1eNsWak10lNto08arjkPBkJXVQ6bPcUOZsZJLOov5j
         35OQ==
X-Gm-Message-State: APjAAAVBXKZBvTLPTFlAZKTWHMioP9DGsjntpr6PfnKbaQb/GrfLDinP
	enUVjY9qeRjAPfYYCWkAMipdtgBREu2q+1ebk8wOAQ==
X-Google-Smtp-Source: APXvYqwtVfxJDEpoDq5ZSEXIfLUBYdW/oEyldCp8cDE+zX0T8tST2pt0GrR1xVRays4dzQp6vU+R92oh9GT0/31thrY=
X-Received: by 2002:a92:1648:: with SMTP id r69mr8364972ill.43.1576776781503;
 Thu, 19 Dec 2019 09:33:01 -0800 (PST)
MIME-Version: 1.0
References: <20191114014901.22862-1-yi.zhao@windriver.com> <20191114014901.22862-19-yi.zhao@windriver.com>
In-Reply-To: <20191114014901.22862-19-yi.zhao@windriver.com>
From: "Joe MacDonald" <joe@deserted.net>
Date: Thu, 19 Dec 2019 12:32:50 -0500
Message-ID: <CANBf+V10oC==_F_R1wgr7uXrrDW=AvpM-b1S82mrG+7mN-Kxvg@mail.gmail.com>
Subject: Re: [meta-selinux][PATCH 18/19] setools: upgrade 4.1.1 -> 4.2.2
To: Yi Zhao <yi.zhao@windriver.com>
Cc: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f3b699059a11f306"

--000000000000f3b699059a11f306
Content-Type: text/plain; charset="UTF-8"

Hi Yi,

I've merged the rest of this series, but this one fails to apply.  It looks
like your tree didn't contain:

commit 5fd3c5b71edb99659aeb5cb5903088d84517382e (relabel, master)
Author: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
Date:   Tue Nov 5 14:47:09 2019 +0000

    autorelabel: only selinux-autorelabel need autorelabel file

    With previous implementation, several packages provided
     .autorelabel file while only selinux-autorelabel manage it.
    If there is several packages which try to install .autorelabel
    file, an issue occur during installation of packagegroup-core-selinux.

    Signed-off-by: Christophe Priouzeau <christophe.priouzeau@st.com>
    Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>

Can you take a look at it and verify which parts of the change are still
necessary given the above change?

Thanks.
-J.

On Wed, Nov 13, 2019 at 8:50 PM Yi Zhao <yi.zhao@windriver.com> wrote:

> * Switch to python3
>
> * Drop patches:
>   Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
>   setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  ...e-with-GCC-7-due-to-possible-truncat.patch | 105 ------------------
>  ...ss-compiling-errors-for-powerpc-mips.patch |  35 ------
>  .../setools4-fixes-for-cross-compiling.patch  |  34 +++---
>  .../{setools_4.1.1.bb => setools_4.2.2.bb}    |  14 +--
>  4 files changed, 19 insertions(+), 169 deletions(-)
>  delete mode 100644
> recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
>  delete mode 100644
> recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
>  rename recipes-security/setools/{setools_4.1.1.bb => setools_4.2.2.bb}
> (61%)
>
> diff --git
> a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
> b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
> deleted file mode 100644
> index a5af041..0000000
> ---
> a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
> +++ /dev/null
> @@ -1,105 +0,0 @@
> -Upstream-Status: Backport [
> https://github.com/TresysTechnology/setools/commit/e41adf0]
> -
> -Signed-off-by: Kai Kang <kai.kang@windriver.com>
> -
> -From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17 00:00:00 2001
> -From: Laurent Bigonville <bigon@bigon.be>
> -Date: Tue, 26 Sep 2017 15:15:30 +0200
> -Subject: [PATCH] Fix build failure with GCC 7 due to possible truncation
> of
> - snprintf output
> -
> -setools fails to build under GCC7 -Wformat -Werror with the following
> error:
> -
> -x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall
> -Wstrict-prototypes -g -O2 -fdebug-prefix-map=/<<PKGBUILDDIR>>=.
> -fstack-protector-strong -Wformat -Werror=format-security -Wno-sign-compare
> -Wdate-time -D_FORTIFY_SOURCE=2 -fPIC -Ilibqpol -Ilibqpol/include
> -I/usr/include/python3.6m -c libqpol/policy_extend.c -o
> build/temp.linux-amd64-3.6/libqpol/policy_extend.o -Werror -Wextra
> -Waggregate-return -Wfloat-equal -Wformat -Wformat=2 -Winit-self
> -Wmissing-format-attribute -Wmissing-include-dirs -Wnested-externs
> -Wold-style-definition -Wpointer-arith -Wredundant-decls
> -Wstrict-prototypes -Wunknown-pragmas -Wwrite-strings
> -Wno-missing-field-initializers -Wno-unused-parameter -Wno-cast-qual
> -Wno-shadow -Wno-unreachable-code -fno-exceptions
> -libqpol/policy_extend.c: In function 'policy_extend':
> -libqpol/policy_extend.c:161:27: error: '%04zd' directive output may be
> truncated writing between 4 and 10 bytes into a region of size 5
> [-Werror=format-truncation=]
> -    snprintf(buff, 9, "@ttr%04zd", i + 1);
> -                           ^~~~~
> -libqpol/policy_extend.c:161:22: note: directive argument in the range [1,
> 4294967295]
> -    snprintf(buff, 9, "@ttr%04zd", i + 1);
> -                      ^~~~~~~~~~~
> -
> -Increase the size of the buffer to avoid collisions
> -
> -Closes: https://github.com/TresysTechnology/setools/issues/174
> -Signed-off-by: Laurent Bigonville <bigon@bigon.be>
> ----
> - libqpol/policy_extend.c | 16 ++++++++--------
> - 1 file changed, 8 insertions(+), 8 deletions(-)
> -
> -diff --git a/libqpol/policy_extend.c b/libqpol/policy_extend.c
> -index 742819b..739e184 100644
> ---- a/libqpol/policy_extend.c
> -+++ b/libqpol/policy_extend.c
> -@@ -110,7 +110,7 @@ static int
> qpol_policy_remove_bogus_aliases(qpol_policy_t * policy)
> -  *  Builds data for the attributes and inserts them into the policydb.
> -  *  This function modifies the policydb. Names created for attributes
> -  *  are of the form @ttr<value> where value is the value of the attribute
> -- *  as a four digit number (prepended with 0's as needed).
> -+ *  as a ten digit number (prepended with 0's as needed).
> -  *  @param policy The policy from which to read the attribute map and
> -  *  create the type data for the attributes. This policy will be altered
> -  *  by this function.
> -@@ -125,7 +125,7 @@ static int
> qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
> -       uint32_t bit = 0, count = 0;
> -       ebitmap_node_t *node = NULL;
> -       type_datum_t *tmp_type = NULL, *orig_type;
> --      char *tmp_name = NULL, buff[10];
> -+      char *tmp_name = NULL, buff[16];
> -       int error = 0, retv;
> -
> -       INFO(policy, "%s", "Generating attributes for policy. (Step 4 of
> 5)");
> -@@ -137,7 +137,7 @@ static int
> qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
> -
> -       db = &policy->p->p;
> -
> --      memset(&buff, 0, 10 * sizeof(char));
> -+      memset(&buff, 0, 16 * sizeof(char));
> -
> -       for (i = 0; i < db->p_types.nprim; i++) {
> -               /* skip types */
> -@@ -158,7 +158,7 @@ static int
> qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
> -                * with this attribute */
> -               /* Does not exist */
> -               if (db->p_type_val_to_name[i] == NULL){
> --                      snprintf(buff, 9, "@ttr%04zd", i + 1);
> -+                      snprintf(buff, 15, "@ttr%010zd", i + 1);
> -                       tmp_name = strdup(buff);
> -                       if (!tmp_name) {
> -                               error = errno;
> -@@ -240,7 +240,7 @@ static int
> qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
> -  *  Builds data for empty attributes and inserts them into the policydb.
> -  *  This function modifies the policydb. Names created for the attributes
> -  *  are of the form @ttr<value> where value is the value of the attribute
> -- *  as a four digit number (prepended with 0's as needed).
> -+ *  as a ten digit number (prepended with 0's as needed).
> -  *  @param policy The policy to which to add type data for attributes.
> -  *  This policy will be altered by this function.
> -  *  @return Returns 0 on success and < 0 on failure; if the call fails,
> -@@ -251,7 +251,7 @@ static int
> qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
> - static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
> - {
> -       policydb_t *db = NULL;
> --      char *tmp_name = NULL, buff[10];
> -+      char *tmp_name = NULL, buff[16];
> -       int error = 0, retv = 0;
> -       ebitmap_t tmp_bmap = { NULL, 0 };
> -       type_datum_t *tmp_type = NULL;
> -@@ -265,12 +265,12 @@ static int
> qpol_policy_fill_attr_holes(qpol_policy_t * policy)
> -
> -       db = &policy->p->p;
> -
> --      memset(&buff, 0, 10 * sizeof(char));
> -+      memset(&buff, 0, 16 * sizeof(char));
> -
> -       for (i = 0; i < db->p_types.nprim; i++) {
> -               if (db->type_val_to_struct[i])
> -                       continue;
> --              snprintf(buff, 9, "@ttr%04zd", i + 1);
> -+              snprintf(buff, 15, "@ttr%010zd", i + 1);
> -               tmp_name = strdup(buff);
> -               if (!tmp_name) {
> -                       error = errno;
> ---
> -2.20.1
> -
> diff --git
> a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
> b/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
> deleted file mode 100644
> index 9a6b818..0000000
> ---
> a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17 00:00:00 2001
> -From: Wenzong Fan <wenzong.fan@windriver.com>
> -Date: Fri, 17 Feb 2017 08:57:35 +0000
> -Subject: [meta-selinux][PATCH] setools4: fix cross-compiling errors for
> powerpc, mips
> -
> -Fix build errors:
> -| libqpol/policy.c: In function 'qpol_binpol_version':
> -| libqpol/policy.c:95:24: error: implicit declaration of function
> 'bswap_32' [-Werror=implicit-function-declaration]
> -| #define le32_to_cpu(x) bswap_32(x)
> -
> -Upstream-Status: Pending
> -
> -Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ----
> - libqpol/policy.c | 4 ++++
> - 1 file changed, 4 insertions(+)
> -
> -diff --git a/libqpol/policy.c b/libqpol/policy.c
> -index ae3acb5..b5b87f9 100644
> ---- a/libqpol/policy.c
> -+++ b/libqpol/policy.c
> -@@ -45,6 +45,10 @@
> - # include <asm/types.h>
> - #endif
> -
> -+#if defined(_ARCH_PPC) || defined(mips)
> -+#include <byteswap.h>
> -+#endif
> -+
> - #include <sepol/debug.h>
> - #include <sepol/handle.h>
> - #include <sepol/policydb/flask_types.h>
> ---
> -2.11.0
> -
> diff --git
> a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
> b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
> index 5c43c49..51c7603 100644
> ---
> a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
> +++
> b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.patch
> @@ -1,7 +1,7 @@
> -From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17 00:00:00 2001
> +From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17 00:00:00 2001
>  From: Wenzong Fan <wenzong.fan@windriver.com>
>  Date: Tue, 14 Feb 2017 06:32:35 +0000
> -Subject: [meta-selinux][PATCH] setools4: fixes for cross compiling
> +Subject: [PATCH] setools4: fixes for cross compiling
>
>  * search libsepol from $STAGING_LIBDIR
>  * fix manual install path as '/usr/share/man/man1'
> @@ -9,32 +9,24 @@ Subject: [meta-selinux][PATCH] setools4: fixes for cross
> compiling
>  Upstream-Status: Inappropriate [embedded specific]
>
>  Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>  ---
> - setup.py | 4 ++--
> - 1 file changed, 2 insertions(+), 2 deletions(-)
> + setup.py | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
>
>  diff --git a/setup.py b/setup.py
> -index 2ca44c9..300ff70 100644
> +index ac8a876..df7ebbc 100644
>  --- a/setup.py
>  +++ b/setup.py
> -@@ -77,7 +77,7 @@ class BuildExtCommand(build_ext):
> -         build_ext.run(self)
> +@@ -78,7 +78,7 @@ class QtHelpCommand(Command):
>
>
> --base_lib_dirs = ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
> -+base_lib_dirs = [os.environ["STAGING_LIBDIR"]]
> - include_dirs = ['libqpol', 'libqpol/include']
> + # Library linkage
> +-lib_dirs = ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
> ++lib_dirs = [os.environ["STAGING_LIBDIR"]]
> + include_dirs = []
>
> - try:
> -@@ -182,7 +182,7 @@ setup(name='setools',
> -                 'build_qhc': QtHelpCommand},
> -       packages=['setools', 'setools.diff', 'setools.policyrep',
> 'setoolsgui', 'setoolsgui.apol'],
> -       scripts=['apol', 'sediff', 'seinfo', 'seinfoflow', 'sesearch',
> 'sedta'],
> --      data_files=[(join(sys.prefix, 'share/man/man1'),
> glob.glob("man/*.1"))],
> -+      data_files=[('/usr/share/man/man1', glob.glob("man/*.1"))],
> -       package_data={'': ['*.ui', '*.qhc', '*.qch'], 'setools':
> ['perm_map']},
> -       ext_modules=ext_py_mods,
> -       test_suite='tests',
> + with suppress(KeyError):
>  --
> -2.13.0
> +2.7.4
>
> diff --git a/recipes-security/setools/setools_4.1.1.bb
> b/recipes-security/setools/setools_4.2.2.bb
> similarity index 61%
> rename from recipes-security/setools/setools_4.1.1.bb
> rename to recipes-security/setools/setools_4.2.2.bb
> index db529f4..6e5a950 100644
> --- a/recipes-security/setools/setools_4.1.1.bb
> +++ b/recipes-security/setools/setools_4.2.2.bb
> @@ -9,26 +9,24 @@ SECTION = "base"
>  LICENSE = "GPLv2 & LGPLv2.1"
>
>  S = "${WORKDIR}/git"
> -SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.1
> <http://github.com/SELinuxProject/$%7BBPN%7D.git;branch=4.1> \
> +SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.2
> <http://github.com/SELinuxProject/$%7BBPN%7D.git;branch=4.2> \
>             file://setools4-fixes-for-cross-compiling.patch \
> -
>  file://setools4-fix-cross-compiling-errors-for-powerpc-mips.patch \
> -
>  file://Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch \
>  "
>
> -SRCREV = "e03617eb7ab5a035633bff66500b95d25232e331"
> +SRCREV = "15bffa7823b9a999f9d51533785ade18fe44df08"
>
>  LIC_FILES_CHKSUM =
> "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
>
>  file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
>
>  file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
>
> -DEPENDS += "bison-native flex-native swig-native python libsepol"
> +DEPENDS += "bison-native flex-native swig-native python3
> python3-cython-native libsepol"
>
> -RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator
> python-setuptools \
> -                   python-logging python-json python-argparse
> libselinux-python"
> +RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
> +                   python3-logging python3-json libselinux-python"
>
>  RPROVIDES_${PN} += "${PN}-console"
>
> -inherit setuptools
> +inherit setuptools3
>
>  do_install_append() {
>         # Need PyQt5 support, disable gui tools
> --
> 2.17.1
>
>

-- 
Joe MacDonald
:wq

--000000000000f3b699059a11f306
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Yi,<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;ve merged the rest o=
f this series, but this one fails to apply.=C2=A0 It looks like your tree d=
idn&#39;t contain:</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">commit =
5fd3c5b71edb99659aeb5cb5903088d84517382e (relabel, master)</div><div dir=3D=
"ltr">Author: Christophe PRIOUZEAU &lt;<a href=3D"mailto:christophe.priouze=
au@st.com">christophe.priouzeau@st.com</a>&gt;</div><div dir=3D"ltr">Date:=
=C2=A0 =C2=A0Tue Nov 5 14:47:09 2019 +0000</div><div dir=3D"ltr"><br></div>=
<div dir=3D"ltr">=C2=A0 =C2=A0 autorelabel: only selinux-autorelabel need a=
utorelabel file</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =C2=
=A0 With previous implementation, several packages provided</div><div dir=
=3D"ltr">=C2=A0 =C2=A0 =C2=A0.autorelabel file while only selinux-autorelab=
el manage it.</div><div dir=3D"ltr">=C2=A0 =C2=A0 If there is several packa=
ges which try to install .autorelabel</div><div dir=3D"ltr">=C2=A0 =C2=A0 f=
ile, an issue occur during installation of packagegroup-core-selinux.</div>=
<div dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =C2=A0 Signed-off-by: Ch=
ristophe Priouzeau &lt;<a href=3D"mailto:christophe.priouzeau@st.com">chris=
tophe.priouzeau@st.com</a>&gt;</div><div dir=3D"ltr">=C2=A0 =C2=A0 Signed-o=
ff-by: Joe MacDonald &lt;<a href=3D"mailto:joe_macdonald@mentor.com">joe_ma=
cdonald@mentor.com</a>&gt;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>Can you take a look at it and verify which parts of the change are still n=
ecessary given the above change?</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">Thanks.</div><div dir=3D"ltr">-J.</div></div></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13,=
 2019 at 8:50 PM Yi Zhao &lt;<a href=3D"mailto:yi.zhao@windriver.com">yi.zh=
ao@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">* Switch to python3<br>
<br>
* Drop patches:<br>
=C2=A0 Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch<br>
=C2=A0 setools4-fix-cross-compiling-errors-for-powerpc-mips.patch<br>
<br>
Signed-off-by: Yi Zhao &lt;<a href=3D"mailto:yi.zhao@windriver.com" target=
=3D"_blank">yi.zhao@windriver.com</a>&gt;<br>
---<br>
=C2=A0...e-with-GCC-7-due-to-possible-truncat.patch | 105 -----------------=
-<br>
=C2=A0...ss-compiling-errors-for-powerpc-mips.patch |=C2=A0 35 ------<br>
=C2=A0.../setools4-fixes-for-cross-compiling.patch=C2=A0 |=C2=A0 34 +++---<=
br>
=C2=A0.../{<a href=3D"http://setools_4.1.1.bb" rel=3D"noreferrer" target=3D=
"_blank">setools_4.1.1.bb</a> =3D&gt; <a href=3D"http://setools_4.2.2.bb" r=
el=3D"noreferrer" target=3D"_blank">setools_4.2.2.bb</a>}=C2=A0 =C2=A0 |=C2=
=A0 14 +--<br>
=C2=A04 files changed, 19 insertions(+), 169 deletions(-)<br>
=C2=A0delete mode 100644 recipes-security/setools/setools/Fix-build-failure=
-with-GCC-7-due-to-possible-truncat.patch<br>
=C2=A0delete mode 100644 recipes-security/setools/setools/setools4-fix-cros=
s-compiling-errors-for-powerpc-mips.patch<br>
=C2=A0rename recipes-security/setools/{<a href=3D"http://setools_4.1.1.bb" =
rel=3D"noreferrer" target=3D"_blank">setools_4.1.1.bb</a> =3D&gt; <a href=
=3D"http://setools_4.2.2.bb" rel=3D"noreferrer" target=3D"_blank">setools_4=
.2.2.bb</a>} (61%)<br>
<br>
diff --git a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-=
due-to-possible-truncat.patch b/recipes-security/setools/setools/Fix-build-=
failure-with-GCC-7-due-to-possible-truncat.patch<br>
deleted file mode 100644<br>
index a5af041..0000000<br>
--- a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-=
possible-truncat.patch<br>
+++ /dev/null<br>
@@ -1,105 +0,0 @@<br>
-Upstream-Status: Backport [<a href=3D"https://github.com/TresysTechnology/=
setools/commit/e41adf0" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/TresysTechnology/setools/commit/e41adf0</a>]<br>
-<br>
-Signed-off-by: Kai Kang &lt;<a href=3D"mailto:kai.kang@windriver.com" targ=
et=3D"_blank">kai.kang@windriver.com</a>&gt;<br>
-<br>
-From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17 00:00:00 2001<br>
-From: Laurent Bigonville &lt;<a href=3D"mailto:bigon@bigon.be" target=3D"_=
blank">bigon@bigon.be</a>&gt;<br>
-Date: Tue, 26 Sep 2017 15:15:30 +0200<br>
-Subject: [PATCH] Fix build failure with GCC 7 due to possible truncation o=
f<br>
- snprintf output<br>
-<br>
-setools fails to build under GCC7 -Wformat -Werror with the following erro=
r:<br>
-<br>
-x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall -Wstrict-proto=
types -g -O2 -fdebug-prefix-map=3D/&lt;&lt;PKGBUILDDIR&gt;&gt;=3D. -fstack-=
protector-strong -Wformat -Werror=3Dformat-security -Wno-sign-compare -Wdat=
e-time -D_FORTIFY_SOURCE=3D2 -fPIC -Ilibqpol -Ilibqpol/include -I/usr/inclu=
de/python3.6m -c libqpol/policy_extend.c -o build/temp.linux-amd64-3.6/libq=
pol/policy_extend.o -Werror -Wextra -Waggregate-return -Wfloat-equal -Wform=
at -Wformat=3D2 -Winit-self -Wmissing-format-attribute -Wmissing-include-di=
rs -Wnested-externs -Wold-style-definition -Wpointer-arith -Wredundant-decl=
s -Wstrict-prototypes -Wunknown-pragmas -Wwrite-strings -Wno-missing-field-=
initializers -Wno-unused-parameter -Wno-cast-qual -Wno-shadow -Wno-unreacha=
ble-code -fno-exceptions<br>
-libqpol/policy_extend.c: In function &#39;policy_extend&#39;:<br>
-libqpol/policy_extend.c:161:27: error: &#39;%04zd&#39; directive output ma=
y be truncated writing between 4 and 10 bytes into a region of size 5 [-Wer=
ror=3Dformat-truncation=3D]<br>
-=C2=A0 =C2=A0 snprintf(buff, 9, &quot;@ttr%04zd&quot;, i + 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~<br>
-libqpol/policy_extend.c:161:22: note: directive argument in the range [1, =
4294967295]<br>
-=C2=A0 =C2=A0 snprintf(buff, 9, &quot;@ttr%04zd&quot;, i + 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^~~~~~~~~~~<br>
-<br>
-Increase the size of the buffer to avoid collisions<br>
-<br>
-Closes: <a href=3D"https://github.com/TresysTechnology/setools/issues/174"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/TresysTechnology/s=
etools/issues/174</a><br>
-Signed-off-by: Laurent Bigonville &lt;<a href=3D"mailto:bigon@bigon.be" ta=
rget=3D"_blank">bigon@bigon.be</a>&gt;<br>
----<br>
- libqpol/policy_extend.c | 16 ++++++++--------<br>
- 1 file changed, 8 insertions(+), 8 deletions(-)<br>
-<br>
-diff --git a/libqpol/policy_extend.c b/libqpol/policy_extend.c<br>
-index 742819b..739e184 100644<br>
---- a/libqpol/policy_extend.c<br>
-+++ b/libqpol/policy_extend.c<br>
-@@ -110,7 +110,7 @@ static int qpol_policy_remove_bogus_aliases(qpol_polic=
y_t * policy)<br>
-=C2=A0 *=C2=A0 Builds data for the attributes and inserts them into the po=
licydb.<br>
-=C2=A0 *=C2=A0 This function modifies the policydb. Names created for attr=
ibutes<br>
-=C2=A0 *=C2=A0 are of the form @ttr&lt;value&gt; where value is the value =
of the attribute<br>
-- *=C2=A0 as a four digit number (prepended with 0&#39;s as needed).<br>
-+ *=C2=A0 as a ten digit number (prepended with 0&#39;s as needed).<br>
-=C2=A0 *=C2=A0 @param policy The policy from which to read the attribute m=
ap and<br>
-=C2=A0 *=C2=A0 create the type data for the attributes. This policy will b=
e altered<br>
-=C2=A0 *=C2=A0 by this function.<br>
-@@ -125,7 +125,7 @@ static int qpol_policy_build_attrs_from_map(qpol_polic=
y_t * policy)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0uint32_t bit =3D 0, count =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_node_t *node =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL, *orig_type;<br=
>
--=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];<br>
-+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv;<br>
- <br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0INFO(policy, &quot;%s&quot;, &quot;Generating a=
ttributes for policy. (Step 4 of 5)&quot;);<br>
-@@ -137,7 +137,7 @@ static int qpol_policy_build_attrs_from_map(qpol_polic=
y_t * policy)<br>
- <br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &amp;policy-&gt;p-&gt;p;<br>
- <br>
--=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 10 * sizeof(char));<br>
-+=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 16 * sizeof(char));<br>
- <br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; db-&gt;p_types.nprim; i++)=
 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* skip types */<br=
>
-@@ -158,7 +158,7 @@ static int qpol_policy_build_attrs_from_map(qpol_polic=
y_t * policy)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * with this attrib=
ute */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Does not exist *=
/<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db-&gt;p_type_v=
al_to_name[i] =3D=3D NULL){<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 snprintf(buff, 9, &quot;@ttr%04zd&quot;, i + 1);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 snprintf(buff, 15, &quot;@ttr%010zd&quot;, i + 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0tmp_name =3D strdup(buff);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (!tmp_name) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error =3D errno;<br>
-@@ -240,7 +240,7 @@ static int qpol_policy_build_attrs_from_map(qpol_polic=
y_t * policy)<br>
-=C2=A0 *=C2=A0 Builds data for empty attributes and inserts them into the =
policydb.<br>
-=C2=A0 *=C2=A0 This function modifies the policydb. Names created for the =
attributes<br>
-=C2=A0 *=C2=A0 are of the form @ttr&lt;value&gt; where value is the value =
of the attribute<br>
-- *=C2=A0 as a four digit number (prepended with 0&#39;s as needed).<br>
-+ *=C2=A0 as a ten digit number (prepended with 0&#39;s as needed).<br>
-=C2=A0 *=C2=A0 @param policy The policy to which to add type data for attr=
ibutes.<br>
-=C2=A0 *=C2=A0 This policy will be altered by this function.<br>
-=C2=A0 *=C2=A0 @return Returns 0 on success and &lt; 0 on failure; if the =
call fails,<br>
-@@ -251,7 +251,7 @@ static int qpol_policy_build_attrs_from_map(qpol_polic=
y_t * policy)<br>
- static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)<br>
- {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0policydb_t *db =3D NULL;<br>
--=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];<br>
-+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_t tmp_bmap =3D { NULL, 0 };<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL;<br>
-@@ -265,12 +265,12 @@ static int qpol_policy_fill_attr_holes(qpol_policy_t=
 * policy)<br>
- <br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &amp;policy-&gt;p-&gt;p;<br>
- <br>
--=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 10 * sizeof(char));<br>
-+=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 16 * sizeof(char));<br>
- <br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; db-&gt;p_types.nprim; i++)=
 {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db-&gt;type_val=
_to_struct[i])<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0continue;<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buff, 9, &quot;=
@ttr%04zd&quot;, i + 1);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buff, 15, &quot=
;@ttr%010zd&quot;, i + 1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp_name =3D strdup=
(buff);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!tmp_name) {<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0error =3D errno;<br>
--- <br>
-2.20.1<br>
-<br>
diff --git a/recipes-security/setools/setools/setools4-fix-cross-compiling-=
errors-for-powerpc-mips.patch b/recipes-security/setools/setools/setools4-f=
ix-cross-compiling-errors-for-powerpc-mips.patch<br>
deleted file mode 100644<br>
index 9a6b818..0000000<br>
--- a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-=
for-powerpc-mips.patch<br>
+++ /dev/null<br>
@@ -1,35 +0,0 @@<br>
-From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17 00:00:00 2001<br>
-From: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com" target=
=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
-Date: Fri, 17 Feb 2017 08:57:35 +0000<br>
-Subject: [meta-selinux][PATCH] setools4: fix cross-compiling errors for po=
werpc, mips<br>
-<br>
-Fix build errors:<br>
-| libqpol/policy.c: In function &#39;qpol_binpol_version&#39;:<br>
-| libqpol/policy.c:95:24: error: implicit declaration of function &#39;bsw=
ap_32&#39; [-Werror=3Dimplicit-function-declaration]<br>
-| #define le32_to_cpu(x) bswap_32(x)<br>
-<br>
-Upstream-Status: Pending<br>
-<br>
-Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com=
" target=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
----<br>
- libqpol/policy.c | 4 ++++<br>
- 1 file changed, 4 insertions(+)<br>
-<br>
-diff --git a/libqpol/policy.c b/libqpol/policy.c<br>
-index ae3acb5..b5b87f9 100644<br>
---- a/libqpol/policy.c<br>
-+++ b/libqpol/policy.c<br>
-@@ -45,6 +45,10 @@<br>
- # include &lt;asm/types.h&gt;<br>
- #endif<br>
- <br>
-+#if defined(_ARCH_PPC) || defined(mips)<br>
-+#include &lt;byteswap.h&gt;<br>
-+#endif<br>
-+<br>
- #include &lt;sepol/debug.h&gt;<br>
- #include &lt;sepol/handle.h&gt;<br>
- #include &lt;sepol/policydb/flask_types.h&gt;<br>
--- <br>
-2.11.0<br>
-<br>
diff --git a/recipes-security/setools/setools/setools4-fixes-for-cross-comp=
iling.patch b/recipes-security/setools/setools/setools4-fixes-for-cross-com=
piling.patch<br>
index 5c43c49..51c7603 100644<br>
--- a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.p=
atch<br>
+++ b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.p=
atch<br>
@@ -1,7 +1,7 @@<br>
-From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17 00:00:00 2001<br>
+From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17 00:00:00 2001<br>
=C2=A0From: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com" ta=
rget=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
=C2=A0Date: Tue, 14 Feb 2017 06:32:35 +0000<br>
-Subject: [meta-selinux][PATCH] setools4: fixes for cross compiling<br>
+Subject: [PATCH] setools4: fixes for cross compiling<br>
<br>
=C2=A0* search libsepol from $STAGING_LIBDIR<br>
=C2=A0* fix manual install path as &#39;/usr/share/man/man1&#39;<br>
@@ -9,32 +9,24 @@ Subject: [meta-selinux][PATCH] setools4: fixes for cross =
compiling<br>
=C2=A0Upstream-Status: Inappropriate [embedded specific]<br>
<br>
=C2=A0Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windrive=
r.com" target=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
+Signed-off-by: Yi Zhao &lt;<a href=3D"mailto:yi.zhao@windriver.com" target=
=3D"_blank">yi.zhao@windriver.com</a>&gt;<br>
=C2=A0---<br>
- setup.py | 4 ++--<br>
- 1 file changed, 2 insertions(+), 2 deletions(-)<br>
+ setup.py | 2 +-<br>
+ 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
=C2=A0diff --git a/setup.py b/setup.py<br>
-index 2ca44c9..300ff70 100644<br>
+index ac8a876..df7ebbc 100644<br>
=C2=A0--- a/setup.py<br>
=C2=A0+++ b/setup.py<br>
-@@ -77,7 +77,7 @@ class BuildExtCommand(build_ext):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build_ext.run(self)<br>
+@@ -78,7 +78,7 @@ class QtHelpCommand(Command):<br>
<br>
<br>
--base_lib_dirs =3D [&#39;.&#39;, &#39;/usr/lib64&#39;, &#39;/usr/lib&#39;,=
 &#39;/usr/local/lib&#39;]<br>
-+base_lib_dirs =3D [os.environ[&quot;STAGING_LIBDIR&quot;]]<br>
- include_dirs =3D [&#39;libqpol&#39;, &#39;libqpol/include&#39;]<br>
+ # Library linkage<br>
+-lib_dirs =3D [&#39;.&#39;, &#39;/usr/lib64&#39;, &#39;/usr/lib&#39;, &#39=
;/usr/local/lib&#39;]<br>
++lib_dirs =3D [os.environ[&quot;STAGING_LIBDIR&quot;]]<br>
+ include_dirs =3D []<br>
<br>
- try:<br>
-@@ -182,7 +182,7 @@ setup(name=3D&#39;setools&#39;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;build_q=
hc&#39;: QtHelpCommand},<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0packages=3D[&#39;setools&#39;, &#39;setools.dif=
f&#39;, &#39;setools.policyrep&#39;, &#39;setoolsgui&#39;, &#39;setoolsgui.=
apol&#39;],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0scripts=3D[&#39;apol&#39;, &#39;sediff&#39;, &#=
39;seinfo&#39;, &#39;seinfoflow&#39;, &#39;sesearch&#39;, &#39;sedta&#39;],=
<br>
--=C2=A0 =C2=A0 =C2=A0 data_files=3D[(join(sys.prefix, &#39;share/man/man1&=
#39;), glob.glob(&quot;man/*.1&quot;))],<br>
-+=C2=A0 =C2=A0 =C2=A0 data_files=3D[(&#39;/usr/share/man/man1&#39;, glob.g=
lob(&quot;man/*.1&quot;))],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0package_data=3D{&#39;&#39;: [&#39;*.ui&#39;, &#=
39;*.qhc&#39;, &#39;*.qch&#39;], &#39;setools&#39;: [&#39;perm_map&#39;]},<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ext_modules=3Dext_py_mods,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0test_suite=3D&#39;tests&#39;,<br>
+ with suppress(KeyError):<br>
=C2=A0-- <br>
-2.13.0<br>
+2.7.4<br>
<br>
diff --git a/recipes-security/setools/<a href=3D"http://setools_4.1.1.bb" r=
el=3D"noreferrer" target=3D"_blank">setools_4.1.1.bb</a> b/recipes-security=
/setools/<a href=3D"http://setools_4.2.2.bb" rel=3D"noreferrer" target=3D"_=
blank">setools_4.2.2.bb</a><br>
similarity index 61%<br>
rename from recipes-security/setools/<a href=3D"http://setools_4.1.1.bb" re=
l=3D"noreferrer" target=3D"_blank">setools_4.1.1.bb</a><br>
rename to recipes-security/setools/<a href=3D"http://setools_4.2.2.bb" rel=
=3D"noreferrer" target=3D"_blank">setools_4.2.2.bb</a><br>
index db529f4..6e5a950 100644<br>
--- a/recipes-security/setools/<a href=3D"http://setools_4.1.1.bb" rel=3D"n=
oreferrer" target=3D"_blank">setools_4.1.1.bb</a><br>
+++ b/recipes-security/setools/<a href=3D"http://setools_4.2.2.bb" rel=3D"n=
oreferrer" target=3D"_blank">setools_4.2.2.bb</a><br>
@@ -9,26 +9,24 @@ SECTION =3D &quot;base&quot;<br>
=C2=A0LICENSE =3D &quot;GPLv2 &amp; LGPLv2.1&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/SELinuxProject/$%7BBP=
N%7D.git;branch=3D4.1" rel=3D"noreferrer" target=3D"_blank">github.com/SELi=
nuxProject/${BPN}.git;branch=3D4.1</a> \<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/SELinuxProject/$%7BBP=
N%7D.git;branch=3D4.2" rel=3D"noreferrer" target=3D"_blank">github.com/SELi=
nuxProject/${BPN}.git;branch=3D4.2</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://setools4-fixes-for-cross-c=
ompiling.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://setools4-fix-cross-compili=
ng-errors-for-powerpc-mips.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://Fix-build-failure-with-GCC=
-7-due-to-possible-truncat.patch \<br>
=C2=A0&quot;<br>
<br>
-SRCREV =3D &quot;e03617eb7ab5a035633bff66500b95d25232e331&quot;<br>
+SRCREV =3D &quot;15bffa7823b9a999f9d51533785ade18fe44df08&quot;<br>
<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=3D83a5eb6974c11f30=
785e90d0eeccf40c \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://${S}/COPYING.GPL;md5=3Db234ee4d69f5fce4486a80fdaf4a4263 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://${S}/COPYING.LGPL;md5=3D4fbd65380cdd255951079008b364516c&quot;<br=
>
<br>
-DEPENDS +=3D &quot;bison-native flex-native swig-native python libsepol&qu=
ot;<br>
+DEPENDS +=3D &quot;bison-native flex-native swig-native python3 python3-cy=
thon-native libsepol&quot;<br>
<br>
-RDEPENDS_${PN} +=3D &quot;python-networkx python-enum34 python-decorator p=
ython-setuptools \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pytho=
n-logging python-json python-argparse libselinux-python&quot;<br>
+RDEPENDS_${PN} +=3D &quot;python3-networkx python3-decorator python3-setup=
tools \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pytho=
n3-logging python3-json libselinux-python&quot;<br>
<br>
=C2=A0RPROVIDES_${PN} +=3D &quot;${PN}-console&quot;<br>
<br>
-inherit setuptools<br>
+inherit setuptools3<br>
<br>
=C2=A0do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need PyQt5 support, disable gui tools<br>
-- <br>
2.17.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Joe MacDonald<br>:wq</div>

--000000000000f3b699059a11f306--
