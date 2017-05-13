Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7887E00B6D; Sat, 13 May 2017 08:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A3A8E00B53
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 08:33:18 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 7C3FD26027F
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Sat, 13 May 2017 17:33:02 +0200
Message-Id: <20170513153305.27132-3-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170513153305.27132-1-romain.perier@collabora.com>
References: <20170513153305.27132-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: copy spl binary from the good task
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
X-List-Received-Date: Sat, 13 May 2017 15:33:20 -0000

Currently, the spl binary (that is ${SPL_BINARY}) is copied before the
install task, as part of a prepended func. The u-boot include in poky,
defines the deploy task to be run after the compile task, there is
absolutely no order between this deploy task and the install task. In
some cases, the install task can be executed after the deploy task,
resulting to an error because do_deploy will not find the spl binary in
${B}.

This commit, move the copy of the spl binary after the compile task.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
index dda8bb4..2865fab 100644
--- a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -18,7 +18,7 @@ SRC_URI = " \
 SRCREV = "${AUTOREV}"
 S = "${WORKDIR}/git"
 
-do_install_prepend () {
-	# copy to default search path
-	cp ${B}/spl/${SPL_BINARY} ${B}/
+do_compile_append () {
+    # copy to default search path
+    cp ${B}/spl/${SPL_BINARY} ${B}/
 }
-- 
1.8.3.1


