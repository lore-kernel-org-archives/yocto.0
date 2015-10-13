Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8657BE00DC2; Tue, 13 Oct 2015 13:32:55 -0700 (PDT)
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
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F01FE00CD1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:32:19 -0700 (PDT)
Received: by wijq8 with SMTP id q8so49875218wij.0
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Es0aNcOLaF3KZ4rf3xwkjuNaQ2usPRBYzQIrcKeikGQ=;
	b=wADtHHdK9kRLSLBVOUOHhXteKmEmRvjK/edWqfOqS4Yy+7+IXMJPMxsWLM4KtvE2du
	etpBKyH4fn326QOwhQqqwzhBHZO5JhGLNVHI/mLSZo81iGvTP88PhVfojjk2WXB/cB0H
	jqrk5lEVnVwwGhP0x99armF4n3H1uI5EsH4hJK+/gZ1K4JtYIsfHSC7a561qVoWJr1zF
	7NN2iI7dYdIHuNWQxjOhcDM3u1W+xLreUztkee1jnBZmjFVKHi/Lsthy2FMgeZYe9bFM
	+yAkh37FSEv1j7kUSM9FLc7uKCLL9jPbCWcPab5g+3wMUuGVB2VyZ7Vt0sp7eNeSLWV1
	BNug==
X-Received: by 10.180.102.195 with SMTP id fq3mr23678898wib.7.1444768338370;
	Tue, 13 Oct 2015 13:32:18 -0700 (PDT)
Received: from [172.22.60.125] (ip-109-91-252-249.hsi12.unitymediagroup.de.
	[109.91.252.249]) by smtp.gmail.com with ESMTPSA id
	ds10sm8930645wib.24.2015.10.13.13.32.17 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 13 Oct 2015 13:32:17 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <26B516A6-456E-4E66-8DD9-384666210453@gmail.com>
Date: Tue, 13 Oct 2015 22:32:17 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 5/6][meta-networking] libnftnl: update from 1.0.3 to 1.0.5
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
X-List-Received-Date: Tue, 13 Oct 2015 20:32:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Update libnftnl from 1.0.3 to 1.0.5 (for Changelog see
http://git.netfilter.org/libnftnl/log/)

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 .../recipes-filter/libnftnl/{libnftnl_1.0.3.bb =3D> libnftnl_1.0.5.bb}  =
| 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-networking/recipes-filter/libnftnl/{libnftnl_1.0.3.bb =3D> =
libnftnl_1.0.5.bb} (70%)

diff --git a/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb =
b/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb
similarity index 70%
rename from meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb
rename to meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb
index 112af08..6171151 100644
--- a/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.3.bb
+++ b/meta-networking/recipes-filter/libnftnl/libnftnl_1.0.5.bb
@@ -7,7 +7,7 @@ DEPENDS =3D "libmnl"
 SRC_URI =3D "http://netfilter.org/projects/libnftnl/files/${BP}.tar.bz2 =
 \
           "
=20
-SRC_URI[md5sum] =3D "203701a73cc3c51ca751d7cb2e176250"
-SRC_URI[sha256sum] =3D =
"cf0ae7eab6a6866192a1fbd6b370a8a2cbe2066fe3975ab44939fd50747c27f7"
+SRC_URI[md5sum] =3D "af0c62ce6bbd7a7d39def0996c1c17c9"
+SRC_URI[sha256sum] =3D =
"f6d4f5a702e38bc7987f2363f9fcd65930e8b702595c221a497e2f3a359be497"
=20
 inherit autotools pkgconfig
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


