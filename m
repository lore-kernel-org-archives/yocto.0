Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87546E0113D; Thu,  1 Oct 2015 11:17:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F94AE0114D
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:17:43 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so1284173wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=r+DJrllz0E3wSqbUyFDmqdp9WsUvdEqcLYVHBlVOsZs=;
	b=ALlv3bXOlTHbCDs8KsJNd5iZoIOma+F1x4NukxTtwpMMQO/phfnDrX0Iw7ZVoUXEaA
	ZHaSNCfX969P4RzXP/8mC7A/B4csLC+yHHu8zT0No03Oh/LnvqCrgOOAlJoJPkqLJRak
	HpuzPWekTgUD7TWns/QBQ8Ip8cXoCkj/QR0iWW1X4Zqv3/ag0W9h0tpBe3J9wMiJPjKm
	GXIEFkBz4FFSOtALkJgobP84xbKOuyb7iWWzpWqKTOBr3ORrWOyxZcIR39Cb18Ba5kk8
	IewS4D6FPyyLuM9Zvm3/X82dGsTyWOYaT05OrFTBNKsKyTAAsH7s7RSvsprtpL8ak9Ic
	VQzA==
X-Received: by 10.180.39.175 with SMTP id q15mr163417wik.73.1443723462587;
	Thu, 01 Oct 2015 11:17:42 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	go2sm4374751wib.20.2015.10.01.11.17.41 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:17:42 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <7627EAA2-D763-42EE-8E77-12AB049B6AA9@gmail.com>
Date: Thu, 1 Oct 2015 20:17:41 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 4/7][meta-openembedded] Fix broken proxy_pass feature for nginx
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
X-List-Received-Date: Thu, 01 Oct 2015 18:17:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Accoriding to https://trac.nginx.org/nginx/ticket/748 or
https://github.com/archlinuxarm/PKGBUILDs/issues/1161, respectively,
proxy_pass is broken on some architectures without position independent
code

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb =
b/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
index 0dfdb5b..27e4749 100644
--- a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
+++ b/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
@@ -24,6 +24,9 @@ SRC_URI[sha256sum] =3D =
"7c989a58e5408c9593da0bebcd0e4ffc3d892d1316ba5042ddb0be5b0b
=20
 inherit update-rc.d useradd
=20
+CFLAGS_append =3D " -fPIE -pie"
+CXXFLAGS_append =3D " -fPIE -pie"
+
 do_configure () {
 	if [ "${SITEINFO_BITS}" =3D "64" ]; then
 		PTRSIZE=3D8
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


