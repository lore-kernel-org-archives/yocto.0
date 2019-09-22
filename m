Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A0FDE00D99; Sun, 22 Sep 2019 08:00:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B82E00D99
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 08:00:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MF0axx007995
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 08:00:36 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 08:00:35 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:57:08 +0800
Message-ID: <1569164228-26934-16-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 15/15] README.openssh_cavstest: add CAVS tests for FIPS validation
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
X-List-Received-Date: Sun, 22 Sep 2019 15:00:38 -0000
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.openssh_cavstest | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 README.openssh_cavstest

diff --git a/README.openssh_cavstest b/README.openssh_cavstest
new file mode 100644
index 0000000..5d69ee5
--- /dev/null
+++ b/README.openssh_cavstest
@@ -0,0 +1,28 @@
+1. Install openssh-cavs to images
+$ echo "IMAGE_INSTALL += 'openssh-cavs'" >> conf/local.conf
+$ bitbake <image>
+
+2. Run tests on target
+1) ctr-cavstest
+invocation (all of the following are equal):
+./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt --data a6deca405eef2e8e4609abf3c3ccf4a6
+./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt --data a6deca405eef2e8e4609abf3c3ccf4a6 --iv 00000000000000000000000000000000
+echo -n a6deca405eef2e8e4609abf3c3ccf4a6 | ./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt
+
+$ cd /usr/libexec
+$ ./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt --data a6deca405eef2e8e4609abf3c3ccf4a6
+58E33554D51B0DD7A63F44B22381B1CA
+$ ./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt --data a6deca405eef2e8e4609abf3c3ccf4a6 --iv 00000000000000000000000000000000
+58E33554D51B0DD7A63F44B22381B1CA
+$ echo -n a6deca405eef2e8e4609abf3c3ccf4a6 | ./ctr-cavstest --algo aes128-ctr --key 987212980144b6a632e864031f52dacc --mode encrypt
+58E33554D51B0DD7A63F44B22381B1CA
+
+2) ssh-cavs
+$ cd /usr/libexec
+$ ./ssh-cavs -K 0055d50f2d163cc07cd8a93cc7c3430c30ce786b572c01ad29fec7597000cf8618d664e2ec3dcbc8bb7a1a7eb7ef67f61cdaf291625da879186ac0a5cb27af571b59612d6a6e0627344d846271959fda61c78354aa498773d59762f8ca2d0215ec590d8633de921f920d41e47b3de6ab9a3d0869e1c826d0e4adebf8e3fb646a15dea20a410b44e969f4b791ed6a67f13f1b74234004d5fa5e87eff7abc32d49bbdf44d7b0107e8f10609233b7e2b7eff74a4daf25641de7553975dac6ac1e5117df6f6dbaa1c263d23a6c3e5a3d7d49ae8a828c1e333ac3f85fbbf57b5c1a45be45e43a7be1a4707eac779b8285522d1f531fe23f890fd38a004339932b93eda4 -H d3ab91a850febb417a25d892ec48ed5952c7a5de -s d3ab91a850febb417a25d892ec48ed5952c7a5de -i 8 -e 24 -m 20
+Initial IV (client to server) = 4bb320d1679dfd3a
+Initial IV (server to client) = 43dea6fdf263a308
+Encryption key (client to server) = 13048cc600b9d3cf9095aa6cf8e2ff9cf1c54ca0520c89ed
+Encryption key (server to client) = 1e483c5134e901aa11fc4e0a524e7ec7b75556148a222bb0
+Integrity key (client to server) = ecef63a092b0dcc585bdc757e01b2740af57d640
+Integrity key (server to client) = 7424b05f3c44a72b4ebd281fb71f9cbe7b64d479
-- 
2.7.4


