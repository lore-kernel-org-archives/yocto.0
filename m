Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C9FBE00D39; Tue, 16 Apr 2019 04:40:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_00,DATE_IN_PAST_24_48,
	NUMERIC_HTTP_ADDR, RCVD_IN_DNSWL_NONE,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* 1.3 DATE_IN_PAST_24_48 Date: is 24 to 48 hours before Received: date
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A9CE00D32
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 04:40:42 -0700 (PDT)
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hGMS9-0001Vv-CD from joe@deserted.net ;
	Tue, 16 Apr 2019 04:40:41 -0700
Received: from svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) by
	svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Tue, 16 Apr 2019 04:40:38 -0700
Received: from burninator2.cal.mentorg.com (147.34.91.1) by
	svr-orw-mbx-04.mgc.mentorg.com (147.34.90.204) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Tue, 16 Apr 2019 04:40:38 -0700
Received: by burninator2.cal.mentorg.com (Postfix, from userid 5844)
	id 4704D28A134B; Sun, 14 Apr 2019 12:26:22 -0400 (EDT)
Date: Sun, 14 Apr 2019 12:26:22 -0400
From: Joe MacDonald <joe@deserted.net>
To: <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Message-ID: <20190414162619.GA21302@deserted.net>
References: <20190410155302.GA17879@mentor.com>
MIME-Version: 1.0
In-Reply-To: <20190410155302.GA17879@mentor.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [meta-selinux][PULL] refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:14 -0400)
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
X-List-Received-Date: Tue, 16 Apr 2019 11:40:45 -0000
X-Groupsio-MsgNum: 44815
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline

--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Update on this, I've just now completed this merge (with Yi's corrected
SRC_URI for the RELEASE_2.20190201 tag) and I'm going to start pulling
in the additional meta-selinux patches that have been sent to the
mailing list.  I'll prep a queue of those updates soon and send out
another pull mail to the list in order to keep everyone reasonably
informed of what's in and what's not.  Once that happens, if you have a
patch that's still pending but not in my pull list, please let me know
with a follow up to the list.

Thanks,
-J.

[[yocto] [meta-selinux][PULL] refpolicy: update to 2.20190201 and git HEAD =
policies (2019-04-10 10:57:14 -0400)] On 19.04.10 (Wed 11:53) Joe MacDonald=
 wrote:

