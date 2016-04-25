Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADE3E00CB4; Mon, 25 Apr 2016 01:10:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E993E00C9A
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:10:45 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id n3so114189334wmn.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=dYh56s4n5RFH1qyCOshOruLTUyleUkS2j6sq3IA9oyE=;
	b=EDwKAJ82/fZo0yzdI7otVSFCggGxv9JpfNSpT0zwmIp0QaCxaAM/UfyYAN3g9E1s/G
	6aIgqDdltgqdylW7WwA0X62WEl4uZwgcR1revMQD3jCOnZB3HhTKm5V6GsQYEfndaDnI
	sDjy1cjCmmrK05ge1/P/B/FjTYvd1J/c/rOhYf6nHkio269h5h/tUUXL1NUvflInE7aq
	pDtTUUiNIFRtitiT5/wNYIhhxODYnx5kecyXpbygLfHGZfwiJDfNMPMYAP+Ded6QzUEs
	wKo7ph3adAbZG597ydpuG748IayfOHc8B3CKKVx9m+6EVD55BCGsNdDbjsp5WlDw2OhQ
	oEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dYh56s4n5RFH1qyCOshOruLTUyleUkS2j6sq3IA9oyE=;
	b=TEWUf3LgpmGr8eOcvIi9usiFkvTcn/5y1plbYcgvUsh4C2XPP6hmDmOd8qWLyWZj5w
	d78SyBNmqAdEY09okVOnU/I/qiGX6Paxp0GwH+V6E5RmgQQeTlylTFM98n8gLW/3naxv
	kpr74lT8/d1IbeXl5NjOCmL9W80+a22SvhcUJX2DlSsoder31+A4ZUYNQvMCkQsWlkFh
	rf5uPRrihMWw0S2uvdS/exaYIxAWdpOOezQ3ekynSHDx0ySbO/2ysnV7UjT+lTxg0DeF
	lj63WyaFvHFzh7wwAq9zedmtu+Ze+TLge9WDnGqbF8hAD5ZwL1mqY6ASMvghR/ynWFHc
	T0ng==
X-Gm-Message-State: AOPr4FVmdIQeAJdewZUliLG004OkUVXu1zzA+PJyEAINvhWBKuSKE6xLebuM2dORD01vww==
X-Received: by 10.28.137.14 with SMTP id l14mr8653078wmd.64.1461571844131;
	Mon, 25 Apr 2016 01:10:44 -0700 (PDT)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	gg7sm22283806wjd.10.2016.04.25.01.10.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 25 Apr 2016 01:10:42 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 25 Apr 2016 10:10:40 +0200
Message-Id: <1461571840-23939-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.8.0
Subject: [meta-raspberrypi][PATCH] README: Switch from redmine to github issues
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
X-List-Received-Date: Mon, 25 Apr 2016 08:10:51 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/README b/README
index 5a6a0d9..c39f9ed 100644
--- a/README
+++ b/README
@@ -332,18 +332,15 @@ When sending patches to mailing list, please use something like:
 
     git send-email --to yocto@yoctoproject.org <generated patch>
 
-7.B. Redmine
-============
-In order to manage and trace the meta-raspberrypi issues, we use redmine:
-    http://redmine.gherzan.ro/projects/meta-raspberrypi
-
-Here we report, trace and develop bugs, features or support tickets for this
-yocto BSP later.
+7.B. Github issues
+==================
+In order to manage and trace the meta-raspberrypi issues, we use github issues:
+    https://github.com/agherzan/meta-raspberrypi/issues
 
-If you push patches which have a redmine issue associated, please provide the
+If you push patches which have a github issue associated, please provide the
 issue number in the commit log just before "Signed-off-by" line(s). Example line
 for a bug:
-    [Bug #13]
+    [Issue #13]
 
 
 8. Maintainers
-- 
2.8.0


