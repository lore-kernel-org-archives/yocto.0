Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4655.1583884653822737508
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 16:57:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A4A5E0181A; Tue, 10 Mar 2020 16:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.203 listed in list.dnswl.org]
Received: from outbound-ip21a.ess.barracuda.com (outbound-ip21a.ess.barracuda.com [209.222.82.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 739C4E01818
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 16:57:32 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx7.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO); Tue, 10 Mar 2020 23:57:31 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Tue, 10
 Mar 2020 16:57:30 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Tue, 10 Mar 2020 16:57:30 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Getting kernel patch to work
Thread-Topic: Getting kernel patch to work
Thread-Index: AdX3NRByz9FZgcwoQi+wPDGVBY4Cfw==
Date: Tue, 10 Mar 2020 23:57:30 +0000
Message-ID: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.155]
MIME-Version: 1.0
X-BESS-ID: 1583884649-893012-12246-2293-4
X-BESS-VER: 2019.1_20200310.2211
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222830 [from 
	cloudscan12-136.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm using a boot2qt version of a warrior Yocto build for a raspberry pi4.

I'm trying to apply a patch to a driver in the linux kernel. I'm following =
the procedures laid out in the=20
book "Embedded Linux Systems with the Yocto Project".

I already have a kernel .bbappend file that I'm using to modify the kernel =
config and that is working correctly.

I started with a patch file that I found on the internet that addressed the=
 problem that I have and I added=20
support for it to my .bbappend file. I know that it has been found correctl=
y because I initially specified the=20
file path incorrectly and received an error.

After building my image I go to look at the STAGING_KERNEL_DIR and I do not=
 see my changes applied to the=20
file. I even added an error to the patch to see if it was compiling and it =
didn't trigger the error.


At this point I went back fully to "Embedded Linux Systems with the Yocto P=
roject" and created my own=20
patch. I still don't see it being applied.

Can somebody please tell me where I should see the patch applied?

Here is how I modified my .bbappend:


# additions to Kernel configuration

SRC_URi +=3D "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend-GWL.pa=
tch"

do_configure_append() {
.
.
.
}


And here is the patch:


From d95e6ead8d25165014f8746082656da6345889b0 Mon Sep 17 00:00:00 2001
From: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Date: Tue, 10 Mar 2020 16:29:08 -0700
Subject: [PATCH 1/1] drm-vc4-Keep-the-binner-BO-through-suspend-GWL

---
=A0drivers/gpu/drm/vc4/vc4_v3d.c | 7 -------
=A01 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_v3d.c b/drivers/gpu/drm/vc4/vc4_v3d.c
index e47e29426078..ff7812066668 100644
--- a/drivers/gpu/drm/vc4/vc4_v3d.c
+++ b/drivers/gpu/drm/vc4/vc4_v3d.c
@@ -303,9 +303,6 @@ static int vc4_v3d_runtime_suspend(struct device *dev)
=A0
=A0=A0=A0 =A0vc4_irq_uninstall(vc4->dev);
=A0
-=A0=A0 =A0drm_gem_object_put_unlocked(&vc4->bin_bo->base.base);
-=A0=A0 =A0vc4->bin_bo =3D NULL;
-
=A0=A0=A0 =A0clk_disable_unprepare(v3d->clk);
=A0
=A0=A0=A0 =A0return 0;
@@ -317,10 +314,6 @@ static int vc4_v3d_runtime_resume(struct device *dev)
=A0=A0=A0 =A0struct vc4_dev *vc4 =3D v3d->vc4;
=A0=A0=A0 =A0int ret;
=A0
-=A0=A0 =A0ret =3D vc4_allocate_bin_bo(vc4->dev);
-=A0=A0 =A0if (ret)
-=A0=A0 =A0=A0=A0 =A0return ret;
-
=A0=A0=A0 =A0ret =3D clk_prepare_enable(v3d->clk);
=A0=A0=A0 =A0if (ret !=3D 0)
=A0=A0=A0 =A0=A0=A0 =A0return ret;
--=20
2.17.1


Thanks in advance,
Greg Wilson-Lindberg
