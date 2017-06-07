Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62AB9E00BD0; Tue,  6 Jun 2017 21:19:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D62DE00BC1
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 21:19:07 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id w1so1044564qtg.2
	for <yocto@yoctoproject.org>; Tue, 06 Jun 2017 21:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Swr0iiTGCjsptMShN6+Sp+Gj/Ye8wgVxiuCWAvR3GmU=;
	b=AkEZI9vftKum4yxrAZDvCxIKPBbSV+DpTfNVYdKxefNOQkStu/7N87/3bU17hVcLwS
	8fOxJutLiRnMBYltJuwvnDegt6djPM9Yo+F22f5HOByCwg/T6YLaJ3C4Ntjti0q09ZfV
	k8kx7VhXh/Ymh1k+5ATPj4I0GB46rdO4wWYzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Swr0iiTGCjsptMShN6+Sp+Gj/Ye8wgVxiuCWAvR3GmU=;
	b=dWwdBilXyeBvwe8ZitGQfMYlSjkBXUHXpyI0DwcuN6PnNQD92CdgLinR7LZNapm15f
	g1xFpB1ad8AXYIWdRLs/ir98kgARTAHcnjJVd7U8YzwPdAtV74l46GnaD0o39NMU1mjQ
	CG2cMzgcgQL0HEhJuB/Yzkn9yDzJtNOMA7spGmeI/QUS3OFIedoHyDyg2OK66m7zQkM6
	brIuRXzaW6QsA/I1kX2KhuLU+dzi3fsfHBodB7lrwDmVSsff9o76sLs/SLxvFa/RvdFD
	Mk0kr7CLObOfYWIncW9FpPBk8n//YyP8dFEZFBWKqiwt6qqKM7+tJeL/tciU9kSkWft/
	LLMg==
X-Gm-Message-State: AODbwcCKkZoAuuepcBhCKVgK76YZmIu5rWkGSd03SgwoCu4pLUyTOTm3
	F9qXhrkR8NkaG+UZpKY=
X-Received: by 10.237.63.182 with SMTP id s51mr23463414qth.61.1496809147211;
	Tue, 06 Jun 2017 21:19:07 -0700 (PDT)
Received: from localhost (c-73-167-252-82.hsd1.ma.comcast.net. [73.167.252.82])
	by smtp.gmail.com with ESMTPSA id w68sm357049qkb.1.2017.06.06.21.19.06
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 06 Jun 2017 21:19:06 -0700 (PDT)
From: Cody P Schafer <dev@codyps.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Jun 2017 00:19:04 -0400
Message-Id: <20170607041904.29447-1-dev@codyps.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [PATCH] qt4-native: depend on icu-native to fix build on systems with icu >=59
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
X-List-Received-Date: Wed, 07 Jun 2017 04:19:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Previously, qt4-native would use the system icu to build.

Trying to build against a system ICU 59, however, fails with this root
error:

| In file included from /usr/include/unicode/uversion.h:30:0,
|                  from tools/qlocale_icu.cpp:46:
| /usr/include/unicode/umachine.h:347:13: error: ‘char16_t’ does not name a type; did you mean ‘wchar_t’?
|      typedef char16_t UChar;
|              ^~~~~~~~
|              wchar_t

May have to do with our use of `-std=gnu98++`.

Signed-off-by: Cody P Schafer <dev@codyps.com>
---
 recipes-qt4/qt4/qt4-native.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 5a873de..a14a647 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -1,5 +1,5 @@
 SUMMARY = "Qt version 4 tools and support files for the build host"
-DEPENDS = "zlib-native dbus-native"
+DEPENDS = "zlib-native dbus-native icu-native"
 SECTION = "libs"
 HOMEPAGE = "http://qt-project.org/"
 PROVIDES = "qt4-tools-native"
-- 
2.13.0


