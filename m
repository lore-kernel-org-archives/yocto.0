Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3C9AE00C1E; Wed, 24 Apr 2019 06:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00, DATE_IN_PAST_12_24, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* 1.0 DATE_IN_PAST_12_24 Date: is 12 to 24 hours before Received: date
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7661FE00BAA
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 06:06:31 -0700 (PDT)
Received: from svr-orw-mbx-07.mgc.mentorg.com ([147.34.90.207])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hJHbZ-0006OY-5C from joe@deserted.net ;
	Wed, 24 Apr 2019 06:06:29 -0700
Received: from SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) by
	SVR-ORW-MBX-07.mgc.mentorg.com (147.34.90.207) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Wed, 24 Apr 2019 06:06:26 -0700
Received: from burninator2.cal.mentorg.com (147.34.91.1) by
	SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Wed, 24 Apr 2019 06:06:26 -0700
Received: by burninator2.cal.mentorg.com (Postfix, from userid 5844)
	id 34A2D28A134C; Tue, 23 Apr 2019 12:00:46 -0400 (EDT)
Date: Tue, 23 Apr 2019 12:00:46 -0400
From: Joe MacDonald <joe@deserted.net>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190423160043.GA5013@deserted.net>
References: <1555654248-5791-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1555654248-5791-1-git-send-email-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] refpolicy: refresh patches
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
X-List-Received-Date: Wed, 24 Apr 2019 13:06:33 -0000
X-Groupsio-MsgNum: 44902
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline

--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

Where did this patch refresh come from?  Since the goal right now for the
refpolicy recipes is to move to a purely git-based approach, I'd prefer to =
not
do patch refreshes that don't come from an export of the patched git trees,=
 like
the one I'd mentioned in my earlier email here:

	https://www.mail-archive.com/yocto@yoctoproject.org/msg43933.html

Thanks,
-Joe.

[[yocto] [meta-selinux][PATCH] refpolicy: refresh patches] On 19.04.19 (Fri=
 14:10) Yi Zhao wrote:

