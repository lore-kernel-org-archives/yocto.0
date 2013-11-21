Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D69A3E0059E
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 07:51:18 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 21 Nov 2013 10:51:17 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Stefano Babic <sbabic@denx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Nov 2013 10:48:08 -0500
Thread-Topic: [yocto] Deploying Yocto build images
Thread-Index: Ac7mstDYVPQ1lBvxS2ymD4O5XcO1eQAF7H3w
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153BB535322@pluto.melinkcorp.local>
References: <528DF846.9050306@denx.de>
In-Reply-To: <528DF846.9050306@denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Deploying Yocto build images
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
X-List-Received-Date: Thu, 21 Nov 2013 15:51:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Stefano,

Looks interesting.  I have a question that I didn't see covered in the docu=
mentation (yet).  I can see the benefit to having a single image firmware u=
pgrade, but how does swupdate handle configuration differences?  I can see =
cases in which the majority of the software will be the same but there will=
 be configuration file differences from device to device.  I like the idea =
of a single image upgrade, but not at the cost of wiping the device-specifi=
c configuration.

Thanks,
Bryan E.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Stefano Babic
> Sent: Thursday, November 21, 2013 7:11 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Deploying Yocto build images
>=20
> Hi everybody,
>=20
> in the last ELCE, David point out in his presentation that we should
> improve how to deploy Yocto images on the target.
>=20
> I did some work this year to provide a reliable way for some customers
> of us to install Yocto's images in field, and I have published last
> week the sources. Here the link of the announcement:
>=20
> 	http://comments.gmane.org/gmane.comp.embedded.eldk/2397
>=20
> Mainly, it is a tool that can be stored in the rootfs or will be put in
> a separate initrd image and whose goal is only to update the system. I
> have tried to describe pros and cons of several different solutions
> (updating via bootloader ? single copy against dual copy ?) - you can
> find details in the doc directory in the swupdate repository.
>=20
> Maybe someone of you can find this helpful, and I will be happy if I
> could get some feedback.
>=20
> Best regards,
> Stefano Babic
>=20
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

