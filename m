Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8ABCE00CBF; Sun, 28 Feb 2016 05:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B52E00CBD
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 05:46:22 -0800 (PST)
X-Halon-ID: a5309b4a-de21-11e5-8752-005056917c0c
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun, 28 Feb 2016 14:46:19 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 14:46:09 +0100
Message-Id: <1456667173-28743-3-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456667173-28743-1-git-send-email-petter@technux.se>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v3 2/6] .gitignore: Ignore .swp files
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
X-List-Received-Date: Sun, 28 Feb 2016 13:46:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 1677b58..f235765 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,2 +1,3 @@
 build*
 *~
+.*.swp
-- 
1.9.1


