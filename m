Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C09D3E004FF; Tue, 19 Aug 2014 09:54:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0101.epam.com (evbyminsa0101.epam.com [217.21.63.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9AEE0034C
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 09:54:04 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0032.epam.com
	(10.6.110.32) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Tue, 19 Aug 2014 19:53:55 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Tue, 19 Aug 2014 19:53:55 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: "Maxin B. John" <maxin.john@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-oracle-java][PATCH 1/2] oracle-java: update
	fetch	method
Thread-Index: AQHPt9c0d1m00B4WwESH5niLAHRF7pvX4wEAgABJAEA=
Date: Tue, 19 Aug 2014 16:53:55 +0000
Message-ID: <3031ea9c65d148368862e882a2beab12@EPBYMINSA0001.epam.com>
References: <1408031252-24814-1-git-send-email-maxin.john@enea.com>
	<20140819153022.GA52003@sestofb10.enea.se>
In-Reply-To: <20140819153022.GA52003@sestofb10.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.75]
MIME-Version: 1.0
Subject: Re: [meta-oracle-java][PATCH 1/2] oracle-java: update fetch	method
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
X-List-Received-Date: Tue, 19 Aug 2014 16:54:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Maxin,

Looks good.=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Maxin B. John
Sent: Tuesday, August 19, 2014 6:30 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-oracle-java][PATCH 1/2] oracle-java: update fetc=
h method

Hi,

Gentle ping ..=20
Could anyone review these, please ?

On Thu, Aug 14, 2014 at 05:47:31PM +0200, Maxin B. John wrote:
> Use custom FETCHCMD_wget to avoid manual downloading of Oracle Java packa=
ges.
>=20
> Signed-off-by: Maxin B. John <maxin.john@enea.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse.inc | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtoo=
ls/oracle-java/oracle-jse.inc
> index 98069f4..3a4e20d 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -6,6 +6,8 @@ LIC_FILES_CHKSUM =3D "\
>  	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
>  	"
> =20
> +FETCHCMD_wget_append =3D " --header=3DCookie:oraclelicense=3Da "
> +
>  # get the java update version in the resulting package
>  PR =3D. "u${PV_UPDATE}"
>  S =3D "${WORKDIR}"
> --=20
> 1.9.1
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

