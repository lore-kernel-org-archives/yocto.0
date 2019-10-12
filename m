Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67445E00CB9; Sat, 12 Oct 2019 01:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BC93E00994
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 01:17:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id x9C8HEQN005014
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 12 Oct 2019 01:17:14 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sat, 12 Oct 2019 01:17:13 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@kernel.crashing.org>
Date: Sat, 12 Oct 2019 16:17:09 +0800
Message-ID: <1570868230-34625-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
References: <1570868230-34625-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 2/3] openssh_fips.inc: remove rng-tools from sshd RRECOMMENDS
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
X-List-Received-Date: Sat, 12 Oct 2019 08:17:18 -0000
Content-Type: text/plain

While kernel enable fips, the rng-tools takes a high cpu performance
which Operation not permitted
...
Oct 12 06:08:23 qemux86-64 rngd[122]: RNDADDENTROPY failed: Operation not permitted
...

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-connectivity/openssh/openssh_fips.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index 38db03b..0eafb98 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -3,6 +3,8 @@ DEPENDS += " \
     openssl-fips \
     fipscheck \
 "
+RRECOMMENDS_${PN}-sshd_remove = "rng-tools"
+
 SRC_URI += " \
     file://0001-openssh-8.0p1-fips.patch \
     file://0001-conditional-enable-fips-mode.patch \
-- 
2.7.4


