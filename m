Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9376E0084A; Sun, 30 Nov 2014 11:45:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57596E00830
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 11:45:28 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1XvAQw-0005Vt-BK from Joe_MacDonald@mentor.com ;
	Sun, 30 Nov 2014 11:45:26 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.181.6;
	Sun, 30 Nov 2014 11:45:25 -0800
Received: by burninator (Postfix, from userid 1000)	id BEFDB58044A; Sun, 30
	Nov 2014 14:45:24 -0500 (EST)
Date: Sun, 30 Nov 2014 14:45:24 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20141130194524.GO3886@mentor.com>
References: <1417114150-12085-1-git-send-email-joe_macdonald@mentor.com>
	<547AA25B.4020506@gmail.com>
MIME-Version: 1.0
In-Reply-To: <547AA25B.4020506@gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch
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
X-List-Received-Date: Sun, 30 Nov 2014 19:45:42 -0000
X-Groupsio-MsgNum: 22395
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HrsILUyxNtiOryfc"
Content-Disposition: inline

--HrsILUyxNtiOryfc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch] On=
 14.11.29 (Sat 20:51) akuster808 wrote:

> Joe,
>=20
> I went a head and updated to 7.4 which included the security fix.
> Thanks for the reminder.

Yeah, that's on my to-do list for meta-selinux, too.  That's the right
course of action on this one.  :-)

-J.

>=20
> - Armin
>=20
> On 11/27/2014 10:49 AM, Joe MacDonald wrote:
> >Importing the patch from meta-selinux, which itself was a backport from
> >the upstream source tree.
> >
> >Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> >---
> >
> >I mentioned a while back that I had at least one patch in meta-selinux t=
hat may
> >apply to meta-security as well.  I don't know if you guys are interested=
 in this
> >or not since the primary tool to demonstrate the exploit is seunshare, b=
ut it is
> >a problem in libcap-ng itself and it is exploitable outside of the selin=
ux
> >framework.
> >
> >-J.
> >
> >  .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 91 ++++++++++++++=
++++++++
> >  recipes-security/libcap-ng/libcap-ng_0.7.3.bb      |  4 +-
> >  2 files changed, 94 insertions(+), 1 deletion(-)
> >  create mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.=
patch
> >
> >diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch b/=
recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
> >new file mode 100644
> >index 0000000..e9164d4
> >--- /dev/null
> >+++ b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
> >@@ -0,0 +1,91 @@
> >+libcap-ng: local privilege escalation due to capng_lock
> >+
> >+Following the discussion here:
> >+
> >+   http://openwall.com/lists/oss-security/2014/04/29/7
> >+
> >+This is known to impact SELinux tools, however the issue could be explo=
ited by
> >+any application using the relevant functions in libcap-ng provided it i=
s suid
> >+root.
> >+
> >+Upstream-Status: Backport
> >+
> >+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> >+
> >+diff --git a/docs/capng_lock.3 b/docs/capng_lock.3
> >+index 7683119..a070c1e 100644
> >+--- a/docs/capng_lock.3
> >++++ b/docs/capng_lock.3
> >+@@ -8,12 +8,13 @@ int capng_lock(void);
> >+
> >+ .SH "DESCRIPTION"
> >+
> >+-capng_lock will take steps to prevent children of the current process =
to regain full privileges if the uid is 0. This should be called while poss=
essing the CAP_SETPCAP capability in the kernel. This function will do the =
following if permitted by the kernel: Set the NOROOT option on for PR_SET_S=
ECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set th=
e PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SET=
UID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.
> >++capng_lock will take steps to prevent children of the current process =
=66rom gaining privileges by executing setuid programs.  This should be cal=
led while possessing the CAP_SETPCAP capability in the kernel.
> >+
> >++This function will do the following if permitted by the kernel:  If th=
e kernel supports PR_SET_NO_NEW_PRIVS, it will use it.  Otherwise it will s=
et the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option=
 to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_S=
ET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_S=
ECUREBITS.  If both fail, it will return an error.
> >+
> >+ .SH "RETURN VALUE"
> >+
> >+-This returns 0 on success and a negative number on failure. -1 means a=
 failure setting any of the PR_SET_SECUREBITS options.
> >++This returns 0 on success and a negative number on failure. -1 means a=
 failure to use PR_SET_NO_NEW_PRIVS and a failure setting any of the PR_SET=
