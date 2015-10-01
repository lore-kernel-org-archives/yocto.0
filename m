Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9F46E0108D; Thu,  1 Oct 2015 11:25:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EF43E00D83
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:25:41 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so1540287wic.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Z9F/krf7PHZxjm1ZTltHb4Ju6sYBuNyDb9clL/xndXo=;
	b=R9NIgBgstoTJu7HrU+sGhAKbqVD4faWxvNKSbzVMQnvgkgsLICTNbEfNNUsG84awot
	m0aVwtOULHZnOSjVVDAcupspfRIE2r3rhdztrVN3myNl1jNulRb/7XqyT2g51TJyEcmv
	u3HWWbK0aMv2oLcdFRAHP7mjDd/WGyk319SOBzkVJE/ZJwHVTPAQa88O2YcRkg8V3Gnd
	J4BRTvW43Q2OiD7y+yU/GwHBAiIZRpAydIkq7+UmvTVTNs/peGVTUYGK5H9wMdgG9IS8
	JNp9dc8n/gFQgcFj/qnl7tK/8z+y5NMT0gMAqJf9MU1ljIaKaARwe4aDkq93K6MmAoQr
	klfw==
X-Received: by 10.194.5.135 with SMTP id s7mr14029978wjs.153.1443723940473;
	Thu, 01 Oct 2015 11:25:40 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	ht5sm4449049wib.10.2015.10.01.11.25.39 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:25:40 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <17C5A123-83D5-40EC-BE59-9F123B4E9199@gmail.com>
Date: Thu, 1 Oct 2015 20:25:39 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 6/7][meta-java] Avoid extra-noise because of self-satisfying dependency
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
X-List-Received-Date: Thu, 01 Oct 2015 18:25:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


I realized one small issue last days: the dependency of openjdk-*-demos =
on java2-vm, which is
provided by the current recipe (eg. openjdk-7) causes bitbake scan for =
alternatives (eg. java2-vm
provided by openjdk-6) without any need.

I would recommend to remove such a generic dependency:
* openjdk-6-demos require openjdk-6-jre, period.
* openjdk-7-demos require openjdk-7-jre, period.
* openjdk-8-demos require openjdk-8-jre, period.

There is no sense in satisfying openjdk-8-demos with openjdk-6-jre (even =
if it might be possible).

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 recipes-core/openjdk/openjdk-6-common.inc | 2 +-
 recipes-core/openjdk/openjdk-7-common.inc | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-6-common.inc =
b/recipes-core/openjdk/openjdk-6-common.inc
index 7ad7097..cf192d0 100644
--- a/recipes-core/openjdk/openjdk-6-common.inc
+++ b/recipes-core/openjdk/openjdk-6-common.inc
@@ -303,7 +303,7 @@ FILES_${JDKPN}-dbg =3D "\
        "
=20
 FILES_${JDKPN}-demo =3D "${JDK_HOME}/demo ${JDK_HOME}/sample"
-RDEPENDS_${JDKPN}-demo =3D "java2-runtime"
+RDEPENDS_${JDKPN}-demo =3D "${JDKPN}-jre"
 FILES_${JDKPN}-demo-dbg =3D "\
 	${JDK_HOME}/demo/jvmti/gctest/lib/.debug \
 	${JDK_HOME}/demo/jvmti/heapTracker/lib/.debug \
diff --git a/recipes-core/openjdk/openjdk-7-common.inc =
b/recipes-core/openjdk/openjdk-7-common.inc
index 13f3460..74b93d9 100644
--- a/recipes-core/openjdk/openjdk-7-common.inc
+++ b/recipes-core/openjdk/openjdk-7-common.inc
@@ -248,7 +248,7 @@ FILES_${JDKPN}-dbg =3D "\
        "
=20
 FILES_${JDKPN}-demo =3D "${JDK_HOME}/demo ${JDK_HOME}/sample"
-RDEPENDS_${JDKPN}-demo =3D "java2-runtime"
+RDEPENDS_${JDKPN}-demo =3D "${JDKPN}-jre"
 FILES_${JDKPN}-demo-dbg =3D "\
 	${JDK_HOME}/demo/jvmti/gctest/lib/.debug \
 	${JDK_HOME}/demo/jvmti/heapTracker/lib/.debug \
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


