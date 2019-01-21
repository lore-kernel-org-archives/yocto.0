Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89E6CE00CB2; Mon, 21 Jan 2019 01:11:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0F2E00C77
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0L9ADvw025113
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 01:10:49 -0800
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Mon, 21 Jan 2019 01:10:35 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 17:09:38 +0800
Message-ID: <1548061778-253354-4-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
References: <1548061778-253354-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [update-rc.d][PATCH V2] update-rc.d: support enable/disable function
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
X-List-Received-Date: Mon, 21 Jan 2019 09:11:04 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Add support of enable/disable function, so that user can keep
previous config like disable one service even after upgrade package.

this patch need to work with oe-core patch
[update-rc.d.bbclass: remove preinst and remove -f for postinst]

[Yocto 12955]

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 update-rc.d | 81 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/update-rc.d b/update-rc.d
index e07cf85..a7fb7bc 100644
--- a/update-rc.d
+++ b/update-rc.d
@@ -27,6 +27,7 @@ usage()
 usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
        update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
        update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runlvl] [...] .
+       update-rc.d [-n] [-r <root>] [-s] <basename> enable|disable [S|2|3|4|5]
 		-n: not really
 		-f: force
 		-v: verbose
@@ -101,6 +102,53 @@ makelinks()
 	done
 }
 
+# function to disable/enable init script link of one run level
+# $1 should be K/S, means to disable/enable
+# $2 means which run level to disable/enable 
+renamelink()
+{
+	local oldstartstop newstartstop lev oldnn newnn
+	if [ "x$1" = "xS" ]; then
+		oldstartstop="K"
+		newstartstop="S"
+	else
+		oldstartstop="S"
+		newstartstop="K"
+	fi
+
+	lev=$2
+	# modifies existing runlevel links for the script /etc/init.d/name by renaming start links to stop link
+        # or stop link to start link with a sequence number equal to the difference of 100 minus the original sequence number.
+	if ls ${etcd}${lev}.d/${oldstartstop}*${bn} >/dev/null 2>&1; then
+		oldnn=`basename ${etcd}${lev}.d/${oldstartstop}*${bn}|cut -c2-3`
+		newnn=$[100-$oldnn]
+		[ $verbose -eq 1 ] && echo "rename ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} -> ${etcd}${lev}.d/${newstartstop}${newnn}${bn}"
+		if [ $notreally -eq 0 ];then
+			mv ${etcd}${lev}.d/${oldstartstop}${oldnn}${bn} ${etcd}${lev}.d/${newstartstop}${newnn}${bn}
+		fi
+		if [ $dostart -eq 1 ] && [ $newstartstop = "S" ] && [ $lev = $RUNLEVEL ]; then
+			$fn start || true
+		fi
+	fi
+
+}
+
+# function to disable/enable init script link
+# $1 should be K/S, means to disable/enable
+# $2 run level [S|2|3|4|5], optional, If no start runlevel is 
+# specified after the disable or enable keywords 
+# the script will attempt to modify links in all start runlevels
+renamelinks()
+{
+	if [ $# -eq 2 ]; then
+		renamelink $1 $2
+	else
+		for i in 2 3 4 5 S; do
+			renamelink $1 $i
+		done
+	fi
+}
+
 while [ $# -gt 0 ]; do
 	case $1 in
 		-n)	notreally=1
@@ -221,6 +269,13 @@ case $1 in
 		;;
 
 	start | stop)
+		if [ $# -lt 4 ]
+		then
+			echo "Not enough arguments"
+			usage
+			exit 1
+		fi
+
 		while [ $# -gt 0 ]; do
 			if [ $1 = "start" ]; then
 				letter=S
@@ -251,6 +306,32 @@ case $1 in
 		makelinks
 		;;
 
+	enable | disable)
+		if [ $1 = "enable" ]; then
+			letter=S
+		elif [ $1 = "disable" ]; then
+			letter=K
+		else
+			usage
+			exit 1
+		fi
+		shift
+		# 
+		if [ $# -gt 0 ]
+		then
+			case $1 in
+				S|2|3|4|5)
+					renamelinks $letter $1
+					;;
+				*)
+					usage
+					exit 1
+					;;
+			esac
+		else
+			renamelinks $letter
+		fi
+		;;
 	*)
 		usage
 		exit 1
-- 
2.7.4


