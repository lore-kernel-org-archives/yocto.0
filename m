Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAC12E00D46; Thu, 19 Oct 2017 23:03:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 644F2E00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 23:03:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v9K63oA8026587
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 23:03:50 -0700 (PDT)
Received: from localhost (128.224.163.244) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Thu, 19 Oct 2017 23:03:49 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 20 Oct 2017 14:02:15 +0800
Message-ID: <1508479335-10902-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.163.244]
Subject: [meta-cgl][PATCH] crmsh: disable network access for xsltproc when generate manpages
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
X-List-Received-Date: Fri, 20 Oct 2017 06:03:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

If the network is in poor condition, there may be an error when generate
manpages:

| a2x --xsltproc-opts=--catalogs -L -f manpage doc/crm.8.adoc
[snip]
| a2x: ERROR: "xsltproc" --catalogs --stringparam callout.graphics 0
--stringparam navig.graphics 0 --stringparam admon.textlabel 1 --stringparam admon.graphics 0
"/buildarea/build/tmp-glibc/work/armv5e-wrs-linux-gnueabi/crmsh/2.3.2-r0/recipe-sysroot-native/etc/asciidoc/docbook-xsl/manpage.xsl"
"/buildarea/build/tmp-glibc/work/armv5e-wrs-linux-gnueabi/crmsh/2.3.2-r0/crmsh-2.3.2/doc/crm.8.xml"
returned non-zero exit status 6
| make: *** [Makefile:848: doc/crm.8] Error 1

By default, xsltproc tries to fetch DTDs from network. If the nework is
in poor condition, the incomplete download may cause a dtd parsing
error. Pass "--nonet" and "--novalid" options to xsltproc to disable the
network access and skip loading the document´s DTD.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
index 6e1a291..f465c82 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh/tweaks_for_build.patch
@@ -17,7 +17,7 @@ index d89affb..0f2361f 100644
  
  %.8: %.8.adoc
 -	a2x -f manpage $<
-+	a2x --xsltproc-opts=--catalogs -L -f manpage $<
++	a2x --xsltproc-opts=--catalogs --xsltproc-opts=--nonet --xsltproc-opts=--novalid -L -f manpage $<
  
  # Shared data files
  install-data-hook:
-- 
2.7.4


