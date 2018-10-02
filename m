Return-Path: <Jef.Driesen@niko.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB8E6E00971; Tue,  2 Oct 2018 18:28:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.6.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 111739 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Oct 2018 18:28:15 PDT
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
	(mail-eopbgr60081.outbound.protection.outlook.com [40.107.6.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AFC2E00718
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2018 18:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nikogroup.onmicrosoft.com; s=selector1-niko-eu;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Wi+unHqBmr/jgSF8T6Jw/o+AnjY1fF9maQ+uK0K6vpU=;
	b=XFtV5OBynXL6A3snZHzu6N21iND08a3NPQ/hT4caLKrCXFgBICkSa7lL9WuhBAUZaO95K8CBANGcoCl67yJs+sdTKwLtA0tTfyEEclHJQnQMqO879fJpccOXkD5IFxOpDHz1KWlIWrwmsLNGKlDoPP5WSXiXbS+FGIuRrWufaCY=
Received: from HE1PR08MB0380.eurprd08.prod.outlook.com (10.161.116.155) by
	HE1PR08MB1020.eurprd08.prod.outlook.com (10.166.125.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.23; Tue, 2 Oct 2018 09:11:03 +0000
Received: from HE1PR08MB0380.eurprd08.prod.outlook.com
	([fe80::b015:dd03:8e23:af05]) by
	HE1PR08MB0380.eurprd08.prod.outlook.com
	([fe80::b015:dd03:8e23:af05%10]) with mapi id 15.20.1185.024;
	Tue, 2 Oct 2018 09:11:03 +0000
From: "Driesen Jef (JDI)" <Jef.Driesen@niko.eu>
To: Alberto Spin <a.spin@datawatt.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [mono][msbuild][nuget] Building c# application for mono
Thread-Index: AdRZlYWObtD1BokhQfOjDkLL3kEPqgAmk/OA
Date: Tue, 2 Oct 2018 09:11:03 +0000
Message-ID: <0f284012-8d24-171c-340c-2ec8977c77ea@niko.eu>
References: <VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0@VI1PR0102MB3359.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR0102MB3359BFFD10CD302A9AD7E03E9BEF0@VI1PR0102MB3359.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6P191CA0013.EURP191.PROD.OUTLOOK.COM (2603:10a6:6:28::23)
	To HE1PR08MB0380.eurprd08.prod.outlook.com
	(2a01:111:e400:50a0::27)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Jef.Driesen@niko.eu; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.82.27.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR08MB1020;
	6:G+nAZeKezPS82E7FbaIGkvScFtDHVz6O1C2YCWgW0Hkjy9cxvnE+DFF7XQFznd9p5JKdw8sCJoqKviaZ0jV2CWLpxIgAFP24ueLWTY/Q8xKCBEwRSBKU/5v2cYZfVUxuAlAoFK3KbbS39xotcGx6p1I2opXE8vwaelW+C5NMWsbtXjOC9176pwvmiX+/+TWsIkKQQ9qnyU3ikBKb9xUHo6tnjcrWhfiAdGxwaAnJHTp+AFwOu4UEX1/SODxk6UMt6Kx8B4xCRvSENC/UBs3VohaR/0I2xbQ4sJts6yh3D8oVry/HzQ9QK0rXYFU1BN6PX4sDt1e/tZQiZTRqwTn71ZyRpqTT1A+qiMyTIuVOMdswplRq65VF3skN9fQDeZYhK/44ZgvZ9dFdQ/U5LF/Q5CDl1rGunblBlcEMqIPe4c1RxlBRXUDAyT3hFrY2n8VMs92OmKeIVDjlsRQ2Of9zWg==;
	5:h0xdeh4EvnLBQU1YXBIMdIUveytMwbrJ9blDv9BhmgQqMDJD6NFwh765t1sezI5brxgI70UFQc64ceWZIFzGItzatJDZkUxY5mkIhxOT4Qdr3bTVu1M9HDva+17FbdZt5jwPby37owHfyg9rQDy1enWuIG+gutamguKcS/9oVQI=;
	7:xT/ZzyKPukQUheimOqlKHGtsQt7gV15a/Hyj0IM8l6jo4R1sNJc6AZ3SSVgrwk0JQQZCb5TAm7tIRZxp0+cDiNATz7Z5+shsxbuAdW8ZGuQgxZ5LIkL4yO749mJf4mk34NrdDBt52Z2ECyJJ+J4G/gENxcHzXpF49Ij+VGVaKY8WP3dGFPXb4BkMKbPP2WuU67GZkfUpIsseZPxS5prYUoeJIqautq82jdxI/VrqYdbdtTUg6DtyJv2cobpfkc70
x-ms-office365-filtering-correlation-id: a84b1528-d5ba-4dc0-28a2-08d62846fa13
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021145)(8989299)(4534165)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR08MB1020; 
X-MS-TrafficTypeDiagnostic: HE1PR08MB1020:|HE1PR08MB1020:
x-microsoft-antispam-prvs: <HE1PR08MB1020FF5FEB480F57389DF071E2E80@HE1PR08MB1020.eurprd08.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3231355)(944501410)(52105095)(3002001)(93006095)(93001095)(149066)(150057)(6041310)(20161123558120)(20161123560045)(20161123564045)(2016111802025)(20161123562045)(6043046)(201708071742011)(7699051);
	SRVR:HE1PR08MB1020; BCL:0; PCL:0; RULEID:; SRVR:HE1PR08MB1020; 
x-forefront-prvs: 0813C68E65
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39850400004)(346002)(396003)(136003)(376002)(189003)(199004)(102836004)(53546011)(52116002)(8558605004)(71200400001)(256004)(14444005)(8936002)(105586002)(71190400001)(68736007)(26005)(305945005)(5250100002)(186003)(86362001)(229853002)(14454004)(7736002)(316002)(2501003)(31696002)(36756003)(2906002)(66066001)(110136005)(8676002)(966005)(6306002)(99286004)(97736004)(6436002)(45080400002)(476003)(6486002)(2616005)(25786009)(11346002)(76176011)(31686004)(6246003)(6512007)(53936002)(386003)(446003)(6506007)(2900100001)(106356001)(508600001)(72206003)(74482002)(5660300001)(6116002)(486006)(81156014)(81166006)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR08MB1020;
	H:HE1PR08MB0380.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: niko.eu does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: UabMvx794o9QEm8UOqc1RDfWoyLaqjEUvO1+XOYDBpw5CnfM8XL/mDWt96KuwGTTknznoWeNTZyJV6XDgo5dV+2E0CpqsTGVcvXUF5K6sHx+yhmuyKYnsduBbbecP/k6wtRKcsTdluTYNm5d9/vlYlgcUedkDAE2+R797l+zNNFOtxIZTBbsb+VUvQ1/uPuPofOUKjQraETGeChFyJQICToK9OA2jSn4GlemafUtS/jWDC0cF6MtL1LkNfOioHJTbdkUD88yFvgX9GFpxdczPXeEa2S2LWo202aObofh1qxHVN+BdnmyufAsueN61wbQg4xsyatq7WrnVnPVEPkgGvIl00ixZANEMzkKnlNJXDA=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a84b1528-d5ba-4dc0-28a2-08d62846fa13
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2018 09:11:03.6592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB1020
X-Microsoft-Exchange-Diagnostics: 1; HE1PR08MB1020;
	23:jUV0qzNlj821h2WMIhtmm+qVV8dfV1UyTinZ5z7svcEe/1YIE2ta3oqjahgE8DA3Ztv/bONiTuA0ve42OJghz+AthI3Jc1Id3YQLKZypQ6+PjKjSv1Qn0KIyITPV3UXP3OcXL5FWG+hEJ/ILG4upsA==
