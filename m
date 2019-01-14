Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57007E00D21; Mon, 14 Jan 2019 06:42:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D5CE00D13
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:23 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id n190so9184833wmd.0
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=SnOy7YwIL0N/2PXCShGjAMyFMq2kcPyo4ccTgtiY/TI=;
	b=CU5mf43cxSeCre0myCKeyxsPF2VueoAdYH/BrpZ7pOmMHiYQL6JsF3jAZ2eN2nXBaZ
	/We66VBSXWksatU5jeYFMVDBg4MGSDkYvkc96gRbFT3NF+iHVtje+dweVcAesG68SDC3
	pbnoa3HQ8Fhv7AiWgFVks/zqAwS2VPjCTKdLWQYJZI2D/c+mmWFG6YpODjsY+SsY+j37
	TpUnBMbyG44Z4u0T6ThT/ywPZGIqQpFxOnZ3mtuxs726BWehu2kkDLsYwdp4VYB8Q5aD
	X8E59pgu7dzK2f04J2WOJHb3xYwGNumI9c6sUAtsmaF/RlShluRv0S3pBrJrfmNNaqFP
	SYTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=SnOy7YwIL0N/2PXCShGjAMyFMq2kcPyo4ccTgtiY/TI=;
	b=DaZOzedw/TcZeD8kh3i8RM2/qgiCxnUtpFcrFk+zqu5PR/Xmfrx1YkPpJu8vqZzJrB
	SuvR4aEPlmmqX3Cel628gwaQhH6Jj3NKgjuHLbYe4ySV8eRzbgpJ528najpL6qIlOYKR
	omRnxCiXhVma3GopOhMvfUV/Yz1GohJTgAx9kP47Sl+EKeDu6iGadH1VOMfQP497F9HL
	0QGlT9Z3yjUPJ0KytAfjkveIkwHp7tAhayuzFRM3a8bfflm0ELow/dM8etVOWR2pyUcW
	+XvwCwX8icM9gZI4syhCDcdwo2KofQdUMIII/5BU5Utz8u+J7jWJKEyNyqKWsdCyx0wZ
	6wiQ==
X-Gm-Message-State: AJcUukc7Vo5w7Mx3rZq0ckgEgzWGvillyxrbNGdPCzAO1HL5vnX2pWdW
	u2J1f2j0dVc+UkPJBR+nQNTLlwq7Lw8=
X-Google-Smtp-Source: ALg8bN48whsPWliDOYTCf2IwSzkadBsf6Qz6+paHZvvKpRcDK+mrE82psXFBp5YLSjV7oi3bYww0dQ==
X-Received: by 2002:a1c:8d12:: with SMTP id p18mr13012510wmd.31.1547476942569; 
	Mon, 14 Jan 2019 06:42:22 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.21 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:22 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:04 +0000
Message-Id: <20190114144208.14353-7-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 07/11] apparmor: no need to conditionalise PACKAGES
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:24 -0000

A package with no content is not generated, so there's no need to conditionalise
assignments to PACKAGES.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 529414f..b5ac613 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -143,7 +143,7 @@ SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE_${PN} = "apparmor.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-PACKAGES += "${@bb.utils.contains('PACKAGECONFIG', 'apache2', 'mod-${PN}', '', d)}"
+PACKAGES += "mod-${PN}"
 
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
-- 
2.11.0


