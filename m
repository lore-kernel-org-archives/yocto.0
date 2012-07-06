Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 124D9E01451
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 05:52:45 -0700 (PDT)
Received: from SESTOEX05.enea.se ([fe80::41cb:8d2e:2e90:a183]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.02.0298.004; Fri, 6 Jul 2012 14:52:44 +0200
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "raj.khem@gmail.com"
	<raj.khem@gmail.com>, =?iso-8859-1?Q?David_Nystr=F6m?=
	<David.Nystrom@enea.com>
Thread-Topic: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf:	Let
	linux-qoriq-sdk-headers-nativesdk	provide	linux-libc-headers-nativesdk
Thread-Index: AQHNW2UDpVdjo/zLOU6+G1JhVxjYL5ccNa3A
Date: Fri, 6 Jul 2012 12:52:43 +0000
Message-ID: <88701C38B5D07249817D428430999C910EAC773F@sestoex05.enea.se>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>,
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>,
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
In-Reply-To: <88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf:	Let	linux-qoriq-sdk-headers-nativesdk	provide	linux-libc-headers-nativesdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 12:52:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

typo refusing =3D reusing.


-----Original Message-----
From: David Nystr=F6m [David.Nystrom@enea.com]
Received: Friday, 06 Jul 2012, 12:49
To: yocto@yoctoproject.org [yocto@yoctoproject.org]; raj.khem@gmail.com [ra=
j.khem@gmail.com]
Subject: Re: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf:        Let     lin=
ux-qoriq-sdk-headers-nativesdk       provide linux-libc-headers-nativesdk



So that about a disto refusing this and possibly other BSP layers ?
Should the disto.conf  select of nativesdk be made machine specific on all =
machines in meta-fsl-ppc ? And one added target after a meta-fsl-ppc rebase=
 would break stuff, I guess.


Br
David

Sent from Android


-----Original Message-----
From: Khem Raj [raj.khem@gmail.com]
Received: Friday, 06 Jul 2012, 6:52
To: yocto@yoctoproject.org [yocto@yoctoproject.org]
Subject: [yocto] [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let        linux-qoriq=
-sdk-headers-nativesdk provide       linux-libc-headers-nativesdk



If not set by user then let distro policy be to use
linux-qoriq-sdk-headers-nativesdk for linux-libc-headers-nativesdk

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/distro/fsl.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
index 6d4dc34..8bfb272 100644
--- a/conf/distro/fsl.conf
+++ b/conf/distro/fsl.conf
@@ -83,6 +83,7 @@ IMAGE_CLASSES =3D "image_types_uboot"

 PREFERRED_VERSION_u-boot-mkimage-native_powerpc =3D "2011.06"
 PREFERRED_PROVIDER_virtual/libx11 =3D "libx11"
+PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?=3D "linux-qoriq-sdk-head=
ers-nativesdk"

 SYSVINIT_ENABLED_GETTYS =3D ""
 USE_VT =3D ""
--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

