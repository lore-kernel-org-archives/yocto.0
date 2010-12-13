Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 713A14C811AB
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 06:22:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 04:22:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="583182824"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 04:22:10 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 20:22:09 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 20:22:08 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Lock, Joshua" <joshua.lock@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 13 Dec 2010 20:22:06 +0800
Thread-Topic: [yocto] version problems about SDK
Thread-Index: AcuavYtKHLqON9N2Rf6JZmCClVCT+gAAKTQQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5A7A169C@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DC7C0@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5A7A1576@shsmsx502.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950465C55F@orsmsx504.amr.corp.intel.com>
	<1292241663.2485.4.camel@scimitar>
In-Reply-To: <1292241663.2485.4.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: version problems about SDK
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
X-List-Received-Date: Mon, 13 Dec 2010 12:22:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Joshua Lock
>Sent: Monday, December 13, 2010 8:01 PM
>
>On Sun, 2010-12-12 at 23:53 -0800, Zhang, Jessica wrote:
>> Tian, Kevin wrote:
>> >> From: Ke, Liping
>> >> Sent: Monday, December 13, 2010 2:53 PM
>> >>
>> >> Hi, Jessica & Josh
>> >>
>> >> When we are trying to run installer script on lianhao's x86_64
>> >> machine, we found if the images are build in two days, according to
>> >> current version naming convention, some of the packages will be
>> >> installed to /opt/poky/0.9+snapshot-20101210, some will be to
>> >> /opt/poky/0.9+snapshot-20101210.
>> >> It will cause problem since we need to know the exact version number
>> >> before installing and searching some files (environment script file,
>> >> etc). And the same releases of packages belong to different version
>> >> (just the build date is not in the same day) seems very strange and
>> >> hard to handle for us?
>> >>
>> >
>> > I think Josh has laid down the base for multiple version SDK support.
>> > The only problem is:
>> >
>> > SDKPATH =3D "/opt/${DISTRO}/${DISTRO_VERSION}"
>> >
>> > which obviously is not what we want. We need a similar variable like
>> > SDK_VERSION, which is incremented only when SDK team thinks there's a
>> > need for a new version release or
>> > else it keeps same in the life cycle of current version.
>
>I disagree, I think it's definitely useful to know which distribution
>version your SDK is built against. In fact as the SDK components are
>generated from the distro metadata introducing an extra variable seems a
>little superfluous and just increases the number of things which need to
>be changed for a release.

Yes, SDK is generated from the distro metadata, which however doesn't preve=
nt SDK
as a standalone component to have its own version variable. We can have:

SDK_VERSION =3D ${DISTRO_VERSION}

or,=20

SDK_VERSION =3D ${DISTRO_VERSION}${SDK_REVISION}

or,=20

SDK_VERSION =3D ...

I'm just a little bit worried to deduce SDK version from another variable (=
SDKPATH)
implicitly.

I agree that to have distribution version included will be informative, e.g=
 in Android:
	"SDK platform Andriod 2.3, API 9, revision 1"

>
>Also note the DATE element is only included in the DISTRO_VERSION for
>development snapshots.
>

Good to know this info.

Thanks
Kevin

