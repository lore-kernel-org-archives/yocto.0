Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 758D4E0095D; Mon,  9 Feb 2015 17:00:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33AFE0093B
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 17:00:52 -0800 (PST)
Received: by pdbnh10 with SMTP id nh10so32559237pdb.12
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 17:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Ftbr2DUFc380h1SfHAqEfWk9Nbl3st6mzGzcUSmH9Ak=;
	b=ZrzcXYzRcxIJZHh7bDi4+x1sWynh2b51erVM+PjbiRF1FbKSz1VkmXN7Tr6c+p4k8l
	GIeiayji3KouNaM0zRjZ2ccv5kL4flnarebUhAifdjcAsTAnUHYhowfOIJfOm4dqomjX
	6Il5Zdm23QDFanceGO5KPO5/DBCNbYx+cqsL9GpCYE1QHaMr1Z9d6cSmLs5YQBYrW9hQ
	JimLJZsxrKnh4Zta9HSztwjM8P0As47fqNVsEI3LssHm5cnWILudsyOHR+5G9MRVBtK9
	iEcR8sgUGmXvoqknRhaWRy9uoWxsb5QDeOZOztAOI/jEoZD0R5dgP6nnTIp3VWbm6meo
	jx9A==
X-Received: by 10.70.1.40 with SMTP id 8mr23980531pdj.7.1423530051988;
	Mon, 09 Feb 2015 17:00:51 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id df7sm7231473pdb.14.2015.02.09.17.00.50
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 09 Feb 2015 17:00:50 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Feb 2015 17:00:39 -0800
Message-Id: <1423530040-20457-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
References: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] libewf: add package
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
X-List-Received-Date: Tue, 10 Feb 2015 01:00:56 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/libewf/libewf_20130416.bb | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 recipes-forensic/libewf/libewf_20130416.bb

diff --git a/recipes-forensic/libewf/libewf_20130416.bb b/recipes-forensic/libewf/libewf_20130416.bb
new file mode 100644
index 0000000..c070b80
--- /dev/null
+++ b/recipes-forensic/libewf/libewf_20130416.bb
@@ -0,0 +1,26 @@
+SUMMARY = "library with support for Expert Witness Compression Format"
+LICENSE = "LGPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=58c39b26c0549f8e1bb4122173f474cd"
+
+DEPENDS = "virtual/gettext libtool"
+
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
+        http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${PV}-3.debian.tar.gz;name=dpatch \
+        "
+SRC_URI[orig.md5sum] = "3791d6de5910a0f6b4427cdf1e6bc663"
+SRC_URI[orig.sha256sum] = "e0f14071665b24a8077a24f4cafbf092ad5ac1859f49994dc4e843e747ba7a89"
+SRC_URI[dpatch.md5sum] = "57fb17b34344f741b52dff3ae11fbbd6"
+SRC_URI[dpatch.sha256sum] = "988ee0a94f01d452cd227ed5c55401e7674dc6fa41da8358a6ad68e67175a5cc"
+
+inherit autotools-brokensep pkgconfig
+
+PACKAGECONFIG ??= "zlib ssl bz2"
+PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib"
+PACKAGECONFIG[bz2] = "--with-bzip2, --without-bzip2, bzip2, bzip2"
+PACKAGECONFIG[ssl] = "--with-openssl, --without-openssl, openssl, openssl"
+PACKAGECONFIG[fuse] = "--with-libfuse, --without-libfuse, fuse"
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
+
+EXTRA_OECONF += "--with-gnu-ld --disable-rpath"
+
+RDEPENDS_${PN} += " util-linux-libuuid"
-- 
1.9.1


