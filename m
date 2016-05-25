Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76A96E00CE1; Wed, 25 May 2016 01:27:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4EC3E00CD0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:27:12 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id f75so13107119wmf.2
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=M2wVAACvMVExiNSUs3xC/Pf0wmjyRdmI2+mjt6aj2aE=;
	b=cRIDPGcS8DDDXPOwAOEUYR9v8w4/WwPyyEEYt6K7IxF+NZo3Vf+YAJohsvgg5DkFy7
	h8UTBj5pwUe4wNRfs4V44e/QjDodreLDJPXqNb9BCc/+qD8T+BbkGU3ZwEOXh2xzT3xO
	MBW02DCNRPKt8/obEkQO4iOowAM+cnFUewvj8lI4mvDMNxpkB/Nb4zmdpTZSlWZFlxpp
	U6sJnIU322s9dfqb0VdyE1vLO3JqhF+EBHACqVW/IClfaLS1SyT6OjJ3wpQu6qFDS7s0
	Xr8yISay1QDf6rFzxff15Z8iSAfD/YsGlrvvUrV/5I809YuczahKtZ9uqFWAm8AoU4IK
	KXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=M2wVAACvMVExiNSUs3xC/Pf0wmjyRdmI2+mjt6aj2aE=;
	b=RbCGnYPBIBMuAWC7K2uMv5nojB/vf8c8nF+IpidKgbF0ikzVWHDw98Wr6Vz8BcMPx8
	encBkXBGX+/NeHkyBUXyRbzSqJmiOXj7NXflvyA5YkNXNehp2R7kV9D5KqreB+5bXviR
	hSGqIF2D6DsmUlOyoRl1wq1Le5PsDu2CtgN9v9FOlgfz3Hg31v10ZXOa90uQBpjff1yX
	iHzFLbG3hrfGvCzqh1bV+n2FZOcixhQ8VaBWkcwmZu8DGAtLmIPIfB3TG4XxI809Txuj
	jNp9GRiRYT3/EXY6DFCRCHQ0ZucStWPjLpl6mvGizcgFscnVRcmM/yyXk45uXs5Gi3lU
	VN7g==
X-Gm-Message-State: ALyK8tJYlCn1FV+uXc/haMpwhIw9Xf4JErH9ZLnh6CsIhdHjOpmAnMVjaVewbbCo0pMO8A==
X-Received: by 10.28.105.17 with SMTP id e17mr2119436wmc.75.1464164831849;
	Wed, 25 May 2016 01:27:11 -0700 (PDT)
Received: from sgxcmp131.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id
	w123sm22682110wmw.0.2016.05.25.01.27.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 May 2016 01:27:10 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 10:27:08 +0200
Message-Id: <1464164828-24502-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-virtualization][PATCH] Use bb.utils.contains instead of base_contains because it is deprecated
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
X-List-Received-Date: Wed, 25 May 2016 08:27:14 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-containers/containerd/containerd_git.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-containers/containerd/containerd_git.bb b/recipes-containers/containerd/containerd_git.bb
index 46b9dc1..1a2c445 100644
--- a/recipes-containers/containerd/containerd_git.bb
+++ b/recipes-containers/containerd/containerd_git.bb
@@ -59,8 +59,8 @@ do_compile() {
 
 # Note: disabled for now, since docker is launching containerd
 # inherit systemd
-# SYSTEMD_PACKAGES = "${@base_contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
-# SYSTEMD_SERVICE_${PN} = "${@base_contains('DISTRO_FEATURES','systemd','containerd.service','',d)}"
+# SYSTEMD_PACKAGES = "${@bb.utils.contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
+# SYSTEMD_SERVICE_${PN} = "${@bb.utils.contains('DISTRO_FEATURES','systemd','containerd.service','',d)}"
 
 do_install() {
 	mkdir -p ${D}/${bindir}
@@ -73,7 +73,7 @@ do_install() {
 	ln -sf containerd-shim ${D}/${bindir}/docker-containerd-shim
 	ln -sf containerd-ctr ${D}/${bindir}/docker-containerd-ctr
 
-	if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
 		install -d ${D}${systemd_unitdir}/system
 		install -m 644 ${S}/hack/containerd.service ${D}/${systemd_unitdir}/system
 	        # adjust from /usr/local/bin to /usr/bin/
-- 
2.1.4


