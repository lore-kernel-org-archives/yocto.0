Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.14698.1598518538148660008
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 01:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20150623.gappssmtp.com header.s=20150623 header.b=nl/qc1AH;
 spf=softfail (domain: smile.fr, ip: 140.211.169.56, mailfrom: jugurtha.belkalem@smile.fr)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07C6BE020A9; Thu, 27 Aug 2020 01:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F05DEE020A7
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 01:55:35 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id w2so4186377wmi.1
        for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 01:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=8nOYXHGo4C3K9mTt8rOIBI6fd9pcrKYINOr1dLatELI=;
        b=nl/qc1AHbVwzx+fxVYYQBAmdIH4gB6sJ4cydbXNtCTZGjdPPfsM+EW5LyXIxSEjI68
         UK3SrdYYdI9Al95MamwUQ/hKkIuWbl0ekMTjnGDOdXm/XFLsQZZ9CUxSgOLDEDLhRKUR
         N6OP9wHfa7Z7gO58BgCWzzOmX6R9aB+nbcMmPEzuFN+WE0Q0yLgp/4jPX35Z6XA7+7zi
         qGTlQ8RKoz9g4F7gWtwLicd8vWA6vcWeGmSFhjgB/ZnV6KDKtYF/t7iCN3t1GiPJEiZr
         8cWgtFkr+LZyXgwf53pajaKGSyXUOmvVEIcoSm75y9Di9trBYNfDm/7zpwu+QQiT6+WD
         0CBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8nOYXHGo4C3K9mTt8rOIBI6fd9pcrKYINOr1dLatELI=;
        b=X220uI2f4pgB0sqhZD6lPvxrGCuac58uR0lFL4FigUnIJceIiVf3vpU4RrwXqDGHoi
         jBNE/vfKJ7Wfa51TG/XMS0cx+BG0g5zck2jL8dt5n4rVQj7cfzeIyqbi6Je4pUb6E6lG
         V3hMxvoC3A/6/LHJ7rjrOHhzr30qqx0iek3AJLApBAXUK3iH5odfQ27CJd4Ip3f1qquF
         ZChCT9YAvj0BcBosshi+LI77OzdubF4JQOWOlU8OU+gVDOIvF57hLp7VK7Ayr1Y0jU3Z
         lJhjMtDj03z4sHw7E1uAwfgjHNsvglzDcUO574kOoYhqHUMF/bRIZxrnYKi7MG1cSYmz
         cv6w==
X-Gm-Message-State: AOAM533GkWax7DxNj+t/RPyuQlaGI3dhpSq0DvrFDHQt/qa5aEYmF08L
	ViSmZ63jGgglZEH21uNZwOOGxj+ZAnKQTQ==
X-Google-Smtp-Source: ABdhPJwlMAxmw/XCJJMBOAVERAEqucJf00JRgUgwZjrg0h13Old+H52ARdN2KYd9P/o8Tn9pez0/Lg==
X-Received: by 2002:a7b:c5cf:: with SMTP id n15mr10708980wmk.93.1598518534427;
        Thu, 27 Aug 2020 01:55:34 -0700 (PDT)
Received: from P-NAN-SUCRE.nantes.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id d21sm4087912wmd.41.2020.08.27.01.55.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 01:55:34 -0700 (PDT)
From: "Jugurtha BELKALEM" <jugurtha.belkalem@smile.fr>
To: yocto@yoctoproject.org
Cc: Jugurtha BELKALEM <jugurtha.belkalem@smile.fr>
Subject: [PATCH 1/1] recipe/ettercap : new ettercap recipe
Date: Thu, 27 Aug 2020 10:55:32 +0200
Message-Id: <20200827085532.16174-1-jugurtha.belkalem@smile.fr>
X-Mailer: git-send-email 2.11.0

Ettercap is a comprehensive suite for man in the
middle attacks. It features sniffing of live
connections, content filtering on the fly and
many other interesting tricks. It supports active
and passive dissection of many protocols and includes
many features for network and host analysis.

To test ettercap :
$ ettercap -T -i eth0 # Text mode
or
$ ettercap -C -i eth0 # console based mode

Signed-off-by: Jugurtha BELKALEM <jugurtha.belkalem@smile.fr>
---
 recipes-security/ettercap/ettercap_0.8.3.1.bb | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 recipes-security/ettercap/ettercap_0.8.3.1.bb

diff --git a/recipes-security/ettercap/ettercap_0.8.3.1.bb b/recipes-security/ettercap/ettercap_0.8.3.1.bb
new file mode 100644
index 0000000..c641c26
--- /dev/null
+++ b/recipes-security/ettercap/ettercap_0.8.3.1.bb
@@ -0,0 +1,42 @@
+SUMMARY = "A suite for man in the middle attacks"
+HOMEPAGE = "https://github.com/Ettercap/ettercap"
+LICENSE = "GPL-2.0+"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+inherit cmake
+
+DEPENDS += "ethtool \
+            geoip \
+            librepo \
+            libnet \
+            libpcap \
+            ncurses \
+            openssl \
+            zlib \
+            bison-native \
+            flex-native \
+            "
+
+RDEPENDS_${PN} += "bash ethtool libgcc"
+
+SRC_URI = "gitsm://github.com/Ettercap/ettercap"
+
+SRCREV = "7281fbddb7da7478beb1d21e3cb105fff3778b31"
+
+S = "${WORKDIR}/git"
+
+EXTRA_OECMAKE = " \
+    -DCMAKE_SKIP_RPATH=TRUE \
+    -DBUNDLED_LIBS=ON \
+    -DENABLE_IPV6=ON \
+    -DENABLE_GTK=OFF \
+"
+
+# Replaces default encoding set (ISO-8859-1) with UTF-8 in ettercap
+# configuration file installed by the package.
+# It ensures that all characters are properly decoded and avoids
+# any fatal errors while running in text mode (-T).
+do_install_append() {
+        sed -i 's@utf8_encoding.*@utf8_encoding = "UTF-8"@g' \
+		${D}/etc/ettercap/etter.conf
+}
-- 
2.11.0

