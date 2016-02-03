Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D5B7E00C2E; Wed,  3 Feb 2016 03:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14DB3E00C2A
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 03:41:28 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-35-56b1e766466c
X-Invalid-Recipients: 
Received: from CHN-OUT-EDG01.wipro.com ( [203.91.201.89])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	E2.AB.05428.667E1B65; Wed,  3 Feb 2016 17:11:27 +0530 (IST)
Received: from CHN-SNR-MBX-23.wipro.com (10.142.51.124) by
	CHN-OUT-EDG01.wipro.com (203.91.201.38) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Wed, 3 Feb 2016 17:11:18 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.201.116) by
	CHN-SNR-MBX-23.wipro.com (10.142.51.124) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Wed, 3 Feb 2016 17:11:22 +0530
Received: from APC01-HK2-obe.outbound.protection.outlook.com (65.55.88.208) by
	wipro-blr-tls01.wipro.com (203.91.201.116) with Microsoft SMTP
	Server (TLS) id 15.0.1104.5; Wed, 3 Feb 2016 17:11:16 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0669.apcprd03.prod.outlook.com (10.160.238.14) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Wed, 3 Feb 2016 11:41:17 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Wed, 3 Feb 2016 11:41:17 +0000
From: <shubham.kumar4@wipro.com>
To: <yocto@yoctoproject.org>
Thread-Topic: [meta-intel]:Quark not accepting "root" username at login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkg==
Date: Wed, 3 Feb 2016 11:41:17 +0000
Message-ID: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [198.175.68.39]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0669;
	5:kgrMDWWDNqsuTTy35BB/dj9xFoJdCTRh8QIJKhQX5wS1asyK4O078hC3OqYoyJ39NxFnVpyvpPmEf4F7GDgVM3tpeBWzOjQJ+GBDy59IdZaSodT7AejMUzxyAJWCTc7yisCiOWfRxRbKyYL42lOYTw==;
	24:F1vwXDBUsxppx0PPEv0/NNR8wROUZCTtyKOG6JK83OeKWx5OdErCNSTo4ubP6fRVfvnUWCb9gRHtsh6BQvcEUao+IBduHhVGlTNwOeR6oy0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0669;
x-ms-office365-filtering-correlation-id: fb973c91-62dc-4b94-c716-08d32c8eeddc
x-microsoft-antispam-prvs: <SIXPR03MB06695C61CC09A65BEBAAAE36D4D00@SIXPR03MB0669.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(61426038)(61427038);
	SRVR:SIXPR03MB0669; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0669; 
x-forefront-prvs: 08417837C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(53754006)(164054003)(66066001)(2900100001)(450100001)(2906002)(5004730100002)(92566002)(2351001)(86362001)(106116001)(1730700002)(107886002)(76576001)(50986999)(122556002)(1096002)(19625215002)(189998001)(54356999)(19627405001)(40100003)(87936001)(110136002)(1220700001)(3846002)(16236675004)(5001960100002)(33656002)(586003)(102836003)(6116002)(5008740100001)(74316001)(2501003)(5003600100002)(77096005)(551544002)(10400500002)(3280700002)(3660700001)(229853001)(11100500001)(5002640100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0669;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2016 11:41:17.5144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0669
X-OrganizationHeadersPreserved: SIXPR03MB0669.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: CHN-HES-EDG03.wipro.com
X-CrossPremisesHeadersFiltered: CHN-HES-EDG03.wipro.com
X-CFilter-Loop: Reflected
Subject: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Wed, 03 Feb 2016 11:41:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR03MB0672F01139FBB3CB521AAB45D4D00SIXPR03MB0672apcp_"

--_000_SIXPR03MB0672F01139FBB3CB521AAB45D4D00SIXPR03MB0672apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I built a core-image-minimal with additions of a few packages like tools-sd=
k and tools-debug. With WIK tool and the kickstart file "mkgalileodisk", I =
created the image. Then I dd'd the image to the SD card. The Galileo booted=
 with the image, but it's not accepting "root" as the username at the login=
 terminal. It shows the message "Invalid username". I don't have any idea o=
f why this happened. I even looked at the etc/passwd file, but didn't get a=
ny idea.

Please note that I have cloned the latest jethro meta-intel layer from the =
Yocto git repository.


Did I miss anything in the build process? Any help in this direction will b=
e appreciated.


Thanks,

Shubham_K

The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

--_000_SIXPR03MB0672F01139FBB3CB521AAB45D4D00SIXPR03MB0672apcp_
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
<p>Hi all,</p>
<p><br>
</p>
<p>I built a core-image-minimal with additions of a few packages like <i>to=
ols-sdk</i> and
<i>tools-debug</i>. With WIK tool and the kickstart file &quot;mkgalileodis=
k&quot;, I created the image. Then I dd'd the image to the SD card. The Gal=
ileo booted with the image, but it's not accepting &quot;root&quot; as the =
username at the login terminal. It shows the message
 &quot;Invalid username&quot;. I don't have any idea of why this happened. =
I even looked at the etc/passwd file, but didn't get any idea.</p>
<p>Please note that I have cloned the latest jethro <i>meta-intel</i> layer=
 from the Yocto git repository.<br>
</p>
<p><br>
</p>
<p>Did I miss anything in the build process? Any help in this direction wil=
l be appreciated.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Shubham_K<br>
</p>
</div>
The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should
 not disseminate, distribute or copy this e-mail. Please notify the sender =
immediately and destroy all copies of this message and any attachments. WAR=
NING: Computer viruses can be transmitted via email. The recipient should c=
heck this email and any attachments
 for the presence of viruses. The company accepts no liability for any dama=
ge caused by any virus transmitted by this email. www.wipro.com
</body>
</html>

--_000_SIXPR03MB0672F01139FBB3CB521AAB45D4D00SIXPR03MB0672apcp_--