> Refrefsh 0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
> and 0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch.
> Remove the trailing line: \ No newline at end of file
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  ...y-minimum-audit-logging-getty-audit-related-.patch |  1 -
>  ...y-minimum-systemd-mount-logging-authlogin-ad.patch | 19 ++++++++-----=
------
>  ...y-minimum-audit-logging-getty-audit-related-.patch |  1 -
>  ...y-minimum-systemd-mount-logging-authlogin-ad.patch | 19 ++++++++-----=
------
>  4 files changed, 16 insertions(+), 24 deletions(-)
>=20
> diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpoli=
cy-minimum-audit-logging-getty-audit-related-.patch b/recipes-security/refp=
olicy/refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit=
-related-.patch
> index f92ddb8..10d2bcb 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-mini=
mum-audit-logging-getty-audit-related-.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20190201/0001-refpolicy-mini=
mum-audit-logging-getty-audit-related-.patch
> @@ -62,7 +62,6 @@ index 63e92a8e..8ab46925 100644
>  +allow auditd_t initrc_t:unix_dgram_socket sendto;
>  +
>  +allow klogd_t initrc_t:unix_dgram_socket sendto;
> -\ No newline at end of file
>  --=20
>  2.19.1
> =20
> diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpoli=
cy-minimum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refp=
olicy/refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-aut=
hlogin-ad.patch
> index 98b6156..65ef55b 100644
> --- a/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-mini=
mum-systemd-mount-logging-authlogin-ad.patch
> +++ b/recipes-security/refpolicy/refpolicy-2.20190201/0004-refpolicy-mini=
mum-systemd-mount-logging-authlogin-ad.patch
> @@ -33,13 +33,13 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mento=
r.com>
>  Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>  ---
>   policy/modules/system/authlogin.te | 2 ++
> - policy/modules/system/logging.te   | 7 ++++++-
> + policy/modules/system/logging.te   | 5 +++++
>   policy/modules/system/mount.te     | 3 +++
>   policy/modules/system/systemd.te   | 5 +++++
> - 4 files changed, 16 insertions(+), 1 deletion(-)
> + 4 files changed, 15 insertions(+)
> =20
>  diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/=
authlogin.te
> -index 345e07f3..39f860e0 100644
> +index 345e07f..39f860e 100644
>  --- a/policy/modules/system/authlogin.te
>  +++ b/policy/modules/system/authlogin.te
>  @@ -472,3 +472,5 @@ optional_policy(`
> @@ -49,23 +49,20 @@ index 345e07f3..39f860e0 100644
>  +
>  +allow chkpwd_t proc_t:filesystem getattr;
>  diff --git a/policy/modules/system/logging.te b/policy/modules/system/lo=
gging.te
> -index 8ab46925..520f7da6 100644
> +index c9991ab..520f7da 100644
>  --- a/policy/modules/system/logging.te
>  +++ b/policy/modules/system/logging.te
> -@@ -627,4 +627,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create=
 open read append };
> - allow auditd_t tmpfs_t:dir { open read search add_name write getattr se=
arch };
> +@@ -628,3 +628,8 @@ allow auditd_t tmpfs_t:dir { open read search add_na=
me write getattr search };
>   allow auditd_t initrc_t:unix_dgram_socket sendto;
>  =20
> --allow klogd_t initrc_t:unix_dgram_socket sendto;
> -\ No newline at end of file
> -+allow klogd_t initrc_t:unix_dgram_socket sendto;
> + allow klogd_t initrc_t:unix_dgram_socket sendto;
>  +
>  +allow syslogd_t self:shm create;
>  +allow syslogd_t self:sem { create read unix_write write };
>  +allow syslogd_t self:shm { read unix_read unix_write write };
>  +allow syslogd_t tmpfs_t:file { read write };
>  diff --git a/policy/modules/system/mount.te b/policy/modules/system/moun=
t.te
> -index 3dcb8493..a87d0e82 100644
> +index 3dcb849..a87d0e8 100644
>  --- a/policy/modules/system/mount.te
>  +++ b/policy/modules/system/mount.te
>  @@ -231,3 +231,6 @@ optional_policy(`
> @@ -76,7 +73,7 @@ index 3dcb8493..a87d0e82 100644
>  +allow mount_t proc_t:filesystem getattr;
>  +allow mount_t initrc_t:udp_socket { read write };
>  diff --git a/policy/modules/system/systemd.te b/policy/modules/system/sy=
stemd.te
> -index a6f09dfd..68b80de3 100644
> +index a6f09df..68b80de 100644
>  --- a/policy/modules/system/systemd.te
>  +++ b/policy/modules/system/systemd.te
>  @@ -993,6 +993,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file { r=
elabelfrom relabelto };
> diff --git a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-mini=
mum-audit-logging-getty-audit-related-.patch b/recipes-security/refpolicy/r=
efpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
> index 3cc5395..517782d 100644
> --- a/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-aud=
it-logging-getty-audit-related-.patch
> +++ b/recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-aud=
it-logging-getty-audit-related-.patch
> @@ -62,7 +62,6 @@ index e6221a02..4cc73327 100644
>  +allow auditd_t initrc_t:unix_dgram_socket sendto;
>  +
>  +allow klogd_t initrc_t:unix_dgram_socket sendto;
> -\ No newline at end of file
>  --=20
>  2.19.1
> =20
> diff --git a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-mini=
mum-systemd-mount-logging-authlogin-ad.patch b/recipes-security/refpolicy/r=
efpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
> index 06b9192..5132cd8 100644
> --- a/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-sys=
temd-mount-logging-authlogin-ad.patch
> +++ b/recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-sys=
temd-mount-logging-authlogin-ad.patch
> @@ -33,13 +33,13 @@ Signed-off-by: Shrikant Bobade <shrikant_bobade@mento=
r.com>
>  Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>  ---
>   policy/modules/system/authlogin.te | 2 ++
> - policy/modules/system/logging.te   | 7 ++++++-
> + policy/modules/system/logging.te   | 5 +++++
>   policy/modules/system/mount.te     | 3 +++
>   policy/modules/system/systemd.te   | 5 +++++
> - 4 files changed, 16 insertions(+), 1 deletion(-)
> + 4 files changed, 15 insertions(+)
> =20
>  diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/=
authlogin.te
> -index 28f74bac..dfa46612 100644
> +index 28f74ba..dfa4661 100644
>  --- a/policy/modules/system/authlogin.te
>  +++ b/policy/modules/system/authlogin.te
>  @@ -479,3 +479,5 @@ optional_policy(`
> @@ -49,23 +49,20 @@ index 28f74bac..dfa46612 100644
>  +
>  +allow chkpwd_t proc_t:filesystem getattr;
>  diff --git a/policy/modules/system/logging.te b/policy/modules/system/lo=
gging.te
> -index 4cc73327..98c2bd19 100644
> +index 541f5c6..98c2bd1 100644
>  --- a/policy/modules/system/logging.te
>  +++ b/policy/modules/system/logging.te
> -@@ -627,4 +627,9 @@ allow auditd_t tmpfs_t:file { getattr setattr create=
 open read append };
> - allow auditd_t tmpfs_t:dir { open read search add_name write getattr se=
arch };
> +@@ -628,3 +628,8 @@ allow auditd_t tmpfs_t:dir { open read search add_na=
me write getattr search };
>   allow auditd_t initrc_t:unix_dgram_socket sendto;
>  =20
> --allow klogd_t initrc_t:unix_dgram_socket sendto;
> -\ No newline at end of file
> -+allow klogd_t initrc_t:unix_dgram_socket sendto;
> + allow klogd_t initrc_t:unix_dgram_socket sendto;
>  +
>  +allow syslogd_t self:shm create;
>  +allow syslogd_t self:sem { create read unix_write write };
>  +allow syslogd_t self:shm { read unix_read unix_write write };
>  +allow syslogd_t tmpfs_t:file { read write };
>  diff --git a/policy/modules/system/mount.te b/policy/modules/system/moun=
t.te
> -index 3dcb8493..a87d0e82 100644
> +index 3dcb849..a87d0e8 100644
>  --- a/policy/modules/system/mount.te
>  +++ b/policy/modules/system/mount.te
>  @@ -231,3 +231,6 @@ optional_policy(`
> @@ -76,7 +73,7 @@ index 3dcb8493..a87d0e82 100644
>  +allow mount_t proc_t:filesystem getattr;
>  +allow mount_t initrc_t:udp_socket { read write };
>  diff --git a/policy/modules/system/systemd.te b/policy/modules/system/sy=
stemd.te
> -index f6455f6f..b13337b9 100644
> +index f6455f6..b13337b 100644
>  --- a/policy/modules/system/systemd.te
>  +++ b/policy/modules/system/systemd.te
>  @@ -1011,6 +1011,11 @@ allow systemd_tmpfiles_t systemd_journal_t:file {=
 relabelfrom relabelto };
> --=20
> 2.7.4
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--gBBFr7Ir9EOA20Yy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXL82qwAKCRDAW9yWWiDR
fFV9AJ0f2qUEavDcZukUedWUYe8+/ns1kACfZDdHmxf5C4CPiDCWj4Dz+j7DxPk=
=G5R8
-----END PGP SIGNATURE-----

--gBBFr7Ir9EOA20Yy--
