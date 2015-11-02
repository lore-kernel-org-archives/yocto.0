Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F00D6E00A81; Sun,  1 Nov 2015 17:38:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73D75E009EF
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 17:38:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tA21c58L012946
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 1 Nov 2015 17:38:05 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 1 Nov 2015 17:38:04 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sun, 1 Nov 2015 20:38:03 -0500
Message-ID: <1446428283-88592-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] openssh: set ChallengeResponseAuthentication to no
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
X-List-Received-Date: Mon, 02 Nov 2015 01:38:08 -0000
Content-Type: text/plain

From: Wenlin Kang <wenlin.kang@windriver.com>

The patch fixes the login fails for ssh -o Batchmode=yes when passwords is
empty and without authorized_keys file even if set "PermitEmptyPasswords yes"
in sshd_config file.

Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-connectivity/openssh/files/sshd_config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/openssh/files/sshd_config b/recipes-connectivity/openssh/files/sshd_config
index c5c0905..2110463 100644
--- a/recipes-connectivity/openssh/files/sshd_config
+++ b/recipes-connectivity/openssh/files/sshd_config
@@ -62,7 +62,7 @@ Protocol 2
 #PermitEmptyPasswords no
 
 # Change to no to disable s/key passwords
-#ChallengeResponseAuthentication yes
+ChallengeResponseAuthentication no
 
 # Kerberos options
 #KerberosAuthentication no
-- 
1.9.1


