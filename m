Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C6EE00B58; Wed, 10 Apr 2019 08:53:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,NUMERIC_HTTP_ADDR,
	RCVD_IN_DNSWL_NONE,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBC7E00AD5
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 08:53:07 -0700 (PDT)
Received: from svr-orw-mbx-09.mgc.mentorg.com ([147.34.90.209])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hEFX8-0005ao-NX from Joe_MacDonald@mentor.com ;
	Wed, 10 Apr 2019 08:53:06 -0700
Received: from svr-orw-mbx-02.mgc.mentorg.com (2002:9322:5aca::9322:5aca) by
	SVR-ORW-MBX-09.mgc.mentorg.com (2002:9322:5ad1::9322:5ad1) with
	Microsoft
	SMTP Server (TLS) id 15.0.1320.4; Wed, 10 Apr 2019 08:53:04 -0700
Received: from nightwinge.cal.mentorg.com (147.34.91.1) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Wed, 10 Apr 2019 08:53:03 -0700
Received: by nightwinge.cal.mentorg.com (Postfix, from userid 53144)
	id EE50915F879; Wed, 10 Apr 2019 11:53:02 -0400 (EDT)
Date: Wed, 10 Apr 2019 11:53:02 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Message-ID: <20190410155302.GA17879@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [meta-selinux][PULL] refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:14 -0400)
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
X-List-Received-Date: Wed, 10 Apr 2019 15:53:10 -0000
X-Groupsio-MsgNum: 44754
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline

--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is a huge, long-overdue update the refpolicy.  I apologise for it
blocking the other outstanding meta-selinux patches, but I've been
trying to limit the scope of changes while this happens.  Now that this
is cleared off the slate, I'll be gathering up the other meta-selinux
patches from the list.  I'll send out a follow-up on those as they're
merged and another when I think I'm done, so if I've missed your patch,
that'll be the time to ping me about it.

As for this, here's what I've done.

	- manually reviewed all patches that had been present in
	  repolicy-* for both the old stable (2.20170204) and git
	  versions

	- forked the SELinuxPolicy/refpolicy repo and applied all
	  still-relevant patches to the RELEASE_2.20190201 branch

	- restructured the patches so that all patches that should
	  reasonably apply to all variants (mcs, mls, minimum, standard
	  and targeted) were in a common branch and only the ones that
	  are specific to each variant would be in their own recipe

	- restructure the patches so that systemd and sysvinit patches
	  were not applied to the same tree

	- created a parallel set of branches for each of these against
	  current git HEAD

The results of this can be examined here:

	https://github.com/joeythesaint/refpolicy

Then each of these were exported and put in the appropriate SRC_URIs so
the branch structure is more-or-less preserved.

My goals with this approach were the following:

	- make it easier to keep refpolicy up to date, particularly for
	  anyone wanting to use the git variants

	- make it easier to determine how your preferred version of
	  refpolicy on Yocto differs from upstream refpolicy

	- limit the above differences to the minimum to achieve the goal
	  of a functional Yocto system

	- eventually move us away from release tarballs entirely

That last point is why I'm preserving the refpolicy fork above.  I'd
like to keep going with this and so future refpolicy patches will first
be put in that repo then exported and applied to the SRC_URIs.  If you
have such a patch and want to send me a PR against the branch you think
it belongs on from github directly, that'd be awesome, but the old
method of patches to the mailing list will work fine too, just know that
this is the way I'm going to try to manage this for the foreseeable
future.  Ultimately, if this proves to work well, I would like to move
the refpolicy fork off github and house it on git.yoctoproject.org
beside meta-selinux, but the workflow needs to be properly validated
first.

One additional point, I intend to take another pass at revising this
stuff, ideally moving the huge number of common patches out as well.
There's still some that aren't necessary for base yocto but are for
additional layers.  That's fine for us to have, but I'd like to get
those moved to optional layer directories so we're making the best use
of that functionality we can.  If you have suggestions on which pieces
already present are good candidates, let me know.  Similarly, if you've
got additional policy patches you want to see included, feel free to
send them along, we can easily move them to optional locations inside
meta-selinux.

