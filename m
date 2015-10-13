Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18493E00E4D; Tue, 13 Oct 2015 13:29:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47BABE00CD1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:29:48 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so204425081wic.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 13:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=bg3gBQsDPvVa5iRhsT+MaKX3Eu226qi1p61jcHENW0o=;
	b=iCklWH2FFTVpyO192K039gtYtytqcb79sfbwdYh32sPw7CUG3w6cdKIb8DA6qCsgvl
	lmvmGHros++QVj1XTZBW5HeDU+8etkyu+Qvr5xtPrie2/o4cSQsudtfrrayHDFiGLweL
	/99rQz3lA8pyuWcpDJWwjn3qbUpAr9Y+ol3mhZqdZ1sqdM0uI/PE2hTmgBU6/buA7S3J
	aCriHabCUoi7E0jTi0kY0tUrKRJUWcY5juiv0ueAW3y6JcetWVIDyZ6Wd3M/rb5DV4VV
	wihvwDWeeAifOdhzF4OUuvfwIJbtx3zU/jeEyXWlygYOAXB/qnvKj3WQOZzPsZyj1qG/
	ovng==
X-Received: by 10.181.13.233 with SMTP id fb9mr13498996wid.36.1444768187668;
	Tue, 13 Oct 2015 13:29:47 -0700 (PDT)
Received: from [172.22.60.125] (ip-109-91-252-249.hsi12.unitymediagroup.de.
	[109.91.252.249]) by smtp.gmail.com with ESMTPSA id
	ry1sm5696836wjb.24.2015.10.13.13.29.46 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 13 Oct 2015 13:29:47 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <A4576A07-A4CD-463E-9330-206823532FB5@gmail.com>
Date: Tue, 13 Oct 2015 22:29:45 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 3/6][meta-webserver] nginx: fix broken proxy_pass feature
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
X-List-Received-Date: Tue, 13 Oct 2015 20:29:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


[NGINX ticket #748 - https://trac.nginx.org/nginx/ticket/748]

Accoriding to #748 or =
https://github.com/archlinuxarm/PKGBUILDs/issues/1161,
respectively, proxy_pass is broken on some architectures without =
position
independent code.

The solution is adding -fPIE -pie as build flags.

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


