Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E70FE010B1; Tue,  9 Aug 2016 06:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF55AE00EC5
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 06:32:16 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id d65so934673ith.0
	for <yocto@yoctoproject.org>; Tue, 09 Aug 2016 06:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id;
	bh=wS/4IVrsRIc8tkIDpsUCtclqObJ1sYyIOgRHzbqmf9w=;
	b=gYYZEmS2BF45Sazia7WkRQtZvsTqotleNQplejZEAVXCf/QY9r+Hdfrs8rNXOPV2ZL
	zhldOwNY7XiV96Uco+FBtDb6JlhGlbZdiv1YtlDE+76EHzpI8C2J85nGzwM0Mbd/VM/s
	58rrjZ9dlWGkuKioB8MWtsvdiNlGnijNZSEGCjbNeivL+S+wymSfmLDV9Ww/taOJ8eWE
	Wh/eR7Y9tTK6OSgux3O/vlGCjeLos9sfmGJpwkIvgXMZM2w2SLNZfG0g3uTcPjjItnuV
	YKF1amoK6Env31+6ZAblw1Qzugtefvc+oIPghL+msKjm6lMPdUp/+rInYU8B1/UgIGQt
	M1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=wS/4IVrsRIc8tkIDpsUCtclqObJ1sYyIOgRHzbqmf9w=;
	b=JD1pJVACY22jf2tbGIoQ8yfl8Lh2kOdlDRZNk/ZS7AfR8QGTrVarUMOZ2SWFq4xEWd
	KXfW5FiVtHk2wqvQ+APIyMurClzpP603+haw+v30b0yZ/ZNdtRyAyjLsvJefM5ye6QJ6
	GUBpRGw0Mqy+N+4Y80hY5+K0i0jyQlqm/95foiTq1TAz1jpzLRB7R5c/pOpgJ+n37ty3
	LPQYlQkOZW2XC6B+AxXq8KyVyaxwJOB8Kas7fjziInh5eyH852MivD2BWsP7BUcjkgsm
	1OYVxR1FUkbrq+VXpAehpxprRnMExIPpLxq0sZd2aN+7zI8bbAljrykrpKMahVtS91/b
	fD+g==
X-Gm-Message-State: AEkooutyI9kK1k7r3SSnqbRTtj5u09erSJC6223NxVSAgzNRZq0LdIX8Rd1akGnIgTAPGQ==
X-Received: by 10.36.82.81 with SMTP id d78mr23694053itb.65.1470749535378;
	Tue, 09 Aug 2016 06:32:15 -0700 (PDT)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id
	l63sm16676567ioi.14.2016.08.09.06.32.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 Aug 2016 06:32:14 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Aug 2016 09:32:30 -0400
Message-Id: <1470749550-31574-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] augeas: Move to meta-python optional layer
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
X-List-Received-Date: Tue, 09 Aug 2016 13:32:23 -0000

Augeas lives in meta-python, but meta-selinux shouldn't specifically
require meta-python in every build, so make the bbappend optional using
the standard mechanism already present in the layer.conf.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend | 1 +
 recipes-extended/augeas/augeas_%.bbappend                    | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
 delete mode 100644 recipes-extended/augeas/augeas_%.bbappend

diff --git a/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend b/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
new file mode 100644
index 0000000..c1e8ed6
--- /dev/null
+++ b/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
@@ -0,0 +1 @@
+inherit with-selinux
diff --git a/recipes-extended/augeas/augeas_%.bbappend b/recipes-extended/augeas/augeas_%.bbappend
deleted file mode 100644
index c1e8ed6..0000000
--- a/recipes-extended/augeas/augeas_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit with-selinux
-- 
1.9.1


