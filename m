Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BED5AE00B6C; Mon,  2 Jun 2014 03:59:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D99E009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:59:14 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id m15so4837135wgh.8
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=pY4BzAKEJZOKc1SkfS2VgISXGBi6Xijt3KmZ0aqXtGs=;
	b=AjYKvyWOsEWMLZQ60Asxv/6Djrfe5K2daNi1J9WeJYjiLMbaiC1crXm7y+QtZxWmST
	Tzb6Qh812TZGFzToZjoTwx39WVdzbZMIPckWbF+SanBnraC+WQ3h9ESNF8qPmDV4I667
	rJvFf464WfQFiKy7/3khAXpvcDp5ydXjpsS27atwilBL0hrLRNOfwzreNEL0aqnbHbzu
	06UM8zXtXqOFD7mEncYuuBXVhoi5pqGD3IfBfoJ/dWRTc+hGhjw8EP29mdkd0OZfoCz0
	N7fo2rJ+EAVOG9oICNtjM+f6T6BSvynuSqt0QItTjI/8zcYLZ2Hygj6zs2ljE7gEgUhv
	KwqQ==
X-Received: by 10.194.249.228 with SMTP id yx4mr36445862wjc.53.1401706753508; 
	Mon, 02 Jun 2014 03:59:13 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	iy13sm31609709wic.1.2014.06.02.03.59.12 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Jun 2014 03:59:12 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, vaduva.jan.alexandru@gmail.com, andrei@gherzan.ro,
	gary@mlbassoc.com
Date: Mon,  2 Jun 2014 11:58:34 +0100
Message-Id: <f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/2] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:59:16 -0000

libmmal_vc_client.so makes use of __attribute__(constructor) to ensure that supplier components (e.g. camera) are loaded when the static library is loaded.

raspivid, and possibly other applications, link against libmmal_vc_client.so, causing the ctor to execute, but there is no needed dependency.

Some build environments (e.g. Yocto/OpenEmbedded) pass the '--no-as-needed' linker flag which removes the dependency on libmmal_vc_client and thus components are not registered.

In this situation raspivid then gives an error of the form

  root@raspberrypi:~# raspivid -o test
  mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
  mmal: Failed to create camera component
  mmal: main: Failed to create camera component
  mmal: Failed to run camera app. Please check for firmware updates

For further details see: https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html

Change-Id: I9d787fd83379e8b6428dde3827395c8b96be1f7f
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index a348090..4b405ee 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -18,7 +18,7 @@ S = "${WORKDIR}/git"
 
 inherit cmake
 
-EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
+EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
 
 # The compiled binaries don't provide sonames.
 SOLIBS = "${SOLIBSDEV}"
-- 
2.0.0


