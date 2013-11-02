Return-Path: <trevor.woerner@linaro.org>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC682E016D8
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 01:05:05 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id bj1so4946276pad.25
	for <yocto@yoctoproject.org>; Sat, 02 Nov 2013 01:05:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=4YO10wvyti32/COXrt2aRGMNwJzu8jUtX3VWI7P89lo=;
	b=lmCzTy0gOlpwFT5yEqw+JzCDc8Nh7yWrK/DabMbzqJqRdtg7wRvLon+iBbETRwkYo7
	T9m+Htw4RUIkCt3j5YpUuLsNRd0E6sbTxYjxR/BunxaDIssPjbkXEwGt1jr2TM6kVyE0
	6SjXpDwJIulMFI6KryBHOEyjJrbdi4IytH+h1uvzVhkWXPxeNMChOMd8Hx1feX7nh8lf
	yYTbvgbRVXPnE2KnpPnHDdbd0vEjkNxElbN8jNNGIGwPk03P//uTH8IzwtR4QnW0/7d/
	eKYEkDrhsMQ6Nf97yGdq1UjioELO36NRDM3q86vdabmnmfNS9Qtujlx530EpjeGYvOQL
	m7tQ==
X-Gm-Message-State: ALoCoQkBB86w53lhK2mQAG3qed5t2RztSgrPH/+0uq2PhMZtmnx2r0AcU7SNQP0lyhwUR3TSUvPm
X-Received: by 10.66.142.170 with SMTP id rx10mr7232955pab.117.1383379504892; 
	Sat, 02 Nov 2013 01:05:04 -0700 (PDT)
Received: from trevor-IdeaPad-U410.elevennetworks.com
	(205.158.164.101.ptr.us.xo.net. [205.158.164.101])
	by mx.google.com with ESMTPSA id
	hi5sm15322617pbb.43.2013.11.02.01.05.02 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 02 Nov 2013 01:05:03 -0700 (PDT)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Sat,  2 Nov 2013 01:04:03 -0700
Message-Id: <1383379443-8088-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 1.8.1.2
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH] runtime package management: use oe-core features
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
X-List-Received-Date: Sat, 02 Nov 2013 08:05:07 -0000

[YOCTO #5408]

The reference manual should only refer to functionality which is available in
oe-core. Currently, this passage requires the user to add a package from, and
use facilities of, meta-oe. This fix describes how to use facilities in
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


