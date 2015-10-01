Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8D05E01059; Thu,  1 Oct 2015 11:19:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 457C4E00AE6
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:19:15 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so2723973wic.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=2wrpZaBPB5WWMMgB2uYM0QoDFQaqzGL5DHLW3CGozSo=;
	b=E9uD1XmTnBo9fu74D3e+26APp+HxqyHXMhyaE0c8XIs2H5EsJOvV/svJtcS1U2Te6K
	yQVW6K2XFKPYnOhlc0RmOyQ1NlekMvLcB29yYVNGjiv5tbAqpHa7ji+qynixGJy7fgfW
	4AqfM+PccrJ7xGmu0PzJZVNAAdA+OEFbc+KH6nsFJlzanSD3MYDKApj+ThTZ/iIEs1SP
	VItR1rKaxLYTZ7nvzFy349sVkazzC8G6lO6En/ideeO7rv+BQPOthnlO9QE/jj8xrON8
	J3cu1Dfrl7h5sQv+BGh4UlSJuURjMsaqW9qXo1W+O3KsyG2fairmEnwDAFr2mhqE4qtl
	E6AQ==
X-Received: by 10.195.13.138 with SMTP id ey10mr13615668wjd.14.1443723554536; 
	Thu, 01 Oct 2015 11:19:14 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	go2sm4374751wib.20.2015.10.01.11.19.13 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:19:14 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <C819BC25-EA99-4109-BB45-CE1A467B0738@gmail.com>
Date: Thu, 1 Oct 2015 20:19:13 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 6/7][meta-openembedded] Update libnftnl from 1.0.3 to 1.0.5
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
X-List-Received-Date: Thu, 01 Oct 2015 18:19:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb | 13 =
-------------
 meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb | 13 =
+++++++++++++
 2 files changed, 13 insertions(+), 13 deletions(-)
 delete mode 100644 =
meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb
 create mode 100644 =
meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb

diff --git a/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb =
b/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb
deleted file mode 100644
index 112af08..0000000
--- a/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb
+++ /dev/null
@@ -1,13 +0,0 @@
-SUMMARY =3D "Library for low-level interaction with nftables Netlink's =
API over libmnl"
-LICENSE =3D "GPLv2"
-LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D79808397c3355f163c012616125c9e26"
-SECTION =3D "libs"
-DEPENDS =3D "libmnl"
-
-SRC_URI =3D "http://netfilter.org/projects/libnftnl/files/${BP}.tar.bz2 =
 \
-          "
-
-SRC_URI[md5sum] =3D "203701a73cc3c51ca751d7cb2e176250"
-SRC_URI[sha256sum] =3D =
"cf0ae7eab6a6866192a1fbd6b370a8a2cbe2066fe3975ab44939fd50747c27f7"
-
-inherit autotools pkgconfig
diff --git a/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb =
b/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb
new file mode 100644
index 0000000..6171151
--- /dev/null
+++ b/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb
@@ -0,0 +1,13 @@
+SUMMARY =3D "Library for low-level interaction with nftables Netlink's =
API over libmnl"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D79808397c3355f163c012616125c9e26"
+SECTION =3D "libs"
+DEPENDS =3D "libmnl"
+
+SRC_URI =3D "http://netfilter.org/projects/libnftnl/files/${BP}.tar.bz2 =
 \
+          "
+
+SRC_URI[md5sum] =3D "af0c62ce6bbd7a7d39def0996c1c17c9"
+SRC_URI[sha256sum] =3D =
"f6d4f5a702e38bc7987f2363f9fcd65930e8b702595c221a497e2f3a359be497"
+
+inherit autotools pkgconfig
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


