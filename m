Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4854CC4167B
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 15:37:05 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.15927.1671205018795997329
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 07:36:58 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D2A81042;
	Fri, 16 Dec 2022 07:37:38 -0800 (PST)
Received: from e125920.arm.com (unknown [10.57.88.145])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ACD823F5A1;
	Fri, 16 Dec 2022 07:36:56 -0800 (PST)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 5/5] zephyr-core: Add addpylib declaration
Date: Fri, 16 Dec 2022 15:37:23 +0000
Message-Id: <20221216153723.1522131-5-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216153723.1522131-1-peter.hoyes@arm.com>
References: <20221216153723.1522131-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 15:37:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58815

From: Peter Hoyes <Peter.Hoyes@arm.com>

OE-core 4901c9d471cab99d52876842980222ce271b66e4 "base: Switch to use
addpylib directive and BB_GLOBAL_PYMODULES" means that ${LAYERDIR}/lib
is no longer searched by default when loading test controllers.

meta-zephyr-core defines some custom test controllers for testing FVPs,
so add an addpylib directive to meta-zephyr-core/conf/layer.conf to fix
testimage.

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/lay=
er.conf
index 3d1e57b..2b1c821 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -20,3 +20,5 @@ LAYERSERIES_COMPAT_zephyrcore =3D "dunfell gatesgarth h=
ardknott honister kirkstone
 X86_TUNE_DIR =3D "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'hon=
ister kirkstone langdale', 'include/x86', 'include', d)}"
=20
 PYTHON3_NATIVE_SITEPACKAGES_DIR =3D "${libdir_native}/${PYTHON3_DIR}/sit=
e-packages"
+
+addpylib ${LAYERDIR}/lib oeqa
--=20
2.25.1


