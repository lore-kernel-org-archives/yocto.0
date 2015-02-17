Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D2A9E00744; Tue, 17 Feb 2015 13:40:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE4BE00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:24 -0800 (PST)
Received: by iecrd18 with SMTP id rd18so44225157iec.5
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=WT22rI442hj89y2B5oBqLrDpK0P0ApN2LkxeJnT3Kpg=;
	b=VVdBI0WArUNme0i/q6IIYM7+Nqs9C9l2MuGRBQ8vQT8fI6UdiBadIVo/mOo+1gh5h1
	hrFvc8D4R8ED4w2XW8J+3scqpa3gr4I6zyD4HnIfwmX4hHlEiotwrREiVeyHUaCAc+0E
	cZASbud7MP/BkHhQcNxkckySqq/zeUh5ir+LYQKyrCPaatt5YHp4IfvVtmlklLbxlFlY
	66sM9Bn3cwaTNCAvszfaDbiIJC+WzH4QkrsUPbXmsmt00EfC6yJCQ6IU8u1l4sXonx73
	emg19iYAUKu7tO4RrketU+VSg9Q4f9ujPbqI76wp87ff7/jZChB5lNA/Cd+6lskV8ygU
	CUxQ==
X-Gm-Message-State: ALoCoQku0xVaY7ayRZSFafNpFb8mIGd2ZZQoUGWtv8haE5ijTAA2rQ4nJ9aBmq+lEbsNLMhjT4t5
X-Received: by 10.50.62.110 with SMTP id x14mr31173510igr.2.1424209223867;
	Tue, 17 Feb 2015 13:40:23 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id qs3sm10761789igb.8.2015.02.17.13.40.21
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 17 Feb 2015 13:40:22 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 16:41:12 -0500
Message-Id: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [autobuilder][PATCH 1/4] README: update filenames and locations
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
X-List-Received-Date: Tue, 17 Feb 2015 21:40:32 -0000

The main README points at conf/autobuilder.conf and conf/yoctoAB.conf,
both of which aren't the current places where the autobuilder looks for
these files anymore.

README-NEW-AUTOBUILDER has a bit of whitespace damage, in the text and in
the examples, so clean that up to make it more paste-friendly.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 README                 |  6 +++---
 README-NEW-AUTOBUILDER | 14 +++++++-------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/README b/README
index 94dae28..06b9cbc 100644
--- a/README
+++ b/README
@@ -97,13 +97,13 @@ Setting up build history requires the following steps:
 Files used for Yocto-Autobuilder Configuration
 ==============================================
 
-Name: conf/autobuilder.conf
+Name: config/autobuilder.conf
 Purpose:
 This file is used to set autobuilder wide parameters, like where various build
 artifacts are published to, DL_DIR, SSTATE_DIR or if build artifacts should be
 published (needed for production autobuilders, not needed for desktop builders)
 
-Name: conf/yoctoAB.conf
+Name: buildset-config/yoctoAB.conf
 Purpose:
 This is the main yocto autobuilder config. Documentation for this and associated
-format is in README_CONFIG
+format is in README-NEW-AUTOBUILDER
diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index 97bbe61..73be208 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -170,12 +170,12 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
                     This defaults to '*', meaning every month.
                dayOfWeek: The day of the week in which to start the build, with
                     Monday = 1.  This defaults to '*', meaning every day.
-	       hour: The hour of the day in which to start the build, with 
+               hour: The hour of the day in which to start the build, with
                     12:00 AM = 0.  This must be set by the user.
-	       minute: The minute of the hour in which to start the build, with
+               minute: The minute of the hour in which to start the build, with
                     0 to 59 as valid values.  This must be set by the user.
 
-	  SingleBranchScheduler properties:
+       SingleBranchScheduler properties:
                repository: the repository to attach the scheduler to; this
                     is the repo name from the 'repos' section; the branch which
                     the scheduler is attached to matches that in the repo
@@ -185,7 +185,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
                     triggering build to allow for changes to settle.  Defaults
                     to 60 seconds.
 
-	       change-user: the user name which the remote hook will use; the
+               change-user: the user name which the remote hook will use; the
                     default value is the repository name as per the 'repository'
                     property.
 
@@ -209,7 +209,7 @@ scheduler: A list of dicts. Each item defines a scheduler associated with this
            Extra Notes on SingleBranchScheduler setup
            ------------------------------------------
 
-	   There is one SBS scheduler for each repository in the buildset, i.e.,
+           There is one SBS scheduler for each repository in the buildset, i.e.,
            if your buildset contains more repositories, and you want build
            triggered by changes to any of them, you need to define a scheduler
            for each. This also means that you can mix and match, e.g., only
@@ -272,8 +272,8 @@ steps: [{'SetDest':{}},
         {'PublishArtifacts': {'artifacts': ['qemux86', 'atom-pc']}}]
 scheduler: [{'dev-branch-scheduler' :
                 {'type':'SingleBranchScheduler',
-		 'repository':'poky',
-		 'stable-timer':30,
+                 'repository':'poky',
+                 'stable-timer':30,
                  'change-password':'secret_change_password'}}]
 
 Adding Buildsteps
-- 
1.9.1


