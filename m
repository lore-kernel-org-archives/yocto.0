Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEF5DE00D7A; Tue, 13 Oct 2015 13:34:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17294E00CE5
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:33:13 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so204534747wic.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=7FVU3gNHw2TXaSduCVSYJ4WB3T/f6VTFpNMmmQP4jsQ=;
	b=Bc91uD02f0Jh4f4kyCsue2H96L4+29LwcDfdLquZdgX7oiZvYRIhqtHWJdaQo1gy3A
	DvF4dlv61zqX1hNs8PLAAqncxhIxfTBookENJ/QCHxQDen3EGPGG9MJpwCSx+enxjgKu
	AJa0rzX08hwnr+pGNLqBVHchhX6jVk6z3YnTE7oDTw7cPyWxIcw1yOjIkjN4JDonH4O5
	vmmDtcwdl9Lt4sp12BS48lMEN1uGAhYYQ48GhKMAuwjUkqmxiTYEjAlC86I/R3XZIPMK
	HlO8bjZKBMpIB1P5I6HQ1cW/29jSZOP4VllyxZw+MqfsL2kuI8Bl5Hf0Rug8QeSCmOSw
	5iFQ==
X-Received: by 10.180.23.67 with SMTP id k3mr23348543wif.78.1444768392875;
	Tue, 13 Oct 2015 13:33:12 -0700 (PDT)
Received: from [172.22.60.125] (ip-109-91-252-249.hsi12.unitymediagroup.de.
	[109.91.252.249]) by smtp.gmail.com with ESMTPSA id
	ds10sm8930645wib.24.2015.10.13.13.33.12 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 13 Oct 2015 13:33:12 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <4CD2AE7E-5473-4562-B2C4-A2DDAABF61F5@gmail.com>
Date: Tue, 13 Oct 2015 22:33:11 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 6/6][meta-networking] nftables: update nftables userland tools from 0.4 to 0.5
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
X-List-Received-Date: Tue, 13 Oct 2015 20:34:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Update nftables tools from 0.4 to 0.5, for ChangeLog see
http://git.netfilter.org/nftables/log/

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 .../recipes-filter/nftables/{nftables_0.4.bb =3D> nftables_0.5.bb}      =
| 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-networking/recipes-filter/nftables/{nftables_0.4.bb =3D> =
nftables_0.5.bb} (74%)

diff --git a/meta-networking/recipes-filter/nftables/nftables_0.4.bb =
b/meta-networking/recipes-filter/nftables/nftables_0.5.bb
similarity index 74%
rename from meta-networking/recipes-filter/nftables/nftables_0.4.bb
rename to meta-networking/recipes-filter/nftables/nftables_0.5.bb
index 741b330..11b5e5a 100644
--- a/meta-networking/recipes-filter/nftables/nftables_0.4.bb
+++ b/meta-networking/recipes-filter/nftables/nftables_0.5.bb
@@ -11,7 +11,7 @@ SRC_URI =3D =
"http://www.netfilter.org/projects/nftables/files/${BP}.tar.bz2 \
            file://fix-to-generate-ntf.8.patch \
           "
=20
-SRC_URI[md5sum] =3D "09b686c489ff10db670ca60dbed7ff43"
-SRC_URI[sha256sum] =3D =
"f6ca69b75c68915f9f3a3972274ec68354dfbbcfc0b9fc55c813a0525c351d3c"
+SRC_URI[md5sum] =3D "94bfe1c54bcb9f6ed974835f2fca8069"
+SRC_URI[sha256sum] =3D =
"1fb6dff333d8a4fc347cbbe273bf905a2634b27a8c39df0d3a45d5a3fde10ad6"
=20
 inherit autotools pkgconfig
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


