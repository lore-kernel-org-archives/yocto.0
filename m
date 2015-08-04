Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 420D2E00A92; Tue,  4 Aug 2015 04:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2207 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Aug 2015 04:27:37 PDT
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0786BE00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 04:27:37 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t74Aoo7i014518
	for <yocto@yoctoproject.org>; Tue, 4 Aug 2015 05:50:50 -0500
Received: from adi-pc-linux.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015080405504948-898741 ;
	Tue, 4 Aug 2015 05:50:49 -0500 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: yocto@yoctoproject.org
Date: Tue, 4 Aug 2015 13:50:48 +0300
Message-Id: <1438685448-22675-1-git-send-email-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.1.4
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 08/04/2015 05:50:49 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 08/04/2015 05:50:49 AM,
	Serialize complete at 08/04/2015 05:50:49 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-08-04_05:, , signatures=0
Subject: [yocto-kernel-tools] configme: Error out loudly if merge_configs.sh fails
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
X-List-Received-Date: Tue, 04 Aug 2015 11:27:43 -0000

If merge_configs.sh fails, then configme should error loudly and
stop the build because this usually means the build will break
somewhere else down the road.

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 tools/configme        | 6 ++++++
 tools/merge_config.sh | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/tools/configme b/tools/configme
index e9a4b96..913952c 100755
--- a/tools/configme
+++ b/tools/configme
@@ -255,6 +255,12 @@ run_board_config()
     ARCH=$KARCH O=$BUILD_DIR merge_config.sh $allnoconfig -d $merge_frags  \
                                       > $META_DIR/cfg/$KTGT/merge_log.txt 2>&1
 
+    if [ $? != 0 ]; then
+	echo "ERROR: Could not merge config fragments"
+	echo "    errors are logged in `pwd`/$META_DIR/cfg/$KTGT/merge_log.txt"
+	exit 1
+    fi
+
     mv $BUILD_DIR/.tmp.config* $META_DIR/cfg/$KTGT/$CFGFILE
     if [ $? != 0 ]; then
      	echo creation of pre-processed config data failed
diff --git a/tools/merge_config.sh b/tools/merge_config.sh
index 7a257dc..24c405a 100755
--- a/tools/merge_config.sh
+++ b/tools/merge_config.sh
@@ -149,6 +149,10 @@ fi
 # allnoconfig: Fills in any missing symbols with # CONFIG_* is not set
 make KCONFIG_ALLCONFIG=$TMP_FILE O=$OUTPUT $ALLTARGET
 
+if [ $? != 0 ]; then
+    echo "ERROR: Could not fill in missing kconfig symbols"
+    exit 1
+fi
 
 # Check all specified config values took (might have missed-dependency issues)
 for CFG in $(sed -n "$SED_CONFIG_EXP" $TMP_FILE); do
-- 
2.1.4


