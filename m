Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6118E00D51; Sun, 22 Sep 2019 07:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696D8E00D47
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:59:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MExAqi007747
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:59:10 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:59:09 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:57:03 +0800
Message-ID: <1569164228-26934-11-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 10/15] openssh/sshd_check_keys: don't generate ED25519 host keys in FIPS mode
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
X-List-Received-Date: Sun, 22 Sep 2019 14:59:11 -0000
Content-Type: text/plain

Run sshd_check_keys failed:
...
2019-09-22T09:59:10.878738+00:00 qemux86-64 sshd_check_keys[419]:   generating ssh ED25519 host key...
2019-09-22T09:59:10.897617+00:00 qemux86-64 sshd_check_keys[419]: ED25519 keys are not allowed in FIPS mode
...

If fips mode enabled (existence of "/etc/system-fips"), don't generate ED25519 host
keys in FIPS mode

Refers Fedora:
https://src.fedoraproject.org/rpms/openssh/c/00c7b7543973f237b79ee87ca697c08b71954d35
https://src.fedoraproject.org/rpms/openssh/c/3b7c8620a1df976c1c09553c1c7b99ce492d290b

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-connectivity/openssh/openssh/sshd_check_keys | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-connectivity/openssh/openssh/sshd_check_keys b/recipes-connectivity/openssh/openssh/sshd_check_keys
index 1931dc7..338531d 100644
--- a/recipes-connectivity/openssh/openssh/sshd_check_keys
+++ b/recipes-connectivity/openssh/openssh/sshd_check_keys
@@ -71,6 +71,10 @@ for key in ${HOST_KEYS} ; do
         generate_key $key ecdsa
         ;;
     *_ed25519_key)
+        FIPS=/etc/system-fips
+        if [[ -r "$FIPS" ]]; then
+            continue
+        fi
         echo "  generating ssh ED25519 host key..."
         generate_key $key ed25519
         ;;
-- 
2.7.4


