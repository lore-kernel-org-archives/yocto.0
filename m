Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 717994C800A8
	for <yocto@yoctoproject.org>; Thu, 17 Feb 2011 03:02:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Feb 2011 01:02:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="390055607"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 17 Feb 2011 01:02:27 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 17:02:07 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 17 Feb 2011 17:02:06 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Chris Tapp' <opensource@keylevel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 17 Feb 2011 17:02:05 +0800
Thread-Topic: [yocto] Bringing in recipes from OE
Thread-Index: AcvOGey5psru5eGBRjm+Zu7afS9JwQAX/vdg
Message-ID: <1865303E0DED764181A9D882DEF65FB68637101D46@shsmsx502.ccr.corp.intel.com>
References: <46137DFC-371A-4A2B-AFB7-06835208EDA4@keylevel.com>
In-Reply-To: <46137DFC-371A-4A2B-AFB7-06835208EDA4@keylevel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Bringing in recipes from OE
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
X-List-Received-Date: Thu, 17 Feb 2011 09:02:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Chris Tapp wrote:
> I need to include libSDL (and related libs) in to my build, but I
> can't see the recipes in Yocto (other than -nativesdk).
>=20
> Can I just copy the appropriate OE recipes in to Yocto?
In poky we have meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb (lo=
oks it's not acutally used at present?)

I think you can do the following to add libsdl into target image:
1) change the file name to libsdl_1.2.11.bb;
2) add BBCLASSEXTEND =3D "nativesdk" into the file;
3) remove nativesdk from the "inherit" of the file;
4) add libsdl into a proper RDEPENDS, e.g., SDK-EXTRAS.

Thanks,
-- Dexuan=

