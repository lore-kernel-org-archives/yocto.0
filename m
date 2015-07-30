Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C2BE00AE9; Thu, 30 Jul 2015 04:28:20 -0700 (PDT)
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
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 537B6E00ACF
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 04:28:18 -0700 (PDT)
Received: by pabkd10 with SMTP id kd10so22202003pab.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 04:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0ukU7ke9yL3LByM8MljGAtjZV8RKPGW8V8Z1Or2YN48=;
	b=iykJlT+7M3bRhNwKAczKI05IcBUzyaYRcLFGCpd4+UoV3ayNZx30ptIlsajQI+X/+q
	YYuzPpAfgrD+hDw5dWZyiAW8nzTtOFg18aKBOrGWsoNSDCqblKnKUlyD3Sax19Cff/Wk
	3/XNLWIptI7E9Vpbqm4apK7qzOlnh8i4wDNoeRzuR1q8r5vNa1ghweSI4EefThMauF0E
	aC8aEsz4rmVGiS8NBJwfsjJrHj/XD4A6CRhMrbTWw+ECIjitBbtovlfYjc7KL2fUCFye
	bEMiahCBNiJnO6Pe5fGCkbQ/KO2mqxsaE2TWlLyf9EYQaP6Kw84vi645jjjTdRC+Eejn
	qHXA==
X-Received: by 10.66.222.103 with SMTP id ql7mr103816878pac.144.1438255698252; 
	Thu, 30 Jul 2015 04:28:18 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id i5sm1667819pat.42.2015.07.30.04.28.16
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 04:28:17 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 16:58:57 +0530
Message-Id: <1438255737-10694-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/2] README: update supported linux-yocto versions
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
X-List-Received-Date: Thu, 30 Jul 2015 11:28:21 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

README updated with the list of supported linux-yocto
versions and details to use it while preparing selinux
enabled images.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 README |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/README b/README
index 3fe8af4..22d7599 100644
--- a/README
+++ b/README
@@ -66,6 +66,16 @@ working with this layer, without the additional Poky meta data.  This
 approach may work, but is not generally tested by the maintainers.
 
 
+Using different versions of linux-yocto
+---------------------------------------
+To prepare selinux enabled images using different ver. of linux-yocto,
+we can choose supported versions of linux-yocto,
+currently supported: v3.14, v3.19, v4.1(by default).
+
+* enable the preferred linux-yocto to local.conf or oe-selinux.conf
+e.g. PREFERRED_VERSION_linux-yocto_qemuarm = "3.19%"
+
+
 License
 -------
 
-- 
1.7.9.5


