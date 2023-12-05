Return-Path: <contact@kuba.fyi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CD7C4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 22:27:32 +0000 (UTC)
Received: from mail-4323.proton.ch (mail-4323.proton.ch [185.70.43.23])
 by mx.groups.io with SMTP id smtpd.web10.12262.1701815248611508122
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 14:27:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kuba.fyi header.s=protonmail header.b=lmdQJu3G;
 spf=pass (domain: kuba.fyi, ip: 185.70.43.23, mailfrom: contact@kuba.fyi)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kuba.fyi;
	s=protonmail; t=1701815245; x=1702074445;
	bh=meSuXFoH7J/L1ahLCGEwyZTAl2dI8WK+88VJU4JAk7k=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=lmdQJu3GhX37S7QQ3TZmj3cb81857VdaMw6SS1yeJEEXF3phwrTNajhSuHIPxjoAV
	 7mKsd7DgdvFLbcPxfyfg/DF+7TRTG0K9hWOlBdL5AT19Ntt8mobfAg/4Egykloe80a
	 S4ooPtSO1uqRyb0/4O+G0GaB3XgUkXVBes/14gsyLEOS1BlueylCHTQTtEAb/P+8gn
	 De+6doGgUWpmCDXIHkwIfU90xJyYipzgeeng+5MpNtnWFo7FGEOm07WlbHqGs4tFqO
	 pNzGky7zjQS8vLq+6yYMnHOYR+fGobbWtn9hnMPEXvgSICahMs7v62vN5JJRS5LwtU
	 Zw/p2eRcjS7Ow==
Date: Tue, 05 Dec 2023 22:27:10 +0000
To: yocto@lists.yoctoproject.org
From: Kuba Sanak <contact@kuba.fyi>
Subject: Why was package not included in my image despite of being a runtime dependency of one which was included?
Message-ID: <42238577-4DA3-4C9E-ACC5-8963E4E6FFE3@kuba.fyi>
Feedback-ID: 44448442:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 22:27:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61809

I'm building a systemd-based image with Yocto I've run into a problem where=
 update-rc.d (which is needed by a systemd sysv wrapper) is not present in =
that image.

I can confirm that update-rc.d is listed as a runtime dependency of systemd=
:

    $ bitbake systemd -e | grep "^RDEPENDS"
    RDEPENDS:systemd=3D" kmod dbus util-linux-mount util-linux-umount udev =
(=3D 1:250.4-r0) systemd-udev-rules util-linux-agetty util-linux-fsck syste=
md-serialgetty volatile-binds ldconfig libnss-myhostname      pam-plugin-un=
ix     pam-plugin-loginuid     pam-plugin-keyinit  systemd-compat-units upd=
ate-rc.d systemd-vconsole-setup"
    RDEPENDS:systemd-bash-completion=3D"bash-completion"
    RDEPENDS:systemd-conf=3D" update-rc.d"
    RDEPENDS:systemd-dev=3D"systemd (=3D 1:250.4-r0)"
    RDEPENDS:systemd-doc=3D" "
    RDEPENDS:systemd-initramfs=3D"systemd"
    RDEPENDS:systemd-kernel-install=3D" bash"
    RDEPENDS:systemd-staticdev=3D"systemd-dev (=3D 1:250.4-r0)"
    RDEPENDS:udev-hwdb=3D" udev"

And systemd is obviously included in my image because I can see it working.=
 Also inspecting my image manifest confirms that systemd has been included =
in the image.

    $ grep -n systemd tmp/deploy/images/<arch>/<image_name>.manifest
    283:libsystemd-shared cortexa55 1:250.4-r0
    284:libsystemd0 cortexa55 1:250.4-r0
    394:systemd cortexa55 1:250.4-r0
    395:systemd-compat-units cortexa55 1.0-r29
    396:systemd-conf txrz_g2l0 1:1.0-r0
    397:systemd-extra-utils cortexa55 1:250.4-r0
    398:systemd-serialgetty txrz_g2l0 1.0-r5
    399:systemd-udev-rules cortexa55 1:250.4-r0
    400:systemd-vconsole-setup cortexa55 1:250.4-r0

And yet, update-rc.d keeps not being included in the resultant image. The p=
ackage name (i.e. update-rc.d) is missing from the manifest and the actual =
script file it's supposed to provide is missing from the image rootfs.

Why is this happening and what can I do to debug why this runtime dependenc=
y is missing?

