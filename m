Return-Path: <trevor.woerner@linaro.org>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27A37E00503
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 10:34:51 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id xb4so5495123pbc.36
	for <yocto@yoctoproject.org>; Sat, 02 Nov 2013 10:34:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=O/S47x7u8lHjt24LDOu35yKDptxzRKSocfFglXvjoMU=;
	b=DtoQ73dWwSsIoIY8isQXtz/mVrkg/BMdb+HhnE6Bsl9y4YiYZQ2jgbfsbKCkoQ+zEm
	gDOTXbKucMJLu2m8I+wJJOhqU0jFUWAZ2zQzlLeISew4KuegE1U/4srQSmNlZjbEgUho
	Kc9/cZGX6r8FV/BJ0du1goiCNat3BZNHRMWoohrusDaCxvrsVp/N5EaRiTNWRQoddMMq
	liXm1+eSPC18RT9RCbL0gG4ReFPiRH5KuEWKEi0/c+n7F8UHNYh8ePHng3YayaFxfBk7
	qbtErqyDWpGUv99VUPWe/vM+P1ishSSyBfRl8nTlwpX+HLXVJFYRktuDD1ZZDRzywtPv
	vovA==
X-Gm-Message-State: ALoCoQkl7MhvRIOJ5ShBgdpSud4WJ0ecPdVAmgWx0U59viuKL8gGbQu255OvhzCirrQvBSVKneaQ
X-Received: by 10.68.189.34 with SMTP id gf2mr7889610pbc.91.1383413691449;
	Sat, 02 Nov 2013 10:34:51 -0700 (PDT)
Received: from trevor-IdeaPad-U410.elevennetworks.com
	(205.158.164.101.ptr.us.xo.net. [205.158.164.101])
	by mx.google.com with ESMTPSA id
	go4sm17791455pbb.15.2013.11.02.10.34.49 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 02 Nov 2013 10:34:50 -0700 (PDT)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Sat,  2 Nov 2013 10:34:32 -0700
Message-Id: <1383413672-6144-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 1.8.1.2
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH v2] runtime package management: use oe-core features
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
X-List-Received-Date: Sat, 02 Nov 2013 17:34:57 -0000

[YOCTO #5408]

The developer's manual should only refer to functionality which is available
in oe-core. Currently, this passage requires the user to add a package from,
and use facilities of, meta-oe. This fix describes how to use facilities in
oe-core to the same end.

Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 32 +++++++---------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index cf188aa..5a4ff3c 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3996,31 +3996,19 @@
                     <para>
                         As a way of making it easier to generate and make
                         these IPK configuration files available on your
-                        target, the <filename>meta-oe</filename> layer
-                        provides a recipe called
-                        <filename>distro-feed-configs</filename>, which
-                        provides a package by the same name.
-                        When you include this package into your image, it will
-                        automatically generate and include a set of
-                        <filename>*.conf</filename> files in the image's
-                        <filename>/etc/opkg</filename> directory that will
-                        provide your target's <filename>opkg</filename>
-                        tool with any and all package databases your build will
-                        generate.
-                        The only catch is that this recipe cannot possibly
-                        imagine your server's DNS name/IP address.
-                        Consequently, somewhere in your configuration you need
-                        to set a variable called
-                        <filename>DISTRO_FEED_URI</filename> to point
+                        target, simply define
+                        <filename>FEED_DEPLOYDIR_BASE_URI</filename> to point
                         to your server and the location within the
-                        document-root that contains the databases.
-                        For example: if you are serving your packages over HTTP,
-                        your server's IP address is 192.168.7.1, and your
-                        databases are located in a directory called
+                        document-root which contains the databases.
+                        For example: if you are serving your packages over
+                        HTTP, your server's IP address is 192.168.7.1, and
+                        your databases are located in a directory called
                         <filename>BOARD-dir</filename> underneath your HTTP
                         server's document-root, you need to set
-                        <filename>DISTRO_FEED_URI</filename> to
-                        <filename>http://192.168.7.1/BOARD-dir</filename>.
+                        <filename>FEED_DEPLOYDIR_BASE_URI</filename> to
+                        <filename>http://192.168.7.1/BOARD-dir</filename> and
+                        a set of configuration files will be generated for you
+                        in your target to work with this feed.
                     </para>
 
                     <para>
-- 
1.8.1.2


