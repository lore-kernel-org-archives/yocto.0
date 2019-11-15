Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6134FE00E5E; Fri, 15 Nov 2019 05:23:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.147.123.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
	[64.147.123.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 417C5E00DEE
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 05:23:28 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id A098C63D;
	Fri, 15 Nov 2019 08:23:27 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Fri, 15 Nov 2019 08:23:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=fm3; bh=AgHh0eti4sbJ0e4awbKiE2QH6n
	RUYjSBRZ360L21lI8=; b=C3CIJAhjs+BVy6pX93qR3xFl04BUVDvJUC5Ds/Q9vm
	i3kl5q+pCRfHAfI0inicsTOTzeSdTs21MfV37uVVfFoPbbSald+jYbg9Xw6vAfZK
	M8AyRNIkhcGeXZLRruupWmYZm9V3niWbVUqT6/BrSi/n3h1pgUIScwkblfZyXVcx
	Bs8hqVyXIzbtralm0bCMQGPnptN+0MIucIQw1Qy0fe2TAWSRawlkiYWZwUUIAX16
	E4ogaAz+3/lhsVFbQdibqTbvj2lFIKdLaoAJev8NJyQbWOFakZHmY5Eyw3Zltkl/
	ktqLPqF54mamw4p3odomFBXMdpMEuMYBTEztiq1ZRKfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=AgHh0eti4sbJ0e4aw
	bKiE2QH6nRUYjSBRZ360L21lI8=; b=pxN5pS89HOYPkomChjS17PY75lkmn+6UI
	e7R13+iBWHpmWLtSXSj2kw0B1VqfGK5QQi+UPfy76GB78d+SixQnFKKeTS5AbN5o
	DEa/HJuYcVYJKkrR1BjhuK9OEz3HjK2KJ/FtbvWB+m1wUVXMjeSFOkBhz72rc72a
	meljYbBHgrpwZ37EDXUqvS0xNmLx6SqjPx1ysVEYS/IQD2u0eXQa/Kmi6Ch6PBG/
	2zNmlYujWeyNCwDaAGd4QcdBfMW5QPWeFbSm0348NTw2MAypmdTHR9H7yrbt/FD1
	vXpJpbJtSObzjGf3j77DWNWuWER7DZeq4bDqbSqoFoSE4Sj+zFwVg==
X-ME-Sender: <xms:z6bOXRzNONHt7hc4ZPb0reBAbNytNEcO337iqCXEjhbLBG22pB2yJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudefhedghedvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
	dttdenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhessggvthgrfhhivhgv
	rdgtohdruhhkqeenucfkphepkedvrdegrddvtdejrdeivdenucfrrghrrghmpehmrghilh
	hfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghrufhi
	iigvpedt
X-ME-Proxy: <xmx:z6bOXb6sxvxNX7nVIePExCtVdPrHgZaJl7hQEU8ey29hl0gm-KsSIQ>
	<xmx:z6bOXRX3kzR7_Qe6OTKE1UQM652VsmZAiktjJS85Q0Yt3VioSru8XQ>
	<xmx:z6bOXTIOYBm1kpaiU0XMoUS0NxB0V0edHOqFG8yEu31zIp-BvNJhag>
	<xmx:z6bOXZlVHxhdH70Fds56TWm8r7G5D_j3ruKioBUtOhey12bV-z0fZQ>
Received: from arch-laptop.roaming.b5net.uk
	(cpc86219-nott20-2-0-cust829.12-2.cable.virginm.net [82.4.207.62])
	by mail.messagingengine.com (Postfix) with ESMTPA id 97121306005B;
	Fri, 15 Nov 2019 08:23:26 -0500 (EST)
From: Paul Barker <paul@betafive.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 15 Nov 2019 13:23:23 +0000
Message-Id: <20191115132324.47411-1-paul@betafive.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [patchtest][PATCH 1/2] patchtest: Fix printing of exception tracebacks
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
X-List-Received-Date: Fri, 15 Nov 2019 13:23:29 -0000
Content-Transfer-Encoding: 8bit

The addError() handler is called outside of an actual exception handler
so sys.exc_info() doesn't actually return an exception. This means that
traceback.print_exc() doesn't know what to print. Instead we need to use
traceback.print_exception() with the err object we've been given.

Signed-off-by: Paul Barker <paul@betafive.co.uk>
---
 patchtest | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/patchtest b/patchtest
index 592f73e..59b19f5 100755
--- a/patchtest
+++ b/patchtest
@@ -101,8 +101,7 @@ def getResult(patch, mergepatch):
 
         def addError(self, test, err):
             self.test_error = True
-            (ty, va, trace) = err
-            logger.error(traceback.print_exc())
+            logger.error(traceback.print_exception(*err))
 
         def addFailure(self, test, err):
             self.test_failure = True
-- 
2.17.1


