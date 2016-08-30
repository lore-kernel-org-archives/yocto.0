Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A1DE00CD9; Tue, 30 Aug 2016 08:04:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0107.outbound.protection.outlook.com [104.47.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09322E00CD4
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 08:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=t7fWk6jK+IgZSMPcJPRilyWkStihZHkdqZhLDgXZ9zM=;
	b=C2MPEsjwcbUGcMIZ+HrUFroly19X9VtGO8LhPDXHoxyOM+3TQnYFtsKW1hoLU1XhMYTiSg6gcTh8NkfMxkGumwOFqqI/6T1/tHLmIZI22L8G6TBFMUJG0VXR4knbCFr4vOZtwQwLQs8ZOoREDROsKtD3F6koo+8Q2QxgJs8g1o4=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2661.eurprd06.prod.outlook.com (10.168.82.14) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.599.9; Tue, 30 Aug 2016 12:30:44 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.0587.013; Tue, 30 Aug 2016 12:30:44 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with exporting variable in bbappend file
Thread-Index: AQHSArlK5/RiWZUS/U+BbEwfsxq1LQ==
Date: Tue, 30 Aug 2016 12:30:44 +0000
Message-ID: <DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [132.245.36.117]
x-ms-office365-filtering-correlation-id: ea202b03-6f00-477e-80c6-08d3d0d176d6
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2661;
	6:UUnuWdSYRuqRWWCFLKeIoaNwG/3iI5Os3IXZU8Vgci7/hUfRQzhJBCphundzLr3L73SBX9IxNu6uXpn1TugzuPBoCzobDpA1J0StIABh8qgvM2kj0rR4R3EKVk1MvAedl+P973yWKCovuLcs3dA0ngF9X+tNhkrGFvnIzWA58XmJEGoc8/rkoE7AyvyxiGGZMcQSEmmkC9l69P8ibfJ+HvEbOoE+MDC5UiHHp54A/oOfFAstniEjnBGW332ksTQGSURvYaesIv8XjEDGZWlf2R4xdoMk4HZAzE2AC3c56O50CT38OaNPQeqEyPk8A+YBE6DVUBBYLUIURrGrgdHHzw==;
	5:NlJ5UQE22559ZWCNud1T9ZMJKWq7N5QyuU7waz8LcsCyOGrXS9kwvujkKbcL8FaWHdkON2d8WYspfw2WDIQ9/IhbQfj1pmV1XZQAXTZ0xiu/BsJZBQgA8zzJEZffFEXiA/32KXMBmINapUJcL538Hw==;
	24:4JagoGDOxg18PFAE2s/OqSfNe0ouTcJpVPnkE3r29v9Vznsqj6Y90KioZauSaqyADfEIsrN/bsObaNAyzi/IMLt/HZPbeYnxpG04Ud6IX14=;
	7:NvBsL1BlA4SIK3wZovs+XUX79uMiHvM1WiBrVzaN2YrvmUDs0i9xeqh/4OATUlLRmst5f2LPO3faIvvlpaO0oBFhqZsYO13rtUwuMVcI7qEAxQecPhCM0sX1snsw/nnvCkrx7WM0EN+tEawTbzO+BWthi3jkt0qLAPMoHOH0xnUxQqzBTZ6NC7Q4NjjaRenfRhX8VA64Eod4YOBPHnmX8+YR3F2XhfOUx7eor7xm80yzmQVcu6ykie9Y4OiK5ik1
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0601MB2661;
x-microsoft-antispam-prvs: <DB6PR0601MB26610391902EEDF2CBD54EC6CFE00@DB6PR0601MB2661.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0601MB2661; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2661; 
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(199003)(189002)(53754006)(105586002)(76576001)(106356001)(106116001)(10400500002)(2900100001)(97736004)(101416001)(19625215002)(2501003)(9686002)(8676002)(1730700003)(81166006)(68736007)(586003)(3280700002)(81156014)(2351001)(3660700001)(16236675004)(6116002)(19627405001)(102836003)(229853001)(8936002)(19580395003)(2906002)(5640700001)(3846002)(54356999)(50986999)(33656002)(11100500001)(450100001)(107886002)(5002640100001)(92566002)(189998001)(110136002)(5660300001)(86362001)(87936001)(66066001)(74316002)(122556002)(77096005)(7736002)(7696003)(7846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2661;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2016 12:30:44.8382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2661
Subject: Problem with exporting variable in bbappend file
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
X-List-Received-Date: Tue, 30 Aug 2016 15:04:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00DB6PR0601MB2663_"

--_000_DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00DB6PR0601MB2663_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,


We are working on a platform based on Renesas processor. The BSP provided b=
y them has arm-trusted-firmware. Now in order to enable all the 8 cores, th=
ey have suggested to add a environment variable in the arm-trusted-firmware=
_git.bb file in their BSP layer as below.


export PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT=3D"0"


We would prefer to make this change in our custom layer by creating a .bbap=
pend file. We added the change in bbappend file,recompiled it and tested, b=
ut couldn't get the expected results. When I do the same change in the .bb =
file itself in their BSP layer, I am able to see the expected result.


Is it okay to just add the export as mentioned above in the .bbappend file =
? Am I missing something else ?


Thanks & Regards,

Hari Prasath

--_000_DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00DB6PR0601MB2663_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello all,</p>
<p><br>
</p>
<p>We are working on a platform based on Renesas processor. The BSP provide=
d by them has arm-trusted-firmware. Now in order to enable all the 8 cores,=
 they have suggested to add a environment variable in the arm-trusted-firmw=
are_git.bb file in their BSP layer
 as below.</p>
<p><br>
</p>
<p><span>export PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT=3D&quot;0&quot;</span><b=
r>
</p>
<p><br>
</p>
<p>We would prefer to make this change in our custom layer by creating a .b=
bappend file. We added the change in bbappend file,recompiled it and tested=
, but couldn't get the expected results. When I do the same change in the .=
bb file itself in their BSP layer,
 I am able to see the expected result.</p>
<p><br>
</p>
<p>Is it okay to just add the export as mentioned above in the .bbappend fi=
le ? Am I missing something else ?<br>
</p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00DB6PR0601MB2663_--
