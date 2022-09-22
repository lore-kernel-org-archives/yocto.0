Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC68EC54EE9
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 19:31:47 +0000 (UTC)
Received: from rcdn-iport-1.cisco.com (rcdn-iport-1.cisco.com [173.37.86.72])
 by mx.groups.io with SMTP id smtpd.web10.230.1663875106287084945
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 12:31:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=Ptq1rdsA;
 spf=pass (domain: cisco.com, ip: 173.37.86.72, mailfrom: oobitots@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=984; q=dns/txt; s=iport;
  t=1663875106; x=1665084706;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=PzRuSUM+4MWWKLk10Oq5Aakndh47tkSGNGNlcqH8vlU=;
  b=Ptq1rdsAk8Ao3rkBfEC8gPy687EpeUyaXVlLzteiTWzuXmz+bWFboxV4
   R/I9D7KnN6uAFXLi6He6MwIE/+Kp58Aozs9NmX1q/DkZvZZhhU3K9sF++
   WLePgd3V+965YxL1YtmmWdMdBPDcJts7rju/uHT7D4BBSe1CQs6qxcnh8
   I=;
X-IronPort-AV: E=Sophos;i="5.91,230,1647302400";
   d="scan'208";a="1066372046"
Received: from rcdn-core-9.cisco.com ([173.37.93.145])
  by rcdn-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 22 Sep 2022 19:31:45 +0000
Received: from sjc-ads-7453.cisco.com (sjc-ads-7453.cisco.com [10.30.220.238])
	by rcdn-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id 28MJVior002463
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 22 Sep 2022 19:31:45 GMT
Received: by sjc-ads-7453.cisco.com (Postfix, from userid 500841)
	id 37535CC1280; Thu, 22 Sep 2022 12:31:44 -0700 (PDT)
From: Oleksiy Obitotskyy <oobitots@cisco.com>
To: yocto@lists.yoctoproject.org
Cc: Oleksiy Obitotskyy <oobitots@cisco.com>
Subject: [meta-selinux][PATCH] libsemanage: Add python3 to dependencies
Date: Thu, 22 Sep 2022 12:31:42 -0700
Message-Id: <20220922193142.2288256-1-oobitots@cisco.com>
X-Mailer: git-send-email 2.26.2.Cisco
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.30.220.238, sjc-ads-7453.cisco.com
X-Outbound-Node: rcdn-core-9.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 19:31:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58139

Recipe have implicit dependency on nativesdk-python,
so recipe-sysroot-root populated with python headers.
But during build code look for headers into recipe-sysroot.
Add python dependency explicitly.

Signed-off-by: Oleksiy Obitotskyy <oobitots@cisco.com>
---
 recipes-security/selinux/libsemanage_3.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libsemanage_3.4.bb b/recipes-security/selinux/libsemanage_3.4.bb
index 08d2c9c..7f038ac 100644
--- a/recipes-security/selinux/libsemanage_3.4.bb
+++ b/recipes-security/selinux/libsemanage_3.4.bb
@@ -16,7 +16,7 @@ SRC_URI += "file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
             file://libsemanage-disable-expand-check-on-policy-load.patch \
            "
 
-DEPENDS = "libsepol libselinux bison-native swig-native"
+DEPENDS = "libsepol libselinux python3 bison-native swig-native"
 
 DEPENDS:append:class-target = " audit"
 
-- 
2.26.2.Cisco