Finally, please everyone test this and provide feedback on anything that
doesn't work or looks strange.  This is easily the biggest change we've
had in meta-selinux in years and I expect there's still some wrinkles to
be ironed out.  And I really appreciate everyone's patience while we got
to this point and hope it's not too much more pain before we put a
ribbon on this and call it done.

I'll give this until at least the weekend before merging it to master,
pending comments or an overwhelming "please just do it" from the
community.

Thanks.

---

The following changes since commit a6a3cadb1ef3203a123d8f5f9df27832f55b2ce3:

  Backport patches from upstream to fix build with musl (2019-03-25 09:43:5=
3 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-selinux yocto/master-next

for you to fetch changes up to 776da889b550ac9e5be414a8cc10fd86b1923264:

  refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:1=
4 -0400)

----------------------------------------------------------------
Joe MacDonald (1):
      refpolicy: update to 2.20190201 and git HEAD policies

 README                                             |  16 +-
 .../refpolicy-2.20170204/poky-fc-clock.patch       |  20 --
 .../poky-fc-corecommands.patch                     |  24 --
 .../refpolicy-2.20170204/poky-fc-dmesg.patch       |  18 --
 .../poky-fc-fix-real-path_login.patch              |  37 ---
 .../poky-fc-fix-real-path_shadow.patch             |  34 ---
 .../refpolicy-2.20170204/poky-fc-fstools.patch     |  75 ------
 .../refpolicy-2.20170204/poky-fc-ftpwho-dir.patch  |  27 ---
 .../refpolicy-2.20170204/poky-fc-iptables.patch    |  24 --
 .../refpolicy-2.20170204/poky-fc-mta.patch         |  27 ---
 .../refpolicy-2.20170204/poky-fc-netutils.patch    |  24 --
 .../refpolicy-2.20170204/poky-fc-nscd.patch        |  25 --
 .../refpolicy-2.20170204/poky-fc-rpm.patch         |  23 --
 .../refpolicy-2.20170204/poky-fc-screen.patch      |  23 --
 .../refpolicy-2.20170204/poky-fc-su.patch          |  20 --
 .../refpolicy-2.20170204/poky-fc-subs_dist.patch   |  33 ---
 .../refpolicy-2.20170204/poky-fc-sysnetwork.patch  |  48 ----
 .../refpolicy-2.20170204/poky-fc-udevd.patch       |  38 ---
 .../poky-fc-update-alternatives_bash.patch         |  24 --
 .../poky-fc-update-alternatives_hostname.patch     |  21 --
 .../poky-fc-update-alternatives_sysklogd.patch     |  62 -----
 .../poky-fc-update-alternatives_sysvinit.patch     |  57 -----
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 ---
 ...licy-add-rules-for-var-log-symlink-apache.patch |  31 ---
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
 ...poky-policy-add-rules-for-var-log-symlink.patch | 185 ---------------
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  60 -----
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ---
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 259 -----------------=
----
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  32 ---
 ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
 ...001-fix-update-alternatives-for-sysvinit.patch} |  51 ++--
 ...nimum-audit-logging-getty-audit-related-.patch} |  17 +-
 ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
 ...nimum-locallogin-add-allow-rules-for-typ.patch} |  11 +-
 ...ysklogd-apply-policy-to-sysklogd-symlink.patch} |  49 ++--
 ...nimum-systemd-unconfined-lib-add-systemd.patch} |  34 +--
 ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
 ...nimum-systemd-mount-logging-authlogin-ad.patch} |  39 ++--
 ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
 ...inimum-init-fix-reboot-with-systemd-as-in.patch |   9 +-
 ...nf-label-resolv.conf-in-var-run-properly.patch} |  24 +-
 ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
 ...ogin-apply-login-context-to-login.shadow.patch} |  22 +-
 ...inimum-systemd-fix-for-login-journal-serv.patch |  33 +--
 .../0008-fc-bind-fix-real-path-for-bind.patch}     |  25 +-
 ...inimum-systemd-fix-for-systemd-tmp-files-.patch |  34 ++-
 .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
 ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  13 +-
 ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
 ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
 ...snetwork-apply-policy-to-ip-alternatives.patch} |  35 ++-
 ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
 ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
 ...15-fc-su-apply-policy-to-su-alternatives.patch} |  18 +-
 ...016-fc-fstools-fix-real-path-for-fstools.patch} |  58 ++---
 ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
 ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
 ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
 ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
 ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  69 ++----
 ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
 ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
 ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
 ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
 ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
 ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
 ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
 ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
 ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
 ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
 ...e-init-update-for-systemd-related-allow-.patch} |  16 +-
 ...cy-minimum-make-sysadmin-module-optional.patch} |  28 +--
 ...le-apache-add-rules-for-the-symlink-of-va.patch |  33 +++
 ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
 ...0001-fix-update-alternatives-for-sysvinit.patch |  53 +++++
 ...inimum-audit-logging-getty-audit-related-.patch |  68 ++++++
 ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
 ...inimum-locallogin-add-allow-rules-for-typ.patch |  54 +++++
 ...sysklogd-apply-policy-to-sysklogd-symlink.patch |  57 +++++
 ...inimum-systemd-unconfined-lib-add-systemd.patch | 121 ++++++++++
 ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
 ...inimum-systemd-mount-logging-authlogin-ad.patch |  96 ++++++++
 ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
 ...inimum-init-fix-reboot-with-systemd-as-in.patch |  37 +++
 ...nf-label-resolv.conf-in-var-run-properly.patch} |  26 ++-
 ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
 ...login-apply-login-context-to-login.shadow.patch |  27 +++
 ...inimum-systemd-fix-for-login-journal-serv.patch | 103 ++++++++
 ...h =3D> 0008-fc-bind-fix-real-path-for-bind.patch} |  25 +-
 ...inimum-systemd-fix-for-systemd-tmp-files-.patch | 110 +++++++++
 .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
 ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  70 ++++++
 ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
 ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
 ...ysnetwork-apply-policy-to-ip-alternatives.patch |  48 ++++
 ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
 ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
 ...15-fc-su-apply-policy-to-su-alternatives.patch} |  20 +-
 ...0016-fc-fstools-fix-real-path-for-fstools.patch |  76 ++++++
 ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
 ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
 ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
 ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
 ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  71 ++----
 ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
 ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
 ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
 ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
 ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
 ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
 ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
 ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
 ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
 ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
 ...e-init-update-for-systemd-related-allow-.patch} |  23 +-
 ...cy-minimum-make-sysadmin-module-optional.patch} |  53 ++---
 ...e-apache-add-rules-for-the-symlink-of-va.patch} |  24 +-
 .../refpolicy/refpolicy-git/poky-fc-clock.patch    |  19 --
 .../refpolicy/refpolicy-git/poky-fc-dmesg.patch    |  15 --
 .../poky-fc-fix-real-path_shadow.patch             |  50 ----
 .../refpolicy-git/poky-fc-ftpwho-dir.patch         |  27 ---
 .../refpolicy/refpolicy-git/poky-fc-mta.patch      |  27 ---
 .../refpolicy/refpolicy-git/poky-fc-nscd.patch     |  25 --
 .../refpolicy/refpolicy-git/poky-fc-rpm.patch      |  23 --
 .../refpolicy/refpolicy-git/poky-fc-screen.patch   |  23 --
 .../refpolicy-git/poky-fc-subs_dist.patch          |  32 ---
 .../refpolicy/refpolicy-git/poky-fc-udevd.patch    |  27 ---
 .../poky-fc-update-alternatives_bash.patch         |  12 -
 .../poky-fc-update-alternatives_hostname.patch     |  19 --
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  29 ---
 ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
 ...poky-policy-add-rules-for-var-log-symlink.patch |  88 -------
 ...-policy-allow-nfsd-to-exec-shell-commands.patch |  81 -------
 ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
 .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  22 --
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 253 -----------------=
---
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  31 ---
 ...s_2.20170204.bb =3D> refpolicy-mcs_2.20190201.bb} |   0
 ...inimum-systemd-mount-enable-requiried-ref.patch |  47 ----
 ...20170204.bb =3D> refpolicy-minimum_2.20190201.bb} |  39 ++--
 .../refpolicy/refpolicy-minimum_git.bb             |  22 +-
 ...s_2.20170204.bb =3D> refpolicy-mls_2.20190201.bb} |   0
 ...0170204.bb =3D> refpolicy-standard_2.20190201.bb} |   0
 ...efpolicy-remove-duplicate-type_transition.patch |  46 ----
 ...move-duplicate-type_transition_2.20170204.patch |  46 ----
 .../refpolicy-unconfined_u-default-user.patch      | 222 ------------------
 ...licy-unconfined_u-default-user_2.20170204.patch | 222 ------------------
 .../refpolicy/refpolicy-targeted_2.20170204.bb     |  29 ---
 .../refpolicy/refpolicy-targeted_2.20190201.bb     |  35 +++
 .../refpolicy/refpolicy-targeted_git.bb            |  22 +-
 .../refpolicy/refpolicy_2.20170204.inc             |  58 -----
 .../refpolicy/refpolicy_2.20190201.inc             |   7 +
 recipes-security/refpolicy/refpolicy_common.inc    |  48 +++-
 recipes-security/refpolicy/refpolicy_git.inc       |  55 +----
 156 files changed, 3145 insertions(+), 3748 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-dmesg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-fix-real-path_login.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-netutils.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-rpm.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-screen.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-subs_dist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-sysnetwork.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-update-alternatives_bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-update-alternatives_sysklogd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc=
