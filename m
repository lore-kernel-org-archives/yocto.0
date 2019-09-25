Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D608E00ED6; Wed, 25 Sep 2019 00:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4667DE00E4F
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:26:31 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8P7QTqQ002368
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:26:29 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:26:28 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:24:10 +0800
Message-ID: <1569396253-36865-14-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 13/16] README.enable_fips: add steps to turn system (kernel and user space) into FIPS mode
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
X-List-Received-Date: Wed, 25 Sep 2019 07:27:58 -0000
Content-Type: text/plain

Refer RedHat/Fedora/SUSE/Oracle/IBM ways

1. Add `fips=1' to kernel option to enable FIPS mode in kernel

2. File /etc/system-fips to determine if a FIPS mode is enabled in user space,
currently openssh only

Refer:
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/security_guide/sect-security_guide-federal_standards_and_regulations-federal_information_processing_standard
https://access.redhat.com/discussions/3293631
https://lists.fedoraproject.org/pipermail/scm-commits/Week-of-Mon-20131007/1124363.html
https://www.ibm.com/support/knowledgecenter/en/linuxonibm/com.ibm.linux.z.lgdd/lgdd_r_fipsparm.html
https://support.oracle.com/knowledge/Oracle%20Linux%20and%20Virtualization/2323738_1.html

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 README.enable_fips | 56 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 README.enable_fips

diff --git a/README.enable_fips b/README.enable_fips
new file mode 100644
index 0000000..8016346
--- /dev/null
+++ b/README.enable_fips
@@ -0,0 +1,56 @@
+To turn your system (kernel and user space) into FIPS mode, follow these steps:
+
+1. Enable FIPS mode in kernel:
+The `fips=1' kernel option needs to be added to the kernel command line so that key
+generation is done with FIPS approved algorithms and continuous monitoring tests in
+place:
+...
+[    0.000000] Linux version 5.3.0-yoctodev-standard (oe-user@oe-host) (gcc version 9.2.0 (GCC)) #1 SMP PREEMPT Sun Sep 22 07:03:58 UTC 2019
+[    0.000000] Command line: root=/dev/vda rw highres=off  console=ttyS0 fips=1
+[    0.281178] alg: self-tests for rsa-generic (rsa) passed
+[    0.283124] alg: self-tests for cipher_null-generic (cipher_null) passed
+[    0.284199] alg: self-tests for ecb-cipher_null (ecb(cipher_null)) passed
+[    0.285596] alg: self-tests for sha1-generic (sha1) passed
+[    0.287474] alg: self-tests for sha256-generic (sha256) passed
+[    0.289138] alg: self-tests for sha224-generic (sha224) passed
+[    0.290277] alg: self-tests for des3_ede-generic (des3_ede) passed
+[    0.292005] alg: self-tests for aes-generic (aes) passed
+[    0.294431] alg: self-tests for crc32c-generic (crc32c) passed
+[    0.295046] alg: self-tests for drbg_pr_hmac_sha1 (stdrng) passed
+[    0.296927] alg: self-tests for drbg_pr_hmac_sha384 (stdrng) passed
+[    0.298001] alg: self-tests for drbg_pr_hmac_sha512 (stdrng) passed
+[    0.301064] alg: self-tests for hmac(sha256-generic) (hmac(sha256)) passed
+[    0.303057] alg: self-tests for drbg_pr_hmac_sha256 (stdrng) passed
+[    0.304026] alg: self-tests for drbg_nopr_hmac_sha1 (stdrng) passed
+[    0.304999] alg: self-tests for drbg_nopr_hmac_sha384 (stdrng) passed
+[    0.306001] alg: self-tests for drbg_nopr_hmac_sha512 (stdrng) passed
+[    0.307377] alg: self-tests for drbg_nopr_hmac_sha256 (stdrng) passed
+[    0.311120] DRBG: Continuing without Jitter RNG
+[    0.316952] alg: self-tests for ecdh-generic (ecdh) passed
+[    0.996938] alg: self-tests for jitterentropy_rng (jitterentropy_rng) passed
+[    3.330824] alg: self-tests for cbc(aes-generic) (cbc(aes)) passed
+...
+
+Kernel FIPS mode verification
+You have two options:
+1) cat /proc/sys/crypto/fips_enabled
+2) sysctl crypto.fips_enabled
+
+NOTE: 1 indicates enabled, while 0 indicates disabled.
+
+
+2. Enable FIPS mode in user space (default yes)
+File /etc/system-fips to determine if a FIPS module is installed and
+FIPS mode is enabled
+
+1) openssh:
+- sshd
+2019-09-22T12:20:04.631097+00:00 qemux86-64 sshd[437]: FIPS mode initialized
+
+- ssh
+# ssh root@localhost
+FIPS mode initialized
+
+- ssh-keygen
+# ssh-keygen -A
+ssh-keygen: generating new host keys: DSA DSA keys are not allowed in FIPS mode
-- 
2.7.4