> This is a huge, long-overdue update the refpolicy.  I apologise for it
> blocking the other outstanding meta-selinux patches, but I've been
> trying to limit the scope of changes while this happens.  Now that this
> is cleared off the slate, I'll be gathering up the other meta-selinux
> patches from the list.  I'll send out a follow-up on those as they're
> merged and another when I think I'm done, so if I've missed your patch,
> that'll be the time to ping me about it.
>=20
> As for this, here's what I've done.
>=20
> 	- manually reviewed all patches that had been present in
> 	  repolicy-* for both the old stable (2.20170204) and git
> 	  versions
>=20
> 	- forked the SELinuxPolicy/refpolicy repo and applied all
> 	  still-relevant patches to the RELEASE_2.20190201 branch
>=20
> 	- restructured the patches so that all patches that should
> 	  reasonably apply to all variants (mcs, mls, minimum, standard
> 	  and targeted) were in a common branch and only the ones that
> 	  are specific to each variant would be in their own recipe
>=20
> 	- restructure the patches so that systemd and sysvinit patches
> 	  were not applied to the same tree
>=20
> 	- created a parallel set of branches for each of these against
> 	  current git HEAD
>=20
> The results of this can be examined here:
>=20
> 	https://github.com/joeythesaint/refpolicy
>=20
> Then each of these were exported and put in the appropriate SRC_URIs so
> the branch structure is more-or-less preserved.
>=20
> My goals with this approach were the following:
>=20
> 	- make it easier to keep refpolicy up to date, particularly for
> 	  anyone wanting to use the git variants
>=20
> 	- make it easier to determine how your preferred version of
> 	  refpolicy on Yocto differs from upstream refpolicy
>=20
> 	- limit the above differences to the minimum to achieve the goal
> 	  of a functional Yocto system
>=20
> 	- eventually move us away from release tarballs entirely
>=20
> That last point is why I'm preserving the refpolicy fork above.  I'd
> like to keep going with this and so future refpolicy patches will first
> be put in that repo then exported and applied to the SRC_URIs.  If you
> have such a patch and want to send me a PR against the branch you think
> it belongs on from github directly, that'd be awesome, but the old
> method of patches to the mailing list will work fine too, just know that
> this is the way I'm going to try to manage this for the foreseeable
> future.  Ultimately, if this proves to work well, I would like to move
> the refpolicy fork off github and house it on git.yoctoproject.org
> beside meta-selinux, but the workflow needs to be properly validated
> first.
>=20
> One additional point, I intend to take another pass at revising this
> stuff, ideally moving the huge number of common patches out as well.
> There's still some that aren't necessary for base yocto but are for
> additional layers.  That's fine for us to have, but I'd like to get
> those moved to optional layer directories so we're making the best use
> of that functionality we can.  If you have suggestions on which pieces
> already present are good candidates, let me know.  Similarly, if you've
> got additional policy patches you want to see included, feel free to
> send them along, we can easily move them to optional locations inside
> meta-selinux.
>=20
> Finally, please everyone test this and provide feedback on anything that
> doesn't work or looks strange.  This is easily the biggest change we've
> had in meta-selinux in years and I expect there's still some wrinkles to
> be ironed out.  And I really appreciate everyone's patience while we got
> to this point and hope it's not too much more pain before we put a
> ribbon on this and call it done.
>=20
> I'll give this until at least the weekend before merging it to master,
> pending comments or an overwhelming "please just do it" from the
> community.
>=20
> Thanks.
>=20
> ---
>=20
> The following changes since commit a6a3cadb1ef3203a123d8f5f9df27832f55b2c=
e3:
>=20
>   Backport patches from upstream to fix build with musl (2019-03-25 09:43=
:53 +0100)
>=20
> are available in the Git repository at:
>=20
>   git://git.yoctoproject.org/meta-selinux yocto/master-next
>=20
> for you to fetch changes up to 776da889b550ac9e5be414a8cc10fd86b1923264:
>=20
>   refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57=
:14 -0400)
>=20
> ----------------------------------------------------------------
> Joe MacDonald (1):
>       refpolicy: update to 2.20190201 and git HEAD policies
>=20
>  README                                             |  16 +-
>  .../refpolicy-2.20170204/poky-fc-clock.patch       |  20 --
>  .../poky-fc-corecommands.patch                     |  24 --
>  .../refpolicy-2.20170204/poky-fc-dmesg.patch       |  18 --
>  .../poky-fc-fix-real-path_login.patch              |  37 ---
>  .../poky-fc-fix-real-path_shadow.patch             |  34 ---
>  .../refpolicy-2.20170204/poky-fc-fstools.patch     |  75 ------
>  .../refpolicy-2.20170204/poky-fc-ftpwho-dir.patch  |  27 ---
>  .../refpolicy-2.20170204/poky-fc-iptables.patch    |  24 --
>  .../refpolicy-2.20170204/poky-fc-mta.patch         |  27 ---
>  .../refpolicy-2.20170204/poky-fc-netutils.patch    |  24 --
>  .../refpolicy-2.20170204/poky-fc-nscd.patch        |  25 --
>  .../refpolicy-2.20170204/poky-fc-rpm.patch         |  23 --
>  .../refpolicy-2.20170204/poky-fc-screen.patch      |  23 --
>  .../refpolicy-2.20170204/poky-fc-su.patch          |  20 --
>  .../refpolicy-2.20170204/poky-fc-subs_dist.patch   |  33 ---
>  .../refpolicy-2.20170204/poky-fc-sysnetwork.patch  |  48 ----
>  .../refpolicy-2.20170204/poky-fc-udevd.patch       |  38 ---
>  .../poky-fc-update-alternatives_bash.patch         |  24 --
>  .../poky-fc-update-alternatives_hostname.patch     |  21 --
>  .../poky-fc-update-alternatives_sysklogd.patch     |  62 -----
>  .../poky-fc-update-alternatives_sysvinit.patch     |  57 -----
>  ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 ---
>  ...licy-add-rules-for-var-log-symlink-apache.patch |  31 ---
>  ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
>  ...poky-policy-add-rules-for-var-log-symlink.patch | 185 ---------------
>  ...-policy-allow-nfsd-to-exec-shell-commands.patch |  60 -----
>  ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
>  .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ---
>  .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 259 ---------------=
------
>  ...olicy-fix-setfiles-statvfs-get-file-count.patch |  32 ---
>  ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
>  ...001-fix-update-alternatives-for-sysvinit.patch} |  51 ++--
>  ...nimum-audit-logging-getty-audit-related-.patch} |  17 +-
>  ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
>  ...nimum-locallogin-add-allow-rules-for-typ.patch} |  11 +-
>  ...ysklogd-apply-policy-to-sysklogd-symlink.patch} |  49 ++--
>  ...nimum-systemd-unconfined-lib-add-systemd.patch} |  34 +--
>  ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
>  ...nimum-systemd-mount-logging-authlogin-ad.patch} |  39 ++--
>  ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
>  ...inimum-init-fix-reboot-with-systemd-as-in.patch |   9 +-
>  ...nf-label-resolv.conf-in-var-run-properly.patch} |  24 +-
>  ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
>  ...ogin-apply-login-context-to-login.shadow.patch} |  22 +-
>  ...inimum-systemd-fix-for-login-journal-serv.patch |  33 +--
>  .../0008-fc-bind-fix-real-path-for-bind.patch}     |  25 +-
>  ...inimum-systemd-fix-for-systemd-tmp-files-.patch |  34 ++-
>  .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
>  ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  13 +-
>  ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
>  ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
>  ...snetwork-apply-policy-to-ip-alternatives.patch} |  35 ++-
>  ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
>  ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
>  ...15-fc-su-apply-policy-to-su-alternatives.patch} |  18 +-
>  ...016-fc-fstools-fix-real-path-for-fstools.patch} |  58 ++---
>  ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
>  ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
>  ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
>  ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
>  ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  69 ++----
>  ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
>  ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
>  ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
>  ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
>  ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
>  ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
>  ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
>  ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
>  ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
>  ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
>  ...e-init-update-for-systemd-related-allow-.patch} |  16 +-
>  ...cy-minimum-make-sysadmin-module-optional.patch} |  28 +--
>  ...le-apache-add-rules-for-the-symlink-of-va.patch |  33 +++
>  ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
>  ...0001-fix-update-alternatives-for-sysvinit.patch |  53 +++++
>  ...inimum-audit-logging-getty-audit-related-.patch |  68 ++++++
>  ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
>  ...inimum-locallogin-add-allow-rules-for-typ.patch |  54 +++++
>  ...sysklogd-apply-policy-to-sysklogd-symlink.patch |  57 +++++
>  ...inimum-systemd-unconfined-lib-add-systemd.patch | 121 ++++++++++
>  ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
>  ...inimum-systemd-mount-logging-authlogin-ad.patch |  96 ++++++++
>  ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
>  ...inimum-init-fix-reboot-with-systemd-as-in.patch |  37 +++
>  ...nf-label-resolv.conf-in-var-run-properly.patch} |  26 ++-
>  ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
>  ...login-apply-login-context-to-login.shadow.patch |  27 +++
>  ...inimum-systemd-fix-for-login-journal-serv.patch | 103 ++++++++
>  ...h =3D> 0008-fc-bind-fix-real-path-for-bind.patch} |  25 +-
>  ...inimum-systemd-fix-for-systemd-tmp-files-.patch | 110 +++++++++
>  .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
>  ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  70 ++++++
>  ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
>  ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
>  ...ysnetwork-apply-policy-to-ip-alternatives.patch |  48 ++++
>  ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
>  ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
>  ...15-fc-su-apply-policy-to-su-alternatives.patch} |  20 +-
>  ...0016-fc-fstools-fix-real-path-for-fstools.patch |  76 ++++++
>  ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
>  ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
>  ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
>  ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
>  ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  71 ++----
>  ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
>  ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
>  ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
>  ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
>  ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
>  ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
>  ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
>  ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
>  ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
>  ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
>  ...e-init-update-for-systemd-related-allow-.patch} |  23 +-
>  ...cy-minimum-make-sysadmin-module-optional.patch} |  53 ++---
>  ...e-apache-add-rules-for-the-symlink-of-va.patch} |  24 +-
>  .../refpolicy/refpolicy-git/poky-fc-clock.patch    |  19 --
>  .../refpolicy/refpolicy-git/poky-fc-dmesg.patch    |  15 --
>  .../poky-fc-fix-real-path_shadow.patch             |  50 ----
>  .../refpolicy-git/poky-fc-ftpwho-dir.patch         |  27 ---
>  .../refpolicy/refpolicy-git/poky-fc-mta.patch      |  27 ---
>  .../refpolicy/refpolicy-git/poky-fc-nscd.patch     |  25 --
>  .../refpolicy/refpolicy-git/poky-fc-rpm.patch      |  23 --
>  .../refpolicy/refpolicy-git/poky-fc-screen.patch   |  23 --
>  .../refpolicy-git/poky-fc-subs_dist.patch          |  32 ---
>  .../refpolicy/refpolicy-git/poky-fc-udevd.patch    |  27 ---
>  .../poky-fc-update-alternatives_bash.patch         |  12 -
>  .../poky-fc-update-alternatives_hostname.patch     |  19 --
>  ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  29 ---
>  ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
>  ...poky-policy-add-rules-for-var-log-symlink.patch |  88 -------
>  ...-policy-allow-nfsd-to-exec-shell-commands.patch |  81 -------
>  ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
>  .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  22 --
>  .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 253 ---------------=
-----
>  ...olicy-fix-setfiles-statvfs-get-file-count.patch |  31 ---
>  ...s_2.20170204.bb =3D> refpolicy-mcs_2.20190201.bb} |   0
>  ...inimum-systemd-mount-enable-requiried-ref.patch |  47 ----
>  ...20170204.bb =3D> refpolicy-minimum_2.20190201.bb} |  39 ++--
>  .../refpolicy/refpolicy-minimum_git.bb             |  22 +-
>  ...s_2.20170204.bb =3D> refpolicy-mls_2.20190201.bb} |   0
>  ...0170204.bb =3D> refpolicy-standard_2.20190201.bb} |   0
>  ...efpolicy-remove-duplicate-type_transition.patch |  46 ----
>  ...move-duplicate-type_transition_2.20170204.patch |  46 ----
>  .../refpolicy-unconfined_u-default-user.patch      | 222 ---------------=
---
>  ...licy-unconfined_u-default-user_2.20170204.patch | 222 ---------------=
---
>  .../refpolicy/refpolicy-targeted_2.20170204.bb     |  29 ---
>  .../refpolicy/refpolicy-targeted_2.20190201.bb     |  35 +++
>  .../refpolicy/refpolicy-targeted_git.bb            |  22 +-
>  .../refpolicy/refpolicy_2.20170204.inc             |  58 -----
>  .../refpolicy/refpolicy_2.20190201.inc             |   7 +
>  recipes-security/refpolicy/refpolicy_common.inc    |  48 +++-
>  recipes-security/refpolicy/refpolicy_git.inc       |  55 +----
>  156 files changed, 3145 insertions(+), 3748 deletions(-)
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-clock.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-corecommands.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-dmesg.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-fix-real-path_login.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-fix-real-path_shadow.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-fstools.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-ftpwho-dir.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-iptables.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-mta.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-netutils.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-nscd.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-rpm.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-screen.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-su.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-subs_dist.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-sysnetwork.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-udevd.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-update-alternatives_bash.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-update-alternatives_hostname.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-update-alternatives_sysklogd.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
fc-update-alternatives_sysvinit.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-add-rules-for-syslogd_t-symlink.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-add-rules-for-var-log-symlink-apache.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-add-rules-for-var-log-symlink.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-allow-nfsd-to-exec-shell-commands.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-allow-setfiles_t-to-read-symlinks.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-fix-dmesg-to-use-dev-kmsg.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-fix-new-SELINUXMNT-in-sys.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-=
policy-fix-setfiles-statvfs-get-file-count.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-=
fc-subs-volatile-alias-common-var-volatile-paths.patch
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternat=
ives_sysvinit.patch =3D> refpolicy-2.20190201/0001-fix-update-alternatives-=
for-sysvinit.patch} (51%)
>  rename recipes-security/refpolicy/{refpolicy-minimum/0002-refpolicy-mini=
mum-audit-logging-getty-audit-related-.patch =3D> refpolicy-2.20190201/0001=
-refpolicy-minimum-audit-logging-getty-audit-related-.patch} (85%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-=
fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
>  rename recipes-security/refpolicy/{refpolicy-minimum/0004-refpolicy-mini=
mum-locallogin-add-allow-rules-for-typ.patch =3D> refpolicy-2.20190201/0002=
-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch} (87%)
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternat=
ives_sysklogd.patch =3D> refpolicy-2.20190201/0003-fc-sysklogd-apply-policy=
-to-sysklogd-symlink.patch} (52%)
>  rename recipes-security/refpolicy/{refpolicy-minimum/0001-refpolicy-mini=
mum-systemd-unconfined-lib-add-systemd.patch =3D> refpolicy-2.20190201/0003=
-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch} (79%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-=
fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
>  rename recipes-security/refpolicy/{refpolicy-minimum/0003-refpolicy-mini=
mum-systemd-mount-logging-authlogin-ad.patch =3D> refpolicy-2.20190201/0004=
-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch} (76%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-=
fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
>  rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.20=
190201}/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch (83=
%)
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_r=
esolv.conf.patch =3D> refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv=
=2Econf-in-var-run-properly.patch} (54%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-=
refpolicy-minimum-systemd-mount-enable-required-refp.patch
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_l=
ogin.patch =3D> refpolicy-2.20190201/0007-fc-login-apply-login-context-to-l=
ogin.shadow.patch} (52%)
>  rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.20=
190201}/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch (82=
%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-bind=
=2Epatch =3D> refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patc=
h} (62%)
>  rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.20=
190201}/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch (80=
%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-=
fc-hwclock-add-hwclock-alternatives.patch
>  rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.20=
190201}/0009-refpolicy-minimum-systemd-fix-for-syslog.patch (90%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-=
fc-dmesg-apply-policy-to-dmesg-alternatives.patch
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-ssh.patch =3D> =
refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (5=
5%)
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-sysnetwork.patc=
h =3D> refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternati=
ves.patch} (54%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-=
fc-udev-apply-policy-to-udevadm-in-libexec.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-=
fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_s=
u.patch =3D> refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternative=
s.patch} (52%)
>  rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fstools.patch =
=3D> refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch} =
(66%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-=
syslogd_t-to-trusted-object.patch =3D> refpolicy-2.20190201/0017-policy-mod=
ule-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-=
policy-module-logging-add-rules-for-the-symlink-of-v.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-=
policy-module-logging-add-rules-for-syslogd-symlink-.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-=
rules-for-var-cache-symlink.patch =3D> refpolicy-2.20190201/0020-policy-mod=
ule-logging-add-domain-rules-for-the-subdi.patch} (69%)
>  rename recipes-security/refpolicy/{refpolicy-git/poky-policy-add-rules-f=
or-tmp-symlink.patch =3D> refpolicy-2.20190201/0021-policy-module-files-add=
-rules-for-the-symlink-of-tmp.patch} (54%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-=
rules-for-bsdpty_device_t.patch =3D> refpolicy-2.20190201/0022-policy-modul=
e-terminals-add-rules-for-bsdpty_device_.patch} (67%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-don-=
t-audit-tty_device_t.patch =3D> refpolicy-2.20190201/0023-policy-module-ter=
minals-don-t-audit-tty_device_t-in-.patch} (66%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-=
policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-=
nfsd_t-to-mount_nfsd_fs_t.patch =3D> refpolicy-2.20190201/0025-policy-modul=
e-rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-=
policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-allo=
w-sysadm-to-run-rpcinfo.patch =3D> refpolicy-2.20190201/0027-policy-module-=
rpc-allow-sysadm-to-run-rpcinfo.patch} (70%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-=
seutils-manage-config-files.patch =3D> refpolicy-2.20190201/0028-policy-mod=
ule-userdomain-fix-selinux-utils-to-manage.patch} (60%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-=
policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-=
policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/ftp-add-ftpd_t-t=
o-mlsfilewrite.patch =3D> refpolicy-2.20190201/0031-policy-module-ftp-add-f=
tpd_t-to-mls_file_write_all_l.patch} (74%)
>  rename recipes-security/refpolicy/{refpolicy-git/refpolicy-update-for_sy=
stemd.patch =3D> refpolicy-2.20190201/0032-policy-module-init-update-for-sy=
stemd-related-allow-.patch} (66%)
>  rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-opti=
onal-issue-on-sysadm-module.patch =3D> refpolicy-2.20190201/0033-refpolicy-=
minimum-make-sysadmin-module-optional.patch} (69%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-=
policy-module-apache-add-rules-for-the-symlink-of-va.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs=
-volatile-alias-common-var-volatile-paths.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fix-upd=
ate-alternatives-for-sysvinit.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpoli=
cy-minimum-audit-logging-getty-audit-related-.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-fc-subs=
-busybox-set-aliases-for-bin-sbin-and-usr.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpoli=
cy-minimum-locallogin-add-allow-rules-for-typ.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysk=
logd-apply-policy-to-sysklogd-symlink.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpoli=
cy-minimum-systemd-unconfined-lib-add-systemd.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-fc-host=
name-apply-policy-to-common-yocto-hostname-al.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpoli=
cy-minimum-systemd-mount-logging-authlogin-ad.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-fc-bash=
-apply-usr-bin-bash-context-to-bin-bash.bash.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpoli=
cy-minimum-init-fix-reboot-with-systemd-as-in.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real=
-path_resolv.conf.patch =3D> refpolicy-git/0006-fc-resolv.conf-label-resolv=
=2Econf-in-var-run-properly.patch} (52%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpoli=
cy-minimum-systemd-mount-enable-required-refp.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-logi=
n-apply-login-context-to-login.shadow.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpoli=
cy-minimum-systemd-fix-for-login-journal-serv.patch
>  rename recipes-security/refpolicy/refpolicy-git/{poky-fc-fix-bind.patch =
=3D> 0008-fc-bind-fix-real-path-for-bind.patch} (62%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpoli=
cy-minimum-systemd-fix-for-systemd-tmp-files-.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwcl=
ock-add-hwclock-alternatives.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpoli=
cy-minimum-systemd-fix-for-syslog.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmes=
g-apply-policy-to-dmesg-alternatives.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-ssh.patc=
h =3D> refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (5=
2%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0012-fc-sysn=
etwork-apply-policy-to-ip-alternatives.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0013-fc-udev=
-apply-policy-to-udevadm-in-libexec.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-=
apply-rpm_exec-policy-to-cpio-binaries.patch
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real=
-path_su.patch =3D> refpolicy-git/0015-fc-su-apply-policy-to-su-alternative=
s.patch} (52%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fsto=
ols-fix-real-path-for-fstools.patch
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-syslogd=
_t-to-trusted-object.patch =3D> 0017-policy-module-logging-Add-the-syslogd_=
t-to-trusted-o.patch} (69%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0018-policy-=
module-logging-add-rules-for-the-symlink-of-v.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0019-policy-=
module-logging-add-rules-for-syslogd-symlink-.patch
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-f=
or-var-cache-symlink.patch =3D> 0020-policy-module-logging-add-domain-rules=
-for-the-subdi.patch} (69%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-=
rules-for-tmp-symlink.patch =3D> refpolicy-git/0021-policy-module-files-add=
-rules-for-the-symlink-of-tmp.patch} (53%)
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-f=
or-bsdpty_device_t.patch =3D> 0022-policy-module-terminals-add-rules-for-bs=
dpty_device_.patch} (67%)
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-don-t-audit=
-tty_device_t.patch =3D> 0023-policy-module-terminals-don-t-audit-tty_devic=
e_t-in-.patch} (66%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-=
module-rpc-allow-nfsd-to-exec-shell-commands.patch
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-nfsd_t-=
to-mount_nfsd_fs_t.patch =3D> 0025-policy-module-rpc-fix-policy-for-nfsserv=
er-to-mount-.patch} (54%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-=
module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-allow-sysad=
m-to-run-rpcinfo.patch =3D> 0027-policy-module-rpc-allow-sysadm-to-run-rpci=
nfo.patch} (70%)
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-seutils=
-manage-config-files.patch =3D> 0028-policy-module-userdomain-fix-selinux-u=
tils-to-manage.patch} (60%)
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-=
module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-=
module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
>  rename recipes-security/refpolicy/refpolicy-git/{ftp-add-ftpd_t-to-mlsfi=
lewrite.patch =3D> 0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_=
l.patch} (74%)
>  rename recipes-security/refpolicy/{refpolicy-2.20170204/refpolicy-update=
-for_systemd.patch =3D> refpolicy-git/0032-policy-module-init-update-for-sy=
stemd-related-allow-.patch} (52%)
>  rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-opti=
onal-issue-on-sysadm-module_2.20170204.patch =3D> refpolicy-git/0033-refpol=
icy-minimum-make-sysadmin-module-optional.patch} (56%)
>  rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-f=
or-var-log-symlink-apache.patch =3D> 0034-policy-module-apache-add-rules-fo=
r-the-symlink-of-va.patch} (54%)
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-cloc=
k.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-dmes=
g.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-=
real-path_shadow.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ftpw=
ho-dir.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-mta.=
patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-nscd=
=2Epatch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.=
patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-scre=
en.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-subs=
_dist.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-udev=
d.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-upda=
te-alternatives_bash.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-upda=
te-alternatives_hostname.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
add-rules-for-syslogd_t-symlink.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
add-rules-for-var-log-symlink-audisp_remote_t.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
add-rules-for-var-log-symlink.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
allow-nfsd-to-exec-shell-commands.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
allow-setfiles_t-to-read-symlinks.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
fix-dmesg-to-use-dev-kmsg.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
fix-new-SELINUXMNT-in-sys.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-=
fix-setfiles-statvfs-get-file-count.patch
>  rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb =3D> refp=
olicy-mcs_2.20190201.bb} (100%)
>  delete mode 100644 recipes-security/refpolicy/refpolicy-minimum/0006-ref=
policy-minimum-systemd-mount-enable-requiried-ref.patch
>  rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb =3D> =
refpolicy-minimum_2.20190201.bb} (66%)
>  rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb =3D> refp=
olicy-mls_2.20190201.bb} (100%)
>  rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb =3D>=
 refpolicy-standard_2.20190201.bb} (100%)
>  delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-remove-duplicate-type_transition.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-remove-duplicate-type_transition_2.20170204.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-unconfined_u-default-user.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-unconfined_u-default-user_2.20170204.patch
>  delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20170=
204.bb
>  create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190=
201.bb
>  delete mode 100644 recipes-security/refpolicy/refpolicy_2.20170204.inc
>  create mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc
>=20
> --=20
> -Joe MacDonald.
> :wq



> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXLNfKwAKCRDAW9yWWiDR
fOqiAJ90K+K5rcRXJzuKy8YeccsL5GD4XgCfWX/8YdDmtpfNO/9B8cCySbtM+vU=
=ALbT
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--
