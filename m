Return-Path: <Jate.Sujjavanich@myfuelmaster.com>
Received: from stspspam.syntech.org (exchsrvr.syntech-fuelmaster.com
	[199.44.250.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BEFE00747
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 11:56:38 -0700 (PDT)
Received: from pps.filterd (stspspam [127.0.0.1])
	by stspspam.syntech.org (8.14.5/8.14.5) with SMTP id r7TIesrm025571;
	Thu, 29 Aug 2013 14:56:34 -0400
Received: from courier.syntech-fuelmaster.com (courier.syntech.org
	[172.16.10.30]) by stspspam.syntech.org with ESMTP id 1eh3b7s0bm-1;
	Thu, 29 Aug 2013 14:56:34 -0400
Received: from Courier.syntech.org ([::1]) by Courier.syntech.org ([::1]) with
	mapi; Thu, 29 Aug 2013 14:56:34 -0400
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "'Bruce Ashfield'" <bruce.ashfield@windriver.com>
Date: Thu, 29 Aug 2013 14:56:33 -0400
Thread-Topic: [yocto] yocto-bsp and kconf-check
Thread-Index: Ac6kz7FWVqVION2DT8q7oXEdpb8SJQABf8aA
Message-ID: <6C2434209962DC46B88345CA85C334A201CAAD7035EE@Courier.syntech.org>
References: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
	<521F6E10.3090704@windriver.com>
In-Reply-To: <521F6E10.3090704@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 10ABF6850051F210ABF7D2
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.10.8794, 1.0.431,
	0.0.0000
	definitions=2013-08-29_06:2013-08-29, 2013-08-29,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1305240000 definitions=main-1308290101
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp and kconf-check
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
X-List-Received-Date: Thu, 29 Aug 2013 18:56:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Which kernel version ?=20

This is linux-yocto-3.8 and the dylan-9.0.0 yocto.

> It's not about them being common or not, it's about BSPs following a
> base policy versus having wild, per-board behaviour.

I've cleaned up many items from the yocto-bsp generated {{machine}}.cfg tha=
t are already added by KTYPE. I have two remaining warnings for CONFIG_NET =
and CONFIG_NETDEVICES. Nested includes eventually lead to the line

force kconf non-hardware base.cfg

which adds those config options. I thought the non-hardware would prevent t=
he specified_non_hdw.cfg warning.


Any ideas?

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Thursday, August 29, 2013 11:52 AM
> To: Jate Sujjavanich
> Cc: 'yocto@yoctoproject.org'
> Subject: Re: [yocto] yocto-bsp and kconf-check
>=20
> On 13-08-29 11:36 AM, Jate Sujjavanich wrote:
> > It appears that the yocto-bsp script generates a kernel configuration
> that creates some warnings during kern-tools' kconf_check. The
> {{machine}}.cfg file has many non-hardware options, therefore the script
> warns.
> >
> > It seems like many of these should be in the standard kernel
> configuration. Is this correct, and does the yocto-bsp data need to be
> updated?
>=20
> Which kernel version ? But the answer is not necessarily, if a machine
> config is specifying something that hasn't been tagged "hardware" or
> that has a specified exception, you get a warning.
>=20
> It's not about them being common or not, it's about BSPs following a
> base policy versus having wild, per-board behaviour.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> > - Jate
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >


