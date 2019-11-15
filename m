Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72A63E00E51; Fri, 15 Nov 2019 05:23:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [64.147.123.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
	[64.147.123.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71872E00E24
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 05:23:28 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 22355673;
	Fri, 15 Nov 2019 08:23:28 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Fri, 15 Nov 2019 08:23:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm3; bh=dDYp1a5cElJlW
	u/6vd37T0wuZOB2PTtpN80B3b8DeJM=; b=ok63JtD9yvxkg8OTUu8W1xPMR7pNJ
	qr/C9x/JoDtzayoBySlIcwBCZc/SXDu7FIYqR/Iq0aCpiEJC/2jxIoXR6IGUpM/P
	E6xZnxlaz8U89j9Jpvf7+4x2OEGoo0OFZuQnxfY7lFgTEwWh76yyYyOCAVH8YK0w
	sTO8fQejUCYQmNXVaWrVvg7IvNRa7XXDHsMQRMaxboRd8Nnf/Fdn48YluZI/gq0G
	Tr10WOWmlJvtW9KPWCwWztJ/UGR5N+hYAlWOEaXpDENOTcqo7YMP6Udvon7TQrdk
	Xd/U2+OclHl0CY18hgLBw/MVoa1Ez8D8GDypLsleU6KoNtdyG5AXjKziQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=dDYp1a5cElJlWu/6vd37T0wuZOB2PTtpN80B3b8DeJM=; b=E/nZy0/z
	JhGuHmUQisEwgLeFAe0kmXcppgGlp9rbOt/BBIk/9idoycFCjUo+oYAk/SIlO1tY
	ZFBn1vvBtplp9FYj1ySNyglUY8pzto5StBO4GxTxzIastwww+WnSWZZOORF6Wld1
	jtFC74SGvCdQ6h66XtwGHDmxDeIvf4IgPo+Fi7wU/O8dCBxR+H4oKo2/5yf7NHRS
	6jybpJ6DeSNTQUQjYzM3NMrLCSwC/UC3NMG1aSicvVWQ5hImzXQauDQNXbXo/tDI
	xisNUTeMpqoN9+oyz+eIlm8ZfRGicpPB1Ht24q00wSeTqhod9bZsmKJlmNlMXLDe
	Q8sYU0NsvECeHA==
X-ME-Sender: <xms:z6bOXbHipL7GvjAl6nNznqNCcRhqAce-ky_qvG3myrQrLn8CG9AmEw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudefhedghedvucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
	dtredttdenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhessggvthgrfhhi
	vhgvrdgtohdruhhkqeenucfkphepkedvrdegrddvtdejrdeivdenucfrrghrrghmpehmrg
	hilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghr
	ufhiiigvpedt
X-ME-Proxy: <xmx:z6bOXdjjEzDcuy_uwu6S951w7MFikwSFiGCBEGsg88StMYEyal6brg>
	<xmx:z6bOXdvpmE3p8_C_vErD-LVP9HcxV4_4ihYrpOvbDvsIpmsLuSbiQA>
	<xmx:z6bOXT9MjLhKwqmjtj-IC2bJw1lfNfjzRyS8oA2CA5QJFPT7cAmtOA>
	<xmx:z6bOXT_3b6Pyj0FlNRbStvi0g-ToxH6mEE2FRwAnJdtDKKPyunzovw>
Received: from arch-laptop.roaming.b5net.uk
	(cpc86219-nott20-2-0-cust829.12-2.cable.virginm.net [82.4.207.62])
	by mail.messagingengine.com (Postfix) with ESMTPA id 2A7A5306005E;
	Fri, 15 Nov 2019 08:23:27 -0500 (EST)
From: Paul Barker <paul@betafive.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 15 Nov 2019 13:23:24 +0000
Message-Id: <20191115132324.47411-2-paul@betafive.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115132324.47411-1-paul@betafive.co.uk>
References: <20191115132324.47411-1-paul@betafive.co.uk>
MIME-Version: 1.0
Subject: [patchtest][PATCH 2/2] patchtest: Allow tests to import helper modules
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

When running patchtest locally to figure out what was wrong with my
patch, I saw the similar exceptions for each test module:

    Traceback (most recent call last):
      File "/usr/lib/python3.6/unittest/case.py", line 59, in testPartExecutor
        yield
      File "/usr/lib/python3.6/unittest/case.py", line 605, in run
        testMethod()
      File "/usr/lib/python3.6/unittest/loader.py", line 34, in testFailure
        raise self._exception
    ImportError: Failed to import test module: tests.test_python_pylint
    Traceback (most recent call last):
      File "/usr/lib/python3.6/unittest/loader.py", line 428, in _find_test_path
        module = self._get_module_from_name(name)
      File "/usr/lib/python3.6/unittest/loader.py", line 369, in _get_module_from_name
        __import__(name)
      File "/mnt/build/Projects/Konsulko/patchtest/patchtest-oe/tests/test_python_pylint.py", line 18, in <module>
        import base
    ModuleNotFoundError: No module named 'base'

To fix this the import patch used when loading test modules has been
extended.

Signed-off-by: Paul Barker <paul@betafive.co.uk>
---
 patchtest | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/patchtest b/patchtest
index 59b19f5..a204479 100755
--- a/patchtest
+++ b/patchtest
@@ -138,6 +138,10 @@ def _runner(resultklass, prefix=None):
     if prefix:
         loader.testMethodPrefix = prefix
 
+    # allow tests to import helper modules
+    sys.path.insert(0, pti.startdir)
+    sys.path.insert(0, os.path.join(pti.startdir, 'tests'))
+
     # create the suite with discovered tests and the corresponding runner
     suite = loader.discover(start_dir=pti.startdir, pattern=pti.pattern, top_level_dir=pti.topdir)
     ntc = suite.countTestCases()
-- 
2.17.1


