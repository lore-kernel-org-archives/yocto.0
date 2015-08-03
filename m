Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44694E009E4; Mon,  3 Aug 2015 06:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF7AFE0097F
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 06:34:51 -0700 (PDT)
Received: by pdco4 with SMTP id o4so8678238pdc.3
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 06:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=BcwXrvmfpfb0Kwf2WmmedzOUaZJEDuE9VJewkZz6CK8=;
	b=EUrDvGc05o0F8sKCWW3tDarpHhCN6HOvU87uMsI3b+7pB2oxqHf5qBnxP/Wd4jZbaK
	S7z+DjSzLaF5jiJoS9sVPuUZPLxpDz5kF+t8M+mhvUD+6TJjM5KaATX3JxFx1grcnBw3
	ygb3eKnp7MG2pPQpCB7MeGbDfPMaA7KcYQWAtszll93hfL2gGTHkvHUAbeLmhwpcd40s
	AbsCrcDTMvWsjgjQ/Led5nPaC2IR3aJO1F0PSc+cuvKAu63Jp/mY0PUuwGI0XcQcBrcf
	4fX3d1GPkYqax5f78Rc6Vx/XwllJOz8yHJemvph8swKZowgPVhEpbpsHJ1dTtd/7QkyE
	GAwg==
X-Received: by 10.70.65.5 with SMTP id t5mr36789318pds.16.1438608891108;
	Mon, 03 Aug 2015 06:34:51 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	hx7sm7997673pbc.84.2015.08.03.06.34.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 06:34:50 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Aug 2015 19:05:55 +0530
Message-Id: <1438608955-9969-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 5/8] refpolicy-mls: update base refpolicy to git repo
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
X-List-Received-Date: Mon, 03 Aug 2015 13:35:47 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

A simple forward-port of refpolicy-mls to use the
refpolicy from git repository.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy-mls_git.bb |   10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-mls_git.bb

diff --git a/recipes-security/refpolicy/refpolicy-mls_git.bb b/recipes-security/refpolicy/refpolicy-mls_git.bb
new file mode 100644
index 0000000..7388232
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-mls_git.bb
@@ -0,0 +1,10 @@
+SUMMARY = "MLS (Multi Level Security) variant of the SELinux policy"
+DESCRIPTION = "\
+This is the reference policy for SE Linux built with MLS support. \
+It allows giving data labels such as \"Top Secret\" and preventing \
+such data from leaking to processes or files with lower classification. \
+"
+
+POLICY_TYPE = "mls"
+
+include refpolicy_${PV}.inc
-- 
1.7.9.5


