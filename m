Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6887CE00D00; Mon, 14 Oct 2019 22:42:01 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.181 listed in list.dnswl.org]
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57F88E00C9B
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 22:41:58 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id e15so3407740pgu.13
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 22:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=xbWMHRuYdwykpHNLzpqaE5z7rmtYKB9S6WK7lr/k8FE=;
	b=r6+wXBRxqetneFWCt6wNXiWlofCFaFxOsMNylNFg8fmazearV79/bseSvHFvUchyF9
	eR53JoYf9UsOJiyPb1AxL6fXKm8++U8OTbKOnvImqQup91Rr+dDF1yzz+as9jkjDFH9c
	L4gCpvGIhR56sg6IrgP8oGPwzDdTsL/cofKDEos9AxKQyydwQX7VF/gBc8UdolscCm/f
	F7J+87qSpqQrfrTWAg7/oEXhfpF6bcNRl6kd7C/YZGSNHj7QxOuJ2dizEKwlTDN90wXv
	OYHYN5/6vnU8yS8h8ndmXTba4g2Biehj8Q0c4J4YwZAulsRJMnKflqMYvRoH/d9SZlow
	Qj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=xbWMHRuYdwykpHNLzpqaE5z7rmtYKB9S6WK7lr/k8FE=;
	b=TeOqm4S88uq19YOS/1t9e9t0csC51HEQjF4lvyIBflDEKR20xNSSTwD0/mn4gU00OU
	dfzyxI3WOJXUUThBkBXpfz/IzGpr92zvR6uvFD2HXDZzKfs1VQE8ukQD04tuLvsU1gG+
	JlgD/uJaGeIlp1yqv0IuSpqWv+XkeO54sBlHuEvE4pzVgg5oC4mvTY8+HyxyPw34OgyG
	lMHCwC6ZK60K4XVYvL1fSwARubZ0MxKwerK95c4gScTE4k8l527W2sfHja3BYX9k/LzL
	iiO5vLGM+/t/PKhLdJza/7YeoTgN29EVuEEoEZ0MZugfPxjUHvwrjfQ7aQziyeLdZhir
	4s/w==
X-Gm-Message-State: APjAAAW4WogvMGVdf+uTCfb2lJt5c7OSPDNaotURcHlMqNEZbIin36ts
	kQwzj+XqTG2yLtKp/ARjaxkmL81+
X-Google-Smtp-Source: APXvYqx+zPp13lHNYeSEqzifyTNMrx/9UGHorElLA6ZKPbmP1GOoA5tBzoMCPpef+/XaKErfr0IomQ==
X-Received: by 2002:a65:67d0:: with SMTP id b16mr37794336pgs.64.1571118117822; 
	Mon, 14 Oct 2019 22:41:57 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	g24sm19987594pfi.81.2019.10.14.22.41.56 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 14 Oct 2019 22:41:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Oct 2019 22:41:55 -0700
Message-Id: <20191015054155.8219-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] checksec: add missing rdepends to readelf
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
X-List-Received-Date: Tue, 15 Oct 2019 05:42:01 -0000

update test to check for depends

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/checksec.py          | 1 +
 recipes-security/checksec/checksec_2.1.0.bb | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/oeqa/runtime/cases/checksec.py b/lib/oeqa/runtime/cases/checksec.py
index ff6d2f3..e46744c 100644
--- a/lib/oeqa/runtime/cases/checksec.py
+++ b/lib/oeqa/runtime/cases/checksec.py
@@ -24,6 +24,7 @@ class CheckSecTest(OERuntimeTestCase):
         self.assertEqual(status, 0, msg = msg)
 
     @OETestDepends(['checksec.CheckSecTest.test_checksec_xml'])
+    @OEHasPackage(['binutils'])
     def test_checksec_fortify(self):
         status, output = self.target.run('checksec --fortify-proc 1')
         match = re.search('FORTIFY_SOURCE support:', output)
diff --git a/recipes-security/checksec/checksec_2.1.0.bb b/recipes-security/checksec/checksec_2.1.0.bb
index 5c6528e..b67c98b 100644
--- a/recipes-security/checksec/checksec_2.1.0.bb
+++ b/recipes-security/checksec/checksec_2.1.0.bb
@@ -16,4 +16,4 @@ do_install() {
     install -m 0755 ${S}/checksec ${D}${bindir}
 }
 
-RDEPENDS_${PN} = "bash openssl-bin"
+RDEPENDS_${PN} = "bash openssl-bin binutils"
-- 
2.17.1


