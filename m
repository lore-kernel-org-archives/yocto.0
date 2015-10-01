Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE977E0112C; Thu,  1 Oct 2015 11:23:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80EFE01059
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:22:36 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so2917586wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=7dmWXS0LbeF5k3WH+UB4D1AebF0IhiJeu1oWpNbTduM=;
	b=Skr+4G3cWjkEKXxVVIcahcDQsXodyAivtYBsFcifXU+xO9UrwppvlJjyRLvPnWOq9e
	li2po0+yeblyFBEx9+RyAr6Y0OZYTcRPkEkAXUQVfRmJ0NEOLMayOP3J/wFlIOO28YZ9
	hI53qxB++XvqsC1rFXZdV8QZJBfIEsxRtNI/rTH1ZIKX8ChiE2HFHqu6wu+e0o/l6JfH
	FF+WosajqCfszpB54FfsOrtwysPzDVK5RmraYgkZf3cgtpbTZEK/S0zDAOs5q443GLDz
	0NCRGEQtsxW0df6VxbSSmz6C36ASR8erbJY/BY9F6Y3bAsaWIr0FCdzrTvb+/rINBMB0
	CaIQ==
X-Received: by 10.194.79.196 with SMTP id l4mr13133778wjx.93.1443723756189;
	Thu, 01 Oct 2015 11:22:36 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id d8sm5289727wiy.1.2015.10.01.11.22.35
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:22:35 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <4956BA85-5865-4C81-94F7-9D48C27DD1AC@gmail.com>
Date: Thu, 1 Oct 2015 20:22:34 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 2/7][meta-java] Fix rebuild with uncleaned workdir breaks accidently
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
X-List-Received-Date: Thu, 01 Oct 2015 18:23:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 recipes-core/cacao/cacao-initial-native_0.98.bb | 2 +-
 recipes-core/classpath/classpath.inc            | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-core/cacao/cacao-initial-native_0.98.bb =
b/recipes-core/cacao/cacao-initial-native_0.98.bb
index 72c6246..fed9c49 100644
--- a/recipes-core/cacao/cacao-initial-native_0.98.bb
+++ b/recipes-core/cacao/cacao-initial-native_0.98.bb
@@ -35,7 +35,7 @@ export JAR=3D"fastjar"
=20
 do_configure_append() {
   # Fix the executable name in the wrapper script.
-  sed -i -e "s|exec cacao|exec cacao-initial|" src/scripts/java.in
+  sed -i -e 's|exec cacao \$|exec cacao-initial \$|' =
src/scripts/java.in
 }
=20
 SRC_URI[md5sum] =3D "8b8907c8b925761c9410bcadb9705346"
diff --git a/recipes-core/classpath/classpath.inc =
b/recipes-core/classpath/classpath.inc
index 1bdfd78..6b3f158 100644
--- a/recipes-core/classpath/classpath.inc
+++ b/recipes-core/classpath/classpath.inc
@@ -55,7 +55,6 @@ EXTRA_OECONF +=3D "\
 do_configure_prepend () {
   cp ${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${S}
 }
-=09
=20
 do_install() {
 	autotools_do_install
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


