Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2C74E0090C; Mon, 11 Jan 2016 08:51:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
Received: from bin-vsp-out-05.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73698E0090C
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 08:51:00 -0800 (PST)
X-Halon-ID: 67d26c4d-b883-11e5-8d6c-005056916f53
Authorized-sender: petter@technux.se
Received: from localhost.localdomain (unknown [85.195.55.167])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Mon, 11 Jan 2016 17:50:22 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 17:49:43 +0100
Message-Id: <1452530987-994-2-git-send-email-petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452530987-994-1-git-send-email-petter@technux.se>
References: <1452530987-994-1-git-send-email-petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/5] .gitignore: Ignore .swp files
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
X-List-Received-Date: Mon, 11 Jan 2016 16:51:05 -0000
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


