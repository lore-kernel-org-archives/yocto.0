Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81401E00C46; Tue, 27 Nov 2018 13:13:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B336BE00B45
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 13:13:57 -0800 (PST)
Received: by mail-pf1-f171.google.com with SMTP id b85so9016016pfc.3
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 13:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=zKOijIwYMYTqAuodpDtInGmCH5khyRi3wIf+aOY8Ajw=;
	b=JxljRYdrDn+MjC3xNWeydjbppeHpsdXnkfjKa8wrEZMI3tWV0usqI6wbuiSjwyNB1q
	cf0zoWjqH5lXC/6qoy9+txrc2FAlUimmJu7hqS7IBSO7TDJF5iTcvsVw+cC8gu2n2j+i
	ZVzKTmAvYMXWlNFTty1GI51Nm8Jm6oIhGUHZCb7QocrW9eZ87a8G/5xjDoKzZjJNjIDy
	3Z7AilmG/jZGI6T+jc0hiwr8Y8WIhdtGUG3l99DFRokcYE3UKsbL3+bXVmJS+gd+bwgL
	yrbX0i0I3gkanqFaamZU/avLKOGj3H9Y6CRQCESoWxfKxjtak1A5fgL35nHrdAs8EfTP
	e1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=zKOijIwYMYTqAuodpDtInGmCH5khyRi3wIf+aOY8Ajw=;
	b=DfquoK9Rh22gEhTm+oSiBmIjMTf61aFTPtthb3LZXFc2DizrG39/dlMrsz88wVCNTr
	lhfpP3hUbektQOSTvu+TMufCRYRiuB77Okhf8nH37m65Iyh5hViUusoaOIUcbh+A/kgP
	blCD6oQCt21XxJjPPCi68Q81NqldmxX1PkoVGT/wBpxFoVlzTPZMHs67ZNn9PEAAcgGp
	jRec0VPl1AdJrfOyU8/nQNr2A7qt4l4VgLl8fgZQpUDHsI6nTg1LeEV2ufVWcaT0mZX/
	Dks5zqrt7YLpzFrdYzANgdHKHlnMpY/4FIh/ClFYnX2CFkKeA/l7Z3lsgUwB/qK9ZNeb
	aTSQ==
X-Gm-Message-State: AA+aEWYl6O9yXJgDSHmLCsBLe8xfrlAuDE0DwSpbKEs4rWDY/icevyZM
	idLRWiCBN2SmSy4Tpt+aPnyqM+Io
X-Google-Smtp-Source: AFSGD/V0v4iO+YXWnoVrPSu/np715uMikwvK0Bmaw1QXCNM30TVmcCsVAA9HUXtrohiqlJFZMue33Q==
X-Received: by 2002:a63:4611:: with SMTP id t17mr2004514pga.119.1543353236803; 
	Tue, 27 Nov 2018 13:13:56 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com (174-24-96-92.clsp.qwest.net.
	[174.24.96.92]) by smtp.gmail.com with ESMTPSA id
	u127-v6sm6609464pfb.47.2018.11.27.13.13.55
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 27 Nov 2018 13:13:56 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Nov 2018 14:13:54 -0700
Message-Id: <1543353234-1115-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] lynis: update to 2.7.0
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
X-List-Received-Date: Tue, 27 Nov 2018 21:13:58 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_2.6.8.bb => lynis_2.7.0.bb}         | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_2.6.8.bb => lynis_2.7.0.bb} (89%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb
similarity index 89%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb
index 28a4469..0fd53d7 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.6.8.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.0.bb
@@ -8,8 +8,8 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "91a538055bfb682733ef8e4fe7eb0902"
-SRC_URI[sha256sum] = "2e4c5157a4f2d9bb37d3f0f1f5bea03f92233a2a7d4df6eddf231a784087dfac"
+SRC_URI[md5sum] = "ac0ae8086e31f263f2da0c5c553686ba"
+SRC_URI[sha256sum] = "c9cb9b77dcdc782decbf06ddca30c0e853605b99029d8e86ade8449a0959be3b"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.7.4


