Received: from alln-iport-2.cisco.com (alln-iport-2.cisco.com [173.37.142.89])
 by mx.groups.io with SMTP id smtpd.web10.23941.1611837963895397169
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 04:46:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@cisco.com header.s=iport header.b=Mpwi2oao;
 spf=pass (domain: cisco.com, ip: 173.37.142.89, mailfrom: oobitots@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=1078; q=dns/txt; s=iport;
  t=1611837963; x=1613047563;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=vkEDJIm8EarBKGZTKgKbrjAQ009FdaNuDvQ0xzoLfM0=;
  b=Mpwi2oaoHDLA8IATWQhlLAxsSwq8BVqiKZnMZ1NuTGpvpxFhBMRou9kI
   BJQFOhvKdeRiiNx6YjWxSt+IJ+sy31aeM3oWn6a5/p76sgyhdsgEptRz3
   gcgu5JfTup/TG5Bzrak0Yh2o0NCI2j7b7u5sErUcDrCkpQ4jOIoTK7v9P
   0=;
X-IronPort-AV: E=Sophos;i="5.79,382,1602547200"; 
   d="scan'208";a="659347819"
Received: from rcdn-core-9.cisco.com ([173.37.93.145])
  by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 28 Jan 2021 12:46:03 +0000
Received: from sjc-ads-8148.cisco.com (sjc-ads-8148.cisco.com [171.68.208.186])
	by rcdn-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id 10SCk1Lt019178
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 28 Jan 2021 12:46:02 GMT
Received: by sjc-ads-8148.cisco.com (Postfix, from userid 500841)
	id 721CCCC1251; Thu, 28 Jan 2021 04:46:01 -0800 (PST)
From: "Oleksiy Obitotskyy" <oobitots@cisco.com>
To: yocto@lists.yoctoproject.org
Cc: Oleksiy Obitotskyy <oobitots@cisco.com>
Subject: [meta-selinux][PATCH] policycoreutils: Improve reproducibility
Date: Thu, 28 Jan 2021 04:45:52 -0800
Message-Id: <20210128124552.116513-1-oobitots@cisco.com>
X-Mailer: git-send-email 2.26.2.Cisco
MIME-Version: 1.0
X-Outbound-SMTP-Client: 171.68.208.186, sjc-ads-8148.cisco.com
X-Outbound-Node: rcdn-core-9.cisco.com
Content-Transfer-Encoding: 8bit

LOCALEDIR should be set to target path,
e.g. /usr/share/locale not host absolute path.
This prevent to build reproducible package.

LOCALEDIR constructed from:
$(DESTDIR)$(PREFIX)/share/locale

Change PREFIX from ${D} to ${prefix}.
DESTDIR is not set during compilation and
is set to proper value during install.

Signed-off-by: Oleksiy Obitotskyy <oobitots@cisco.com>
---
 recipes-security/selinux/policycoreutils.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 92f7a75..43a641d 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -118,7 +118,7 @@ EXTRA_OEMAKE += "\
         ${@bb.utils.contains('PACKAGECONFIG', 'libpam', 'PAMH=y', 'PAMH=', d)} \
         ${@bb.utils.contains('PACKAGECONFIG', 'audit', 'AUDITH=y', 'AUDITH=', d)} \
         INOTIFYH=n \
-        PREFIX=${D} \
+        PREFIX=${prefix} \
         SBINDIR=${base_sbindir} \
 "
 
-- 
2.26.2.Cisco

