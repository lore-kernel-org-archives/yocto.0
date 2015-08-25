Return-Path: <mei.yeen.ng@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AEC0E00BCE; Mon, 24 Aug 2015 19:21:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CD6E009C5
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 19:21:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 24 Aug 2015 19:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,743,1432623600"; d="scan'208";a="547905574"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2015 19:21:47 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.42]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.233]) with mapi id
	14.03.0224.002; Tue, 25 Aug 2015 10:20:10 +0800
From: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>
To: Randy Witt <randy.e.witt@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Packages in packagegroup are not installed in image
Thread-Index: AdC/JTdQ3JBuJ199QBOTZNoIWPVvUAGCRJuABmtOKSA=
Date: Tue, 25 Aug 2015 02:20:09 +0000
Message-ID: <62355CE5B24AE3438DF93AF114E1F91B2DC08180@PGSMSX103.gar.corp.intel.com>
References: <62355CE5B24AE3438DF93AF114E1F91B2DBC9045@KMSMSX153.gar.corp.intel.com>
	<55B12B8B.7060509@linux.intel.com>
In-Reply-To: <55B12B8B.7060509@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>, "Witt,
	Randy E" <randy.e.witt@intel.com>
Subject: Re: Packages in packagegroup are not installed in image
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
X-List-Received-Date: Tue, 25 Aug 2015 02:21:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Randy,

The packagegroups is added into the image as below:

1) Create a bbappend of the image core-image-full-cmdline.bbappend in our n=
ew layer
2) In the core-image-full-cmdline.bbappend, enable the following lines:

	DESCRIPTION =3D "Custom list of packages for build essentials for commandl=
ine image"

	IMAGE_INSTALL +=3D "packagegroup-core-buildessential-extended"
	IMAGE_INSTALL +=3D "packagegroup-core-devtools"

3) Update the local.conf to include EXTRA_IMAGE_FEATURES =3D "debug-tweaks =
tools-testapps tools-debug"

Thanks,
MY

-----Original Message-----
From: Randy Witt [mailto:randy.e.witt@linux.intel.com]=20
Sent: Friday, July 24, 2015 2:00 AM
To: Ng, Mei Yeen; yocto@yoctoproject.org
Cc: Hart, Darren; Witt, Randy E
Subject: Re: [yocto] Packages in packagegroup are not installed in image

Hi Mei,

On 07/15/2015 10:40 AM, Ng, Mei Yeen wrote:
> Hi,
>
> I need help for issue where packages in packagegroup that compiles perfec=
tly fine with core-images, but when verified in the image, they are not ins=
talled for some reason.
> My understanding was that packages listed under RDEPENDS in the packagegr=
oup would get compiled and installed.
>
> Some packages would appear in 1 image and then disappear in the next comp=
iled image.
> I'm seeing this when compiling with core-image-full-cmdline and core-imag=
e-sato.
>
> I have attached the following package group created:
>
> -        graphics package group- ldd would not be installed in the image
>
> -        build essentials extended package group - gdb were not install, =
gcc and mkdosfs will intermittently not install into the image

Could you perhaps provide the recipe that creates the package group and sho=
w how you are adding the package group to the image?

> Any help to shed some light on this is very much appreciated.
>
> Thanks,
> MY
>
>
>


