Return-Path: <will.frazer@eurotech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A196DE00781; Mon,  8 Sep 2014 10:29:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.199.154.19 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1lrp0019.outbound.protection.outlook.com [213.199.154.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C9CE0049D
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 10:29:43 -0700 (PDT)
Received: from DB4PR05MB397.eurprd05.prod.outlook.com (10.242.192.141) by
	DB4PR05MB400.eurprd05.prod.outlook.com (10.242.192.154) with Microsoft
	SMTP Server (TLS) id 15.0.1019.16; Mon, 8 Sep 2014 17:29:40 +0000
Received: from DB4PR05MB397.eurprd05.prod.outlook.com ([10.242.192.141]) by
	DB4PR05MB397.eurprd05.prod.outlook.com ([10.242.192.141]) with mapi id
	15.00.1024.012; Mon, 8 Sep 2014 17:29:40 +0000
From: "Frazer, Will" <will.frazer@eurotech.com>
To: "Maxin B. John" <maxin.john@enea.com>
Thread-Topic: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE
	Embedded
Thread-Index: AQHPy32jVLukEhTk3kmnvHBdtIdUqJv3fchQ
Date: Mon, 8 Sep 2014 17:29:40 +0000
Message-ID: <47ce56a6e56e4019b55106761908acb5@DB4PR05MB397.eurprd05.prod.outlook.com>
References: <f5853f85c69e409593c89e39260ca912@EPBYMINSA0032.epam.com>
	<15cf2669b9a9496db30b36893090d5c8@DB4PR05MB397.eurprd05.prod.outlook.com>
	<20140908155745.GB25602@sestofb10.enea.se>
In-Reply-To: <20140908155745.GB25602@sestofb10.enea.se>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [164.40.222.34]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;
x-forefront-prvs: 03283976A6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(189002)(199003)(585484001)(45984002)(24454002)(13464003)(19580395003)(50986999)(90102001)(101416001)(85852003)(15975445006)(110136001)(74662001)(108616004)(76176999)(230783001)(83322001)(19580405001)(97736003)(99396002)(66066001)(79102001)(54356999)(83072002)(33646002)(76576001)(80022001)(2656002)(86362001)(87936001)(4396001)(21056001)(81342001)(74316001)(74502001)(81542001)(15202345003)(106356001)(31966008)(85306004)(575784001)(20776003)(95666004)(105586002)(107046002)(92566001)(76482001)(77982001)(46102001)(106116001)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:DB4PR05MB400;
	H:DB4PR05MB397.eurprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: eurotech.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH v2] Add support for Java SE Embedded
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
X-List-Received-Date: Mon, 08 Sep 2014 17:29:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is rather an old post now but is what I found when I looked into makin=
g changes to the Oracle recipe a couple of years ago:
https://community.oracle.com/thread/2367607

regards,
Will

-----Original Message-----
From: Maxin B. John [mailto:maxin.john@enea.com]=20
Sent: 08 September 2014 16:58
To: Frazer, Will
Cc: Vladimir Redzhepov; yocto@yoctoproject.org; nitin.a.kamble@intel.com
Subject: Re: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE E=
mbedded

Dear Will Frazer,

On Mon, Sep 08, 2014 at 02:13:35PM +0000, Frazer, Will wrote:
> Folks,
>=20
> My understanding is that while this recipe generated download URL will wo=
rk if you have already visited the Oracle download location, it won't work =
for a build system that has never been there before. Try it.
>
The updated download method was to avoid the manual download process associ=
ated with Oracle Java Binaries. I have tested this on a couple of machines =
before sending it upstream.

It was based on this discussion:
https://gist.github.com/hgomez/4697585
=20
> Also, Oracle has previously been very much against using any mechanism th=
at bypasses a user clicking on the licence acceptance. I'm not aware this p=
osition has changed. You may find that you are in violation of the Licence =
agreement if you do this. One of the reasons why the URLs were obfuscated i=
n the past I believe.
>=20

Thank you very much for raising this concern. I wasn't aware of this.
As per my understanding, setting
LICENSE_FLAGS_WHITELIST +=3D "oracle_java" in local.conf was Yocto's way of=
 conforming to the License terms of Oracle.=20

Adding CC to Nitin A Kamble for his view on this.

> Will Frazer
> Eurotech UK

Thanks and Regards,
Maxin

>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Vladimir=20
> Redzhepov
> Sent: 08 September 2014 13:04
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-oracle-java][PATCH v2] Add support for Java SE=20
> Embedded
>=20
> >From a68c728141f369e1ac41f2aaf40915cf14ad341f Mon Sep 17 00:00:00=20
> >2001
> From: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> Date: Mon, 8 Sep 2014 14:42:28 +0300
> Subject: [PATCH] Add support for Java SE Embedded
>=20
> Signed-off-by: Vladimir Redzhepov <vladimir_redzhepov@epam.com>
> ---
>  ...racle-jse-ejre-arm-vfp-hflt-client-headless_1.7.0.bb |  9 +++++++++
>  recipes-devtools/oracle-java/oracle-jse-ejre.inc        | 17 +++++++++++=
++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644=20
> recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headl
> ess_1.7.0.bb  create mode 100644=20
> recipes-devtools/oracle-java/oracle-jse-ejre.inc
>=20
> diff --git=20
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea
> dless_1.7.0.bb=20
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea
> dless_1.7.0.bb
> new file mode 100644
> index 0000000..bfa8011
> --- /dev/null
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client
> +++ -h
> +++ eadless_1.7.0.bb
> @@ -0,0 +1,9 @@
> +PV_UPDATE =3D "60"
> +BUILD_NUMBER =3D "19"
> +
> +require oracle-jse-ejre.inc
> +
> +SRC_URI =3D "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${=
BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-c=
lient_headless-07_may_2014.tar.gz"
> +
> +SRC_URI[md5sum] =3D "b9b8f598b0a7f49e4d221f16ba25c6c0"
> +SRC_URI[sha256sum] =3D "ed061060011d88efe5563c2949c00993db85db17ab94f18a=
78713007a2b90faf"
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc=20
> b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> new file mode 100644
> index 0000000..7889684
> --- /dev/null
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> @@ -0,0 +1,17 @@
> +SUMMARY =3D "Oracle Java SE runtime environment binaries"
> +DESCRIPTION =3D "This is the proprietary JRE from Sun/Oracle, with the=20
> +Hotspot JVM. It is\  provided by Sun/Oracle only in binary format.\=20
> +Java Platform, Standard Edition (Java SE) lets you develop and deploy=20
> +Java\  applications on desktops and servers, as well as in today's=20
> +demanding\  embedded environments. Java offers the rich user=20
> +interface, performance,\  versatility, portability, and security that=20
> +today's applications require.\  The JRE (Java Runtime Environment) is=20
> +needed on a system to run Java\  applications and applets"
> +
> +JDK_JRE =3D "ejre"
> +require oracle-jse.inc
> +
> +LIC_FILES_CHKSUM =3D "\
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=3D3a112380=
25bf13b87f04753183ffeb90 \
> +	file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.=
txt;md5=3Dc339b34e3da6673d2c5950d0f8808f8c \
> +	"
> --

