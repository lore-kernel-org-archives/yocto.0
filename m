Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6E3E00B7A; Tue,  6 May 2014 04:25:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B05E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 04:25:08 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id r10so5465603pdi.9
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 04:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=RTpYchFTEIxVbRqADsOoPxztOXGQEe3/ra9v/Xw2zoM=;
	b=qK6bfePrwoyCOQIeNU0uzumAr8Ws3CoUA6fi4E/5IpxwPVFgvMTenwNxWiE79HLrLa
	qyk51hGi8SiiZ++31l9aCcXR8qoBTJzlS5WsOxnVxTrxpzfuc+WDl2+AKR2WDNWQTYlO
	C2iNAeBUZdk7FDIEP4/bXBk3xSJPFXyoXS4W4/Zg7F6PxfZuZWoXOLrsRYlu8qVpsfPq
	MyVdMlW1fczO0zZgqNmzi1Nnt7efkbwxUNv7sUR1wnE9wOtvi4KnqQbG18w35qxTDQlh
	acBYTbvjME7LD9zTeRbPfjKeIPmMKTfbCl/3sY74WF6kuqMMQcTMc54BgJEbVLdyuuzk
	Hx3g==
X-Received: by 10.66.249.233 with SMTP id yx9mr5293573pac.3.1399375508030;
	Tue, 06 May 2014 04:25:08 -0700 (PDT)
Received: from localhost.localdomain
	(d122-111-84-3.meb803.vic.optusnet.com.au. [122.111.84.3])
	by mx.google.com with ESMTPSA id xr9sm95226365pab.5.2014.05.06.04.25.05
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 06 May 2014 04:25:07 -0700 (PDT)
From: Nick D'Ademo <nickdademo@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  6 May 2014 21:24:40 +1000
Message-Id: <1399375480-20211-1-git-send-email-nickdademo@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build. Signed-off-by: Nick D'Ademo <nickdademo@gmail.com>
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
X-List-Received-Date: Tue, 06 May 2014 11:25:13 -0000

---
 recipes-security/nmap/nmap_6.25.bb |    5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/nmap_6.25.bb
index aff5c63..0c70fd3 100644
--- a/recipes-security/nmap/nmap_6.25.bb
+++ b/recipes-security/nmap/nmap_6.25.bb
@@ -11,7 +11,7 @@ SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
 SRC_URI[sha256sum] = "3349cc6d36b86b95ca2b8075d16615a3a598cef494920d6652f9a8bf9f7660b5"
 
-inherit autotools
+inherit autotools-brokensep
 
 DEPENDS = "libpcap"
 
@@ -20,5 +20,4 @@ EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pc
 do_configure() {
     autoconf
     oe_runconf
-}
-
+}
\ No newline at end of file
-- 
1.7.9.5


