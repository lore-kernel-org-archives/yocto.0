Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 273E7E00D92; Thu,  7 Sep 2017 06:24:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6460E00D89
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:24:53 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id n64so1046269wrb.2
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=XBTJ0Y5XQjf8aARLYPUpJg3rFdlIEgBGjnC76sR0cxg=;
	b=SB6kUXLkcX9fRt28qAWr26vgulVQIO/sKW0w8pSVz/6fdTAnfoPem2fjm4OLubT527
	7LvXsmdvcv+RtqW/hpiHgfDyr/FkA1qYFkoSkX0EdkquDoSYTTtOqlRCApo+c/RFdj2D
	49KAVExPFhCna5PBDwT3PRJcLHkvc1J1zqncUoJymoDihBAqaAg+afGsNgAzZkzZbkGd
	B22pkY4MJlr13L22vSt0wgBUp4VzniPs3+RJ+h2OzZphyLdnDGNppbmxToIraYyb/oh2
	vwy2eXNftRvZd5eRB67rtSlPEyRc0MEv3kniukjVR0QFaE44eRlIoTc7H+8euNB7kST9
	qT9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=XBTJ0Y5XQjf8aARLYPUpJg3rFdlIEgBGjnC76sR0cxg=;
	b=UUJMHBBfTAyQ2E5VvT1amH0fnDvxP2GO22YDIv4heSXQSeX/mqQeroKowByBlFu2TF
	tOw8qsEgwmuc7yut0S5HI2AL1Pqn06LArY0ZZa37YsmRbMl5QxqhRmZSomalOt+C4qnl
	MNp5zdubH9OKSmDI/aJI46mZkhmLcxEcmG4/EtPL6Uyfrl7eG4mO+Zhku2UgKhjHLqyr
	DVwPjw2q+kOM2Ap9BjYHnFdLdFRzBS6YB0H0BrVDSL9DCvVimJhVnGpC7AZFq0sghLAU
	s5sA+W0nA5WSl0Yy28KG844ZPoJNYW2BQ2+FznUcwDXvDRLVrxALtd6CoFxQPtZ1TM3D
	R/KA==
X-Gm-Message-State: AHPjjUi0JVq1sYYLfY/oPxbHvO9Vuk2xWq07+6a8t22Z5fLFgkcrzrCZ
	+VBO9607Gcxar7325TImVw==
X-Google-Smtp-Source: ADKCNb41QSUGYvqh5sqE5RcbF3E4mE9qnyvq26Gm8ZCQfStjdf+wcStGA5un5B+rPGcOIUSiRfIYIw==
X-Received: by 10.223.131.65 with SMTP id 59mr1937341wrd.137.1504790692021;
	Thu, 07 Sep 2017 06:24:52 -0700 (PDT)
Received: from localhost.localdomain
	(host109-150-130-236.range109-150.btcentralplus.com.
	[109.150.130.236]) by smtp.gmail.com with ESMTPSA id
	z108sm2581622wrc.49.2017.09.07.06.24.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Sep 2017 06:24:51 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 14:24:39 +0100
Message-Id: <1504790680-20783-4-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
References: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [PATCH 4/5] omxplayer: Update to current master HEAD
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
X-List-Received-Date: Thu, 07 Sep 2017 13:24:55 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 0e0f9ba..713dacf 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native curl-native"
 PR = "r4"
 
-SRCREV = "061425a5eabf6e9ee43229911c073a863d144038"
+SRCREV = "b8ff59dccd9307f10dad71bec2525a95bd6c603b"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
2.7.4


