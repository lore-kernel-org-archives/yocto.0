Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66B12E00D24; Mon, 14 Jan 2019 06:42:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD5F0E00D13
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:24 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id p6so9088006wmc.1
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=AelFPU7dqFqc8pcPnKdiU3CKf2NPvwK0JtwaqPiVYOw=;
	b=WqGzY6xx4/q2+xJGsxhYukY5BYE9nK4A5PBNc0gsgk8gngWlkfATJ0Pm2oORb+YN1u
	h8vnYHieNKnd2Nalip/RCzqah7yCuNvKlLNiLvot0dAXH4m70Otx7IC5UaJ+gCZ6LCdt
	A0hBVmpOePybZvFOGbkdkFRE3ddigJxOQE9h5a71DVw6wvpasJNxWf2Ig1cTqpQuY0ZG
	bhhJ387GbgbQTChDOveDTOUGY/XKZZF2ZfAVLesgIqJcjbb0EJVKXApfSXS43QivOPtb
	lo+JEbrmJHvVAw566jn81tsDhooPZILxnNLr7CDatgAxlGOV/9oQkv2rhv4LMQU+HDb8
	wKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=AelFPU7dqFqc8pcPnKdiU3CKf2NPvwK0JtwaqPiVYOw=;
	b=iDo0Xe5JPO6d7jipjZ81QnR5pCB2WWSkc7gaOMEkIE0cPj4dQ+Tq82cLPEayzvts1+
	A/rLowTptMsXbCTUL7vbxBh0FAu0SUvI31fqTItHWIdPaZCUOJBk9welynxcOnzrF0XX
	WSnZOPBBbNzCUBdE9ENSdaj5YEd0uC5NgGIx7phbgUxWmx9t5t4LlW6b7a9bvOP/3Kf9
	+FfECjX1bTOrXF0DeWykx2bodKXOhfg88jO3IqPLy87YORX5p5ZU1ronkW8dMMwgUYX7
	YoEUK6VX91ieuUP718qKDKLwEmutIKP3C3UL1mGnn4mZymSgkQwKOLLLDC1dOjizX98D
	EJ7g==
X-Gm-Message-State: AJcUukdNrvbDVADCR96aCbO8mlvXv2mSupJfShvgPWteINjZ1CBRBwux
	DD/Bw+pZHKqB7epguYmTi/CocHL/6pM=
X-Google-Smtp-Source: ALg8bN6z4yMh/8Np2yuoLS1i9XRPPe3sS9ymk6sl5CIbdIYyiGBJfCv0xD3E9Kv1TlHEHFozCndfMA==
X-Received: by 2002:a1c:8c13:: with SMTP id o19mr11634186wmd.56.1547476943581; 
	Mon, 14 Jan 2019 06:42:23 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:22 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:05 +0000
Message-Id: <20190114144208.14353-8-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 08/11] apparmor: remove pointless ALLOW_EMPTY
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:25 -0000

${PN} has content, so there's no need to set ALLOW_EMPTY_${PN}.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index b5ac613..39c45e5 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -148,8 +148,6 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-ALLOW_EMPTY_${PN} = "1"
-
 RDEPENDS_${PN} += "bash lsb"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
-- 
2.11.0


