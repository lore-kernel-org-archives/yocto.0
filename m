Return-Path: <s.mueller-klieser@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F2AE00A39; Thu, 24 Aug 2017 06:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 437 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Aug 2017 06:00:03 PDT
Received: from root.phytec.de (mail.x-arc.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C2CCE00726
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 06:00:03 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 95A9BA00341
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 14:54:14 +0200 (CEST)
Received: from lws-mklieser.phytec.de ([172.16.26.141])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
	with ESMTP id 2017082414524455-68696 ;
	Thu, 24 Aug 2017 14:52:44 +0200 
From: =?UTF-8?q?Stefan=20M=C3=BCller-Klieser?= <s.mueller-klieser@phytec.de>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 14:52:40 +0200
Message-Id: <1503579160-19991-1-git-send-email-s.mueller-klieser@phytec.de>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
	17, 2016) at 24.08.2017 14:52:44,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17,
	2016) at 24.08.2017 14:52:44
X-TNEFEvaluated: 1
Subject: [meta-yocto-bsp][PATCH] machine: mpc8315e-rdb: change kernel provider assignment to default
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
X-List-Received-Date: Thu, 24 Aug 2017 13:00:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

To be able to configure the kernel provider at other locations, we need
a default assignment here.

Signed-off-by: Stefan M=C3=BCller-Klieser <s.mueller-klieser@phytec.de>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp=
/conf/machine/mpc8315e-rdb.conf
index ce5015256a23..b6cb49b58358 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -15,7 +15,7 @@ SERIAL=5FCONSOLE =3D "115200 ttyS0"
 MACHINE=5FFEATURES =3D "keyboard pci ext2 ext3 serial"
=20
 PREFERRED=5FVERSION=5Flinux-yocto ?=3D "4.10%"
-PREFERRED=5FPROVIDER=5Fvirtual/kernel =3D "linux-yocto"
+PREFERRED=5FPROVIDER=5Fvirtual/kernel ?=3D "linux-yocto"
=20
 PREFERRED=5FPROVIDER=5Fvirtual/xserver ?=3D "xserver-xorg"
 XSERVER ?=3D "xserver-xorg \
--=20
1.9.1


