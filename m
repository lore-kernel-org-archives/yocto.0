Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD810E017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:13:17 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so5772591qee.9
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:13:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=G5WDhT1iQgAkCtJls2q0RZRRVhqLVYwqkCgeJvb9StE=;
	b=KKx5mj06eukbGhpBmOC32ArcIe+SFiJERZGqh5ibOikMVarVI2R7jHDP9g7kgzTM7S
	ZFImyM6a5CZ9rouMlNMm3zfM/Tcm84PdmBybLYupSlCRDp2QpcFFwZ1cSW2yLSdKlAu5
	Y8ax+zDQEOQHYfPXiPN+RpBPtF0eq2lHerQiDnGtMQIKM+VHepcex5AFQmEb9OoE2R5a
	0awq8WkY0vGNJyppv+uR1qF0Es4bAysrATNTgu4WPky1eU1GjIgj9ndmg1nSS/GoDw69
	CHlZCv4IR4oucrfZwHXe12xTRc/rrNr1XaAPZ3ps1uq6bu8V9D5cs1Vtw+qyNdI+uaSc
	YewA==
X-Gm-Message-State: ALoCoQnSHhyBRe017/REHk9kq3eqyD1eCQj4rk7hgp45uTEpof48AXxnn7r6aGyNBxw0PKX2o2kY
X-Received: by 10.49.116.19 with SMTP id js19mr58227252qeb.34.1384272797265;
	Tue, 12 Nov 2013 08:13:17 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id b10sm63402324qeg.7.2013.11.12.08.13.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Nov 2013 08:13:16 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 12 Nov 2013 18:13:07 +0200
Message-Id: <1384272787-14492-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] README: Add info about gerrit server
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
X-List-Received-Date: Tue, 12 Nov 2013 16:13:21 -0000

Add some other minor formatting changes.

Change-Id: Ib8fe5e11c1d95d14ff825a26d356b5ae432f2f93
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 40 +++++++++++++++++++++++++++++++---------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/README b/README
index db88066..409cda8 100644
--- a/README
+++ b/README
@@ -37,6 +37,8 @@ Contents:
 3. Extra apps
     3.A. omxplayer
 4. Contribution
+5. Gerrit Review Server
+6. Maintainers
 
 
 
@@ -170,20 +172,40 @@ To contribute to this layer you should send the patches for review to the
 mailing list.
 
 Mailing list:
-
     https://lists.yoctoproject.org/listinfo/yocto
 
 Source code:
-
     git://git.yoctoproject.org/meta-raspberrypi
     http://git.yoctoproject.org/git/meta-raspberrypi
     https://github.com/djwillis/meta-raspberrypi
-
-When sending patches, please use something like:
-
-git send-email --to yocto@yoctoproject.org \
---subject-prefix='meta-raspberrypi][PATCH'
-
-
+    https://review.gherzan.ro:8443/meta-raspberrypi
+
+To send changes:
+
+A) Send patches to mailing list using something like:
+    git send-email --to yocto@yoctoproject.org \
+    --subject-prefix='meta-raspberrypi][PATCH'
+
+B) OPTIONALLY push changes to gerrit (help maintainers merge and review patches
+easier in this way).
+    git push ssh://<username>@review.gherzan.ro:29418/meta-raspberrypi
+    <local-branch>:refs/for/master
+    See 5. Gerrit Review Server.
+
+5. Gerrit Review Server
+=========================
+We have a gerrit server configured at review.gherzan.ro. Changes made in gerrit
+are merged in git.yoctoproject.org/meta-raspberrypi.
+
+You can setup a gerrit account in less than 2 minutes:
+A) Login / Register on https://review.gherzan.ro:8443.
+B) Add your PUBLIC key in Settings/SSH Public Keys.
+C) Add remote in your local repo:
+    git remote add gherzan ssh://<username>@review.gherzan.ro:29418/meta-raspberrypi
+D) Push changes to gerrit using:
+    git push gherzan <local-branch>:refs/for/master
+
+6. Maintainers
+==============
 Layer maintainers: John Willis <John.Willis at distant-earth.com>
                    Andrei Gherzan <andrei at gherzan.ro>
-- 
1.8.1.4


