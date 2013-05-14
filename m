Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335FBE014F8
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 03:45:04 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CAC0FF811DF; Tue, 14 May 2013 04:45:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 147E8F811DE;
	Tue, 14 May 2013 04:45:00 -0600 (MDT)
Message-ID: <519215AE.3090608@mlbassoc.com>
Date: Tue, 14 May 2013 04:45:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: IMAGE_FEATURES check broken
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
X-List-Received-Date: Tue, 14 May 2013 10:45:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This commit breaks systems where IMAGE_FEATURES includes "package-management":

commit d63c8a1597c9bd0a838cb59ca461ac432b630a90
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Thu May 9 17:24:25 2013 +0100

     classes/image: show an error on invalid IMAGE_FEATURES

A quick look at that class shows that package-management is being left
out of the "validitems".  This patch fixes it:

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 2b42e12..4f07708 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -19,7 +19,7 @@ INHIBIT_DEFAULT_DEPS = "1"
  # IMAGE_FEATURES may contain any available package group
  IMAGE_FEATURES ?= ""
  IMAGE_FEATURES[type] = "list"
-IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs"
+IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs package-management"

  # rootfs bootstrap install
  ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES", "package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTR

Am I missing something else, or was this just overlooked?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

