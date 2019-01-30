Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC800E00D14; Wed, 30 Jan 2019 01:57:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41D0E00C91
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 01:57:46 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 43qJh85CHLz4v
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 10:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1548842264;
	bh=ecS667XMF7/ZrmttvOPXhYj/MmvgBNvLtl+T2OxIV+w=;
	h=From:To:Subject:Date:From;
	b=P9GSl7Ovqm/rGFsiUgKJFnKd+oidH2RPpPuP0cfqrDAjPMSR6V+rFJlm2jdvIl0LX
	+2bR+hSSwTzhWFxq3LVW0Jd9YxG9PwC4ddRRjNrLAAAgMbb4B7HzqEhKIkumxA0zjz
	SgaW3eTse2knVkOSHExvbUZBdMPysv5fw1MC/u4JLVp0vI8kkNm4XelepYIPxg1jHN
	kEmKHW+YjAHtDLMMehrmbDC6for0y9BhdaRPCNPspKgFHYSJXF3GjW6T2CVtiB16Sb
	3KTLmxGdZqIRe/ejriJDoOs15RBoDSJjG7e9madAbKXEbBs5Ue8sMuprHnZ+IM6MjQ
	rGSK6fWSKM1KSMkRvjs4vfGgj8atpIxWpmjRziEPtQl7aMBI2b8zWsXqifVh75VBgO
	HgD9YXEApQrDMoqziKenjmysTZRiQYG3d8Lz0Gz66krggZiqU6TdICR/x3O3NTFZ5J
	mY1NdLsmhEsa3tVENyhSxQrOT7adFVIdnlTN75dztaxI1Fh0z5ICgLXK0ktt3Dl3ED
	wMN5D6/24ki36pGIHlRn3T30MkLGIsRcP8v9cLcHT8CnMRqu3I2hQn9jm234TuGgT8
	MXqFnVaEtkoEO2wgw3vGbbk3IODTYNy/0+XlGTcdglhs+Uk9uWQdD6kbZt/DVcVSQc
	BFo+oouaHXeztOAmXKEq1oN8=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2019 11:57:41 +0200
Message-Id: <20190130095743.12467-1-bunk@stusta.de>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH] xmlsec1: Include libxmlsec1-*.so in the main package
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
X-List-Received-Date: Wed, 30 Jan 2019 09:57:49 -0000

They can be dynamically loaded with xmlSecCryptoDLLoadLibrary().

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 recipes-security/xmlsec1/xmlsec1_1.2.26.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
index 2dbbf33..aca9634 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.26.bb
@@ -32,6 +32,11 @@ EXTRA_OECONF = "\
     --with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../.. \
     "
 
+# these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
+FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
+FILES_${PN} += "${libdir}/libxmlsec1-*.so"
+INSANE_SKIP_${PN} = "dev-so"
+
 FILES_${PN}-dev += "${libdir}/xmlsec1Conf.sh"
 FILES_${PN}-dbg += "${PTEST_PATH}/.debug/*"
 
-- 
2.11.0


