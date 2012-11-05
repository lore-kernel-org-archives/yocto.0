Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF60FE013A6
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 04:32:28 -0800 (PST)
Received: from mail-bk0-f72.google.com ([209.85.214.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 04:32:27 -0800
Received: by mail-bk0-f72.google.com with SMTP id q16so4144205bkw.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 04:32:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=7BXnT4rp5WR0zzHPZRmHrEC1lzv+lIeaqDGT6xSt2GI=;
	b=JvHZsXGRHZc3kX4tPGY8Wvl57EjuMQrHyupzQD3Ynn0+lTZDVnC8w+TQRUXMojjInH
	jEYbcppT1HerENwx7BRHxMWqhZzcl4lO9dwhdUquo1wuXKrz72eGyGJyJN+elKEt4Kpw
	RNiV0bwYtA5PwOuw8VbKE4Epu+s5XZ1vRuIu3dgWVOfMxckKXgOx2cOMP6I9hgULlpJt
	Jt40ttYI2B6sHios2lZFxgf5apVIe5ME8Qwsbtbd2y1SOvnXKcmQmoIFC/DOi46EjG4G
	4hEOtoMP8tAhYeAG/xQ+QYVc6hFFxSWVzIwq6EPrcI6FX4QXdDJ6IdRWKyufAP6SEI2b
	2X/A==
Received: by 10.180.87.230 with SMTP id bb6mr13153206wib.6.1352118745554;
	Mon, 05 Nov 2012 04:32:25 -0800 (PST)
Received: by 10.180.87.230 with SMTP id bb6mr13153185wib.6.1352118745359;
	Mon, 05 Nov 2012 04:32:25 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id dq6sm10217636wib.5.2012.11.05.04.32.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 05 Nov 2012 04:32:24 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com
Date: Mon,  5 Nov 2012 12:31:10 +0000
Message-Id: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnzxOfIWeapvLomyWyG0WI7FBAKJaLWQQuivnmdYGdR+ZIF8DNiryv2NOqdEZrTYMlSLnF3nCTMQSnjl9AWzv/lD71yEDf80b3w0SvY9mfs7cJrEnxMnf2JsHpT4jT1PfCryUIOUVHbw3szgstW5YfWCkvEyg==
Cc: yocto@yoctoproject.org
Subject: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Mon, 05 Nov 2012 12:32:28 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index aa2a46a..a5fa0f0 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "8.04"
+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 SYSLINUX_OPTS = "serial 0 115200"
-- 
1.7.10


