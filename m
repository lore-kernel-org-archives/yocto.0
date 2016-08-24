Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E79E0105A; Wed, 24 Aug 2016 03:41:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEFF4E01055
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 03:41:16 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id i138so2019581wmf.3
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 03:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=dGMMGhDqtgL2E35GwlScDSCtaXsIl0/X1gA6eDq94tc=;
	b=0JAleBB2hcRunY7Egyx6dnS5/2lhS2nOFbxh+PoySv1cmhCy3zBjFQjiMdn1eatXBk
	7us3EQzF8e8WzM3f0PdRUu6q4mhZ1mHVILNb/bTaaGDqlWd1GoxozbsUbWhdmC0fEK4p
	JQQEWlydpLCgom9p6FN0VeeeZQowjw7JY+E9w2FqF6KiYBsLe9JGDSbPY05DFjXCGchW
	GJ/1LqHi0BRGVZO7OlE5T/Jl1Tv3q+FR7JeubiQ6DAN7TWspKcwM2lzHRlj1i5KVJL+l
	3MyAHitIrUHL5c8G0aFtivbmSIoWNf1amNMC27LM0k2UPVhtwR1uQfb2aPsfGmAgE8gl
	22MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dGMMGhDqtgL2E35GwlScDSCtaXsIl0/X1gA6eDq94tc=;
	b=WKNaf2LrqTMQ62VN9xihUszZvYVnWs/3PH5Qv2Hc+wXGFLJZxf45F1AuvKLtvFLsBX
	kERg/GS1hb9ZiFU5I/Kw/XJTA9egfR63GpjpMX3c6Y04v2Se/zTjRdGjg37qc1a+HeK2
	BDVfv9LVh+Xa+jAv7LwKN+CtmGSQI8g7GwQxBG/RImVTxmD9kVZxAXHXqHuIFG4WOIn8
	UcI2PYB8fWxN/o4KXEl4HlbeEBGcBP7al6kepeWc4lf48zZ+6IybwO7o+vfFJfTpsJ12
	p4jAzNq9niQX5kQrYImoRBeGTmTdS5jhTom4i8iKqNiozZFTGRMmfUgTiLVl1qIPbcYi
	VTaw==
X-Gm-Message-State: AEkoousTlbNTIJMvv73ySODML0ks2/yuitv4XbEHwyc6mLg3bmQntwgNKHQCPLDnUboaSw==
X-Received: by 10.28.46.204 with SMTP id u195mr22990925wmu.57.1472035275435;
	Wed, 24 Aug 2016 03:41:15 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	d80sm33055092wmd.14.2016.08.24.03.41.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Aug 2016 03:41:14 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Aug 2016 16:11:07 +0530
Message-Id: <1472035267-12234-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] packagegroup-core-selinux: add auditd support for audit log
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
X-List-Received-Date: Wed, 24 Aug 2016 10:41:20 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

this change provide dependency required by audit log file, to prepare it at
/var/log/audit/audit.log and get cleaner boot log.
without this change all avc denial messages mix with the boot log & it is
difficult for avc denial analysis.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/packagegroups/packagegroup-core-selinux.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 9c74458..a0152a9 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -27,4 +27,5 @@ RDEPENDS_${PN} = " \
 	selinux-labeldev \
 	refpolicy \
 	coreutils \
+	auditd \
 	"
-- 
1.9.1


