Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14816E013AE;
	Thu,  5 Sep 2013 11:56:04 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id q4so1176940qcx.26
	for <multiple recipients>; Thu, 05 Sep 2013 11:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=R6wrEysNI8Y9RU4+ywGTa6i4IZnBu/GuEKDf9pyv6jc=;
	b=EMXLuIhNf+k6Rkj4MkFtajd7HUynq9T4H3+wVHXa/IkoKM4abnpkON9gCSQwd2Ahyq
	dEonwyrl5/gYkgw0lpK9M1HMjndbsHaNJSBtCENejK0oSKyRBd2gjBG3GrMRQ7jET2mB
	DCoufE8e7tz+9UECdeAu0DWqTYCWRj/NE1ahr4GVDoRlEGypVphgWgEriDqywASV7zQr
	FkiVsdVgxooaOjAWfPKxW31YO1kXDwUj5kFRURcfsPJhiwAfFX0DDJkK6L81W6fjcHVq
	etfK5CCn+QUq+v/BdOshToFyEPHWFG2dc/p77M8YpNAIBFR5JSYVxZYwNFDYGATZXNNp
	1Vbw==
X-Received: by 10.49.127.116 with SMTP id nf20mr3140445qeb.90.1378407364165;
	Thu, 05 Sep 2013 11:56:04 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-203.hsd1.ma.comcast.net.
	[67.186.188.203])
	by mx.google.com with ESMTPSA id a7sm1431105qew.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 11:56:03 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 05 Sep 2013 14:56:02 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu,  5 Sep 2013 14:55:54 -0400
Message-Id: <acf8d44f706ab9682d294fabe31ca04486e8fe5a.1378407198.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378407198.git.mulhern@yoctoproject.org>
References: <cover.1378407198.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1378407198.git.mulhern@yoctoproject.org>
References: <cover.1378407198.git.mulhern@yoctoproject.org>
Subject: [PATCH 1/1] libcap-ng: omit an unnecessary build time dependency.
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
X-List-Received-Date: Thu, 05 Sep 2013 18:56:05 -0000

[YOCTO #5084]

libcap has been removed from the list of DEPENDS packages. Since libcap was the
only package in the list the DEPENDS variable has been removed from the recipe
file.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb |    1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
index a377ddd..ef70207 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
@@ -1,7 +1,6 @@
 DESCRIPTION = "The libcap-ng library is intended to make programming with posix capabilities much easier than the traditional libcap library."
 HOMEPAGE = "http://people.redhat.com/sgrubb/libcap-ng/index.html"
 LICENSE = "GPL-2.0"
-DEPENDS = "libcap"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/${PN}-${PV}.tar.gz"
-- 
1.7.10.4


