Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C6AE006C6; Tue, 10 Jan 2017 06:25:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19539E0050B
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 06:25:43 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1cQxMs-00008w-LQ from Joe_MacDonald@mentor.com ;
	Tue, 10 Jan 2017 06:25:42 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 10 Jan 2017 06:25:42 -0800
Received: by burninator (Postfix, from userid 1000)	id 674075804F3; Tue, 10
	Jan 2017 09:25:41 -0500 (EST)
Date: Tue, 10 Jan 2017 09:25:41 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <wenzong.fan@windriver.com>
Message-ID: <20170110142540.GA8258@mentor.com>
References: <cover.1484037945.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1484037945.git.wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/2] uprev refpolicy to 2.20161023
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
X-List-Received-Date: Tue, 10 Jan 2017 14:25:46 -0000
X-Groupsio-MsgNum: 33733
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline

--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH 0/2] uprev refpolicy to 2.20161023] On 17.01.=
10 (Tue 00:54) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> Uprev refpolicy to 2.20161023 and fix build errors for refpolicy-minimum.
>=20
> The following changes since commit bae51859f0dbcdde9fd563d15128a6dbbb8168=
01:
>=20
>   audit: upgrade 2.6.6 -> 2.7 (2017-01-09 08:59:55 -0500)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib wenzong/refpolicy-2.20161023
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dwenzong/refpoli=
cy-2.20161023

As poky-contrib is full of unrelated stuff, it's not the right place to
be doing meta-selinux work AFAICT.  I'd rather you actually just
fork meta-selinux somewhere like github if you plan to send pull
requests.  Patches are fine, of course, they're even easier for me to
work with.

-J.

