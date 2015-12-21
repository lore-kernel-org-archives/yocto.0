Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4047E00825; Mon, 21 Dec 2015 03:09:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0057.outbound.protection.outlook.com [104.47.101.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F23E0E00825
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 03:09:52 -0800 (PST)
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0104.INDPRD01.PROD.OUTLOOK.COM (10.164.119.13) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Mon, 21 Dec 2015 11:09:50 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Mon, 21 Dec 2015 11:09:49 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0361.006; Mon, 21 Dec 2015 11:09:49 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [dev] Restful application examples
Thread-Index: AQHROJ0ecwTFMFpMskawwyqJrRRTn57VLA3LgAAip6w=
Date: Mon, 21 Dec 2015 11:09:46 +0000
Message-ID: <MA1PR01MB005617F809B4425BFA6258F282E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
References: <D298314E.2C24A%sakari.poussa@intel.com>,
	<MA1PR01MB0056889875DB68F421CF63EA82E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB0056889875DB68F421CF63EA82E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [25.164.117.4]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0056;
	5:5NfQRxnA5CAkSovCEldl+FGGsiypFHGysFds/uisA59zLhFXC/Ek/LlwdXy2MZPDIdWYJhYIONXvbRgC/O1z/iqA6anzIbjU9tRyLvNHU9Dqcy9uoBqJ/lB1xw+OPj+kNr+Fe3JroZZDigmqO5b7AA==;
	24:yeUcFx754uCbcxR/yZKkl7mt0unnddBFmOSw2qf9n74L054ZEQS3ZcjUafT4rViyEn4GvPCYLZW3iQqcuDGshH74kdSjYu8dA5Q8q/njj+g=;
	20:XDqHKlHM1mrI1CxtYcG6h7zwfiA8Q48qbu7PvyqKTZ8JOwqDFlIpx/3ao6P6J/sSDJS41Q8uhPYFhAV7toaBjI0IX2UfK/Hof4EyCqBdkKlA1tvpMqTrA6GMYompXbRe1DrRGAAjHWp+KaXtMDslYs51W/4nCW2XEvEpGZ2U8/0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0056;
x-microsoft-antispam-prvs: <MA1PR01MB00564A06FFE58176D6B55AC882E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(520078)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:MA1PR01MB0056; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0056; 
x-forefront-prvs: 079756C6B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(189002)(53474002)(51874003)(377454003)(53754006)(106356001)(450100001)(105586002)(5002640100001)(101416001)(586003)(5004730100002)(66066001)(6116002)(102836003)(3846002)(1220700001)(189998001)(1730700002)(5008740100001)(10400500002)(81156007)(110136002)(19580395003)(1096002)(19580405001)(16601075003)(107886002)(40100003)(87936001)(2351001)(5001960100002)(11100500001)(2501003)(15975445007)(50986999)(97736004)(77096005)(2900100001)(86362001)(5003600100002)(122556002)(33656002)(92566002)(54356999)(2950100001)(76176999)(106116001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0056;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2015 11:09:46.8753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0056
X-Microsoft-Exchange-Diagnostics: 1; MA1PR01MB0104;
	2:P8PcGC6548QIvj/hZ5+8kun5+edXIcbamMOLCW/8R6Wybl88Taqe+Z+fZ7lPuCsf3wrU35wGhuRhb6G6PYh43/yqPt478Kf53Sta7F2diA8OCmzCRPw3x5DlJORUol4WvWZW0/bNhAeEcTUQHoHoCg==;
	23:5YRsHQn5ASmlMIy3kURUCsz6FLOFXxT/xqv4RTuXoWK0OEg/v3GrBrTXJ0fA2vnE6M7aQ7FyBDpqtP9SIJ8xnLi8XeiF5OH+jpFVqtaRwwIi6X6+YvdjYrEPjH0GfVGuEOXxNakaGaf/it4C/IULp0tMWxvKnc+/ESLx7GYFi+9AgvRZrLPxuG/ry97XGMrq
X-OriginatorOrg: inedasystems.com
Subject: Fw: [dev] Restful application examples
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
X-List-Received-Date: Mon, 21 Dec 2015 11:09:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Could you please respond.



________________________________________
From: Raghavendra Kakarla
Sent: Monday, December 21, 2015 2:39 PM
To: Poussa, Sakari; iotivity-dev@lists.iotivity.org
Subject: Re: [dev] Restful application examples

Hi Sakari,

I downloaded iot-rest-api from the link provided by you.

When I run npm install from my device all are working fine except iotivity-=
1.0.0-1.

While installing the iotivity-1.0.0-1 I got the following error:

npm ERR! Linux 3.19.2-yocto-standard
npm ERR! argv "node" "/usr/lib/node_modules/npm/bin/npm-cli.js" "install"
npm ERR! node v0.12.7
npm ERR! npm  v2.11.3

npm ERR! shasum check failed for /tmp/npm-1110-fe27e2ba/registry.npmjs.org/=
jscs/-/jscs-2.7.0.tgz
npm ERR! Expected: 322906e6777eca1ca52b3f040ba758a98be09c5a
npm ERR! Actual:   9cfa3ba38b4cba7d17639fe6d305d1858539f2b1
npm ERR! From:     https://registry.npmjs.org/jscs/-/jscs-2.7.0.tgz
npm ERR!
npm ERR! If you need help, you may report this error at:
npm ERR!     <https://github.com/npm/npm/issues>

npm ERR! Please include the following file with any support request:
npm ERR!     /home/root/iotivity-node/npm-debug.log


Could please help me in resolving this issue.


Thankyou in advance.

Ragards,
Raghavendra K.

________________________________________
From: Poussa, Sakari <sakari.poussa@intel.com>
Sent: Thursday, December 17, 2015 1:02 PM
To: Raghavendra Kakarla; iotivity-dev@lists.iotivity.org
Subject: Re: [dev] Restful application examples

Raghavendra,

Not in the C code, but we have done a Node.JS REST API server for OIC (usin=
g the iotivity-node bindings which is using the iotivity):

https://github.com/01org/iot-rest-api-server

The repo also contains few test apps for the rest client.

Sakari

From: <iotivity-dev-bounces@lists.iotivity.org<mailto:iotivity-dev-bounces@=
lists.iotivity.org>> on behalf of Raghavendra Kakarla <Raghavendra.Kakarla@=
inedasystems.com<mailto:Raghavendra.Kakarla@inedasystems.com>>
Date: Thursday, December 17, 2015 at 08:40
To: "iotivity-dev@lists.iotivity.org<mailto:iotivity-dev@lists.iotivity.org=
>" <iotivity-dev@lists.iotivity.org<mailto:iotivity-dev@lists.iotivity.org>=
>
Subject: [dev] Restful application examples


Hi All,


I want to send the data from the iotivity sensor node to cloup through ioti=
vity gateway using restful apis.


Could you please give me the information that is there any restful client a=
nd server application in c in iotivity.



Thanks in advance.


Regards,

Raghavendra K.

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

