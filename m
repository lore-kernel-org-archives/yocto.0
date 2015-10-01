Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4ECCE0105C; Thu,  1 Oct 2015 11:17:08 -0700 (PDT)
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
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9915FE00C42
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:17:00 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so2714763wic.0
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=dAVJXUPMuBpc1ngiqcS6jR67hLKq+/Huk8hsHyBqRJE=;
	b=0SGPeDHyaG7zf3iJRf8wKU9U69L7D4/3CcVivUKEH8sYHiij0HcGAtDRWkDeTfrxMu
	YlWRgSRXHdmPTMqr3117KcSTRK3svrdtA8idhcRPytZUrNjl7mjS1k3Rv4YoUkZu0rLD
	9aI6lbuQCwB/RbFbYqYtokSw4lLN2VY2+utznO1eqwgfVtzUQezav2emfsSJz/Xxop8D
	ghn5ygIyDwbJLGSzpDKJA9w12o2Zf9mdOcWog9XHkr1oRfSlSvgE8cORNxsil7o3CO3L
	t56ppqt8V03tFb6BBVxHpqigaydDgACVJvqmXtXv/VCoaPixMTGQJC8oD0MU0wic8GPx
	dMtA==
X-Received: by 10.194.185.236 with SMTP id ff12mr11386407wjc.49.1443723419728; 
	Thu, 01 Oct 2015 11:16:59 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	go2sm4374751wib.20.2015.10.01.11.16.59 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:16:59 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <5C4757EC-5E3A-4696-8C63-D86F55617914@gmail.com>
Date: Thu, 1 Oct 2015 20:16:58 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 3/7][meta-openembedded] adding the capability of native-builds to get rrdtool-oo in meta-cpan running
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
X-List-Received-Date: Thu, 01 Oct 2015 18:17:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb =
b/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
index 91a30cf..aba342b 100644
--- a/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
+++ b/meta-oe/recipes-extended/rrdtool/rrdtool_1.5.4.bb
@@ -17,6 +17,8 @@ S =3D "${WORKDIR}/git"
=20
 inherit autotools-brokensep gettext pythonnative perlnative python-dir =
cpan-base
=20
+BBCLASSEXTEND =3D "native"
+
 EXTRA_AUTORECONF =3D "-I m4"
=20
 PACKAGECONFIG ??=3D "python perl"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


