Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4975CE013CE
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:34 -0700 (PDT)
Received: from mail-wi0-f176.google.com ([209.85.212.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 08:22:31 -0700
Received: by mail-wi0-f176.google.com with SMTP id hn14so690392wib.11
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=aQT0xVbYaTAQPyZ5FQXcrPZjmEqy26HRTwNL96ADx0M=;
	b=PDhcFgc88MLcK/NcOq0JNkwE3znRqC3g0CFmXxw4iSZFpo9zv0FR3HZAXHkE7R5CT+
	8eRVFmVaJo8csjkaK8IQOCuNvxNdTmZZfVLCXu98qzBW0mHcoznZPHvIxV19AVxvr+SP
	3FWHcb1tJ3Wn9SHtF9WleOKuxm9txygkPxs39OjMx8G4/YQisjToxeA4+T+G0rSro4b9
	Q/DYyVGDxpGNRs4V24J4r53eaQ0JC3g8UcrK6TKVTnk4gVbqX5qBEwOZADkbX79/TyM1
	WT/lv44YzlK0g/5yFLXycNMOhtZyVY/3AucrS3U0/v/FnfARg6LVbcfIsTOiKEiwW6zM
	Cl9w==
Received: by 10.180.95.130 with SMTP id dk2mr4825625wib.18.1350487349748;
	Wed, 17 Oct 2012 08:22:29 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id z14sm3987242wiv.5.2012.10.17.08.22.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 17 Oct 2012 08:22:28 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com, nitin.a.kamble@intel.com, dvhart@linux.intel.com
Date: Wed, 17 Oct 2012 16:21:17 +0100
Message-Id: <1350487279-1681-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmnroiHVH/4E6NvSvd6F9DKbHlySQDo7MwAOsm9+9g82XrVJ9PWqV52/VYxf3vmLFI8biws
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/3] cedartrail: add missing gst-va-intel-vaapi machine feature
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
X-List-Received-Date: Wed, 17 Oct 2012 15:22:34 -0000

There needs to be a gst-va-* MACHINE_FEATURE to get the right VA elements in the
images.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 33af012..ea50ea6 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -7,7 +7,7 @@
 require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 
-MACHINE_FEATURES += "pcbios efi"
+MACHINE_FEATURES += "pcbios efi va-impl-intel"
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-- 
1.7.10


