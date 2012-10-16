Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F2FEE011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:14:44 -0700 (PDT)
Received: from mail-wg0-f42.google.com ([74.125.82.42])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 16 Oct 2012 09:14:41 -0700
Received: by mail-wg0-f42.google.com with SMTP id fm10so29060wgb.5
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:14:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=jdVyNIIJnWA6axBGN/teIQDpOSIscLuI4lumHi0MDbg=;
	b=MuCnjiBTmR09gGiA38V2U8g4VVqXC+pi+5qn+kyisri7+NbHi/nfmNBOHlL9n8+FVo
	63OAI/4cthVo6jpYZS7xgWLK1ygkCs3rIKkLpp2GB1JL4WAqcQGMVYxU5KLY9yh77ZF2
	f8HOFnvmbnCJau+a8FnoIXgrA33Jn7xZrU7aPtD+P6qSnYK81jzUNRDKzbyc9iE1w5FJ
	COv+suzlJ74EQLDkEMdUQ8SSYtHACmT1UXsNSH9mHDj0gRMZnMM6cdfy/pgoJVwNV921
	mnXbSHzHx9wfis+uqBFwdBNd6v1sVWPMDyhaGBfT7W+mPGJnYUsFqqNJW+K6ZKlhqGc1
	iMAw==
Received: by 10.216.134.218 with SMTP id s68mr10118341wei.72.1350404079951;
	Tue, 16 Oct 2012 09:14:39 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id v3sm19772965wiw.7.2012.10.16.09.14.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 16 Oct 2012 09:14:38 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com
Date: Tue, 16 Oct 2012 17:13:31 +0100
Message-Id: <1350404011-18683-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnY+sM5NFwS6BHAQHOlVUEjg34I+eGa9Con8wI+FA7UF0coaDU50L8ZBJnzfy+5BXi0quu1
Cc: yocto@yoctoproject.org
Subject: [PATCH] cedartrail: add missing gst-va-intel-vaapi machine feature"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Oct 2012 16:14:44 -0000

There needs to be a gst-va-* MACHINE_FEATURE to get the right VA elements in the
images.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 33af012..540771d 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,7 +7,7 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES += "pcbios efi"
+MACHINE_FEATURES += "pcbios efi gst-va-video-vaapi"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-- 
1.7.10


