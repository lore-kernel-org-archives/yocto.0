Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50728E00CE5; Tue, 30 Aug 2016 08:45:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD54E00CDE
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 08:45:55 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP; 30 Aug 2016 08:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,257,1470726000"; 
   d="scan'208";a="2723193"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.146])
	by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2016 08:45:53 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Aug 2016 10:46:15 -0500
Message-Id: <1472571975-24370-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH][yocto-autobuilder] nightly-qa-systemd.conf: Add create_eventlog property
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
X-List-Received-Date: Tue, 30 Aug 2016 15:45:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This buildset also needs the create_eventlog property for only
enable the toaster event log creation when required. See rev [1].

[1] 0b083509beaf7421f1dde4b679a934741ac4a3bc

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.controller/nightly-qa-systemd.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/buildset-config.controller/nightly-qa-systemd.conf b/buildset-config.controller/nightly-qa-systemd.conf
index f95021dc..662caa6 100644
--- a/buildset-config.controller/nightly-qa-systemd.conf
+++ b/buildset-config.controller/nightly-qa-systemd.conf
@@ -4,6 +4,10 @@ repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
              'branch':'master'}}]
+props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
+                       'choices': ['False', 'True'],
+                       'name': 'create_eventlog',
+                       'label':'<hr>Create Toaster event log as part of image creation?:'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
-- 
2.1.4


