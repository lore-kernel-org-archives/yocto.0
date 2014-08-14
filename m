Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9482E007A1; Thu, 14 Aug 2014 06:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B1CE0079E
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 06:16:47 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id f8so8917612wiw.6
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 06:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=kcz37LP4H68+O1fZ1snZn3mZiAGbFCguw3oWSepZScY=;
	b=E7N8Hn5hmqgR/kOT+ojek0gYKnXwWWIn5xp+cD1lOPDsCdMnbl5CDOMIT+cAKfP+IL
	ep91jbKir02uxzt4UWZfrAgCM3DWwSlEpyjEaC2RnE38EkDSIDFiM/ZdgS9pVK76Ox8y
	mgbSib+AuCyyrnR0kHGRPvhVaIBI+/0pSzmTWrgFd8fY/7Ws/KH3qr3E0kQVktEBlKe3
	LFVNsWgD8kLsbUno4f3v22YQxMyFBFfbqAgqxwm7+d7BDNNDvi6lCu6MTR8Yy2Q6K0P8
	Uwinm2qDqqQNiYmp3nnKVCF+AAztNvM0ltFUsTbD2/7ybi3ABK/q3OPEbkBvchpLWoSz
	GudQ==
X-Gm-Message-State: ALoCoQnVBkGCsDxw3HazWXb+yzrQFbhC7UnC73VlDhId02XfCcra7rwM7dWtgMgcXk4CNHmQxLz9
X-Received: by 10.180.107.170 with SMTP id hd10mr41988513wib.77.1408022206600; 
	Thu, 14 Aug 2014 06:16:46 -0700 (PDT)
Received: from otp-agherzan-l1.corp.ad.wrs.com (dhcp-189-34.gjk.dk.
	[195.249.189.34])
	by mx.google.com with ESMTPSA id e3sm11470689wjp.4.2014.08.14.06.16.45
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 06:16:45 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 14 Aug 2014 15:16:40 +0200
Message-Id: <1408022200-3960-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
References: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/2] omxplayer: Add dependency on openssl
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
X-List-Received-Date: Thu, 14 Aug 2014 13:16:48 -0000

Change-Id: I06527c3814fe3690cdbbd03e4a41c79fe554773f
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 5763d8f..eaadff6 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,7 +7,7 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl"
 PR = "r3"
 
 SRCREV = "f3221825a92f27c5f49a52200ff933e454977ed2"
-- 
1.9.3