-update-alternatives_sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-add-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-add-rules-for-var-log-symlink-apache.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-allow-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-fix-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-fix-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-po=
licy-fix-setfiles-statvfs-get-file-count.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fc=
-subs-volatile-alias-common-var-volatile-paths.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternativ=
es_sysvinit.patch =3D> refpolicy-2.20190201/0001-fix-update-alternatives-fo=
r-sysvinit.patch} (51%)
 rename recipes-security/refpolicy/{refpolicy-minimum/0002-refpolicy-minimu=
m-audit-logging-getty-audit-related-.patch =3D> refpolicy-2.20190201/0001-r=
efpolicy-minimum-audit-logging-getty-audit-related-.patch} (85%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-fc=
-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 rename recipes-security/refpolicy/{refpolicy-minimum/0004-refpolicy-minimu=
m-locallogin-add-allow-rules-for-typ.patch =3D> refpolicy-2.20190201/0002-r=
efpolicy-minimum-locallogin-add-allow-rules-for-typ.patch} (87%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternativ=
es_sysklogd.patch =3D> refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-t=
o-sysklogd-symlink.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-minimum/0001-refpolicy-minimu=
m-systemd-unconfined-lib-add-systemd.patch =3D> refpolicy-2.20190201/0003-r=
efpolicy-minimum-systemd-unconfined-lib-add-systemd.patch} (79%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-fc=
-hostname-apply-policy-to-common-yocto-hostname-al.patch
 rename recipes-security/refpolicy/{refpolicy-minimum/0003-refpolicy-minimu=
m-systemd-mount-logging-authlogin-ad.patch =3D> refpolicy-2.20190201/0004-r=
efpolicy-minimum-systemd-mount-logging-authlogin-ad.patch} (76%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-fc=
-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.2019=
0201}/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch (83%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_res=
olv.conf.patch =3D> refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.c=
onf-in-var-run-properly.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-re=
fpolicy-minimum-systemd-mount-enable-required-refp.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_log=
in.patch =3D> refpolicy-2.20190201/0007-fc-login-apply-login-context-to-log=
in.shadow.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.2019=
0201}/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch (82%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-bind.p=
atch =3D> refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch} (=
62%)
 rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.2019=
0201}/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch (80%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc=
-hwclock-add-hwclock-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-minimum =3D> refpolicy-2.2019=
0201}/0009-refpolicy-minimum-systemd-fix-for-syslog.patch (90%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc=
-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-ssh.patch =3D> re=
fpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (55%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-sysnetwork.patch =
=3D> refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternative=
s.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-fc=
-udev-apply-policy-to-udevadm-in-libexec.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc=
-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_su.=
patch =3D> refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.=
patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fstools.patch =3D=
> refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch} (66=
%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-sy=
slogd_t-to-trusted-object.patch =3D> refpolicy-2.20190201/0017-policy-modul=
e-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-po=
licy-module-logging-add-rules-for-the-symlink-of-v.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-po=
licy-module-logging-add-rules-for-syslogd-symlink-.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-ru=
les-for-var-cache-symlink.patch =3D> refpolicy-2.20190201/0020-policy-modul=
e-logging-add-domain-rules-for-the-subdi.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-policy-add-rules-for=
-tmp-symlink.patch =3D> refpolicy-2.20190201/0021-policy-module-files-add-r=
ules-for-the-symlink-of-tmp.patch} (54%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-ru=
les-for-bsdpty_device_t.patch =3D> refpolicy-2.20190201/0022-policy-module-=
terminals-add-rules-for-bsdpty_device_.patch} (67%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-don-t-=
audit-tty_device_t.patch =3D> refpolicy-2.20190201/0023-policy-module-termi=
nals-don-t-audit-tty_device_t-in-.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-po=
licy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-nf=
sd_t-to-mount_nfsd_fs_t.patch =3D> refpolicy-2.20190201/0025-policy-module-=
rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-po=
licy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-allow-=
sysadm-to-run-rpcinfo.patch =3D> refpolicy-2.20190201/0027-policy-module-rp=
c-allow-sysadm-to-run-rpcinfo.patch} (70%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-se=
utils-manage-config-files.patch =3D> refpolicy-2.20190201/0028-policy-modul=
e-userdomain-fix-selinux-utils-to-manage.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-po=
licy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-po=
licy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/ftp-add-ftpd_t-to-=
mlsfilewrite.patch =3D> refpolicy-2.20190201/0031-policy-module-ftp-add-ftp=
d_t-to-mls_file_write_all_l.patch} (74%)
 rename recipes-security/refpolicy/{refpolicy-git/refpolicy-update-for_syst=
emd.patch =3D> refpolicy-2.20190201/0032-policy-module-init-update-for-syst=
emd-related-allow-.patch} (66%)
 rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-option=
al-issue-on-sysadm-module.patch =3D> refpolicy-2.20190201/0033-refpolicy-mi=
nimum-make-sysadmin-module-optional.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-po=
licy-module-apache-add-rules-for-the-symlink-of-va.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs-v=
olatile-alias-common-var-volatile-paths.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fix-updat=
e-alternatives-for-sysvinit.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy=
-minimum-audit-logging-getty-audit-related-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-fc-subs-b=
usybox-set-aliases-for-bin-sbin-and-usr.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy=
-minimum-locallogin-add-allow-rules-for-typ.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklo=
gd-apply-policy-to-sysklogd-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy=
-minimum-systemd-unconfined-lib-add-systemd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-fc-hostna=
me-apply-policy-to-common-yocto-hostname-al.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy=
-minimum-systemd-mount-logging-authlogin-ad.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-fc-bash-a=
pply-usr-bin-bash-context-to-bin-bash.bash.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy=
-minimum-init-fix-reboot-with-systemd-as-in.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-p=
ath_resolv.conf.patch =3D> refpolicy-git/0006-fc-resolv.conf-label-resolv.c=
onf-in-var-run-properly.patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy=
-minimum-systemd-mount-enable-required-refp.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-login-=
apply-login-context-to-login.shadow.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy=
-minimum-systemd-fix-for-login-journal-serv.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-fc-fix-bind.patch =
=3D> 0008-fc-bind-fix-real-path-for-bind.patch} (62%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy=
-minimum-systemd-fix-for-systemd-tmp-files-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwcloc=
k-add-hwclock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy=
-minimum-systemd-fix-for-syslog.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-=
apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-ssh.patch =
=3D> refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0012-fc-sysnet=
work-apply-policy-to-ip-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0013-fc-udev-a=
pply-policy-to-udevadm-in-libexec.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-ap=
ply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-p=
ath_su.patch =3D> refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.=
patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fstool=
s-fix-real-path-for-fstools.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-syslogd_t=
-to-trusted-object.patch =3D> 0017-policy-module-logging-Add-the-syslogd_t-=
to-trusted-o.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0018-policy-mo=
dule-logging-add-rules-for-the-symlink-of-v.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0019-policy-mo=
dule-logging-add-rules-for-syslogd-symlink-.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for=
-var-cache-symlink.patch =3D> 0020-policy-module-logging-add-domain-rules-f=
or-the-subdi.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-ru=
les-for-tmp-symlink.patch =3D> refpolicy-git/0021-policy-module-files-add-r=
ules-for-the-symlink-of-tmp.patch} (53%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for=
-bsdpty_device_t.patch =3D> 0022-policy-module-terminals-add-rules-for-bsdp=
ty_device_.patch} (67%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-don-t-audit-t=
ty_device_t.patch =3D> 0023-policy-module-terminals-don-t-audit-tty_device_=
t-in-.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-mo=
dule-rpc-allow-nfsd-to-exec-shell-commands.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-nfsd_t-to=
-mount_nfsd_fs_t.patch =3D> 0025-policy-module-rpc-fix-policy-for-nfsserver=
-to-mount-.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-mo=
dule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-allow-sysadm-=
to-run-rpcinfo.patch =3D> 0027-policy-module-rpc-allow-sysadm-to-run-rpcinf=
o.patch} (70%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-seutils-m=
anage-config-files.patch =3D> 0028-policy-module-userdomain-fix-selinux-uti=
ls-to-manage.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-mo=
dule-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-mo=
dule-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 rename recipes-security/refpolicy/refpolicy-git/{ftp-add-ftpd_t-to-mlsfile=
write.patch =3D> 0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.=
patch} (74%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/refpolicy-update-f=
or_systemd.patch =3D> refpolicy-git/0032-policy-module-init-update-for-syst=
emd-related-allow-.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-option=
al-issue-on-sysadm-module_2.20170204.patch =3D> refpolicy-git/0033-refpolic=
y-minimum-make-sysadmin-module-optional.patch} (56%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for=
-var-log-symlink-apache.patch =3D> 0034-policy-module-apache-add-rules-for-=
the-symlink-of-va.patch} (54%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-clock.=
patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.=
patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-re=
al-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho=
-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-mta.pa=
tch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.p=
atch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.pa=
tch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-screen=
=2Epatch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-subs_d=
ist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.=
patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update=
-alternatives_bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update=
-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-ad=
d-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-ad=
d-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-ad=
d-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-al=
low-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-al=
low-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fi=
x-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fi=
x-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fi=
x-setfiles-statvfs-get-file-count.patch
 rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb =3D> refpol=
icy-mcs_2.20190201.bb} (100%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum/0006-refpo=
licy-minimum-systemd-mount-enable-requiried-ref.patch
 rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb =3D> re=
fpolicy-minimum_2.20190201.bb} (66%)
 rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb =3D> refpol=
icy-mls_2.20190201.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb =3D> r=
efpolicy-standard_2.20190201.bb} (100%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy=
-remove-duplicate-type_transition.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy=
-remove-duplicate-type_transition_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy=
-unconfined_u-default-user.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy=
-unconfined_u-default-user_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.2017020=
4.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.2019020=
1.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20170204.inc
 create mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc

--=20
-Joe MacDonald.
:wq

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlyuEVkACgkQSfx99yw5
9paLhAf9GRzQRFYsz22zYBZtLMZryKHtrZqM4bcBx/MLN7FdvrdbhSNtLwUhwv2d
NSRy6qcF0XUx6+iqqca+2P0orWHP0erffpl0RPwkCskYZcZlYsUblKIiRNKeR409
JML6Y4bSRlkbwzd/+wNJ8xbvZOXJnpWp6fLe+1AWbbukyoICVd3M+p+dWeFrezPQ
X3j/B97ORlD/yCwZZ1Y6GhlCnt6zLIo4b8dwWJFxf+0YV+GZceeIW98HXB+a3D/u
8JG+pc42EvyNNf2H0NF2dzyyxYiw8HNC+0ChzsTIxRo8NnvhPWI8yY07CW+TzRc1
74MPdWWS1dfB3KB2UAhBqQzxNQTg3w==
=yNLV
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--
