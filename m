Return-Path: <dogukan.ergun@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF791E00CA6; Tue, 31 Oct 2017 00:33:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dogukan.ergun[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF2CEE00C62
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 00:33:06 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id y39so15001147wrd.4
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 00:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=KIutEaQ0q/lgRFM5wOTh8imAGH1pvRowh1K3SSSKBig=;
	b=d2son1V0z01xD6jEAp3O6RrckQpu39XAqVRZzM6GhHFLMtFmjL8CJk+VtWFzmtGDjz
	RcVkUjfE+577M5n/lycvPBO6d7OdkwyigjCTMP3Ml80RbhAJp3YPvQS1cVBMA0wPaXNV
	bByjBFZj3FehF4oW2HlnmTnsUuoR12Kmi/PTrOAPW3mTy++Y9lj7sbqaGGLmbuHEiYj7
	9dFBX+kMI1iQcaNyTudT+am9ocmq2ltr0uNsBl+yJDzAyzZNt8aE5DFyDLMz8Fw6GpcM
	I3MCDqVEFTELPsKq9eGJkZfSHCqAKAaGKgF+JgnMd4deCjPHiwKfarizho+zuUWVQ7xp
	LgXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=KIutEaQ0q/lgRFM5wOTh8imAGH1pvRowh1K3SSSKBig=;
	b=rgPPQhVcoU6jaVGMXbniWi/q3WXJ3eIfrZis912xunhvMPqa70WMcWr5Z/JNKahPdl
	5FU/+LqP1woYIAHn8yvmwnYfkNbHRJn1koM9ORj2WEh/fJJmFG2cD5+bMX22JcVK02XN
	K5i2bP8AMJEg0TKYHnKzrqoKf8w44d78AN/lKF9SY1yCynjJlau68PpOU+uYPs38LQTr
	xZRGs0UiBr4DgUN09IeTvs12GoA9sNjqaxRewJADLtLY9IsCmTLcZl95T1uWeOKvIBEj
	STMKE4PJTCT4O+mHIIKbicQXXNQAzadRF1qywEH2Fqc9eaSPfhhq3NPfdwNEdqVLj+S9
	yOMw==
X-Gm-Message-State: AMCzsaUIrZ0PPZbCoVi1AIAPUxCLQFFQcykCYeKm6k1Z6sFjZiXJnRS8
	5+emF+0rXE7srlexMEm+BvkUX/4kG+g=
X-Google-Smtp-Source: ABhQp+RzNOfCvmiUoDoOkOHGpEd5qyhTpKGA14/S4s8N983YFDcXUpiqvTt5wssIalhbsRFhMZ+2Mw==
X-Received: by 10.223.190.132 with SMTP id i4mr949053wrh.123.1509435185337;
	Tue, 31 Oct 2017 00:33:05 -0700 (PDT)
Received: from [192.168.1.163] ([81.214.38.25])
	by smtp.gmail.com with ESMTPSA id d4sm854342wma.29.2017.10.31.00.33.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 31 Oct 2017 00:33:04 -0700 (PDT)
To: yocto@yoctoproject.org, mark.hatle@windriver.com
From: "Ergun, Dogukan" <dogukan.ergun@gmail.com>
Message-ID: <e29a84dd-b0ab-66e0-d153-d132e15d69ca@gmail.com>
Date: Tue, 31 Oct 2017 10:33:03 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] python-ipy: Update SRC_URI
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
X-List-Received-Date: Tue, 31 Oct 2017 07:33:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: tr
Content-Transfer-Encoding: 7bit

From: Dogukan Ergun <dogukan.ergun@gmail.com>

python.org does not serve files with http anymore

Signed-off-by: Dogukan Ergun <dogukan.ergun@gmail.com>
---
 recipes-devtools/python/python-ipy_0.83.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/python/python-ipy_0.83.bb b/recipes-devtools/python/python-ipy_0.83.bb
index b2a9739..df060fa 100644
--- a/recipes-devtools/python/python-ipy_0.83.bb
+++ b/recipes-devtools/python/python-ipy_0.83.bb
@@ -9,7 +9,7 @@ DEPENDS = "python"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ebc0028ff5cdaf7796604875027dcd55"
 
-SRC_URI = "http://pypi.python.org/packages/source/I/IPy/IPy-${PV}.tar.gz"
+SRC_URI = "https://pypi.python.org/packages/source/I/IPy/IPy-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "7b8c6eb4111b15aea31b67108e769712"
 SRC_URI[sha256sum] = "61da5a532b159b387176f6eabf11946e7458b6df8fb8b91ff1d345ca7a6edab8"
-- 
2.7.4


