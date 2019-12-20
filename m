Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3558.1576803349172458108
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 16:55:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3330E01237; Thu, 19 Dec 2019 16:55:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC82DE011BD
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2019 16:55:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xBK0tjft026834
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 19 Dec 2019 16:55:45 -0800 (PST)
Received: from [128.224.162.174] (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 19 Dec
 2019 16:55:44 -0800
Subject: Re: [meta-selinux][PATCH 18/19] setools: upgrade 4.1.1 -> 4.2.2
To: Joe MacDonald <joe@deserted.net>
CC: <yocto@yoctoproject.org>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
 <20191114014901.22862-19-yi.zhao@windriver.com>
 <CANBf+V10oC==_F_R1wgr7uXrrDW=AvpM-b1S82mrG+7mN-Kxvg@mail.gmail.com>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <1540af4c-0378-fd51-29df-4a54cc5ce90e@windriver.com>
Date: Fri, 20 Dec 2019 08:55:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANBf+V10oC==_F_R1wgr7uXrrDW=AvpM-b1S82mrG+7mN-Kxvg@mail.gmail.com>
X-Originating-IP: [128.224.162.174]
Content-Type: multipart/alternative;
	boundary="------------F0878642EE6D59D891C625CC"
Content-Language: en-US

--------------F0878642EE6D59D891C625CC
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


On 12/20/19 1:32 AM, Joe MacDonald wrote:
> Hi Yi,
>
> I've merged the rest of this series, but this one fails to apply.=C2=A0=
 It=20
> looks like your tree didn't contain:
>
> commit 5fd3c5b71edb99659aeb5cb5903088d84517382e (relabel, master)
> Author: Christophe PRIOUZEAU <christophe.priouzeau@st.com=20
> <mailto:christophe.priouzeau@st.com>>
> Date:=C2=A0 =C2=A0Tue Nov 5 14:47:09 2019 +0000
>
> =C2=A0 =C2=A0 autorelabel: only selinux-autorelabel need autorelabel fi=
le
>
> =C2=A0 =C2=A0 With previous implementation, several packages provided
> =C2=A0 =C2=A0 =C2=A0.autorelabel file while only selinux-autorelabel ma=
nage it.
> =C2=A0 =C2=A0 If there is several packages which try to install .autore=
label
> =C2=A0 =C2=A0 file, an issue occur during installation of packagegroup-=
core-selinux.
>
> =C2=A0 =C2=A0 Signed-off-by: Christophe Priouzeau <christophe.priouzeau=
@st.com=20
> <mailto:christophe.priouzeau@st.com>>
> =C2=A0 =C2=A0 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com=20
> <mailto:joe_macdonald@mentor.com>>
>
> Can you take a look at it and verify which parts of the change are=20
> still necessary given the above change?


Sure. I will send V2.


//Yi

>
> Thanks.
> -J.
>
> On Wed, Nov 13, 2019 at 8:50 PM Yi Zhao <yi.zhao@windriver.com=20
> <mailto:yi.zhao@windriver.com>> wrote:
>
>     * Switch to python3
>
>     * Drop patches:
>     =C2=A0 Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch
>     =C2=A0 setools4-fix-cross-compiling-errors-for-powerpc-mips.patch
>
>     Signed-off-by: Yi Zhao <yi.zhao@windriver.com
>     <mailto:yi.zhao@windriver.com>>
>     ---
>     =C2=A0...e-with-GCC-7-due-to-possible-truncat.patch | 105
>     ------------------
>     =C2=A0...ss-compiling-errors-for-powerpc-mips.patch |=C2=A0 35 ----=
--
>     =C2=A0.../setools4-fixes-for-cross-compiling.patch=C2=A0 |=C2=A0 34=
 +++---
>     =C2=A0.../{setools_4.1.1.bb <http://setools_4.1.1.bb> =3D>
>     setools_4.2.2.bb <http://setools_4.2.2.bb>} =C2=A0 |=C2=A0 14 +--
>     =C2=A04 files changed, 19 insertions(+), 169 deletions(-)
>     =C2=A0delete mode 100644
>     recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-t=
o-possible-truncat.patch
>     =C2=A0delete mode 100644
>     recipes-security/setools/setools/setools4-fix-cross-compiling-error=
s-for-powerpc-mips.patch
>     =C2=A0rename recipes-security/setools/{setools_4.1.1.bb
>     <http://setools_4.1.1.bb> =3D> setools_4.2.2.bb
>     <http://setools_4.2.2.bb>} (61%)
>
>     diff --git
>     a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due=
-to-possible-truncat.patch
>     b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due=
-to-possible-truncat.patch
>     deleted file mode 100644
>     index a5af041..0000000
>     ---
>     a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due=
-to-possible-truncat.patch
>     +++ /dev/null
>     @@ -1,105 +0,0 @@
>     -Upstream-Status: Backport
>     [https://github.com/TresysTechnology/setools/commit/e41adf0]
>     -
>     -Signed-off-by: Kai Kang <kai.kang@windriver.com
>     <mailto:kai.kang@windriver.com>>
>     -
>     -From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17 00:00:00
>     2001
>     -From: Laurent Bigonville <bigon@bigon.be <mailto:bigon@bigon.be>>
>     -Date: Tue, 26 Sep 2017 15:15:30 +0200
>     -Subject: [PATCH] Fix build failure with GCC 7 due to possible
>     truncation of
>     - snprintf output
>     -
>     -setools fails to build under GCC7 -Wformat -Werror with the
>     following error:
>     -
>     -x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall
>     -Wstrict-prototypes -g -O2 -fdebug-prefix-map=3D/<<PKGBUILDDIR>>=3D=
.
>     -fstack-protector-strong -Wformat -Werror=3Dformat-security
>     -Wno-sign-compare -Wdate-time -D_FORTIFY_SOURCE=3D2 -fPIC -Ilibqpol
>     -Ilibqpol/include -I/usr/include/python3.6m -c
>     libqpol/policy_extend.c -o
>     build/temp.linux-amd64-3.6/libqpol/policy_extend.o -Werror -Wextra
>     -Waggregate-return -Wfloat-equal -Wformat -Wformat=3D2 -Winit-self
>     -Wmissing-format-attribute -Wmissing-include-dirs -Wnested-externs
>     -Wold-style-definition -Wpointer-arith -Wredundant-decls
>     -Wstrict-prototypes -Wunknown-pragmas -Wwrite-strings
>     -Wno-missing-field-initializers -Wno-unused-parameter
>     -Wno-cast-qual -Wno-shadow -Wno-unreachable-code -fno-exceptions
>     -libqpol/policy_extend.c: In function 'policy_extend':
>     -libqpol/policy_extend.c:161:27: error: '%04zd' directive output
>     may be truncated writing between 4 and 10 bytes into a region of
>     size 5 [-Werror=3Dformat-truncation=3D]
>     -=C2=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~
>     -libqpol/policy_extend.c:161:22: note: directive argument in the
>     range [1, 4294967295]
>     -=C2=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^~~~~~~~~~~
>     -
>     -Increase the size of the buffer to avoid collisions
>     -
>     -Closes: https://github.com/TresysTechnology/setools/issues/174
>     -Signed-off-by: Laurent Bigonville <bigon@bigon.be
>     <mailto:bigon@bigon.be>>
>     ----
>     - libqpol/policy_extend.c | 16 ++++++++--------
>     - 1 file changed, 8 insertions(+), 8 deletions(-)
>     -
>     -diff --git a/libqpol/policy_extend.c b/libqpol/policy_extend.c
>     -index 742819b..739e184 100644
>     ---- a/libqpol/policy_extend.c
>     -+++ b/libqpol/policy_extend.c
>     -@@ -110,7 +110,7 @@ static int
>     qpol_policy_remove_bogus_aliases(qpol_policy_t * policy)
>     -=C2=A0 *=C2=A0 Builds data for the attributes and inserts them int=
o the
>     policydb.
>     -=C2=A0 *=C2=A0 This function modifies the policydb. Names created =
for
>     attributes
>     -=C2=A0 *=C2=A0 are of the form @ttr<value> where value is the valu=
e of the
>     attribute
>     -- *=C2=A0 as a four digit number (prepended with 0's as needed).
>     -+ *=C2=A0 as a ten digit number (prepended with 0's as needed).
>     -=C2=A0 *=C2=A0 @param policy The policy from which to read the att=
ribute
>     map and
>     -=C2=A0 *=C2=A0 create the type data for the attributes. This polic=
y will be
>     altered
>     -=C2=A0 *=C2=A0 by this function.
>     -@@ -125,7 +125,7 @@ static int
>     qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0uint32_t bit =3D 0, count =3D 0;
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_node_t *node =3D NULL;
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL, *orig_=
type;
>     --=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];
>     -+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv;
>     -
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0INFO(policy, "%s", "Generating attribut=
es for policy.
>     (Step 4 of 5)");
>     -@@ -137,7 +137,7 @@ static int
>     qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
>     -
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &policy->p->p;
>     -
>     --=C2=A0 =C2=A0 =C2=A0 memset(&buff, 0, 10 * sizeof(char));
>     -+=C2=A0 =C2=A0 =C2=A0 memset(&buff, 0, 16 * sizeof(char));
>     -
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i < db->p_types.nprim; i+=
+) {
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* skip typ=
es */
>     -@@ -158,7 +158,7 @@ static int
>     qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * with thi=
s attribute */
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Does not=
 exist */
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db->p_t=
ype_val_to_name[i] =3D=3D NULL){
>     --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);
>     -+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 snprintf(buff, 15, "@ttr%010zd", i + 1);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0tmp_name =3D strdup(buff);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0if (!tmp_name) {
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error =3D errno;
>     -@@ -240,7 +240,7 @@ static int
>     qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
>     -=C2=A0 *=C2=A0 Builds data for empty attributes and inserts them i=
nto the
>     policydb.
>     -=C2=A0 *=C2=A0 This function modifies the policydb. Names created =
for the
>     attributes
>     -=C2=A0 *=C2=A0 are of the form @ttr<value> where value is the valu=
e of the
>     attribute
>     -- *=C2=A0 as a four digit number (prepended with 0's as needed).
>     -+ *=C2=A0 as a ten digit number (prepended with 0's as needed).
>     -=C2=A0 *=C2=A0 @param policy The policy to which to add type data =
for
>     attributes.
>     -=C2=A0 *=C2=A0 This policy will be altered by this function.
>     -=C2=A0 *=C2=A0 @return Returns 0 on success and < 0 on failure; if=
 the call
>     fails,
>     -@@ -251,7 +251,7 @@ static int
>     qpol_policy_build_attrs_from_map(qpol_policy_t * policy)
>     - static int qpol_policy_fill_attr_holes(qpol_policy_t * policy)
>     - {
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0policydb_t *db =3D NULL;
>     --=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];
>     -+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv =3D 0;
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_t tmp_bmap =3D { NULL, 0 };
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL;
>     -@@ -265,12 +265,12 @@ static int
>     qpol_policy_fill_attr_holes(qpol_policy_t * policy)
>     -
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &policy->p->p;
>     -
>     --=C2=A0 =C2=A0 =C2=A0 memset(&buff, 0, 10 * sizeof(char));
>     -+=C2=A0 =C2=A0 =C2=A0 memset(&buff, 0, 16 * sizeof(char));
>     -
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i < db->p_types.nprim; i+=
+) {
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db->typ=
e_val_to_struct[i])
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0continue;
>     --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buff, 9=
, "@ttr%04zd", i + 1);
>     -+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buff, 1=
5, "@ttr%010zd", i + 1);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp_name =3D=
 strdup(buff);
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!tmp_na=
me) {
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0error =3D errno;
>     ---
>     -2.20.1
>     -
>     diff --git
>     a/recipes-security/setools/setools/setools4-fix-cross-compiling-err=
ors-for-powerpc-mips.patch
>     b/recipes-security/setools/setools/setools4-fix-cross-compiling-err=
ors-for-powerpc-mips.patch
>     deleted file mode 100644
>     index 9a6b818..0000000
>     ---
>     a/recipes-security/setools/setools/setools4-fix-cross-compiling-err=
ors-for-powerpc-mips.patch
>     +++ /dev/null
>     @@ -1,35 +0,0 @@
>     -From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17 00:00:00
>     2001
>     -From: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     -Date: Fri, 17 Feb 2017 08:57:35 +0000
>     -Subject: [meta-selinux][PATCH] setools4: fix cross-compiling
>     errors for powerpc, mips
>     -
>     -Fix build errors:
>     -| libqpol/policy.c: In function 'qpol_binpol_version':
>     -| libqpol/policy.c:95:24: error: implicit declaration of function
>     'bswap_32' [-Werror=3Dimplicit-function-declaration]
>     -| #define le32_to_cpu(x) bswap_32(x)
>     -
>     -Upstream-Status: Pending
>     -
>     -Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     ----
>     - libqpol/policy.c | 4 ++++
>     - 1 file changed, 4 insertions(+)
>     -
>     -diff --git a/libqpol/policy.c b/libqpol/policy.c
>     -index ae3acb5..b5b87f9 100644
>     ---- a/libqpol/policy.c
>     -+++ b/libqpol/policy.c
>     -@@ -45,6 +45,10 @@
>     - # include <asm/types.h>
>     - #endif
>     -
>     -+#if defined(_ARCH_PPC) || defined(mips)
>     -+#include <byteswap.h>
>     -+#endif
>     -+
>     - #include <sepol/debug.h>
>     - #include <sepol/handle.h>
>     - #include <sepol/policydb/flask_types.h>
>     ---
>     -2.11.0
>     -
>     diff --git
>     a/recipes-security/setools/setools/setools4-fixes-for-cross-compili=
ng.patch
>     b/recipes-security/setools/setools/setools4-fixes-for-cross-compili=
ng.patch
>     index 5c43c49..51c7603 100644
>     ---
>     a/recipes-security/setools/setools/setools4-fixes-for-cross-compili=
ng.patch
>     +++
>     b/recipes-security/setools/setools/setools4-fixes-for-cross-compili=
ng.patch
>     @@ -1,7 +1,7 @@
>     -From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17 00:00:00
>     2001
>     +From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17 00:00:00
>     2001
>     =C2=A0From: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     =C2=A0Date: Tue, 14 Feb 2017 06:32:35 +0000
>     -Subject: [meta-selinux][PATCH] setools4: fixes for cross compiling
>     +Subject: [PATCH] setools4: fixes for cross compiling
>
>     =C2=A0* search libsepol from $STAGING_LIBDIR
>     =C2=A0* fix manual install path as '/usr/share/man/man1'
>     @@ -9,32 +9,24 @@ Subject: [meta-selinux][PATCH] setools4: fixes
>     for cross compiling
>     =C2=A0Upstream-Status: Inappropriate [embedded specific]
>
>     =C2=A0Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com
>     <mailto:wenzong.fan@windriver.com>>
>     +Signed-off-by: Yi Zhao <yi.zhao@windriver.com
>     <mailto:yi.zhao@windriver.com>>
>     =C2=A0---
>     - setup.py | 4 ++--
>     - 1 file changed, 2 insertions(+), 2 deletions(-)
>     + setup.py | 2 +-
>     + 1 file changed, 1 insertion(+), 1 deletion(-)
>
>     =C2=A0diff --git a/setup.py b/setup.py
>     -index 2ca44c9..300ff70 100644
>     +index ac8a876..df7ebbc 100644
>     =C2=A0--- a/setup.py
>     =C2=A0+++ b/setup.py
>     -@@ -77,7 +77,7 @@ class BuildExtCommand(build_ext):
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build_ext.run(self)
>     +@@ -78,7 +78,7 @@ class QtHelpCommand(Command):
>
>
>     --base_lib_dirs =3D ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib=
']
>     -+base_lib_dirs =3D [os.environ["STAGING_LIBDIR"]]
>     - include_dirs =3D ['libqpol', 'libqpol/include']
>     + # Library linkage
>     +-lib_dirs =3D ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib']
>     ++lib_dirs =3D [os.environ["STAGING_LIBDIR"]]
>     + include_dirs =3D []
>
>     - try:
>     -@@ -182,7 +182,7 @@ setup(name=3D'setools',
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0'bui=
ld_qhc': QtHelpCommand},
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0packages=3D['setools', 'setools.diff', =
'setools.policyrep',
>     'setoolsgui', 'setoolsgui.apol'],
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0scripts=3D['apol', 'sediff', 'seinfo', =
'seinfoflow',
>     'sesearch', 'sedta'],
>     --=C2=A0 =C2=A0 =C2=A0 data_files=3D[(join(sys.prefix, 'share/man/m=
an1'),
>     glob.glob("man/*.1"))],
>     -+=C2=A0 =C2=A0 =C2=A0 data_files=3D[('/usr/share/man/man1', glob.g=
lob("man/*.1"))],
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0package_data=3D{'': ['*.ui', '*.qhc', '=
*.qch'], 'setools':
>     ['perm_map']},
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0ext_modules=3Dext_py_mods,
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0test_suite=3D'tests',
>     + with suppress(KeyError):
>     =C2=A0--
>     -2.13.0
>     +2.7.4
>
>     diff --git a/recipes-security/setools/setools_4.1.1.bb
>     <http://setools_4.1.1.bb>
>     b/recipes-security/setools/setools_4.2.2.bb <http://setools_4.2.2.b=
b>
>     similarity index 61%
>     rename from recipes-security/setools/setools_4.1.1.bb
>     <http://setools_4.1.1.bb>
>     rename to recipes-security/setools/setools_4.2.2.bb
>     <http://setools_4.2.2.bb>
>     index db529f4..6e5a950 100644
>     --- a/recipes-security/setools/setools_4.1.1.bb
>     <http://setools_4.1.1.bb>
>     +++ b/recipes-security/setools/setools_4.2.2.bb
>     <http://setools_4.2.2.bb>
>     @@ -9,26 +9,24 @@ SECTION =3D "base"
>     =C2=A0LICENSE =3D "GPLv2 & LGPLv2.1"
>
>     =C2=A0S =3D "${WORKDIR}/git"
>     -SRC_URI =3D "git://github.com/SELinuxProject/${BPN}.git;branch=3D4=
.1
>     <http://github.com/SELinuxProject/$%7BBPN%7D.git;branch=3D4.1> \
>     +SRC_URI =3D "git://github.com/SELinuxProject/${BPN}.git;branch=3D4=
.2
>     <http://github.com/SELinuxProject/$%7BBPN%7D.git;branch=3D4.2> \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://setools4-fixes-for=
-cross-compiling.patch \
>     - =C2=A0file://setools4-fix-cross-compiling-errors-for-powerpc-mips=
.patch \
>     - =C2=A0file://Fix-build-failure-with-GCC-7-due-to-possible-truncat=
.patch \
>     =C2=A0"
>
>     -SRCREV =3D "e03617eb7ab5a035633bff66500b95d25232e331"
>     +SRCREV =3D "15bffa7823b9a999f9d51533785ade18fe44df08"
>
>     =C2=A0LIC_FILES_CHKSUM =3D
>     "file://${S}/COPYING;md5=3D83a5eb6974c11f30785e90d0eeccf40c \
>     =C2=A0file://${S}/COPYING.GPL;md5=3Db234ee4d69f5fce4486a80fdaf4a426=
3 \
>     =C2=A0file://${S}/COPYING.LGPL;md5=3D4fbd65380cdd255951079008b36451=
6c"
>
>     -DEPENDS +=3D "bison-native flex-native swig-native python libsepol=
"
>     +DEPENDS +=3D "bison-native flex-native swig-native python3
>     python3-cython-native libsepol"
>
>     -RDEPENDS_${PN} +=3D "python-networkx python-enum34 python-decorato=
r
>     python-setuptools \
>     -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0python-logging python-json python-argparse
>     libselinux-python"
>     +RDEPENDS_${PN} +=3D "python3-networkx python3-decorator
>     python3-setuptools \
>     +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0python3-logging python3-json libselinux-python"
>
>     =C2=A0RPROVIDES_${PN} +=3D "${PN}-console"
>
>     -inherit setuptools
>     +inherit setuptools3
>
>     =C2=A0do_install_append() {
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need PyQt5 support, disable gui tools
>     --=20
>     2.17.1
>
>
>
> --=20
> Joe MacDonald
> :wq

--------------F0878642EE6D59D891C625CC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 12/20/19 1:32 AM, Joe MacDonald
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANBf+V10oC=3D=3D_F_R1wgr7uXrrDW=3DAvpM-b1S82mrG+7mN-Kxvg@mai=
l.gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">Hi Yi,</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">I've merged the rest of this series, but thi=
s
              one fails to apply.=C2=A0 It looks like your tree didn't
              contain:</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">commit
              5fd3c5b71edb99659aeb5cb5903088d84517382e (relabel, master)<=
/div>
            <div dir=3D"ltr">Author: Christophe PRIOUZEAU &lt;<a
                href=3D"mailto:christophe.priouzeau@st.com"
                moz-do-not-send=3D"true">christophe.priouzeau@st.com</a>&=
gt;</div>
            <div dir=3D"ltr">Date:=C2=A0 =C2=A0Tue Nov 5 14:47:09 2019 +0=
000</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 autorelabel: only selinux-auto=
relabel
              need autorelabel file</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 With previous implementation, =
several
              packages provided</div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 =C2=A0.autorelabel file while =
only
              selinux-autorelabel manage it.</div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 If there is several packages w=
hich try to
              install .autorelabel</div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 file, an issue occur during in=
stallation
              of packagegroup-core-selinux.</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 Signed-off-by: Christophe Prio=
uzeau &lt;<a
                href=3D"mailto:christophe.priouzeau@st.com"
                moz-do-not-send=3D"true">christophe.priouzeau@st.com</a>&=
gt;</div>
            <div dir=3D"ltr">=C2=A0 =C2=A0 Signed-off-by: Joe MacDonald &=
lt;<a
                href=3D"mailto:joe_macdonald@mentor.com"
                moz-do-not-send=3D"true">joe_macdonald@mentor.com</a>&gt;=
</div>
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">Can you take a look at it and verify which
              parts of the change are still necessary given the above
              change?</div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Sure. I will send V2.<br>
    </p>
    <p><br>
    </p>
    <p>//Yi<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CANBf+V10oC=3D=3D_F_R1wgr7uXrrDW=3DAvpM-b1S82mrG+7mN-Kxvg@mai=
l.gmail.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr"><br>
            </div>
            <div dir=3D"ltr">Thanks.</div>
            <div dir=3D"ltr">-J.</div>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 13, 2019 at 8:5=
0
          PM Yi Zhao &lt;<a href=3D"mailto:yi.zhao@windriver.com"
            moz-do-not-send=3D"true">yi.zhao@windriver.com</a>&gt; wrote:=
<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
*
          Switch to python3<br>
          <br>
          * Drop patches:<br>
          =C2=A0 Fix-build-failure-with-GCC-7-due-to-possible-truncat.pat=
ch<br>
          =C2=A0 setools4-fix-cross-compiling-errors-for-powerpc-mips.pat=
ch<br>
          <br>
          Signed-off-by: Yi Zhao &lt;<a
            href=3D"mailto:yi.zhao@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">yi.zhao@windriver.com</a>&gt;<br>
          ---<br>
          =C2=A0...e-with-GCC-7-due-to-possible-truncat.patch | 105
          ------------------<br>
          =C2=A0...ss-compiling-errors-for-powerpc-mips.patch |=C2=A0 35 =
------<br>
          =C2=A0.../setools4-fixes-for-cross-compiling.patch=C2=A0 |=C2=A0=
 34 +++---<br>
          =C2=A0.../{<a href=3D"http://setools_4.1.1.bb" rel=3D"noreferre=
r"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.1.1.bb</=
a>
          =3D&gt; <a href=3D"http://setools_4.2.2.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.2.2.bb</=
a>}=C2=A0
          =C2=A0 |=C2=A0 14 +--<br>
          =C2=A04 files changed, 19 insertions(+), 169 deletions(-)<br>
          =C2=A0delete mode 100644
recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-poss=
ible-truncat.patch<br>
          =C2=A0delete mode 100644
recipes-security/setools/setools/setools4-fix-cross-compiling-errors-for-=
powerpc-mips.patch<br>
          =C2=A0rename recipes-security/setools/{<a
            href=3D"http://setools_4.1.1.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.1.1.bb</=
a>
          =3D&gt; <a href=3D"http://setools_4.2.2.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.2.2.bb</=
a>}
          (61%)<br>
          <br>
          diff --git
a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-po=
ssible-truncat.patch
b/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-po=
ssible-truncat.patch<br>
          deleted file mode 100644<br>
          index a5af041..0000000<br>
          ---
a/recipes-security/setools/setools/Fix-build-failure-with-GCC-7-due-to-po=
ssible-truncat.patch<br>
          +++ /dev/null<br>
          @@ -1,105 +0,0 @@<br>
          -Upstream-Status: Backport [<a
            href=3D"https://github.com/TresysTechnology/setools/commit/e4=
1adf0"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://github.com/TresysTechnology/setools/commit/e41adf0</a>]<br>
          -<br>
          -Signed-off-by: Kai Kang &lt;<a
            href=3D"mailto:kai.kang@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">kai.kang@windriver.com</a>&gt;<br>
          -<br>
          -From e41adf01647c695b80b112b337e76021bb9f30c3 Mon Sep 17
          00:00:00 2001<br>
          -From: Laurent Bigonville &lt;<a href=3D"mailto:bigon@bigon.be"
            target=3D"_blank" moz-do-not-send=3D"true">bigon@bigon.be</a>=
&gt;<br>
          -Date: Tue, 26 Sep 2017 15:15:30 +0200<br>
          -Subject: [PATCH] Fix build failure with GCC 7 due to possible
          truncation of<br>
          - snprintf output<br>
          -<br>
          -setools fails to build under GCC7 -Wformat -Werror with the
          following error:<br>
          -<br>
          -x86_64-linux-gnu-gcc -pthread -DNDEBUG -g -fwrapv -O2 -Wall
          -Wstrict-prototypes -g -O2
          -fdebug-prefix-map=3D/&lt;&lt;PKGBUILDDIR&gt;&gt;=3D.
          -fstack-protector-strong -Wformat -Werror=3Dformat-security
          -Wno-sign-compare -Wdate-time -D_FORTIFY_SOURCE=3D2 -fPIC
          -Ilibqpol -Ilibqpol/include -I/usr/include/python3.6m -c
          libqpol/policy_extend.c -o
          build/temp.linux-amd64-3.6/libqpol/policy_extend.o -Werror
          -Wextra -Waggregate-return -Wfloat-equal -Wformat -Wformat=3D2
          -Winit-self -Wmissing-format-attribute -Wmissing-include-dirs
          -Wnested-externs -Wold-style-definition -Wpointer-arith
          -Wredundant-decls -Wstrict-prototypes -Wunknown-pragmas
          -Wwrite-strings -Wno-missing-field-initializers
          -Wno-unused-parameter -Wno-cast-qual -Wno-shadow
          -Wno-unreachable-code -fno-exceptions<br>
          -libqpol/policy_extend.c: In function 'policy_extend':<br>
          -libqpol/policy_extend.c:161:27: error: '%04zd' directive
          output may be truncated writing between 4 and 10 bytes into a
          region of size 5 [-Werror=3Dformat-truncation=3D]<br>
          -=C2=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~<br>
          -libqpol/policy_extend.c:161:22: note: directive argument in
          the range [1, 4294967295]<br>
          -=C2=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 ^~~~~~~~~~~<br>
          -<br>
          -Increase the size of the buffer to avoid collisions<br>
          -<br>
          -Closes: <a
            href=3D"https://github.com/TresysTechnology/setools/issues/17=
4"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://github.com/TresysTechnology/setools/issues/174</a><br>
          -Signed-off-by: Laurent Bigonville &lt;<a
            href=3D"mailto:bigon@bigon.be" target=3D"_blank"
            moz-do-not-send=3D"true">bigon@bigon.be</a>&gt;<br>
          ----<br>
          - libqpol/policy_extend.c | 16 ++++++++--------<br>
          - 1 file changed, 8 insertions(+), 8 deletions(-)<br>
          -<br>
          -diff --git a/libqpol/policy_extend.c
          b/libqpol/policy_extend.c<br>
          -index 742819b..739e184 100644<br>
          ---- a/libqpol/policy_extend.c<br>
          -+++ b/libqpol/policy_extend.c<br>
          -@@ -110,7 +110,7 @@ static int
          qpol_policy_remove_bogus_aliases(qpol_policy_t * policy)<br>
          -=C2=A0 *=C2=A0 Builds data for the attributes and inserts them=
 into the
          policydb.<br>
          -=C2=A0 *=C2=A0 This function modifies the policydb. Names crea=
ted for
          attributes<br>
          -=C2=A0 *=C2=A0 are of the form @ttr&lt;value&gt; where value i=
s the
          value of the attribute<br>
          -- *=C2=A0 as a four digit number (prepended with 0's as needed=
).<br>
          -+ *=C2=A0 as a ten digit number (prepended with 0's as needed)=
.<br>
          -=C2=A0 *=C2=A0 @param policy The policy from which to read the
          attribute map and<br>
          -=C2=A0 *=C2=A0 create the type data for the attributes. This p=
olicy
          will be altered<br>
          -=C2=A0 *=C2=A0 by this function.<br>
          -@@ -125,7 +125,7 @@ static int
          qpol_policy_build_attrs_from_map(qpol_policy_t * policy)<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0uint32_t bit =3D 0, count =3D 0;<br=
>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_node_t *node =3D NULL;<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL, *o=
rig_type;<br>
          --=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];<br>
          -+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv;<br>
          - <br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0INFO(policy, "%s", "Generating attr=
ibutes for policy.
          (Step 4 of 5)");<br>
          -@@ -137,7 +137,7 @@ static int
          qpol_policy_build_attrs_from_map(qpol_policy_t * policy)<br>
          - <br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &amp;policy-&gt;p-&gt;p;<br>
          - <br>
          --=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 10 * sizeof(char));=
<br>
          -+=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 16 * sizeof(char));=
<br>
          - <br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; db-&gt;p_types=
.nprim; i++) {<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* skip=
 types */<br>
          -@@ -158,7 +158,7 @@ static int
          qpol_policy_build_attrs_from_map(qpol_policy_t * policy)<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * with=
 this attribute */<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Does=
 not exist */<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db-=
&gt;p_type_val_to_name[i] =3D=3D NULL){<br>
          --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 snprintf(buff, 9, "@ttr%04zd", i + 1);<br>
          -+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 snprintf(buff, 15, "@ttr%010zd", i +
          1);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0tmp_name =3D strdup(buff);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0if (!tmp_name) {<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error =3D errno;<br>
          -@@ -240,7 +240,7 @@ static int
          qpol_policy_build_attrs_from_map(qpol_policy_t * policy)<br>
          -=C2=A0 *=C2=A0 Builds data for empty attributes and inserts th=
em into
          the policydb.<br>
          -=C2=A0 *=C2=A0 This function modifies the policydb. Names crea=
ted for
          the attributes<br>
          -=C2=A0 *=C2=A0 are of the form @ttr&lt;value&gt; where value i=
s the
          value of the attribute<br>
          -- *=C2=A0 as a four digit number (prepended with 0's as needed=
).<br>
          -+ *=C2=A0 as a ten digit number (prepended with 0's as needed)=
.<br>
          -=C2=A0 *=C2=A0 @param policy The policy to which to add type d=
ata for
          attributes.<br>
          -=C2=A0 *=C2=A0 This policy will be altered by this function.<b=
r>
          -=C2=A0 *=C2=A0 @return Returns 0 on success and &lt; 0 on fail=
ure; if
          the call fails,<br>
          -@@ -251,7 +251,7 @@ static int
          qpol_policy_build_attrs_from_map(qpol_policy_t * policy)<br>
          - static int qpol_policy_fill_attr_holes(qpol_policy_t *
          policy)<br>
          - {<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0policydb_t *db =3D NULL;<br>
          --=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[10];<br>
          -+=C2=A0 =C2=A0 =C2=A0 char *tmp_name =3D NULL, buff[16];<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0int error =3D 0, retv =3D 0;<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0ebitmap_t tmp_bmap =3D { NULL, 0 };=
<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0type_datum_t *tmp_type =3D NULL;<br=
>
          -@@ -265,12 +265,12 @@ static int
          qpol_policy_fill_attr_holes(qpol_policy_t * policy)<br>
          - <br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0db =3D &amp;policy-&gt;p-&gt;p;<br>
          - <br>
          --=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 10 * sizeof(char));=
<br>
          -+=C2=A0 =C2=A0 =C2=A0 memset(&amp;buff, 0, 16 * sizeof(char));=
<br>
          - <br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; db-&gt;p_types=
.nprim; i++) {<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (db-=
&gt;type_val_to_struct[i])<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0continue;<br>
          --=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buf=
f, 9, "@ttr%04zd", i + 1);<br>
          -+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(buf=
f, 15, "@ttr%010zd", i + 1);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp_nam=
e =3D strdup(buff);<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!tm=
p_name) {<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0error =3D errno;<br>
          --- <br>
          -2.20.1<br>
          -<br>
          diff --git
a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-fo=
r-powerpc-mips.patch
b/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-fo=
r-powerpc-mips.patch<br>
          deleted file mode 100644<br>
          index 9a6b818..0000000<br>
          ---
a/recipes-security/setools/setools/setools4-fix-cross-compiling-errors-fo=
r-powerpc-mips.patch<br>
          +++ /dev/null<br>
          @@ -1,35 +0,0 @@<br>
          -From dc86d880ae0d66233679112a2bf0115c39df68f1 Mon Sep 17
          00:00:00 2001<br>
          -From: Wenzong Fan &lt;<a
            href=3D"mailto:wenzong.fan@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">wenzong.fan@windriver.com</a>&gt;<br=
>
          -Date: Fri, 17 Feb 2017 08:57:35 +0000<br>
          -Subject: [meta-selinux][PATCH] setools4: fix cross-compiling
          errors for powerpc, mips<br>
          -<br>
          -Fix build errors:<br>
          -| libqpol/policy.c: In function 'qpol_binpol_version':<br>
          -| libqpol/policy.c:95:24: error: implicit declaration of
          function 'bswap_32' [-Werror=3Dimplicit-function-declaration]<b=
r>
          -| #define le32_to_cpu(x) bswap_32(x)<br>
          -<br>
          -Upstream-Status: Pending<br>
          -<br>
          -Signed-off-by: Wenzong Fan &lt;<a
            href=3D"mailto:wenzong.fan@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">wenzong.fan@windriver.com</a>&gt;<br=
>
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
          diff --git
a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.pat=
ch
b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.pat=
ch<br>
          index 5c43c49..51c7603 100644<br>
          ---
a/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.pat=
ch<br>
          +++
b/recipes-security/setools/setools/setools4-fixes-for-cross-compiling.pat=
ch<br>
          @@ -1,7 +1,7 @@<br>
          -From a104374147b398838edc04e937c92e762ea3f5d9 Mon Sep 17
          00:00:00 2001<br>
          +From e0a112874d10dbf741c27b107edddedd86d51529 Mon Sep 17
          00:00:00 2001<br>
          =C2=A0From: Wenzong Fan &lt;<a
            href=3D"mailto:wenzong.fan@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">wenzong.fan@windriver.com</a>&gt;<br=
>
          =C2=A0Date: Tue, 14 Feb 2017 06:32:35 +0000<br>
          -Subject: [meta-selinux][PATCH] setools4: fixes for cross
          compiling<br>
          +Subject: [PATCH] setools4: fixes for cross compiling<br>
          <br>
          =C2=A0* search libsepol from $STAGING_LIBDIR<br>
          =C2=A0* fix manual install path as '/usr/share/man/man1'<br>
          @@ -9,32 +9,24 @@ Subject: [meta-selinux][PATCH] setools4:
          fixes for cross compiling<br>
          =C2=A0Upstream-Status: Inappropriate [embedded specific]<br>
          <br>
          =C2=A0Signed-off-by: Wenzong Fan &lt;<a
            href=3D"mailto:wenzong.fan@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">wenzong.fan@windriver.com</a>&gt;<br=
>
          +Signed-off-by: Yi Zhao &lt;<a
            href=3D"mailto:yi.zhao@windriver.com" target=3D"_blank"
            moz-do-not-send=3D"true">yi.zhao@windriver.com</a>&gt;<br>
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
          --base_lib_dirs =3D ['.', '/usr/lib64', '/usr/lib',
          '/usr/local/lib']<br>
          -+base_lib_dirs =3D [os.environ["STAGING_LIBDIR"]]<br>
          - include_dirs =3D ['libqpol', 'libqpol/include']<br>
          + # Library linkage<br>
          +-lib_dirs =3D ['.', '/usr/lib64', '/usr/lib', '/usr/local/lib'=
]<br>
          ++lib_dirs =3D [os.environ["STAGING_LIBDIR"]]<br>
          + include_dirs =3D []<br>
          <br>
          - try:<br>
          -@@ -182,7 +182,7 @@ setup(name=3D'setools',<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
'build_qhc': QtHelpCommand},<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0packages=3D['setools', 'setools.dif=
f',
          'setools.policyrep', 'setoolsgui', 'setoolsgui.apol'],<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0scripts=3D['apol', 'sediff', 'seinf=
o', 'seinfoflow',
          'sesearch', 'sedta'],<br>
          --=C2=A0 =C2=A0 =C2=A0 data_files=3D[(join(sys.prefix, 'share/m=
an/man1'),
          glob.glob("man/*.1"))],<br>
          -+=C2=A0 =C2=A0 =C2=A0 data_files=3D[('/usr/share/man/man1',
          glob.glob("man/*.1"))],<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0package_data=3D{'': ['*.ui', '*.qhc=
', '*.qch'],
          'setools': ['perm_map']},<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0ext_modules=3Dext_py_mods,<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0test_suite=3D'tests',<br>
          + with suppress(KeyError):<br>
          =C2=A0-- <br>
          -2.13.0<br>
          +2.7.4<br>
          <br>
          diff --git a/recipes-security/setools/<a
            href=3D"http://setools_4.1.1.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.1.1.bb</=
a>
          b/recipes-security/setools/<a href=3D"http://setools_4.2.2.bb"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>setools_4.2.2.bb</a><br>
          similarity index 61%<br>
          rename from recipes-security/setools/<a
            href=3D"http://setools_4.1.1.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.1.1.bb</=
a><br>
          rename to recipes-security/setools/<a
            href=3D"http://setools_4.2.2.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.2.2.bb</=
a><br>
          index db529f4..6e5a950 100644<br>
          --- a/recipes-security/setools/<a
            href=3D"http://setools_4.1.1.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.1.1.bb</=
a><br>
          +++ b/recipes-security/setools/<a
            href=3D"http://setools_4.2.2.bb" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">setools_4.2.2.bb</=
a><br>
          @@ -9,26 +9,24 @@ SECTION =3D "base"<br>
          =C2=A0LICENSE =3D "GPLv2 &amp; LGPLv2.1"<br>
          <br>
          =C2=A0S =3D "${WORKDIR}/git"<br>
          -SRC_URI =3D "git://<a
            href=3D"http://github.com/SELinuxProject/$%7BBPN%7D.git;branc=
h=3D4.1"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>github.com/SELinuxProject/${BPN}.git;branch=3D4.1</a>
          \<br>
          +SRC_URI =3D "git://<a
            href=3D"http://github.com/SELinuxProject/$%7BBPN%7D.git;branc=
h=3D4.2"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>github.com/SELinuxProject/${BPN}.git;branch=3D4.2</a>
          \<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a class=3D"moz-txt-l=
ink-freetext" href=3D"file://setools4-fixes-for-cross-compiling.patch">fi=
le://setools4-fixes-for-cross-compiling.patch</a> \<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://setools=
4-fix-cross-compiling-errors-for-powerpc-mips.patch">file://setools4-fix-=
cross-compiling-errors-for-powerpc-mips.patch</a>
          \<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
          =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://Fix-bui=
ld-failure-with-GCC-7-due-to-possible-truncat.patch">file://Fix-build-fai=
lure-with-GCC-7-due-to-possible-truncat.patch</a>
          \<br>
          =C2=A0"<br>
          <br>
          -SRCREV =3D "e03617eb7ab5a035633bff66500b95d25232e331"<br>
          +SRCREV =3D "15bffa7823b9a999f9d51533785ade18fe44df08"<br>
          <br>
          =C2=A0LIC_FILES_CHKSUM =3D
          "<a class=3D"moz-txt-link-freetext" href=3D"file://$">file://$<=
/a>{S}/COPYING;md5=3D83a5eb6974c11f30785e90d0eeccf40c \<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
          =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://$">file=
://$</a>{S}/COPYING.GPL;md5=3Db234ee4d69f5fce4486a80fdaf4a4263
          \<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
          =C2=A0<a class=3D"moz-txt-link-freetext" href=3D"file://$">file=
://$</a>{S}/COPYING.LGPL;md5=3D4fbd65380cdd255951079008b364516c"<br>
          <br>
          -DEPENDS +=3D "bison-native flex-native swig-native python
          libsepol"<br>
          +DEPENDS +=3D "bison-native flex-native swig-native python3
          python3-cython-native libsepol"<br>
          <br>
          -RDEPENDS_${PN} +=3D "python-networkx python-enum34
          python-decorator python-setuptools \<br>
          -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0python-logging python-json python-argparse
          libselinux-python"<br>
          +RDEPENDS_${PN} +=3D "python3-networkx python3-decorator
          python3-setuptools \<br>
          +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0python3-logging python3-json
          libselinux-python"<br>
          <br>
          =C2=A0RPROVIDES_${PN} +=3D "${PN}-console"<br>
          <br>
          -inherit setuptools<br>
          +inherit setuptools3<br>
          <br>
          =C2=A0do_install_append() {<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need PyQt5 support, disable gui t=
ools<br>
          -- <br>
          2.17.1<br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail_signature">Joe MacDonald<br>
        :wq</div>
    </blockquote>
  </body>
</html>

--------------F0878642EE6D59D891C625CC--