X-OriginatorOrg: niko.eu
Subject: Re: [mono][msbuild][nuget] Building c# application for mono
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
X-List-Received-Date: Wed, 03 Oct 2018 01:28:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <86AD5BADA5F8F84E8E2E14B8EEDA8D99@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

On 10/01/2018 04:50 PM, Alberto Spin wrote:
> I=92m trying to build my c# application for mono with yocto, by using=20
> nuget and msbuild.
>=20
> I encountered several problems:
>=20
> MsBuild:
>=20
>   * During the build of msbuild the cibuild.sh script is invoked. This
>     script uses the tool =91curl=91 to download the msbuild.zip form
>     Microsoft. This action failes with a certificate error because there
>     are no certificates present. I fixed this issue with a bbappend
>     script for msbuild which contains:
>=20
> DEPENDS +=3D "ca-certificates"

I submitted a similar patch last week:

https://lists.yoctoproject.org/pipermail/yocto/2018-September/042661.html

Note that adding the ca-certificates dependency wasn't enough for me.=20
The curl recipe builds curl with:

--with-ca-bundle=3D${sysconfdir}/ssl/certs/ca-certificates.crt

For curl-native that expands to something like:

$HOME/yocto/build/tmp/work/x86_64-linux/curl-native/7.58.0-r0/recipe-sysroo=
t-native/etc/ssl/certs/ca-certificates.crt

But if "rm_work" is enabled, this directory is gone by the time you're=20
building msbuild, and it still fails. It should point to the msbuild=20
native sysroot instead. I did that with the CURL_CA_BUNDLE env variable.

> Nuget:
>=20
>   * When trying to restore the packages for my c# application, the
>     execution of Nuget fails because it has no certificates.
>   * Apparently NuGet is using the mono certificate store, because it
>     fails to detect the certificates present in:
>      =A0/recipe-sysroot-native/etc/ssl/certs
>   * I also verified that the mono certificate store is empty by issuing
>     the command: certmgr -list -c Trust
>=20
> I tried to extend the recipe that builds my c# application with a=20
> do_configure task, in which I=92m trying to synchronize the mono=20
> certificate store with the ca-certifates.crt.
>=20
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cert-sync ${sysconfdir}/ss=
l/certs/ca-certificates.crt
>=20
> But the cert-sync tool somehow wants to use a path outside my build=20
> environment /usr/share/.mono, which fails with an access denied error.
>=20
> Can anybody help me to get past this problem?

I encountered the same problem. I did workaround it with the --user=20
parameter:

cert-sync --user ${sysconfdir}/ssl/certs/ca-certificates.crt

As you can see from my commit message, it works, but it's not perfect:

"Install the CA certificates for mono

Mono uses its own CA certificate store. By default it is empty, which=20
causes nuget to fail when trying do download packages over https.

This is a very ugly hack. Ideally the CA certificates should be packaged=20
separately and installed system-wide. But unfortunately the cert-sync=20
tool (or the other mono tools) use hardcoded directory paths and thus=20
don't support cross environments. Even with the --user option, the=20
certificates are installed on the host system, and not the yocto native=20
sysroot. Not really great, but at least it works."

If you find a better solution, I'm interested to hear about that!

Jef

