Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C08CEE00C41; Tue, 20 Sep 2016 07:29:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3722AE00BEB
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:29:10 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 21so1055815pfy.1
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=MlMDmE/nRFHGXyCCfZRTTWpG533rgxfhGSJ1vbuHamI=;
	b=Q9hyvAgAX5RdLgMr9kH/a1Ett/AyhFTQLz0ihwsQkoIvqSD+RQNg+35KCVXQBjeb00
	u3TEgpM+bTudrj+epHz0jsrWDyg8dKuGE/r41MFrms9iKoZqj9/2zSvKUZfomht0sZqP
	1NtSUMt9wiAwfKsyPmG4Wty3mQKydE+FKT+0Opu5er3M3kZsZ4OvdSo0rQfY6MGfQKGM
	72LTFARNGf7Cj5bTATyFdBuRAkkolsUVLCoETtsBbm6D5PkM1hpBWkrs1DNj/FHeTqr0
	jC8hjVX3mRKKogv7Y1L2pjex7GBnw6WJ4v4WyYEBd9+czt5W/hBT6WkcJRN6GuTsZeXy
	V6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=MlMDmE/nRFHGXyCCfZRTTWpG533rgxfhGSJ1vbuHamI=;
	b=Fs9EPM7J9j+Mm+br6i68xkbKZq1Nq3+/41XYNc18VdIXBfd36MgJd52bJ4AWNyDlJW
	tEtTmLr81i3S46RLSwnc4yF3xksWSHewgpkY2PN+aDz9Yi3kB8BdDA6Fqq2D1DzmrzM/
	JrVKQDVcqZj8xhqxLv0B3nb1f6wpkjr6AJpUTnlkw4q/xKmTqR8zDoTT5fqSvuOef2v4
	25wf7rP0M+h6sMnpLV5a+ygKpptANN/H7qnm60EJPitIx1DonAAHRorv5UV8DyjKgofV
	gGjDyfaXHXF+EPudQwugPTUKwdBiDRKhTqbRmPUAwMmni5DsGvJsiUCyWevr8TbuNOGU
	STrg==
X-Gm-Message-State: AE9vXwP1sykpDoYeaR5U1umB1gbxPIPaAMZL7CJgFXid5DzS3ALeH7zTHxyxsQLbJpfHew==
X-Received: by 10.98.219.196 with SMTP id f187mr55192669pfg.39.1474381750334; 
	Tue, 20 Sep 2016 07:29:10 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id y9sm33298666pfk.2.2016.09.20.07.29.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 20 Sep 2016 07:29:09 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Sep 2016 19:59:04 +0530
Message-Id: <1474381744-20808-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 3/3] refpolicy_2.20151208/git: restrict systemd related patches
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
X-List-Received-Date: Tue, 20 Sep 2016 14:29:55 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

restrict systemd related patches based on distro feature.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy_2.20151208.inc | 2 +-
 recipes-security/refpolicy/refpolicy_git.inc        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_2.20151208.inc b/recipes-security/refpolicy/refpolicy_2.20151208.inc
index ce90b13..1123f3a 100644
--- a/recipes-security/refpolicy/refpolicy_2.20151208.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20151208.inc
@@ -29,7 +29,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-rpm.patch \
             file://poky-fc-ftpwho-dir.patch \
             file://poky-fc-fix-real-path_su.patch \
-            file://refpolicy-update-for_systemd.patch \
+            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-update-for_systemd.patch', '', d)} \
            "
 
 # Specific policy for Poky
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d031f81..93ba6e5 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -32,7 +32,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-rpm.patch \
             file://poky-fc-ftpwho-dir.patch \
             file://poky-fc-fix-real-path_su.patch \
-            file://refpolicy-update-for_systemd.patch \
+            ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://refpolicy-update-for_systemd.patch', '', d)} \
            "
 
 # Specific policy for Poky
-- 
1.9.1


