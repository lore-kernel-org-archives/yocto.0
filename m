Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 204C6E00C43; Sat,  4 May 2019 15:05:03 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE3CBE00C14
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 15:05:02 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id k19so4505088pgh.0
	for <yocto@yoctoproject.org>; Sat, 04 May 2019 15:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=O8nHqAt7u1ecFaRGE0yv4nuipGcugSUo/wDB11e1p08=;
	b=koCXKH3Jn3mcv+0iIh6qP+3bIVWnhdmP+dSlaQOQ2vom6WrVX9JqeVlQm7fl8PGNwQ
	3ztPH148vPWivoxy0BHBwri0/sKWxQtziXfpTgnBg1qnpfe3cdw5t9Djz3+rHwXe6dh1
	IX8aGhLG0uxlewOntAVNnCY1tJgrrmDObaCwFjgaRBT1mkLPWbrfn33orDnbN05mUyJz
	gZPepJAPZaM0WCdmhJyD7KFh27xqiOEMXWq0pCs6Who1DoH9foPHK0It+tg/06Pntx+Z
	2U2RTL/4z2/lGa6M8lABxQ/FAfcib34fMkc/kRCFlQC/IwvM4tiF8xpVsCKIiuCD84IQ
	9tHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=O8nHqAt7u1ecFaRGE0yv4nuipGcugSUo/wDB11e1p08=;
	b=g8vcj1jO9iAN0Wvdrnd+fgr2hdYP0y7XKQco928kQXEOjVe8taw0Elvi4Xikzt/n84
	ZQ7PUXF4RXn4TVgAbicyYJ9jUI3daESSa+N6lwPkqTSDwTenOIO/ScGbmfXjthbkd5pT
	0NF+miUN9wOeXD+e7kPXWAvnyvXivgCDtQhm+Bv6hx2POr9ljBxLjLrPvVZs6JL9jWiY
	NVET57dg3nOY+k73ifIEshbRhxOGrdSx4RCm8tVwfEIMTw/vp98n0HuBLgPfGO9RDnKW
	jqe0uK9IgNPnJUns52adwpFp2t6iQv+QdzkC18Nh5lmYAV+KnVKfrGaLAT7dfvoPqH/z
	DJCQ==
X-Gm-Message-State: APjAAAVOTuwbGRVsTwWcUYzpbl49BGsbu17wNDU6C9yUsWfIi06SA6+q
	ueTv8IHwvOYGK4xDBuwS2POpFaxL
X-Google-Smtp-Source: APXvYqz6lfC7B607wRorg6zx2agH8iIqzZJyTzuMTQGlyKUFHZVBjbdCw7fJBdijhXJQjSTaR8MDpQ==
X-Received: by 2002:a63:5041:: with SMTP id q1mr21433834pgl.386.1557007501897; 
	Sat, 04 May 2019 15:05:01 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f63sm11686505pfc.180.2019.05.04.15.05.01 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 May 2019 15:05:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 May 2019 15:04:59 -0700
Message-Id: <20190504220459.31200-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] apparmor: add a few more runtime
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
X-List-Received-Date: Sat, 04 May 2019 22:05:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 lib/oeqa/runtime/cases/apparmor.py | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/lib/oeqa/runtime/cases/apparmor.py b/lib/oeqa/runtime/cases/apparmor.py
index e2cb316..b6a9537 100644
--- a/lib/oeqa/runtime/cases/apparmor.py
+++ b/lib/oeqa/runtime/cases/apparmor.py
@@ -25,3 +25,22 @@ class ApparmorTest(OERuntimeTestCase):
             msg = ('aa-status  failed. '
                'Status and output:%s and %s' % (status, output))
             self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['apparmor.ApparmorTest.test_apparmor_aa_status'])
+    def test_apparmor_aa_complain(self):
+        status, output = self.target.run('aa-complain /etc/apparmor.d/*')
+        match = re.search('apparmor module is loaded.', output)
+        if not match:
+            msg = ('aa-complain  failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
+    @OETestDepends(['apparmor.ApparmorTest.test_apparmor_aa_complain'])
+    def test_apparmor_aa_enforce(self):
+        status, output = self.target.run('aa-enforce /etc/apparmor.d/*')
+        match = re.search('apparmor module is loaded.', output)
+        if not match:
+            msg = ('aa-enforce  failed. '
+               'Status and output:%s and %s' % (status, output))
+            self.assertEqual(status, 0, msg = msg)
+
-- 
2.17.1


