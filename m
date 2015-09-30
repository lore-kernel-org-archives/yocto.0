Return-Path: <mei.yeen.ng@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22279E00CEB; Tue, 29 Sep 2015 21:09:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6CDE0086D
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 21:09:31 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 29 Sep 2015 21:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,610,1437462000"; d="scan'208";a="570996129"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by FMSMGA003.fm.intel.com with ESMTP; 29 Sep 2015 21:09:30 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.158]) by
	PGSMSX101.gar.corp.intel.com ([169.254.1.172]) with mapi id
	14.03.0248.002; Wed, 30 Sep 2015 12:09:29 +0800
From: "Ng, Mei Yeen" <mei.yeen.ng@intel.com>
To: Randy Witt <randy.e.witt@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Packages in packagegroup are not installed in image
Thread-Index: AdC/JTdQ3JBuJ199QBOTZNoIWPVvUAGCRJuABmtOKSAAFK5gAAcB3LGA
Date: Wed, 30 Sep 2015 04:09:29 +0000
Message-ID: <62355CE5B24AE3438DF93AF114E1F91B2DC23145@PGSMSX103.gar.corp.intel.com>
References: <62355CE5B24AE3438DF93AF114E1F91B2DBC9045@KMSMSX153.gar.corp.intel.com>
	<55B12B8B.7060509@linux.intel.com>
	<62355CE5B24AE3438DF93AF114E1F91B2DC08180@PGSMSX103.gar.corp.intel.com>
	<55DCCA5E.4080907@linux.intel.com>
In-Reply-To: <55DCCA5E.4080907@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
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
X-List-Received-Date: Wed, 30 Sep 2015 04:09:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Randy,=20

It works perfectly now. :) =20
Thanks so much for your advice.=20

Warm regards,
Mei Yeen

-----Original Message-----
From: Randy Witt [mailto:randy.e.witt@linux.intel.com]=20
Sent: Wednesday, August 26, 2015 4:05 AM
To: Ng, Mei Yeen; yocto@yoctoproject.org
Cc: Hart, Darren; Witt, Randy E
Subject: Re: [yocto] Packages in packagegroup are not installed in image

On 08/24/2015 07:20 PM, Ng, Mei Yeen wrote:
> Hi Randy,
>
> The packagegroups is added into the image as below:
>
> 1) Create a bbappend of the image core-image-full-cmdline.bbappend in=20
> our new layer
> 2) In the core-image-full-cmdline.bbappend, enable the following lines:
>
> 	DESCRIPTION =3D "Custom list of packages for build essentials for comman=
dline image"
>
> 	IMAGE_INSTALL +=3D "packagegroup-core-buildessential-extended"
> 	IMAGE_INSTALL +=3D "packagegroup-core-devtools"

Could you try using _append like below, and see if that gives you the consi=
stency you want?

IMAGE_INSTALL_append =3D " packagegroup-core-buildessential-extended"
IMAGE_INSTALL_append =3D " packagegroup-core-devtools"

> 3) Update the local.conf to include EXTRA_IMAGE_FEATURES =3D "debug-tweak=
s tools-testapps tools-debug"
>
> Thanks,
> MY
>
> -----Original Message-----
> From: Randy Witt [mailto:randy.e.witt@linux.intel.com]
> Sent: Friday, July 24, 2015 2:00 AM
> To: Ng, Mei Yeen; yocto@yoctoproject.org
> Cc: Hart, Darren; Witt, Randy E
> Subject: Re: [yocto] Packages in packagegroup are not installed in=20
> image
>
> Hi Mei,
>
> On 07/15/2015 10:40 AM, Ng, Mei Yeen wrote:
>> Hi,
>>
>> I need help for issue where packages in packagegroup that compiles perfe=
ctly fine with core-images, but when verified in the image, they are not in=
stalled for some reason.
>> My understanding was that packages listed under RDEPENDS in the packageg=
roup would get compiled and installed.
>>
>> Some packages would appear in 1 image and then disappear in the next com=
piled image.
>> I'm seeing this when compiling with core-image-full-cmdline and core-ima=
ge-sato.
>>
>> I have attached the following package group created:
>>
>> -        graphics package group- ldd would not be installed in the image
>>
>> -        build essentials extended package group - gdb were not install,=
 gcc and mkdosfs will intermittently not install into the image
>
> Could you perhaps provide the recipe that creates the package group and s=
how how you are adding the package group to the image?
>
>> Any help to shed some light on this is very much appreciated.
>>
>> Thanks,
>> MY
>>
>>
>>
>


