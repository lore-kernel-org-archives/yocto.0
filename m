Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1787DE00B3F; Thu,  8 May 2014 10:32:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 309 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 10:32:14 PDT
Received: from mail-ee0-f42.google.com (unknown [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36428E00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:32:14 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id d49so1908036eek.15
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=C/UnhX1LYvU6BU7sgW+XXQqi/yFQgFk5uWFDGCkQ/mQ=;
	b=l828xWUy53fNmUvre593/0kyMtPLW6ZNF4bWwHUTB4+owNVXy5xGQDXaKF2W1VBcCG
	YMNJT79q9eq4oWqiJtLXKhJnlPL+ty6YRTdyNkAFIHmZJypna6fNXAjdqLHdkCLtsqEU
	lNuVJR6rRui/lpvsXQwJLd90hmmbLxg2+iYd/FPcFNYqkMwsmm1QfHDpHQTjH8W4npgp
	Z2STEhdrPkCh7q/hHQgH+0NgJdIBRq0fGrKGHwqCDEEXYXvfLTGeildpqGv4/5IMuBMA
	c/x+DkJ08pDv/erRHrWvLZ76VCb72YVCS/ZptLTEFyOjjPtjVTKtr+6Nm4T4dM6SVHSZ
	ir/A==
X-Gm-Message-State: ALoCoQlhJyvJliBoP7+0ttfMw4Fy34Zsy830bA365fxCm0HvWin2L+Q/oDBx3YYWuYoOSElP6d9A
X-Received: by 10.14.4.201 with SMTP id 49mr7293644eej.13.1399570024758;
	Thu, 08 May 2014 10:27:04 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17])
	by mx.google.com with ESMTPSA id s46sm5593126ees.3.2014.05.08.10.27.03
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 10:27:04 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 20:26:54 +0300
Message-Id: <1399570014-28808-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399570014-28808-1-git-send-email-andrei@gherzan.ro>
References: <1399570014-28808-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/2] omxplayer: Separate build directory is broken for this package
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
X-List-Received-Date: Thu, 08 May 2014 17:32:18 -0000

Change-Id: If08395ecd79c1d8e9a269ba03efba863de8dbe9d
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index b878fb3..cee68e1 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -21,7 +21,7 @@ S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-inherit autotools
+inherit autotools-brokensep
 
 # Needed in ffmpeg configure
 export TEMPDIR = "${S}/tmp"
-- 
1.8.5.3


