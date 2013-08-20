Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71018E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:50 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id b45so332661eek.1
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aGzstZFqHEKpvAZrNaY3RGnih0VoZ9zUKQ1qkr1r6JY=;
	b=VBsCU62L2hPjszBg6uFnyZ+DT9KLr3pB1gHgvrFyDchi99zsTkwo+6+BfKrPaHjk8f
	Y0FCAMbXmWNpHv1FKjXV7Y2Io+y+s3wvDKE0xHo1n9xOT5N8M244hNFEuAhotk52Ae74
	Y2t711rkQ4mkVAz8Arze7XmTIa+0vrUPRCRyk/xbNpJRfHZVWykBb742hl2cFt89bDr6
	JniyziAXECcESEHzXmTeef5mlbGsbeEBlQC6y7FON4szRnroOZiZxnpZpyh7momHXDbk
	vuk7AuCOmxhUe2P4BOe8T8DlGwXybH7Ivd+F0IJcFXWy0fV2HURV65v3+TdvPgHuKmXh
	8f2Q==
X-Gm-Message-State: ALoCoQlTv+cdxo+/TvWTzDcjvNUBHCfbueGLdM6BK6VNjksVCkC/8JUXhgCWFq+9XneKYEp/jnmN
X-Received: by 10.14.104.201 with SMTP id i49mr3450588eeg.40.1377018169984;
	Tue, 20 Aug 2013 10:02:49 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:49 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:28 +0300
Message-Id: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-raspberrypi][PATCH 01/11] README: Add info about extra apps / omxplayer
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:52 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README |   23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/README b/README
index 920d063..db88066 100644
--- a/README
+++ b/README
@@ -34,7 +34,9 @@ Contents:
     2.C. Add purchased license codecs
     2.D. Disable overscan
     2.E. Set overclocking options
-3. Contribution
+3. Extra apps
+    3.A. omxplayer
+4. Contribution
 
 
 
@@ -94,16 +96,11 @@ URI: git://git.yoctoproject.org/poky
 branch: master
 revision: HEAD
 
-URI: git://git.openembedded.org/meta-openembedded
-branch: master
-revision: HEAD
-
 How to use it:
 
 1. source poky/oe-init-build-env rpi-build
-2. Add needed layers to bblayers.conf:
+2. Add needed layer to bblayers.conf:
     - meta-raspberrypi
-    - meta-openembedded/meta-oe
 3  Set MACHINE to raspberrypi in local.conf
 4. bitbake rpi-hwup-image
 5. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
@@ -155,8 +152,18 @@ SDRAM_FREQ = "500"
 OVER_VOLTAGE = "6"
 
 
+3. Extra apps
+=============
+
+3.A. omxplayer
+==============
+omxplayer depends on libav which has a commercial license. So in order to be
+able to compile omxplayer you will need to whiteflag the commercial license
+adding to you local.conf:
+LICENSE_FLAGS_WHITELIST = "commercial"
+
 
-3. Contributing
+4. Contributing
 ===============
 
 To contribute to this layer you should send the patches for review to the
-- 
1.7.9.5


