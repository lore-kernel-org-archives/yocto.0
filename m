Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96209E0077E; Tue, 17 Feb 2015 13:40:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D41AE00521
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:25 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id hl2so46204824igb.0
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:40:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=hTuw8PYMl9d/8yYyuQvnT5XUPAky3yQr6lYs4I7SuhA=;
	b=GSxx2qUzH23kLE1SHSY5MhSUsDQbvxhq0PzadlcZqYQbfttz2VMGtf0djE1HJURZ16
	e7KbBuZ1+2wYwHhT9lj/uwgfxq1xzb6HvqXUgABXhjdza6WpzlAhhRJQ3zr7bcjErELm
	MvlUtq47z7vztE/iZgzHU7zSWcehC8K4bMNCa+XgpSBTeagNHRYJP1tuTFNReZ68C2rd
	o4UoJPIHDw/2dr3GZAa5f7BGV8tR6FtqfQH3fS4t0kOfjbIn/IvvxqbLIJEpKbj95dRM
	lgBE81jxGyjUJvFuAdAJcf3i9r5hYNCyyRViB9j2yl/cXRJ8kPtEo+lPUWzH5HdM816K
	yBdA==
X-Gm-Message-State: ALoCoQnOXVv/2OF+SvmDwy3K96+FsNtvLmALQjF+8FTK0LGk39m0JFUPKCk4FeHusixl4Ck/PxwB
X-Received: by 10.42.145.5 with SMTP id d5mr37137409icv.8.1424209225057;
	Tue, 17 Feb 2015 13:40:25 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id qs3sm10761789igb.8.2015.02.17.13.40.23
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 17 Feb 2015 13:40:24 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 16:41:13 -0500
Message-Id: <1424209275-12304-2-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
References: <1424209275-12304-1-git-send-email-joe_macdonald@mentor.com>
Subject: [autobuilder][PATCH 2/4] gitignore: add janitor log and additional config files
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
X-List-Received-Date: Tue, 17 Feb 2015 21:40:31 -0000

The janitor log for workers was missing from gitignore, so add it.

Every deployment is expected to make their own changes to buildset-config,
so add the whole directory to the ignore list.

Similarly, every deployment is likely to make their own changes to
config/autobuilder.conf, so ignore changes to it as well.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .gitignore | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/.gitignore b/.gitignore
index f1f9e4e..cb595bb 100644
--- a/.gitignore
+++ b/.gitignore
@@ -4,6 +4,11 @@
 *.so
 *.pyc
 
+# Configuration hunks, changed by anyone using AB #
+###################################################
+buildset-config
+config/autobuilder.conf
+
 # Everything else #
 ###################
 *.log.*
@@ -22,6 +27,7 @@ yocto-controller/twistd.log*
 yocto-controller/buildbot.tac
 yocto-worker/build-appliance/build(newcommits)
 yocto-worker/buildbot.tac
+yocto-worker/janitor.log
 yocto-worker/nightly-x86/.buildbot-sourcedata-YnVpbGQ=
 yocto-worker/nightly/build(newcommits)
 yocto-worker/twistd.hostname
-- 
1.9.1