_SECUREBITS options.
> >+
> >+ .SH "SEE ALSO"
> >+
> >+diff --git a/src/cap-ng.c b/src/cap-ng.c
> >+index bd105ba..422f2bc 100644
> >+--- a/src/cap-ng.c
> >++++ b/src/cap-ng.c
> >+@@ -45,6 +45,7 @@
> >+  * 2.6.24 kernel	XATTR_NAME_CAPS
> >+  * 2.6.25 kernel	PR_CAPBSET_DROP, CAPABILITY_VERSION_2
> >+  * 2.6.26 kernel	PR_SET_SECUREBITS, SECURE_*_LOCKED, VERSION_3
> >++ * 3.5    kernel	PR_SET_NO_NEW_PRIVS
> >+  */
> >+
> >+ /* External syscall prototypes */
> >+@@ -122,6 +123,14 @@ extern int capget(cap_user_header_t header, const =
cap_user_data_t data);
> >+ #define SECURE_NO_SETUID_FIXUP_LOCKED   3  /* make bit-2 immutable */
> >+ #endif
> >+
> >++/* prctl values that we use */
> >++#ifndef PR_SET_SECUREBITS
> >++#define PR_SET_SECUREBITS		28
> >++#endif
> >++#ifndef PR_SET_NO_NEW_PRIVS
> >++#define PR_SET_NO_NEW_PRIVS		38
> >++#endif
> >++
> >+ // States: new, allocated, initted, updated, applied
> >+ typedef enum { CAPNG_NEW, CAPNG_ERROR, CAPNG_ALLOCATED, CAPNG_INIT,
> >+ 	CAPNG_UPDATED, CAPNG_APPLIED } capng_states_t;
> >+@@ -663,15 +672,22 @@ int capng_change_id(int uid, int gid, capng_flags=
_t flag)
> >+
> >+ int capng_lock(void)
> >+ {
> >+-#ifdef PR_SET_SECUREBITS
> >+-	int rc =3D prctl(PR_SET_SECUREBITS,
> >+-			1 << SECURE_NOROOT |
> >+-			1 << SECURE_NOROOT_LOCKED |
> >+-			1 << SECURE_NO_SETUID_FIXUP |
> >+-			1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
> >++	int rc;
> >++
> >++	// On Linux 3.5 and up, we can directly prevent ourselves and
> >++	// our descendents from gaining privileges.
> >++	if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) =3D=3D 0)
> >++		return 0;
> >++
> >++	// This kernel is too old or otherwise doesn't support
> >++	// PR_SET_NO_NEW_PRIVS.  Fall back to using securebits.
> >++	rc =3D prctl(PR_SET_SECUREBITS,
> >++		   1 << SECURE_NOROOT |
> >++		   1 << SECURE_NOROOT_LOCKED |
> >++		   1 << SECURE_NO_SETUID_FIXUP |
> >++		   1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
> >+ 	if (rc)
> >+ 		return -1;
> >+-#endif
> >+
> >+ 	return 0;
> >+ }
> >diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-sec=
urity/libcap-ng/libcap-ng_0.7.3.bb
> >index 3f225ba..1acf554 100644
> >--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
> >+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
> >@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9ba=
36caa9b7df079bae19f \
> >  		    file://COPYING.LIB;md5=3De3eda01d9815f8d24aae2dbd89b68b06"
> >
> >  SRC_URI =3D "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}=
=2Etar.gz \
> >-	   file://python.patch"
> >+	   file://python.patch \
> >+	   file://CVE-2014-3215.patch \
> >+	   "
> >
> >  inherit lib_package autotools pythonnative
> >
> >

--=20
-Joe MacDonald.
:wq

--HrsILUyxNtiOryfc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUe3PQAAoJEEn8ffcsOfaWsA0IALM2fhmd/oX8TqaB3wwt0TGC
5pC8bxjVUJ+VXCpG0AsPpvtDfEUifOdCarOwJ/dHW+E6G2eD1jyhrUdA+K8xUe3D
3HB/T7R97gyELC+4pcb04tLcxis5tBoG5Eul7Ni2NXIBIAXzVKX1uNyfzmaMqiG/
S+VMJjURfivmaacy0k5Sv4+nmmZ6LDR2XinGENQTOCRUcA+ciD5L6m+Dx6Mf8+Ya
mYc5djK8NX3vtxRW51BGLmrbPTRg7/rqkb6IFOqcCiXLx5yq3r1JZFXz855Mtxz+
5AJAs6PV/+NLfAlCu44grQywxTa14ozhhdh8DugNVT69/2AvjLZnferP7C64Z/I=
=jn6a
-----END PGP SIGNATURE-----

--HrsILUyxNtiOryfc--
