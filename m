Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9A5BE006F3; Thu, 10 Jul 2014 08:36:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39CE7E00572
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 08:36:17 -0700 (PDT)
Received: from [69.196.158.250] (port=50214 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X5GOM-0006yp-Sz
	for yocto@yoctoproject.org; Thu, 10 Jul 2014 11:36:14 -0400
Date: Thu, 10 Jul 2014 11:36:06 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407101134340.11203@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] Documentation: Ref Manual should use newer "packagegroup-* names.
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
X-List-Received-Date: Thu, 10 Jul 2014 15:36:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Replace a couple old references to "task-*" packagegroup names with
newer form.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index 164e82e..e1db9d8 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -721,7 +721,7 @@
      IMAGE_FEATURES = debug-tweaks x11-base apps-x11-core \
         package-management ssh-server-dropbear package-management
      IMAGE_LINGUAS = en-us en-gb
-     IMAGE_INSTALL = task-core-boot task-base-extended
+     IMAGE_INSTALL = packagegroup-core-boot packagegroup-base-extended
      BAD_RECOMMENDATIONS =
      ROOTFS_POSTPROCESS_COMMAND = buildhistory_get_image_installed ;   rootfs_update_timestamp ;
      IMAGE_POSTPROCESS_COMMAND = buildhistory_get_imageinfo ;

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

