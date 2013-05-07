Return-Path: <rcagley@toyon.com>
Received: from mx.toyon.corp (206-190-77-154.static.twtelecom.net
	[206.190.77.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3966BE01493
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 08:44:54 -0700 (PDT)
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 7 May 2013 08:43:57 -0700
Message-ID: <BA6FC03EA0815D428FB8A3C279ED49920740DC9D@mx.toyon.corp>
In-Reply-To: <BE68E9C8E0850C43B0F0B0B7D57FA5AE2DE0066F@IRSMSX102.ger.corp.intel.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Hob found an error
Thread-Index: Ac5Kl6AUzQI4iTYkRyO4TTWPUPTkGAAa0QeQAAH9MdAAC360EA==
References: <BA6FC03EA0815D428FB8A3C279ED49920740DB1D@mx.toyon.corp><969F26A8BAB325438E7EB80D3C3134FB1622BCDF@IRSMSX102.ger.corp.
	intel.com>
	<BE68E9C8E0850C43B0F0B0B7D57FA5AE2DE0066F@IRSMSX102.ger.corp.intel.com>
From: "Richard Cagley" <rcagley@toyon.com>
To: "Voicu, Cristiana" <cristiana.voicu@intel.com>,
	"Iorga, Cristian" <cristian.iorga@intel.com>, <yocto@yoctoproject.org>
Subject: Re: Hob found an error
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
X-List-Received-Date: Tue, 07 May 2013 15:44:54 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

rcagley@rcagley-VirtualBox:/opt/fsl-community-bsp$ find . -name
*meta-hob*
./sources/poky/meta-hob
rcagley@rcagley-VirtualBox:/opt/fsl-community-bsp$ find . -name
hob-image.bb
./sources/poky/meta-hob/recipes-core/images/hob-image.bb

Note from the previous post I'm using the  "machine" nitrogren6x and
"base image" fsl-image-test

> -----Original Message-----
> From: Voicu, Cristiana [mailto:cristiana.voicu@intel.com]
> Sent: Tuesday, May 07, 2013 3:12 AM
> To: Iorga, Cristian; Richard Cagley; yocto@yoctoproject.org
> Subject: RE: Hob found an error
>=20
> Hi Richard,
>=20
> I tried to reproduce this bug on master branch, but I do not receive
this error.
> Do you have "meta-hob" layer in your poky directory? Because, there is
> located 'hob-image.bb', and it seems that bitbake can't find it.
> Thanks,
> Cristiana
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Iorga, Cristian
> Sent: Tuesday, May 07, 2013 12:12 PM
> To: Richard Cagley; yocto@yoctoproject.org
> Subject: Re: [yocto] Hob found an error
>=20
> Hi Richard,
>=20
> What bitbake/poky/hob are you using (versions)?
> /Cristian
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Richard Cagley
> Sent: Monday, May 06, 2013 11:25 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Hob found an error
>=20
> When I try to add the videotestsrc plugin during package editing and
the try
> to build the image I get this message in a popup window. No clue even
> where to start in debugging this.
>=20
> Hob Exception - Error running command '['matchFile', 'hob-image.bb']':
> Traceback (most recent call last):
>   File
"/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
> line 68, in runCommand
>     result =3D command_method(self, commandline)
>   File
"/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
> line 210, in matchFile
>     return command.cooker.matchFile(fMatch)
>   File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/cooker.py",
> line 1142, in matchFile
>     raise NoSpecificMatch
> NoSpecificMatch
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

