Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6181E0054C; Tue, 22 Jul 2014 00:22:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD816E00524
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 00:22:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Jul 2014 00:22:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,708,1400050800"; d="scan'208";a="573473432"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jul 2014 00:18:24 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 22 Jul 2014 00:18:23 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.157]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.189]) with mapi id
	14.03.0123.003; Tue, 22 Jul 2014 00:18:24 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: Ref Manual should use newer
	"packagegroup-* names.
Thread-Index: AQHPnFTkUoufuUWzW0STV72Gv1b/GJurwTyg
Date: Tue, 22 Jul 2014 07:18:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FBB60B@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407101134340.11203@localhost>
In-Reply-To: <alpine.LFD.2.11.1407101134340.11203@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Ref Manual should use newer "packagegroup-* names.
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
X-List-Received-Date: Tue, 22 Jul 2014 07:22:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied.

Thanks,
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Thursday, July 10, 2014 8:36 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: Ref Manual should use newer
>"packagegroup-* names.
>
>
>Replace a couple old references to "task-*" packagegroup names with newer
>form.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-
>manual/usingpoky.xml
>index 164e82e..e1db9d8 100644
>--- a/documentation/ref-manual/usingpoky.xml
>+++ b/documentation/ref-manual/usingpoky.xml
>@@ -721,7 +721,7 @@
>      IMAGE_FEATURES =3D debug-tweaks x11-base apps-x11-core \
>         package-management ssh-server-dropbear package-management
>      IMAGE_LINGUAS =3D en-us en-gb
>-     IMAGE_INSTALL =3D task-core-boot task-base-extended
>+     IMAGE_INSTALL =3D packagegroup-core-boot packagegroup-base-
>extended
>      BAD_RECOMMENDATIONS =3D
>      ROOTFS_POSTPROCESS_COMMAND =3D buildhistory_get_image_installed ;
>rootfs_update_timestamp ;
>      IMAGE_POSTPROCESS_COMMAND =3D buildhistory_get_imageinfo ;
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

