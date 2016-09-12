Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 290B9E00EDD; Sun, 11 Sep 2016 21:45:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0113.outbound.protection.outlook.com [104.47.2.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD92E00E8F
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 21:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=iwJnWNCovAbO34gYkP15PNdRG+dMc6KTb1OLu4gDsuk=;
	b=rW4ju7vOLTH8m/YwGhKJGGx13lbtpb9Hno28ZMFRzsD+rEYJw3KT8IzEERjCCCGpMMHfElte7uj8Pc+++a6jO96hM0lcz1Yw6kUErB3NByVebfrh9E7at5XxbE9Nwey3TMlG8aMIT4ubF9Gx8McNznbni8sa1vjiVG/XFbp0Ahs=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2664.eurprd06.prod.outlook.com (10.168.82.17) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Mon, 12 Sep 2016 04:13:10 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.0609.018; Mon, 12 Sep 2016 04:13:09 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Problem with exporting variable in bbappend file
Thread-Index: AQHSArlK5/RiWZUS/U+BbEwfsxq1LaBs0L6AgAh5fWA=
Date: Mon, 12 Sep 2016 04:13:09 +0000
Message-ID: <DB6PR0601MB266347E47B04913CFD45D71ACFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
References: <DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00@DB6PR0601MB2663.eurprd06.prod.outlook.com>
	<DA2A95BE-48FD-4673-AA7D-D9EFDFEDE725@gmail.com>
In-Reply-To: <DA2A95BE-48FD-4673-AA7D-D9EFDFEDE725@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=visteon.com;
x-originating-ip: [91.212.132.114]
x-ms-office365-filtering-correlation-id: 7eeb6192-753d-4f48-2f43-08d3dac31b16
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2664;
	6:zeordyksPMbFVuaUlOZgcNRPxJ3RjYHfRBA+IltogrE5AOIGALaXhPlWtfMF/M+dOVp5pls+ssVWTSiPsJ/pJGwd8WANdb/+I703Ihmw7DR+L9MK7GQx1f/y7eDK2SkktU1jK78TlnYsdUzDkce+L7w2SZt3I1uyNMT3fPXAU1uwbmO7skfQ7bsQf6jYaUSDm0WmKb697T9BarNkZE45DaK4rRkNJ0WyyyAAZJ7irRDlnFNgIFt6uOo51nPH33SVolJ37x2/L3nw0d2S/pOxua/wDJfkG3CyWGshNYqVVDtyCer1naRVTJ/Gz9CHDSjuRVSOfUtfEvXy9+3Rwozilw==;
	5:pWi6TAbwQen6uEFZ8aFWBXqIzB/PEbfNnzwPjDMfqb2odMMEp32PmCfh3KDbOpiMvdTM1OI3OyNxNzWPn0sMFcDdcA2htMrPzSMsPZqHKFE5tS7NpySMMsi6kViKNFFEzQ/3pPSr8sJHb1kgBSyRXQ==;
	24:ls2ELYBosiIgH9eDZIsAsIIe0bMox+JHR79EJtdiyGwFieGGpm3NetoKh4Tn1aBAk6eB5N3JJbNO+ePPfHp83gf3YQLrzTyH1/bMeG1l52s=;
	7:HeS+QZawj894FuFITAOQQyIv5ydh+IofmjVBwnh46j03t0O/f6XB3/IKuC2wsTyhg5UXMWL1yuMfwMF56FEpV3b3wHwZWa5WP/5Ci1NnEZBK6HoT755liZex/TiWILYXqIskN1JQblLyC/aGhBb03rSJ8hRVyAcChFIiKqAuiw3cG7Z7q6O+l86dve+Ny7luAgY/sDfWwtwg6S5lPltjKF3CpVRvrg5XP9P3E5eNRwrDBSzOIKZ/2oZHq2RYotn+
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0601MB2664;
x-microsoft-antispam-prvs: <DB6PR0601MB2664D0853FB31198DF4CD495CFFF0@DB6PR0601MB2664.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(208512329853888);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB6PR0601MB2664; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2664; 
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(24454002)(53754006)(377454003)(2950100001)(54356999)(92566002)(77096005)(76176999)(76576001)(8936002)(87936001)(15975445007)(2900100001)(3280700002)(3660700001)(3846002)(9686002)(106116001)(102836003)(33656002)(6116002)(10400500002)(66066001)(586003)(7696004)(305945005)(4001520100001)(5660300001)(19580405001)(19580395003)(74316002)(87386001)(50986999)(8676002)(122556002)(2906002)(5002640100001)(81166006)(86362001)(7846002)(4326007)(189998001)(110136002)(7736002)(5001760100003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2664;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2016 04:13:09.7008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2664
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with exporting variable in bbappend file
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
X-List-Received-Date: Mon, 12 Sep 2016 04:45:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Raj

Thanks for your reply. I tried bitbake-layers show-appends. I could see my =
bbappend file. But when I tried to grep the environment variable I am tryin=
g to set using bitbake -e, I am not able to see any output. Is there any wa=
y to confirm that the environment variable is set to the value I am trying =
to set ?
=20
Regards,
Hari Prasath

From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: Tuesday, September 06, 2016 11:49 PM
To: Gujulan Elango, Hari Prasath (H.)
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problem with exporting variable in bbappend file


On Aug 30, 2016, at 5:30 AM, Gujulan Elango, Hari Prasath (H.) <hgujulan@vi=
steon.com> wrote:

Hello all,

We are working on a platform based on Renesas processor. The BSP provided b=
y them has arm-trusted-firmware. Now in order to enable all the 8 cores, th=
ey have suggested to add a environment variable in the arm-trusted-firmware=
_git.bb file in their BSP layer as below.

export PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT=3D"0"

We would prefer to make this change in our custom layer by creating a .bbap=
pend file. We added the change in bbappend file, recompiled it and tested, =
but couldn't get the expected results. When I do the same change in the .bb=
 file itself in their BSP layer, I am able to see the expected result.

Is it okay to just add the export as mentioned above in the .bbappend file =
? Am I missing something else ?

ensure that your bbappend is actually applying to the final parsed recipe. =
You can use bitbake-layers show-appends to ensure that or simply bitbake -e=
 and grep for this change



Thanks & Regards,
Hari Prasath
--=A0
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


