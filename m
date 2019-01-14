Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5376DE00D24; Mon, 14 Jan 2019 06:42:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A06BFE00D13
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:25 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id m22so9132844wml.3
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=aGvdickwtGb+vIb8SOCCqL2urRYjlhTiiPULLQBzTmQ=;
	b=stoibj4cIlXAuXH4wI9FXPIK30+h/yR+Qs6vm53zrHbYkB/ySUBD3P3R4DWJq8fTI2
	06/1vZBPMjj85dEWgMH8X8H5tR6ZAvzHfyHqHQIyrY0CJirhKtQRKMtZ4yFprkvI2yBK
	BIEicDwi5RC3WqfEG0+LBP2mcVaHOuQwPNMjTa4sV44c0XutdBrAMM7Ws/8dX8z/hqek
	9I4r/9B27PGGvXiaySb5mRom0HtLfJpkmrCATwlq9Sl14i1cJUA2SwkVv+4XcXTu7Zib
	qiNdbCDnhAUVS0aXrk+z7Ij0vy1FPVC5keAcY/PhsVSg8EAlCmhyQcnwvx2Xnql4UVVw
	tXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=aGvdickwtGb+vIb8SOCCqL2urRYjlhTiiPULLQBzTmQ=;
	b=MEdiMfk9mG34RSF0CsfLoRZzwHl7qt8nw2Pw3HEG0vfJt4QsWo3zYAUWGg2oKzCX9z
	rnZHy4YvwN4Y5XUUExaVcW5mZ1dNMcZJsXKLsHtIhevHYEuLW6zHNbANgaEkspGj34wv
	e4elIy/XiSESIitoWK2h0fybLj8HtosgL4JfxGu9oMpiAvBg5yy0RieEv94g5PTSD8v8
	3lU68djk4kMleZdGoA+7u5MGjJ0oM9Ldakqv1QXowTzpFtwhUqsiwiJbhOxXwM6/vfRn
	/IjeHI8uYGACcoS+Pn7B9kaQkC3KP5vBCUt0T78OrJE/9Jth4uR9Cb8eNcoJ3iUn1mvD
	oVoA==
X-Gm-Message-State: AJcUukeXi6N4cfRYtIVTaYWzZ98HdJLusVtMyB32ZXUSEDwTMJLkJP1J
	2nN1ehhPb1nFM46d2bUbm38j4V9c7dw=
X-Google-Smtp-Source: ALg8bN5U92SjDY1HCQxU3MVWS/vbOA1P7VRHNEpdCA54hqCE7C4PTU6WnHz8peqPw5KLSSP08ovRkA==
X-Received: by 2002:a1c:9dc4:: with SMTP id
	g187mr11203821wme.152.1547476944678; 
	Mon, 14 Jan 2019 06:42:24 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:23 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:06 +0000
Message-Id: <20190114144208.14353-9-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 09/11] apparmor: systemd.bbclas is useful even when disabled
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:26 -0000

The systemd bbclass will remove any systemd files that have been installed if
systemd is disabled, so always install the files and always inherit.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 39c45e5..92602f3 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -29,8 +29,7 @@ SRC_URI[sha256sum] = "8a2b0cd083faa4d0640f579024be3a629faa7db3b99540798a1a050e2e
 
 PARALLEL_MAKE = ""
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages
-inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd
 
 PACKAGECONFIG ??= "python perl"
 PACKAGECONFIG[manpages] = "--enable-man-pages, --disable-man-pages"
@@ -101,11 +100,8 @@ do_install () {
 
 	install ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
 	install ${WORKDIR}/functions ${D}/lib/apparmor
-	if [ "${VIRTUAL-RUNTIME_init_manager}" = "systemd" ]; then
-		install -d ${D}${systemd_system_unitdir}
-		install ${WORKDIR}/apparmor.service \
-			${D}${systemd_system_unitdir}
-	fi
+	install -d ${D}${systemd_system_unitdir}
+	install ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
 }
 
 do_compile_ptest () {
-- 
2.11.0


