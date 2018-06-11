Return-Path: <>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACF78E01E8D; Sun, 10 Jun 2018 23:54:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D7CE01E89
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 23:54:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jun 2018 23:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,500,1520924400"; d="scan'208";a="236088305"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.106])
	by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2018 23:54:26 -0700
From: Aaron@yoctoproject.org, Chan@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 11 Jun 2018 14:54:22 +0800
Message-Id: <1528700062-22032-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 11 Jun 2018 02:39:56 -0700
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder2] Add extended support on MailNotifier services
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
X-List-Received-Date: Mon, 11 Jun 2018 06:54:30 -0000

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

---
 config.py   | 34 ++++++++++++++++++++++++++++++++++
 services.py | 32 ++++++++++++++++++++++++++++----
 2 files changed, 62 insertions(+), 4 deletions(-)

diff --git a/config.py b/config.py
index 2568768..9d0807f 100644
--- a/config.py
+++ b/config.py
@@ -80,3 +80,37 @@ builder_to_workers = {
     "nightly-deb-non-deb": [],
     "default": workers
 }
+
+# MailNotifier default settings (refer to schedulers.py)
+#smtpConf = {
+#    "fromaddr"         : "yocto-builds@yoctoproject.org",
+#    "sendToInterestedUsers": False,
+#    "extraRecipients"  : ["yocto-builds@yoctoproject.org"],
+#    "subject"          : "",
+#    "mode"             : ["failing", "exception", "cancelled"],
+#    "builders"         : None,
+#    "tags"             : None,
+#    "schedulers"       : None,
+#    "branches"         : None,
+#    "addLogs"          : False, 
+#    "addPatch"         : True,
+#    "buildSetSummary"  : True,
+#    "smtpServer"       : "<SMTP server", 
+#    "smtpPort"         : "<SMTP Port>",
+#    "useTls"           : False, 
+#    "useSmtps"         : False,
+#    "smtpUser"         : None, 
+#    "smtpPassword"     : None,
+#    "lookup"           : None,
+#    "extraHeaders"     : None,
+#    "watchedWorkers"   : None,
+#    "missingWorkers"   : None,
+#    "template_dir"     : "<Email template path",
+#    "template_filename": "<Email template filename",
+#    "template"         : None,
+#    "template_type"    : "html",
+#    "subject_filename" : None,
+#    "subject"          : None,
+#    "wantProperties"   : True, 
+#    "wantSteps"        : True, 
+#}
diff --git a/services.py b/services.py
index 96d23ac..440845a 100644
--- a/services.py
+++ b/services.py
@@ -8,10 +8,34 @@ services = []
 # TODO: we'll replace this with functionality in yocto-autobuilder-helpers
 # to mail the error reports to the list
 # services.append(
-#     reporters.MailNotifier(fromaddr="yocto-builds@yoctoproject.org",
-#                            sendToInterestedUsers=False,
-#                            extraRecipients=["yocto-builds@yoctoproject.org"],
-#                            mode=('failing',))
+#     reporters.MailNotifier(fromaddr=config.smtpConf['fromaddr'],
+#                            sendToInterestedUsers=config.smtpConf['sendToInterestedUsers'],
+#                            extraRecipients=config.smtpConf['extraRecipients'],
+#                            mode=config.SmtpConf['mode'],
+#                            builders=config.smtpConf['builders'],
+#                            tags=config.smtpConf['tags'],
+#                            schedulers=config.smtpConf['schedulers'],
+#                            branches=config.smtpConf['branches'],
+#                            addLogs=config.smtpConf['addLogs'],
+#                            addPatch=config.smtpConf['addPatch'],
+#                            buildSetSummary=config.smtpConf['buildSetSummary'],
+#                            relayhost=config.smtpConf['smtpServer'],
+#                            smtpPort=config.smtpConf['smtpPort'],
+#                            useTls=config.smtpConf['useTls'],
+#                            useSmtps=config.smtpConf['useSmtps'],
+#                            smtpUser=config.smtpConf['smtpUser'],
+#                            smtpPassword=config.smtpConf['lookup'],
+#                            lookup=config.smtpConf['lookup'],
+#                            messageFormatter=reporters.MessageFormatter(template_dir=config.smtpConf['template_dir'],
+#                                                                        template_filename=config.smtpConf['template_filename'],
+#                                                                        ctx=dict(statuses=results.Results),
+#                                                                        template_type=config.smtp['template_type'],
+#      	                                                                 wantProperties=config.smtpConf['wantProperties'],
+#                                                                        wantSteps=config.smtpConf['wantSteps'],
+#                                                                        wantLogs=config.smtpConf['wantLogs']),
+#                            extraHeaders=config.smtpConf['extraHeaders'],
+#                            watchedWorkers=config.smtpConf['watchedWorkers'],
+#                            messageFormatterMissingWorker=config.smtpConf['missingWorkers'])
 # )
 
 # services.append(
-- 
2.7.4


