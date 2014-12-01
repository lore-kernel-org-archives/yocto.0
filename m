Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C761CE0092E; Sun, 30 Nov 2014 19:21:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06424E0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 19:21:25 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1XvHYC-0004w0-S3 from Joe_MacDonald@mentor.com ;
	Sun, 30 Nov 2014 19:21:24 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.181.6;
	Sun, 30 Nov 2014 19:21:24 -0800
Received: by burninator (Postfix, from userid 1000)	id 7D38F58044A; Sun, 30
	Nov 2014 22:21:22 -0500 (EST)
Date: Sun, 30 Nov 2014 22:21:22 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20141201032121.GT3886@mentor.com>
References: <1417114150-12085-1-git-send-email-joe_macdonald@mentor.com>
	<547AA25B.4020506@gmail.com> <20141130194524.GO3886@mentor.com>
	<547B8A5F.6060706@gmail.com>
MIME-Version: 1.0
In-Reply-To: <547B8A5F.6060706@gmail.com>
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
X-List-Received-Date: Mon, 01 Dec 2014 03:21:36 -0000
X-Groupsio-MsgNum: 22404
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xku3GkZTJumTa1rO"
Content-Disposition: inline

--xku3GkZTJumTa1rO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch] On=
 14.11.30 (Sun 13:21) akuster808 wrote:

>=20
>=20
> On 11/30/2014 11:45 AM, Joe MacDonald wrote:
> >[Re: [yocto] [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch]=
 On 14.11.29 (Sat 20:51) akuster808 wrote:
> >
> >>Joe,
> >>
> >>I went a head and updated to 7.4 which included the security fix.
> >>Thanks for the reminder.
> >
> >Yeah, that's on my to-do list for meta-selinux, too.  That's the right
> >course of action on this one.  :-)
>=20
> To be honest, this package should be in one in core or meta-openembedded.

I agree, but I'd like to see it moved to core if anywhere, since
currently meta-selinux still doesn't have any layer dependencies beyond
core.  I'm not sure that's viable in the long term, but I think there's
value in making selinux as light as possible for anyone wanting to use
it.

-J.

>=20
> - Armin
> >-J.
> >
> >>
> >>- Armin
> >>
> >>On 11/27/2014 10:49 AM, Joe MacDonald wrote:
> >>>Importing the patch from meta-selinux, which itself was a backport from
> >>>the upstream source tree.
> >>>
> >>>Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> >>>---
> >>>
> >>>I mentioned a while back that I had at least one patch in meta-selinux=
 that may
> >>>apply to meta-security as well.  I don't know if you guys are interest=
ed in this
> >>>or not since the primary tool to demonstrate the exploit is seunshare,=
 but it is
> >>>a problem in libcap-ng itself and it is exploitable outside of the sel=
inux
> >>>framework.
> >>>
> >>>-J.
> >>>
> >>>  .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 91 ++++++++++++=
++++++++++
> >>>  recipes-security/libcap-ng/libcap-ng_0.7.3.bb      |  4 +-
> >>>  2 files changed, 94 insertions(+), 1 deletion(-)
> >>>  create mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-321=
5.patch
> >>>
> >>>diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch =
b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
> >>>new file mode 100644
> >>>index 0000000..e9164d4
> >>>--- /dev/null
> >>>+++ b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
> >>>@@ -0,0 +1,91 @@
> >>>+libcap-ng: local privilege escalation due to capng_lock
> >>>+
> >>>+Following the discussion here:
> >>>+
> >>>+   http://openwall.com/lists/oss-security/2014/04/29/7
> >>>+
> >>>+This is known to impact SELinux tools, however the issue could be exp=
loited by
> >>>+any application using the relevant functions in libcap-ng provided it=
 is suid
> >>>+root.
> >>>+
> >>>+Upstream-Status: Backport
> >>>+
> >>>+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> >>>+
> >>>+diff --git a/docs/capng_lock.3 b/docs/capng_lock.3
> >>>+index 7683119..a070c1e 100644
> >>>+--- a/docs/capng_lock.3
> >>>++++ b/docs/capng_lock.3
> >>>+@@ -8,12 +8,13 @@ int capng_lock(void);
> >>>+
> >>>+ .SH "DESCRIPTION"
> >>>+
> >>>+-capng_lock will take steps to prevent children of the current proces=
s to regain full privileges if the uid is 0. This should be called while po=
ssessing the CAP_SETPCAP capability in the kernel. This function will do th=
e following if permitted by the kernel: Set the NOROOT option on for PR_SET=
_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set =
the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_S=
ETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.
> >>>++capng_lock will take steps to prevent children of the current proces=
s from gaining privileges by executing setuid programs.  This should be cal=
led while possessing the CAP_SETPCAP capability in the kernel.
> >>>+
> >>>++This function will do the following if permitted by the kernel:  If =
the kernel supports PR_SET_NO_NEW_PRIVS, it will use it.  Otherwise it will=
 set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED opti=
on to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR=
_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET=
_SECUREBITS.  If both fail, it will return an error.
> >>>+
> >>>+ .SH "RETURN VALUE"
> >>>+
> >>>+-This returns 0 on success and a negative number on failure. -1 means=
 a failure setting any of the PR_SET_SECUREBITS options.