>=20
> Wenzong Fan (2):
>   refpolicy: uprev 2.20151208 -> 2.20161023
>   refpolicy-minimum: update patch file
>=20
>  .../ftp-add-ftpd_t-to-mlsfilewrite.patch                         | 0
>  .../poky-fc-clock.patch                                          | 0
>  .../poky-fc-corecommands.patch                                   | 0
>  .../poky-fc-dmesg.patch                                          | 0
>  .../poky-fc-fix-bind.patch                                       | 0
>  .../poky-fc-fix-real-path_login.patch                            | 0
>  .../poky-fc-fix-real-path_resolv.conf.patch                      | 0
>  .../poky-fc-fix-real-path_shadow.patch                           | 0
>  .../poky-fc-fix-real-path_su.patch                               | 0
>  .../poky-fc-fstools.patch                                        | 0
>  .../poky-fc-ftpwho-dir.patch                                     | 0
>  .../poky-fc-iptables.patch                                       | 0
>  .../poky-fc-mta.patch                                            | 0
>  .../poky-fc-netutils.patch                                       | 0
>  .../poky-fc-nscd.patch                                           | 0
>  .../poky-fc-rpm.patch                                            | 0
>  .../poky-fc-screen.patch                                         | 0
>  .../poky-fc-ssh.patch                                            | 0
>  .../poky-fc-su.patch                                             | 0
>  .../poky-fc-subs_dist.patch                                      | 0
>  .../poky-fc-sysnetwork.patch                                     | 0
>  .../poky-fc-udevd.patch                                          | 0
>  .../poky-fc-update-alternatives_hostname.patch                   | 0
>  .../poky-fc-update-alternatives_sysklogd.patch                   | 0
>  .../poky-fc-update-alternatives_sysvinit.patch                   | 0
>  .../poky-policy-add-rules-for-bsdpty_device_t.patch              | 0
>  .../poky-policy-add-rules-for-syslogd_t-symlink.patch            | 0
>  .../poky-policy-add-rules-for-tmp-symlink.patch                  | 0
>  .../poky-policy-add-rules-for-var-cache-symlink.patch            | 0
>  .../poky-policy-add-rules-for-var-log-symlink-apache.patch       | 0
>  ...ky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch | 0
>  .../poky-policy-add-rules-for-var-log-symlink.patch              | 0
>  .../poky-policy-add-syslogd_t-to-trusted-object.patch            | 0
>  .../poky-policy-allow-nfsd-to-exec-shell-commands.patch          | 0
>  .../poky-policy-allow-setfiles_t-to-read-symlinks.patch          | 0
>  .../poky-policy-allow-sysadm-to-run-rpcinfo.patch                | 0
>  .../poky-policy-don-t-audit-tty_device_t.patch                   | 0
>  .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch                  | 0
>  .../poky-policy-fix-new-SELINUXMNT-in-sys.patch                  | 0
>  .../poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch              | 0
>  .../poky-policy-fix-setfiles-statvfs-get-file-count.patch        | 0
>  .../poky-policy-fix-seutils-manage-config-files.patch            | 0
>  .../refpolicy-update-for_systemd.patch                           | 0
>  .../{refpolicy-mcs_2.20151208.bb =3D> refpolicy-mcs_2.20161023.bb} | 0
>  ...07-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch | 9 +++=
+++---
>  ...icy-minimum_2.20151208.bb =3D> refpolicy-minimum_2.20161023.bb} | 0
>  .../{refpolicy-mls_2.20151208.bb =3D> refpolicy-mls_2.20161023.bb} | 0
>  ...y-standard_2.20151208.bb =3D> refpolicy-standard_2.20161023.bb} | 0
>  ...y-targeted_2.20151208.bb =3D> refpolicy-targeted_2.20161023.bb} | 0
>  .../{refpolicy_2.20151208.inc =3D> refpolicy_2.20161023.inc}       | 8 +=
+++----
>  50 files changed, 10 insertions(+), 7 deletions(-)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/ftp-add-ftpd_t-to-mlsfilewrite.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-clock.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-corecommands.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-dmesg.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fix-bind.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fix-real-path_login.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fix-real-path_resolv.conf.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fix-real-path_shadow.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fix-real-path_su.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-fstools.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-ftpwho-dir.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-iptables.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-mta.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-netutils.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-nscd.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-rpm.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-screen.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-ssh.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-su.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-subs_dist.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-sysnetwork.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-udevd.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-update-alternatives_hostname.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-update-alternatives_sysklogd.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-fc-update-alternatives_sysvinit.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-bsdpty_device_t.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-syslogd_t-symlink.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-tmp-symlink.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-var-cache-symlink.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-var-log-symlink-apache.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patc=
h (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-rules-for-var-log-symlink.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-add-syslogd_t-to-trusted-object.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-allow-nfsd-to-exec-shell-commands.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-allow-setfiles_t-to-read-symlinks.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-allow-sysadm-to-run-rpcinfo.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-don-t-audit-tty_device_t.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-fix-dmesg-to-use-dev-kmsg.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-fix-new-SELINUXMNT-in-sys.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-fix-setfiles-statvfs-get-file-count.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/poky-policy-fix-seutils-manage-config-files.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-2.20151208 =3D> refpolicy-2=
=2E20161023}/refpolicy-update-for_systemd.patch (100%)
>  rename recipes-security/refpolicy/{refpolicy-mcs_2.20151208.bb =3D> refp=
olicy-mcs_2.20161023.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy-minimum_2.20151208.bb =3D> =
refpolicy-minimum_2.20161023.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy-mls_2.20151208.bb =3D> refp=
olicy-mls_2.20161023.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy-standard_2.20151208.bb =3D>=
 refpolicy-standard_2.20161023.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy-targeted_2.20151208.bb =3D>=
 refpolicy-targeted_2.20161023.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy_2.20151208.inc =3D> refpoli=
cy_2.20161023.inc} (91%)
>=20
> --=20
> 2.11.0
>=20
--=20
-Joe MacDonald.
:wq

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYdO7YAAoJEEn8ffcsOfaW2P0IAKalGv0k+vipSMt2NJ3NwcQU
GntKu0raz/RCtDVbUsl6wt3bF3rwpJx1s+o9I9UhMxfgKwbawWNBVTQ36s6iFLqh
ScEjku02H9d1hn2tAWvi8D5cybDN3Bra5vhnC2AKuk/+OBuX6MQlUzDnemHPvmuL
3FVc4i48ltOjQJrPZ/4oWdq6lvt0ThdgHZJtHm6kjqvKltpHhPWGz3E8ZJSIMoL/
22aLxJDgzJuKrHNDB7vFwF4N1egi10n/iHjzwW8dKNuXZzLyMSFhI1O+1x2ydLIs
VxEMQ4j7z1Z8mfFAyW4r2cC3np09m+3z5vkA6FAL4yIzATTT4rEHzYiksDW4dKo=
=WACA
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--
