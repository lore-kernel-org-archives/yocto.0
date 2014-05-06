Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C383FE00A44; Tue,  6 May 2014 15:25:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nickdademo[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B3F0E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:25:37 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb1so124114pad.37
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 15:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=OPByQ1JWajNenMsUywGcrQT2VEc1xDHMk368LdcAsNA=;
	b=pWlvParUhlpaszNNNDMexMcnw5giEYGPmgsbIdgSRwk2irgV6gzH6P5WJa7kI/cE2k
	xt3qjXI+CS5PWcd+Uf8IYupa5vYPpdxf8a0zujh7xkgfjYqAIWh51Irh2nHLm9JZaBIw
	qOK6Qx+Bb6pbBRRH+4la3+52DlNSKfissDBC4RIXyHNy0W8f2a6oNxPrTF2sLeg0nXWR
	m6zfRmZ81vk66pFzW88fy+h7MvQTNcbXzf5QIKM7a3S21KUiPvsiozgAi/IgugkIxtqL
	JnAtdSo3uXpR0oriKjoXgwcb49FyfDu6d+MSI9ve5JtZCZ5Jx09cVtIWiqWUyK3L2xhA
	kang==
X-Received: by 10.66.149.102 with SMTP id tz6mr11191389pab.76.1399415137564;
	Tue, 06 May 2014 15:25:37 -0700 (PDT)
Received: from localhost.localdomain
	(d122-111-84-3.meb803.vic.optusnet.com.au. [122.111.84.3])
	by mx.google.com with ESMTPSA id
	pb7sm103702747pac.10.2014.05.06.15.25.28 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 06 May 2014 15:25:36 -0700 (PDT)
From: Nick D'Ademo <nickdademo@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  7 May 2014 08:24:37 +1000
Message-Id: <1399415077-16870-1-git-send-email-nickdademo@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-security][PATCH] nmap: inherit autotools-brokensep to allow B=S build.
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
X-List-Received-Date: Tue, 06 May 2014 22:25:38 -0000

Signed-off-by: Nick D'Ademo <nickdademo@gmail.com>
---
 recipes-security/nmap/nmap_6.25.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/nmap_6.25.bb
index aff5c63..5efcc70 100644
--- a/recipes-security/nmap/nmap_6.25.bb
+++ b/recipes-security/nmap/nmap_6.25.bb
@@ -11,7 +11,7 @@ SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
 SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
 SRC_URI[sha256sum] = "3349cc6d36b86b95ca2b8075d16615a3a598cef494920d6652f9a8bf9f7660b5"
 
-inherit autotools
+inherit autotools-brokensep
 
 DEPENDS = "libpcap"
 
-- 
1.7.9.5


