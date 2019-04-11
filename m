Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 432C0E00D14; Thu, 11 Apr 2019 01:20:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	NUMERIC_HTTP_ADDR, RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67545E00D14
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 01:20:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3B8K1XE024966
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Apr 2019 01:20:22 -0700
Received: from [128.224.163.192] (128.224.163.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 11 Apr 2019 01:19:51 -0700
To: Joe MacDonald <Joe_MacDonald@mentor.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>, Randy MacLeod <randy.macleod@windriver.com>
References: <20190410155302.GA17879@mentor.com>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <c1864a11-0368-a0d0-85e0-f40a2436c033@windriver.com>
Date: Thu, 11 Apr 2019 16:19:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190410155302.GA17879@mentor.com>
X-Originating-IP: [128.224.163.192]
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
X-List-Received-Date: Thu, 11 Apr 2019 08:20:53 -0000
Content-Type: multipart/alternative;
	boundary="------------79BC52846AD6C35D56FC1CA5"
Content-Language: en-US

--------------79BC52846AD6C35D56FC1CA5
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi Joe,

Thank you for working on the refpolicy upgrade.
I have a quick test with your patch. Here are the results:

Machine: qemux86-64
Image: core-image-selinux
Init manager: systemd
Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1 
enforcing=X" qemuparams="-m 1024"

1. All refpolicy type of git version can be built without problems.

2. With parameter selinux=1 & enforcing=0
The qemu can boot up and login for all refpolicy types.

3. With parameter selinux=1 & enforcing=1
Some of services failed to startup when booting. But this issue also 
exist on old refpolicy version (2.20170204)

4. refpolicy stable version (2.20190201)
I got an do_fetch error with refpolicy stable version.
Seems the SRC_URI is not correct. It should be 
"https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-${PV}.tar.bz2"


Regards,
Yi


在 2019/4/10 下午11:53, Joe MacDonald 写道:
> This is a huge, long-overdue update the refpolicy.  I apologise for it
> blocking the other outstanding meta-selinux patches, but I've been
> trying to limit the scope of changes while this happens.  Now that this
> is cleared off the slate, I'll be gathering up the other meta-selinux
> patches from the list.  I'll send out a follow-up on those as they're
> merged and another when I think I'm done, so if I've missed your patch,
> that'll be the time to ping me about it.
>
> As for this, here's what I've done.
>
> 	- manually reviewed all patches that had been present in
> 	  repolicy-* for both the old stable (2.20170204) and git
> 	  versions
>
> 	- forked the SELinuxPolicy/refpolicy repo and applied all
> 	  still-relevant patches to the RELEASE_2.20190201 branch
>
> 	- restructured the patches so that all patches that should
> 	  reasonably apply to all variants (mcs, mls, minimum, standard
> 	  and targeted) were in a common branch and only the ones that
> 	  are specific to each variant would be in their own recipe
>
> 	- restructure the patches so that systemd and sysvinit patches
> 	  were not applied to the same tree
>
> 	- created a parallel set of branches for each of these against
> 	  current git HEAD
>
> The results of this can be examined here:
>
> 	https://github.com/joeythesaint/refpolicy
>
> Then each of these were exported and put in the appropriate SRC_URIs so
> the branch structure is more-or-less preserved.
>
> My goals with this approach were the following:
>
> 	- make it easier to keep refpolicy up to date, particularly for
> 	  anyone wanting to use the git variants
>
> 	- make it easier to determine how your preferred version of
> 	  refpolicy on Yocto differs from upstream refpolicy
>
> 	- limit the above differences to the minimum to achieve the goal
> 	  of a functional Yocto system
>
> 	- eventually move us away from release tarballs entirely
>
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
>
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
>
> Finally, please everyone test this and provide feedback on anything that
> doesn't work or looks strange.  This is easily the biggest change we've
> had in meta-selinux in years and I expect there's still some wrinkles to
> be ironed out.  And I really appreciate everyone's patience while we got
> to this point and hope it's not too much more pain before we put a
> ribbon on this and call it done.
>
> I'll give this until at least the weekend before merging it to master,
> pending comments or an overwhelming "please just do it" from the
> community.
>
> Thanks.
>
> ---
>
> The following changes since commit a6a3cadb1ef3203a123d8f5f9df27832f55b2ce3:
>
>    Backport patches from upstream to fix build with musl (2019-03-25 09:43:53 +0100)
>
> are available in the Git repository at:
>
>    git://git.yoctoproject.org/meta-selinux yocto/master-next
>
> for you to fetch changes up to 776da889b550ac9e5be414a8cc10fd86b1923264:
>
>    refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:14 -0400)
>
> ----------------------------------------------------------------
> Joe MacDonald (1):
>        refpolicy: update to 2.20190201 and git HEAD policies
>
>   README                                             |  16 +-
>   .../refpolicy-2.20170204/poky-fc-clock.patch       |  20 --
>   .../poky-fc-corecommands.patch                     |  24 --
>   .../refpolicy-2.20170204/poky-fc-dmesg.patch       |  18 --
>   .../poky-fc-fix-real-path_login.patch              |  37 ---
>   .../poky-fc-fix-real-path_shadow.patch             |  34 ---
>   .../refpolicy-2.20170204/poky-fc-fstools.patch     |  75 ------
>   .../refpolicy-2.20170204/poky-fc-ftpwho-dir.patch  |  27 ---
>   .../refpolicy-2.20170204/poky-fc-iptables.patch    |  24 --
>   .../refpolicy-2.20170204/poky-fc-mta.patch         |  27 ---
>   .../refpolicy-2.20170204/poky-fc-netutils.patch    |  24 --
>   .../refpolicy-2.20170204/poky-fc-nscd.patch        |  25 --
>   .../refpolicy-2.20170204/poky-fc-rpm.patch         |  23 --
>   .../refpolicy-2.20170204/poky-fc-screen.patch      |  23 --
>   .../refpolicy-2.20170204/poky-fc-su.patch          |  20 --
>   .../refpolicy-2.20170204/poky-fc-subs_dist.patch   |  33 ---
>   .../refpolicy-2.20170204/poky-fc-sysnetwork.patch  |  48 ----
>   .../refpolicy-2.20170204/poky-fc-udevd.patch       |  38 ---
>   .../poky-fc-update-alternatives_bash.patch         |  24 --
>   .../poky-fc-update-alternatives_hostname.patch     |  21 --
>   .../poky-fc-update-alternatives_sysklogd.patch     |  62 -----
>   .../poky-fc-update-alternatives_sysvinit.patch     |  57 -----
>   ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  30 ---
>   ...licy-add-rules-for-var-log-symlink-apache.patch |  31 ---
>   ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
>   ...poky-policy-add-rules-for-var-log-symlink.patch | 185 ---------------
>   ...-policy-allow-nfsd-to-exec-shell-commands.patch |  60 -----
>   ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
>   .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  37 ---
>   .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 259 ---------------------
>   ...olicy-fix-setfiles-statvfs-get-file-count.patch |  32 ---
>   ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
>   ...001-fix-update-alternatives-for-sysvinit.patch} |  51 ++--
>   ...nimum-audit-logging-getty-audit-related-.patch} |  17 +-
>   ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
>   ...nimum-locallogin-add-allow-rules-for-typ.patch} |  11 +-
>   ...ysklogd-apply-policy-to-sysklogd-symlink.patch} |  49 ++--
>   ...nimum-systemd-unconfined-lib-add-systemd.patch} |  34 +--
>   ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
>   ...nimum-systemd-mount-logging-authlogin-ad.patch} |  39 ++--
>   ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
>   ...inimum-init-fix-reboot-with-systemd-as-in.patch |   9 +-
>   ...nf-label-resolv.conf-in-var-run-properly.patch} |  24 +-
>   ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
>   ...ogin-apply-login-context-to-login.shadow.patch} |  22 +-
>   ...inimum-systemd-fix-for-login-journal-serv.patch |  33 +--
>   .../0008-fc-bind-fix-real-path-for-bind.patch}     |  25 +-
>   ...inimum-systemd-fix-for-systemd-tmp-files-.patch |  34 ++-
>   .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
>   ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  13 +-
>   ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
>   ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
>   ...snetwork-apply-policy-to-ip-alternatives.patch} |  35 ++-
>   ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
>   ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
>   ...15-fc-su-apply-policy-to-su-alternatives.patch} |  18 +-
>   ...016-fc-fstools-fix-real-path-for-fstools.patch} |  58 ++---
>   ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
>   ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
>   ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
>   ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
>   ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  69 ++----
>   ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
>   ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
>   ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
>   ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
>   ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
>   ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
>   ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
>   ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
>   ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
>   ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
>   ...e-init-update-for-systemd-related-allow-.patch} |  16 +-
>   ...cy-minimum-make-sysadmin-module-optional.patch} |  28 +--
>   ...le-apache-add-rules-for-the-symlink-of-va.patch |  33 +++
>   ...-volatile-alias-common-var-volatile-paths.patch |  36 +++
>   ...0001-fix-update-alternatives-for-sysvinit.patch |  53 +++++
>   ...inimum-audit-logging-getty-audit-related-.patch |  68 ++++++
>   ...-busybox-set-aliases-for-bin-sbin-and-usr.patch |  31 +++
>   ...inimum-locallogin-add-allow-rules-for-typ.patch |  54 +++++
>   ...sysklogd-apply-policy-to-sysklogd-symlink.patch |  57 +++++
>   ...inimum-systemd-unconfined-lib-add-systemd.patch | 121 ++++++++++
>   ...-apply-policy-to-common-yocto-hostname-al.patch |  27 +++
>   ...inimum-systemd-mount-logging-authlogin-ad.patch |  96 ++++++++
>   ...ply-usr-bin-bash-context-to-bin-bash.bash.patch |  30 +++
>   ...inimum-init-fix-reboot-with-systemd-as-in.patch |  37 +++
>   ...nf-label-resolv.conf-in-var-run-properly.patch} |  26 ++-
>   ...inimum-systemd-mount-enable-required-refp.patch |  92 ++++++++
>   ...login-apply-login-context-to-login.shadow.patch |  27 +++
>   ...inimum-systemd-fix-for-login-journal-serv.patch | 103 ++++++++
>   ...h => 0008-fc-bind-fix-real-path-for-bind.patch} |  25 +-
>   ...inimum-systemd-fix-for-systemd-tmp-files-.patch | 110 +++++++++
>   .../0009-fc-hwclock-add-hwclock-alternatives.patch |  28 +++
>   ...-refpolicy-minimum-systemd-fix-for-syslog.patch |  70 ++++++
>   ...-dmesg-apply-policy-to-dmesg-alternatives.patch |  24 ++
>   ...-fc-ssh-apply-policy-to-ssh-alternatives.patch} |  21 +-
>   ...ysnetwork-apply-policy-to-ip-alternatives.patch |  48 ++++
>   ...c-udev-apply-policy-to-udevadm-in-libexec.patch |  28 +++
>   ...pm-apply-rpm_exec-policy-to-cpio-binaries.patch |  29 +++
>   ...15-fc-su-apply-policy-to-su-alternatives.patch} |  20 +-
>   ...0016-fc-fstools-fix-real-path-for-fstools.patch |  76 ++++++
>   ...e-logging-Add-the-syslogd_t-to-trusted-o.patch} |  18 +-
>   ...le-logging-add-rules-for-the-symlink-of-v.patch | 100 ++++++++
>   ...le-logging-add-rules-for-syslogd-symlink-.patch |  33 +++
>   ...e-logging-add-domain-rules-for-the-subdi.patch} |  18 +-
>   ...e-files-add-rules-for-the-symlink-of-tmp.patch} |  71 ++----
>   ...e-terminals-add-rules-for-bsdpty_device_.patch} |  60 ++---
>   ...e-terminals-don-t-audit-tty_device_t-in-.patch} |  18 +-
>   ...ule-rpc-allow-nfsd-to-exec-shell-commands.patch |  29 +++
>   ...e-rpc-fix-policy-for-nfsserver-to-mount-.patch} |  96 ++++----
>   ...odule-sysfs-fix-for-new-SELINUXMNT-in-sys.patch | 126 ++++++++++
>   ...y-module-rpc-allow-sysadm-to-run-rpcinfo.patch} |  24 +-
>   ...e-userdomain-fix-selinux-utils-to-manage.patch} |  28 +--
>   ...le-selinuxutil-fix-setfiles-statvfs-to-ge.patch |  33 +++
>   ...le-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch |  25 ++
>   ...e-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} |  26 ++-
>   ...e-init-update-for-systemd-related-allow-.patch} |  23 +-
>   ...cy-minimum-make-sysadmin-module-optional.patch} |  53 ++---
>   ...e-apache-add-rules-for-the-symlink-of-va.patch} |  24 +-
>   .../refpolicy/refpolicy-git/poky-fc-clock.patch    |  19 --
>   .../refpolicy/refpolicy-git/poky-fc-dmesg.patch    |  15 --
>   .../poky-fc-fix-real-path_shadow.patch             |  50 ----
>   .../refpolicy-git/poky-fc-ftpwho-dir.patch         |  27 ---
>   .../refpolicy/refpolicy-git/poky-fc-mta.patch      |  27 ---
>   .../refpolicy/refpolicy-git/poky-fc-nscd.patch     |  25 --
>   .../refpolicy/refpolicy-git/poky-fc-rpm.patch      |  23 --
>   .../refpolicy/refpolicy-git/poky-fc-screen.patch   |  23 --
>   .../refpolicy-git/poky-fc-subs_dist.patch          |  32 ---
>   .../refpolicy/refpolicy-git/poky-fc-udevd.patch    |  27 ---
>   .../poky-fc-update-alternatives_bash.patch         |  12 -
>   .../poky-fc-update-alternatives_hostname.patch     |  19 --
>   ...ky-policy-add-rules-for-syslogd_t-symlink.patch |  29 ---
>   ...rules-for-var-log-symlink-audisp_remote_t.patch |  29 ---
>   ...poky-policy-add-rules-for-var-log-symlink.patch |  88 -------
>   ...-policy-allow-nfsd-to-exec-shell-commands.patch |  81 -------
>   ...-policy-allow-setfiles_t-to-read-symlinks.patch |  30 ---
>   .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch    |  22 --
>   .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 253 --------------------
>   ...olicy-fix-setfiles-statvfs-get-file-count.patch |  31 ---
>   ...s_2.20170204.bb => refpolicy-mcs_2.20190201.bb} |   0
>   ...inimum-systemd-mount-enable-requiried-ref.patch |  47 ----
>   ...20170204.bb => refpolicy-minimum_2.20190201.bb} |  39 ++--
>   .../refpolicy/refpolicy-minimum_git.bb             |  22 +-
>   ...s_2.20170204.bb => refpolicy-mls_2.20190201.bb} |   0
>   ...0170204.bb => refpolicy-standard_2.20190201.bb} |   0
>   ...efpolicy-remove-duplicate-type_transition.patch |  46 ----
>   ...move-duplicate-type_transition_2.20170204.patch |  46 ----
>   .../refpolicy-unconfined_u-default-user.patch      | 222 ------------------
>   ...licy-unconfined_u-default-user_2.20170204.patch | 222 ------------------
>   .../refpolicy/refpolicy-targeted_2.20170204.bb     |  29 ---
>   .../refpolicy/refpolicy-targeted_2.20190201.bb     |  35 +++
>   .../refpolicy/refpolicy-targeted_git.bb            |  22 +-
>   .../refpolicy/refpolicy_2.20170204.inc             |  58 -----
>   .../refpolicy/refpolicy_2.20190201.inc             |   7 +
>   recipes-security/refpolicy/refpolicy_common.inc    |  48 +++-
>   recipes-security/refpolicy/refpolicy_git.inc       |  55 +----
>   156 files changed, 3145 insertions(+), 3748 deletions(-)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternatives_sysvinit.patch => refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch} (51%)
>   rename recipes-security/refpolicy/{refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch => refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch} (85%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch => refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch} (87%)
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternatives_sysklogd.patch => refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch} (52%)
>   rename recipes-security/refpolicy/{refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch => refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch} (79%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch => refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch} (76%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum => refpolicy-2.20190201}/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch (83%)
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch => refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch} (54%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_login.patch => refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch} (52%)
>   rename recipes-security/refpolicy/{refpolicy-minimum => refpolicy-2.20190201}/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch (82%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-bind.patch => refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch} (62%)
>   rename recipes-security/refpolicy/{refpolicy-minimum => refpolicy-2.20190201}/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch (80%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum => refpolicy-2.20190201}/0009-refpolicy-minimum-systemd-fix-for-syslog.patch (90%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-ssh.patch => refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (55%)
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-sysnetwork.patch => refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch} (54%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_su.patch => refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch} (52%)
>   rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fstools.patch => refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch} (66%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch => refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch => refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch} (69%)
>   rename recipes-security/refpolicy/{refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch => refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch} (54%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch => refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch} (67%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch => refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch} (66%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch => refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch => refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch} (70%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch => refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch} (60%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch => refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} (74%)
>   rename recipes-security/refpolicy/{refpolicy-git/refpolicy-update-for_systemd.patch => refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch} (66%)
>   rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch => refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch} (69%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch => refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch} (52%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
>   rename recipes-security/refpolicy/refpolicy-git/{poky-fc-fix-bind.patch => 0008-fc-bind-fix-real-path-for-bind.patch} (62%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-ssh.patch => refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (52%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-path_su.patch => refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch} (52%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-syslogd_t-to-trusted-object.patch => 0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-var-cache-symlink.patch => 0020-policy-module-logging-add-domain-rules-for-the-subdi.patch} (69%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch => refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch} (53%)
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-bsdpty_device_t.patch => 0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch} (67%)
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-don-t-audit-tty_device_t.patch => 0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch} (66%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch => 0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-allow-sysadm-to-run-rpcinfo.patch => 0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch} (70%)
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-seutils-manage-config-files.patch => 0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch} (60%)
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
>   create mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
>   rename recipes-security/refpolicy/refpolicy-git/{ftp-add-ftpd_t-to-mlsfilewrite.patch => 0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} (74%)
>   rename recipes-security/refpolicy/{refpolicy-2.20170204/refpolicy-update-for_systemd.patch => refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch} (52%)
>   rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch => refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch} (56%)
>   rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-var-log-symlink-apache.patch => 0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch} (54%)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_bash.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
>   rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb => refpolicy-mcs_2.20190201.bb} (100%)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
>   rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb => refpolicy-minimum_2.20190201.bb} (66%)
>   rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb => refpolicy-mls_2.20190201.bb} (100%)
>   rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb => refpolicy-standard_2.20190201.bb} (100%)
>   delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch
>   delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
>   create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
>   delete mode 100644 recipes-security/refpolicy/refpolicy_2.20170204.inc
>   create mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc
>
>

