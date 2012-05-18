Return-Path: <mihaix.lindner@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DA3E013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 09:43:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 18 May 2012 09:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101684475"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by AZSMGA002.ch.intel.com with ESMTP; 18 May 2012 09:43:31 -0700
Received: from irsmsx104.ger.corp.intel.com (163.33.3.159) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 18 May 2012 17:43:30 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.198]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.11]) with mapi id
	14.01.0355.002; Fri, 18 May 2012 17:43:30 +0100
From: "Lindner, MihaiX" <mihaix.lindner@intel.com>
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] xf86-video-intel version bump 2.18 to 2.19
Thread-Index: Ac008N2ASxnXmWAwQTqhQjrkgJRSiAABf8GAAAeJHuA=
Date: Fri, 18 May 2012 16:43:29 +0000
Message-ID: <21729860C46EDA4997743088436268251937493A@IRSMSX102.ger.corp.intel.com>
References: <21729860C46EDA49977430884362682519374706@IRSMSX102.ger.corp.intel.com>
	<4FB65719.6020108@linux.intel.com>
In-Reply-To: <4FB65719.6020108@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [PATCH] xf86-video-intel version bump 2.18 to 2.19
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
X-List-Received-Date: Fri, 18 May 2012 16:43:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, it's from format-patch.
Okay.

--
Mihai Lindner


-----Original Message-----
From: Saul Wold [mailto:sgw@linux.intel.com]=20
Sent: Friday, May 18, 2012 5:05 PM
To: Lindner, MihaiX
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH] xf86-video-intel version bump 2.18 to 2.19

On 05/18/2012 03:29 PM, Lindner, MihaiX wrote:
>> From 10f08b73afb0c60b81b29f626cd38c171eb0c427 Mon Sep 17 00:00:00 2001
> From: mihai lindner<mihaix.lindner@intel.com>
>
Is this patch from format-patch?

Also, this should be posted to the=20
openembedded-core@lists.openembedded.org mailing list


> ---
>   .../{xf86-video-intel_2.18.0.bb =3D>  xf86-video-intel_2.19.0.bb}   |  =
  6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>   rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.18.0.bb =
=3D>  xf86-video-intel_2.19.0.bb} (82%)
>
> diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb=
 b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> similarity index 82%
> rename from meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb
> rename to meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> index 637e11c..e9e43ff 100644
> --- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb
> +++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> @@ -9,7 +9,7 @@ Infrastructure (DRI)."
>
>   LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8730ad58d11c7bbad9a7066d69f7=
808e"
>
> -PR =3D "${INC_PR}.0"
> +PR =3D "${INC_PR}.1"
>
You do not have to bump PR for a upgrade, infact, is should either=20
remain at 0 or be reset to 0 (or .0) as appropriate.

>   DEPENDS +=3D "virtual/libx11 libxvmc drm xf86driproto glproto \
>              virtual/libgl xineramaproto xf86driproto libpciaccess"
> @@ -22,5 +22,5 @@ EXTRA_OECONF +=3D '${@base_conditional( "ROOTLESS_X", "=
1", " --enable-kms-only", "
>
>   COMPATIBLE_HOST =3D '(i.86|x86_64).*-linux'
>
> -SRC_URI[md5sum] =3D "34f3987ffe86e30c57abc33b7f8030e9"
> -SRC_URI[sha256sum] =3D "dce63e33ccfada39ef1e1e6768dfd8edd4c525670dfe56d1=
c42b2f9570039ffc"
> +SRC_URI[md5sum] =3D "f397bddfc88d4c9b30b56526c1e02e8e"
> +SRC_URI[sha256sum] =3D "32133d61b14ce3b45b83a60e4ed8eb75159259d708f05614=
4250aaeabf16e4bc"
> --
> 1.7.10
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

