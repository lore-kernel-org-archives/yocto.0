Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105F4E00C92; Tue, 11 Dec 2018 02:12:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD1FFE00C4D
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 02:12:41 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wBBACfkd006378
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 02:12:41 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 11 Dec 2018 02:12:40 -0800
From: "Hongzhi.Song" <hongzhi.song@windriver.com>
To: <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
Date: Tue, 11 Dec 2018 05:12:50 -0500
Message-ID: <1544523170-221209-1-git-send-email-hongzhi.song@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [yocto-kernel-tools][PATCH] tools/kconf_check: modify grep pattern
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
X-List-Received-Date: Tue, 11 Dec 2018 10:12:45 -0000
Content-Type: text/plain

The cmd line, <grep '^[  ]*\(menu\)*config '>, can't
match all expect config options.

This is because that it is not always space after 'config'
in kernel-source/*/.../Kconfig.
e.g. "config  IP_VS_IPV6" in net/netfilter/ipvs/Kconfig

So we should change the cmd to grep '^[  ]*\(menu\)*config\s'.

Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
---
 tools/kconf_check | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/kconf_check b/tools/kconf_check
index aa86180..20b49cd 100755
--- a/tools/kconf_check
+++ b/tools/kconf_check
@@ -241,7 +241,7 @@ find ${kernel_source} \
 # known list of all Kconfig* files.  Again, must filter dups.
 rm -f ${LOGDIR}/all.cfg
 for i in `cat ${LOGDIR}/all.kcf` ; do
-    cat ${kernel_source}/$i | grep '^[ 	]*\(menu\)*config ' | \
+    cat ${kernel_source}/$i | grep '^[ 	]*\(menu\)*config\s' | \
 	awk '{print "CONFIG_"$2}' >> ${LOGDIR}/all.cfg
 done
 mv -f ${LOGDIR}/all.cfg ${LOGDIR}/all.cfg~
-- 
2.8.1