--------------79BC52846AD6C35D56FC1CA5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Joe,<br>
      <br>
      Thank you for working on the refpolicy upgrade.<br>
      I have a quick test with your patch. Here are the results:<br>
      <br>
      Machine: qemux86-64<br>
      Image: core-image-selinux<br>
      Init manager: systemd<br>
      Boot command: runqemu qemux86-64 kvm nographic
      bootparams="selinux=1 enforcing=X" qemuparams="-m 1024"<br>
      <br>
      1. All refpolicy type of git version can be built without
      problems.<br>
      <br>
      2. With parameter selinux=1 &amp; enforcing=0<br>
      The qemu can boot up and login for all refpolicy types.<br>
      <br>
      3. With parameter selinux=1 &amp; enforcing=1<br>
      Some of services failed to startup when booting. But this issue
      also exist on old refpolicy version (2.20170204)<br>
      <br>
      4. refpolicy stable version (2.20190201)<br>
      I got an do_fetch error with refpolicy stable version.<br>
      Seems the SRC_URI is not correct. It should be
<a class="moz-txt-link-rfc2396E" href="https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-${PV}.tar.bz2">"https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201/refpolicy-${PV}.tar.bz2"</a><br>
      <br>
      <br>
      Regards,<br>
      Yi</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">在 2019/4/10 下午11:53, Joe MacDonald 写道:<br>
    </div>
    <blockquote type="cite" cite="mid:20190410155302.GA17879@mentor.com">
      <pre class="moz-quote-pre" wrap="">This is a huge, long-overdue update the refpolicy.  I apologise for it
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

	<a class="moz-txt-link-freetext" href="https://github.com/joeythesaint/refpolicy">https://github.com/joeythesaint/refpolicy</a>

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

  Backport patches from upstream to fix build with musl (2019-03-25 09:43:53 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-selinux yocto/master-next

for you to fetch changes up to 776da889b550ac9e5be414a8cc10fd86b1923264:

  refpolicy: update to 2.20190201 and git HEAD policies (2019-04-10 10:57:14 -0400)

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
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 259 ---------------------
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
 ...h =&gt; 0008-fc-bind-fix-real-path-for-bind.patch} |  25 +-
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
 .../poky-policy-fix-new-SELINUXMNT-in-sys.patch    | 253 --------------------
 ...olicy-fix-setfiles-statvfs-get-file-count.patch |  31 ---
 ...s_2.20170204.bb =&gt; refpolicy-mcs_2.20190201.bb} |   0
 ...inimum-systemd-mount-enable-requiried-ref.patch |  47 ----
 ...20170204.bb =&gt; refpolicy-minimum_2.20190201.bb} |  39 ++--
 .../refpolicy/refpolicy-minimum_git.bb             |  22 +-
 ...s_2.20170204.bb =&gt; refpolicy-mls_2.20190201.bb} |   0
 ...0170204.bb =&gt; refpolicy-standard_2.20190201.bb} |   0
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
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-corecommands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-dmesg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_login.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-fstools.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-iptables.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-netutils.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-rpm.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-screen.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-su.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-subs_dist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-sysnetwork.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysklogd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-fc-update-alternatives_sysvinit.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-apache.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternatives_sysvinit.patch =&gt; refpolicy-2.20190201/0001-fix-update-alternatives-for-sysvinit.patch} (51%)
 rename recipes-security/refpolicy/{refpolicy-minimum/0002-refpolicy-minimum-audit-logging-getty-audit-related-.patch =&gt; refpolicy-2.20190201/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch} (85%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 rename recipes-security/refpolicy/{refpolicy-minimum/0004-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch =&gt; refpolicy-2.20190201/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch} (87%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-update-alternatives_sysklogd.patch =&gt; refpolicy-2.20190201/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-minimum/0001-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch =&gt; refpolicy-2.20190201/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch} (79%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
 rename recipes-security/refpolicy/{refpolicy-minimum/0003-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch =&gt; refpolicy-2.20190201/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch} (76%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 rename recipes-security/refpolicy/{refpolicy-minimum =&gt; refpolicy-2.20190201}/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch (83%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_resolv.conf.patch =&gt; refpolicy-2.20190201/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_login.patch =&gt; refpolicy-2.20190201/0007-fc-login-apply-login-context-to-login.shadow.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-minimum =&gt; refpolicy-2.20190201}/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch (82%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-bind.patch =&gt; refpolicy-2.20190201/0008-fc-bind-fix-real-path-for-bind.patch} (62%)
 rename recipes-security/refpolicy/{refpolicy-minimum =&gt; refpolicy-2.20190201}/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch (80%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0009-fc-hwclock-add-hwclock-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-minimum =&gt; refpolicy-2.20190201}/0009-refpolicy-minimum-systemd-fix-for-syslog.patch (90%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-ssh.patch =&gt; refpolicy-2.20190201/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (55%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-sysnetwork.patch =&gt; refpolicy-2.20190201/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fix-real-path_su.patch =&gt; refpolicy-2.20190201/0015-fc-su-apply-policy-to-su-alternatives.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-fc-fstools.patch =&gt; refpolicy-2.20190201/0016-fc-fstools-fix-real-path-for-fstools.patch} (66%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-syslogd_t-to-trusted-object.patch =&gt; refpolicy-2.20190201/0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-var-cache-symlink.patch =&gt; refpolicy-2.20190201/0020-policy-module-logging-add-domain-rules-for-the-subdi.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-git/poky-policy-add-rules-for-tmp-symlink.patch =&gt; refpolicy-2.20190201/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch} (54%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-bsdpty_device_t.patch =&gt; refpolicy-2.20190201/0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch} (67%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-don-t-audit-tty_device_t.patch =&gt; refpolicy-2.20190201/0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch =&gt; refpolicy-2.20190201/0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-allow-sysadm-to-run-rpcinfo.patch =&gt; refpolicy-2.20190201/0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch} (70%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-fix-seutils-manage-config-files.patch =&gt; refpolicy-2.20190201/0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/ftp-add-ftpd_t-to-mlsfilewrite.patch =&gt; refpolicy-2.20190201/0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} (74%)
 rename recipes-security/refpolicy/{refpolicy-git/refpolicy-update-for_systemd.patch =&gt; refpolicy-2.20190201/0032-policy-module-init-update-for-systemd-related-allow-.patch} (66%)
 rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch =&gt; refpolicy-2.20190201/0033-refpolicy-minimum-make-sysadmin-module-optional.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fc-subs-volatile-alias-common-var-volatile-paths.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-fix-update-alternatives-for-sysvinit.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0001-refpolicy-minimum-audit-logging-getty-audit-related-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-fc-subs-busybox-set-aliases-for-bin-sbin-and-usr.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0002-refpolicy-minimum-locallogin-add-allow-rules-for-typ.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-fc-sysklogd-apply-policy-to-sysklogd-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0003-refpolicy-minimum-systemd-unconfined-lib-add-systemd.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-fc-hostname-apply-policy-to-common-yocto-hostname-al.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0004-refpolicy-minimum-systemd-mount-logging-authlogin-ad.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-fc-bash-apply-usr-bin-bash-context-to-bin-bash.bash.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0005-refpolicy-minimum-init-fix-reboot-with-systemd-as-in.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-path_resolv.conf.patch =&gt; refpolicy-git/0006-fc-resolv.conf-label-resolv.conf-in-var-run-properly.patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0006-refpolicy-minimum-systemd-mount-enable-required-refp.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-fc-login-apply-login-context-to-login.shadow.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-fc-fix-bind.patch =&gt; 0008-fc-bind-fix-real-path-for-bind.patch} (62%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-fc-hwclock-add-hwclock-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0010-fc-dmesg-apply-policy-to-dmesg-alternatives.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-ssh.patch =&gt; refpolicy-git/0011-fc-ssh-apply-policy-to-ssh-alternatives.patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0012-fc-sysnetwork-apply-policy-to-ip-alternatives.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0013-fc-udev-apply-policy-to-udevadm-in-libexec.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0014-fc-rpm-apply-rpm_exec-policy-to-cpio-binaries.patch
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-fc-fix-real-path_su.patch =&gt; refpolicy-git/0015-fc-su-apply-policy-to-su-alternatives.patch} (52%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0016-fc-fstools-fix-real-path-for-fstools.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-syslogd_t-to-trusted-object.patch =&gt; 0017-policy-module-logging-Add-the-syslogd_t-to-trusted-o.patch} (69%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0018-policy-module-logging-add-rules-for-the-symlink-of-v.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0019-policy-module-logging-add-rules-for-syslogd-symlink-.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-var-cache-symlink.patch =&gt; 0020-policy-module-logging-add-domain-rules-for-the-subdi.patch} (69%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/poky-policy-add-rules-for-tmp-symlink.patch =&gt; refpolicy-git/0021-policy-module-files-add-rules-for-the-symlink-of-tmp.patch} (53%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-bsdpty_device_t.patch =&gt; 0022-policy-module-terminals-add-rules-for-bsdpty_device_.patch} (67%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-don-t-audit-tty_device_t.patch =&gt; 0023-policy-module-terminals-don-t-audit-tty_device_t-in-.patch} (66%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0024-policy-module-rpc-allow-nfsd-to-exec-shell-commands.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch =&gt; 0025-policy-module-rpc-fix-policy-for-nfsserver-to-mount-.patch} (54%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0026-policy-module-sysfs-fix-for-new-SELINUXMNT-in-sys.patch
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-allow-sysadm-to-run-rpcinfo.patch =&gt; 0027-policy-module-rpc-allow-sysadm-to-run-rpcinfo.patch} (70%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-fix-seutils-manage-config-files.patch =&gt; 0028-policy-module-userdomain-fix-selinux-utils-to-manage.patch} (60%)
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0029-policy-module-selinuxutil-fix-setfiles-statvfs-to-ge.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/0030-policy-module-admin-fix-dmesg-to-use-dev-kmsg-as-def.patch
 rename recipes-security/refpolicy/refpolicy-git/{ftp-add-ftpd_t-to-mlsfilewrite.patch =&gt; 0031-policy-module-ftp-add-ftpd_t-to-mls_file_write_all_l.patch} (74%)
 rename recipes-security/refpolicy/{refpolicy-2.20170204/refpolicy-update-for_systemd.patch =&gt; refpolicy-git/0032-policy-module-init-update-for-systemd-related-allow-.patch} (52%)
 rename recipes-security/refpolicy/{refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module_2.20170204.patch =&gt; refpolicy-git/0033-refpolicy-minimum-make-sysadmin-module-optional.patch} (56%)
 rename recipes-security/refpolicy/refpolicy-git/{poky-policy-add-rules-for-var-log-symlink-apache.patch =&gt; 0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch} (54%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-clock.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-dmesg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-fix-real-path_shadow.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-ftpwho-dir.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-mta.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-nscd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-rpm.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-screen.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-subs_dist.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-udevd.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_bash.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-fc-update-alternatives_hostname.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-syslogd_t-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-add-rules-for-var-log-symlink.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-nfsd-to-exec-shell-commands.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-allow-setfiles_t-to-read-symlinks.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-dmesg-to-use-dev-kmsg.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-new-SELINUXMNT-in-sys.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-git/poky-policy-fix-setfiles-statvfs-get-file-count.patch
 rename recipes-security/refpolicy/{refpolicy-mcs_2.20170204.bb =&gt; refpolicy-mcs_2.20190201.bb} (100%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-minimum/0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch
 rename recipes-security/refpolicy/{refpolicy-minimum_2.20170204.bb =&gt; refpolicy-minimum_2.20190201.bb} (66%)
 rename recipes-security/refpolicy/{refpolicy-mls_2.20170204.bb =&gt; refpolicy-mls_2.20190201.bb} (100%)
 rename recipes-security/refpolicy/{refpolicy-standard_2.20170204.bb =&gt; refpolicy-standard_2.20190201.bb} (100%)
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-remove-duplicate-type_transition_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user_2.20170204.patch
 delete mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20170204.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20190201.bb
 delete mode 100644 recipes-security/refpolicy/refpolicy_2.20170204.inc
 create mode 100644 recipes-security/refpolicy/refpolicy_2.20190201.inc

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------79BC52846AD6C35D56FC1CA5--