> >>>++This returns 0 on success and a negative number on failure. -1 means=
 a failure to use PR_SET_NO_NEW_PRIVS and a failure setting any of the PR_S=
ET_SECUREBITS options.
> >>>+
> >>>+ .SH "SEE ALSO"
> >>>+
> >>>+diff --git a/src/cap-ng.c b/src/cap-ng.c
> >>>+index bd105ba..422f2bc 100644
> >>>+--- a/src/cap-ng.c
> >>>++++ b/src/cap-ng.c
> >>>+@@ -45,6 +45,7 @@
> >>>+  * 2.6.24 kernel	XATTR_NAME_CAPS
> >>>+  * 2.6.25 kernel	PR_CAPBSET_DROP, CAPABILITY_VERSION_2
> >>>+  * 2.6.26 kernel	PR_SET_SECUREBITS, SECURE_*_LOCKED, VERSION_3
> >>>++ * 3.5    kernel	PR_SET_NO_NEW_PRIVS
> >>>+  */
> >>>+
> >>>+ /* External syscall prototypes */
> >>>+@@ -122,6 +123,14 @@ extern int capget(cap_user_header_t header, cons=
t cap_user_data_t data);
> >>>+ #define SECURE_NO_SETUID_FIXUP_LOCKED   3  /* make bit-2 immutable */
> >>>+ #endif
> >>>+
> >>>++/* prctl values that we use */
> >>>++#ifndef PR_SET_SECUREBITS
> >>>++#define PR_SET_SECUREBITS		28
> >>>++#endif
> >>>++#ifndef PR_SET_NO_NEW_PRIVS
> >>>++#define PR_SET_NO_NEW_PRIVS		38
> >>>++#endif
> >>>++
> >>>+ // States: new, allocated, initted, updated, applied
> >>>+ typedef enum { CAPNG_NEW, CAPNG_ERROR, CAPNG_ALLOCATED, CAPNG_INIT,
> >>>+ 	CAPNG_UPDATED, CAPNG_APPLIED } capng_states_t;
> >>>+@@ -663,15 +672,22 @@ int capng_change_id(int uid, int gid, capng_fla=
gs_t flag)
> >>>+
> >>>+ int capng_lock(void)
> >>>+ {
> >>>+-#ifdef PR_SET_SECUREBITS
> >>>+-	int rc =3D prctl(PR_SET_SECUREBITS,
> >>>+-			1 << SECURE_NOROOT |
> >>>+-			1 << SECURE_NOROOT_LOCKED |
> >>>+-			1 << SECURE_NO_SETUID_FIXUP |
> >>>+-			1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
> >>>++	int rc;
> >>>++
> >>>++	// On Linux 3.5 and up, we can directly prevent ourselves and
> >>>++	// our descendents from gaining privileges.
> >>>++	if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) =3D=3D 0)
> >>>++		return 0;
> >>>++
> >>>++	// This kernel is too old or otherwise doesn't support
> >>>++	// PR_SET_NO_NEW_PRIVS.  Fall back to using securebits.
> >>>++	rc =3D prctl(PR_SET_SECUREBITS,
> >>>++		   1 << SECURE_NOROOT |
> >>>++		   1 << SECURE_NOROOT_LOCKED |
> >>>++		   1 << SECURE_NO_SETUID_FIXUP |
> >>>++		   1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
> >>>+ 	if (rc)
> >>>+ 		return -1;
> >>>+-#endif
> >>>+
> >>>+ 	return 0;
> >>>+ }
> >>>diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-s=
ecurity/libcap-ng/libcap-ng_0.7.3.bb
> >>>index 3f225ba..1acf554 100644
> >>>--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
> >>>+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
> >>>@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D94d55d512a9=
ba36caa9b7df079bae19f \
> >>>  		    file://COPYING.LIB;md5=3De3eda01d9815f8d24aae2dbd89b68b06"
> >>>
> >>>  SRC_URI =3D "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${P=
V}.tar.gz \
> >>>-	   file://python.patch"
> >>>+	   file://python.patch \
> >>>+	   file://CVE-2014-3215.patch \
> >>>+	   "
> >>>
> >>>  inherit lib_package autotools pythonnative
> >>>
> >>>
> >
> >
> >

--=20
-Joe MacDonald.
:wq

--xku3GkZTJumTa1rO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUe96xAAoJEEn8ffcsOfaWV0gIALlY9vS5ft+2XnWIsYstmOdf
tttIYJf/DnPMfe9hNOL0zyhDXrHXizNqHbjx0m2dk8qFYDAL8LFH02B2IV4rWYk9
wKi2osthoH3a5xREgC7c/tA1ZdsehDGJQJNmPARbmdBCE4nVCNLO817zQWwUavKK
mSKlB9gkDosCN/erE76Ftem4qKyQBzMRB024rx2ibICEyx24M82kNKuUGQFxfYCq
NTtN7e9G5hvB/UHSAjAAUVIV3LOEqMkUYr+LjP0mW/bXR/S9bmIUvXv2kBCHKMlI
XGFOzc6V1TP2qnkhCXuwIupw4tuTo8hOjDYvwR2rflxXr6VByCANVY8+wW5a5m0=
=7F2+
-----END PGP SIGNATURE-----

--xku3GkZTJumTa1rO--
