Return-Path: <enellessen@phoenixcontact.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 666D2E00CC4; Tue, 31 Jul 2018 12:52:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.4.68 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 41551 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 Jul 2018 12:52:33 PDT
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40068.outbound.protection.outlook.com [40.107.4.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B965E00CA1
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 12:52:33 -0700 (PDT)
Received: from VI1PR0501MB2320.eurprd05.prod.outlook.com (10.169.135.21) by
	VI1PR0501MB2319.eurprd05.prod.outlook.com (10.169.135.20) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1017.14; Tue, 31 Jul 2018 18:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iM6eSGNByTsGn+FDcA6cTRMYAL4KsNvFRi1yjKeMFtY=;
	b=JnRuzMi25kwPvrzPkrKPvTQcjgHMUxuHk1+nDxWstmdkXtm829dDWd/dS2wjcfbrgsNSzBofcOzrsyEtWIsFym7k4st6B3q82TQYmswrSFfL4SvDKDekx65VVqAfdVMzoXXgcIsERyBZGeJBj4xm9r/cz1trehdF5Ng4Mk3UhFQ=
Received: from VI1PR0501MB2320.eurprd05.prod.outlook.com (10.169.135.21) by
	VI1PR0501MB2320.eurprd05.prod.outlook.com (10.169.135.21) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.995.17; Mon, 30 Jul 2018 07:48:22 +0000
Received: from VI1PR0501MB2320.eurprd05.prod.outlook.com
	([fe80::4d9d:465c:4aca:25cb]) by
	VI1PR0501MB2320.eurprd05.prod.outlook.com
	([fe80::4d9d:465c:4aca:25cb%12]) with mapi id 15.20.0995.020;
	Mon, 30 Jul 2018 07:48:22 +0000
From: Erik Nellessen <enellessen@phoenixcontact.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Non-deterministic build error in package gcc-source
Thread-Index: AQHUJ9hk2niGgoB35k6JXQIK/AT+jg==
Date: Mon, 30 Jul 2018 07:48:21 +0000
Message-ID: <VI1PR0501MB2320523BE7412E38D0AB4525B82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=enellessen@phoenixcontact.com; 
x-originating-ip: [77.245.32.76]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0501MB2320;
	6:PM80PTreJb8jJKPtd+hRv2i82NOUqJ+5TmW/9ZNzgSm63lZQ4LVTFNXi5dO9NxDbPTnDMEwDS7e99yuWcD6Cb3uX+/hwDRDbDjw2ycveaZsWHGTrwNXTZBpr9rs9DdKmcsXWSqv+mq0MKAaJTJ4W0GvejOgeKWJfiRTOvkM7dTfliEOqnE7NRpgfRFfAq+2iyTzIU/isV30Cr/OeBSdPb3NOi9qnx04IT9mgTpZGMihrp2FfOoP56h9BriMhj7frE/of7NoCb0huDkqpvQcOJRfb56bTV38gHSiDP51xRq5m3nU8OyiafW4UeMSFHNr0VJLHhXsaHe9PYkNoWwpqNK6YHP3CXKjnoYECBWd5G0rWLmGWpY352J5ciGEdHwjuWVwur2xchSOQ15mL4Z37loE3fs/07/hRvgFB6kitPE+u1zXTgJ+W13BJ656Iv+6YEqMLzICZFtDRA9xio0pB0A==;
	5:AtdIwPimozigx+6WqY/XerXqSzKvpuw5XfzKUUoC1Wy3OJiWqzQK1Bf1V4bdmcNtmamm2cENHLA9uhLFyPaVftHH8wKqo7A7GNp77ZUQB7mQSYPrcsspm1HRi7A92I4rDt5RETCiGzuVSmZ8U3iNIZK956bo3CW050HUpx2YzMM=;
	7:DY8epgPXuP0Url65mJTfNuIzFAZb0T557zpWjbtCXahw8U0hrpEdUDN0gwWfzezxTN1uIDREN2D/QN4IXn1iM9elMX02c8mMI62JLXhH+mN573mW2LFwpBzvp4/RYD29J/SUR2HZy49jio7oONPt3+GTUxIeJP1Tvw72fDCYNHLxE8KDnIl4iGCxU71dUFNN2QfKCXjWorgFpr1vbR+eqNkBwgjW0L+Ebs0uh6MQ2sXA/w3++TAk4GkARqXKcoGh
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 3b81ba10-25e4-4967-909f-08d5f5f0d2c7
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989117)(5600074)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990107)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:VI1PR0501MB2320; 
X-MS-TrafficTypeDiagnostic: VI1PR0501MB2320:|VI1PR0501MB2320:|VI1PR0501MB2320:|VI1PR0501MB2319:|VI1PR0501MB2319:
x-microsoft-antispam-prvs: <VI1PR0501MB2320C5DC135B80AEB745334BB82F0@VI1PR0501MB2320.eurprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(223705240517415);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(102415395)(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:VI1PR0501MB2320; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0501MB2320; 
x-forefront-prvs: 0749DC2CE6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(376002)(136003)(39840400004)(346002)(396003)(189003)(199004)(6506007)(99936001)(6116002)(9686003)(3846002)(54896002)(102836004)(486006)(186003)(5024004)(14444005)(7696005)(575784001)(86362001)(55016002)(19627405001)(53936002)(68736007)(6916009)(6606003)(476003)(5640700003)(33656002)(8936002)(74316002)(25786009)(316002)(2501003)(2900100001)(2906002)(6436002)(5660300001)(14454004)(5250100002)(7736002)(256004)(26005)(81156014)(66066001)(99286004)(97736004)(105586002)(106356001)(8676002)(2351001)(1730700003)(81166006)(478600001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0501MB2320;
	H:VI1PR0501MB2320.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: phoenixcontact.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: lQa3RErWEzVDKOyBLE1+3yYv5UJCZR6wrPC0YHSfh7U715/ruqW7sVClDkckJbn3Ux8an3zFLM9NPW3mZIQML6RPhigzVnhvDwKiTEvTMewjym82DY1VN4df85ti27I8AjbbYWEsx18/IHWWjswRBcpowzfEk7Js8u88GNvYuHU7Xjz+A5FP0TX0D7Y+zfbMZRLR784UDWkuHQHiXQUCTX+aSsZRKlY//4N6C7JWFFgjbh8wjUDc9G4ohE+GUAmiHGBKKC2h5uJX0BGdl10ytyaXGrXcHADSu5mYnFEgKOpSk6SPFuzTPKHEgjsHYRL8sOI4+u1ox27Ta+WHMXbGrJmBd1yikpeeAJFeIvku7yI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b81ba10-25e4-4967-909f-08d5f5f0d2c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2018 07:48:21.8291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6868843b-f012-4c95-a18e-bab826cca9ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2320
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0501MB2319;
	23:ERrFlqUUCVMjV/2eRNQLBUvkqT8z2rSw4+86qQQaOEkmi5WGhIuFwJl3LNrXunaEzCLAeRLf9a8HlcAimTmuY+NOSK7CbC08frna3i2HGOEJ0ZIfbLi5Fdgl4DabbC3iZ561nNGXsV3JcH0uoLk0Mw==;
	23:+lXb5eYBDMefXXfx5jbJymKxEAGevIUOWq0/8T+f1FAkwDP5CwmkUYd6dsTa+j4WcTwCaShYreZwhPwlraHjQlztcSKPFWxA8F+u9xaI3FHzcHIffMFZBRAlv8dl9KYvbf+MwOD7l/4140Pp8SXqWA==
X-OriginatorOrg: phoenixcontact.com
Subject: Non-deterministic build error in package gcc-source
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
X-List-Received-Date: Tue, 31 Jul 2018 19:52:35 -0000
X-Groupsio-MsgNum: 42006
Content-Language: de-DE
Content-Type: multipart/mixed;
	boundary="_004_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_"

--_004_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_"

--_000_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are building an operating system based on poky (f0ec7c8b2dc1797ba22c4565=
3a5f182b63354092, bitbake: toaster: add 'Sumo' to release selection).


Sometimes (about 1 in 10 times) our build fails, because the task do_ar_pat=
ched fails for package gcc-source-7.3.0-7.3.0-r0.


The short error message:

14:44:09 Exception: FileNotFoundError: [Errno 2] No such file or directory:=
 '/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU5=
BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc-7.3.=
0-r0/gcc-7.3.0/gcc/gengtype-lex.c'
14:44:09
14:44:09 ERROR: gcc-source-7.3.0-7.3.0-r0 do_ar_patched: Function failed: d=
o_ar_patched
14:44:09 ERROR: Logfile of failure stored in: /home/jenkins/workspace/_Conf=
ig_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ=
_2/build/qemux86-64_tmp/work-shared/gcc-7.3.0-r0/temp/log.do_ar_patched.432=
42
14:44:09 NOTE: recipe gcc-source-7.3.0-7.3.0-r0: task do_ar_patched: Failed
14:44:09 ERROR: Task (/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-Q=
LU3J23WOWLZZG76AVHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2//mguard/poky/meta/rec=
ipes-devtools/gcc/gcc-source_7.3.bb:do_ar_patched) failed with exit code '1=
'


I attached the full error message as a text file.


Does anybody know this error message? Does anybody experience similar probl=
ems with non-deterministic build failure?


Kind regards,

Erik

..................................................................
Phoenix Contact GmbH & Co. KG

Sitz der Gesellschaft / registered office of the company: 32825 Blomberg
USt-Id-Nr.: DE124613250
Pers. haftende Gesellschafterin / personally liable partner: Phoenix Contac=
t Verwaltungs GmbH
Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273
Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership distr=
ict court Lemgo HRA 3746
Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzender / =
Chief Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachh=
olz
___________________________________________________________________
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren, jegliche anderweitige Verwendu=
ng sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet.
---------------------------------------------------------------------------=
-------------------------
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure, distribution or other use of the material or parts the=
reof is strictly forbidden.
___________________________________________________________________

--_000_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">We are building an operating syst=
em based on poky (<span>f0ec7c8b2dc1797ba22c45653a5f182b63354092</span>,
<span>bitbake: toaster: add 'Sumo' to release selection</span>).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Sometimes (about 1 in 10 times) o=
ur build fails, because the task
<span>do_ar_patched fails for package gcc-source-7.3.0-7.3.0-r0.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>The short error message:</s=
pan></p>
<p style=3D"margin-top:0;margin-bottom:0"><span></p>
<div>14:44:09 Exception: FileNotFoundError: [Errno 2] No such file or direc=
tory: '/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76=
AVHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2/build/qemux86-64_tmp/work-shared/gcc=
-7.3.0-r0/gcc-7.3.0/gcc/gengtype-lex.c'<br>
14:44:09 <br>
14:44:09 ERROR: gcc-source-7.3.0-7.3.0-r0 do_ar_patched: Function failed: d=
o_ar_patched<br>
14:44:09 ERROR: Logfile of failure stored in: /home/jenkins/workspace/_Conf=
ig_mguard_0.1.0_MG-254-QLU3J23WOWLZZG76AVHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ=
_2/build/qemux86-64_tmp/work-shared/gcc-7.3.0-r0/temp/log.do_ar_patched.432=
42<br>
14:44:09 NOTE: recipe gcc-source-7.3.0-7.3.0-r0: task do_ar_patched: Failed=
<br>
14:44:09 ERROR: Task (/home/jenkins/workspace/_Config_mguard_0.1.0_MG-254-Q=
LU3J23WOWLZZG76AVHU5BVY3M7SIU3EOQQQSUQNOEXHTXRFTQMQ_2//mguard/poky/meta/rec=
ipes-devtools/gcc/gcc-source_7.3.bb:do_ar_patched) failed with exit code '1=
'</div>
<br>
</span>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>I attached the full error m=
essage as a text file.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Does anybody know this erro=
r message? Does anybody experience similar problems with non-deterministic =
build failure?</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Kind regards,</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Erik</span><br>
</p>
<div id=3D"Signature"></div>
</div>
..................................................................<br>
Phoenix Contact GmbH &amp; Co. KG<br>
<br>
Sitz der Gesellschaft / registered office of the company: 32825 Blomberg<br=
>
USt-Id-Nr.: DE124613250<br>
Pers. haftende Gesellschafterin / personally liable partner: Phoenix Contac=
t Verwaltungs GmbH<br>
Amtsgericht Lemgo HRB 5273 / district court Lemgo HRB 5273<br>
Kom. Ges. Amtsgericht Lemgo HRA 3746 / limited commercial partnership distr=
ict court Lemgo HRA 3746<br>
Gesch=E4ftsf=FChrer / Executive Board: Frank St=FChrenberg (Vorsitzender / =
Chief Executive Officer), Roland Bent, Prof. Dr. Gunther Olesch, Axel Wachh=
olz<br>
___________________________________________________________________<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FC=
mlich erhalten haben, informieren Sie bitte sofort den Absender und vernich=
ten Sie diese Mail. Das unerlaubte Kopieren,
 jegliche anderweitige Verwendung sowie die unbefugte Weitergabe dieser Mai=
l ist nicht gestattet.<br>
---------------------------------------------------------------------------=
-------------------------<br>
This e-mail may contain confidential and/or privileged information. If you =
are not the intended recipient (or have received this e-mail in error) plea=
se notify the sender immediately and destroy this e-mail. Any unauthorized =
copying, disclosure, distribution
 or other use of the material or parts thereof is strictly forbidden.<br>
___________________________________________________________________
</body>
</html>

--_000_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_--

--_004_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_
Content-Type: text/plain; name="error_message_do_ar_patched.txt"
Content-Description: error_message_do_ar_patched.txt
Content-Disposition: attachment; filename="error_message_do_ar_patched.txt";
	size=4777; creation-date="Mon, 30 Jul 2018 07:47:31 GMT";
	modification-date="Mon, 30 Jul 2018 07:47:31 GMT"
Content-Transfer-Encoding: base64

MTQ6NDQ6MDkgRVJST1I6IGdjYy1zb3VyY2UtNy4zLjAtNy4zLjAtcjAgZG9fYXJfcGF0Y2hlZDog
RXJyb3IgZXhlY3V0aW5nIGEgcHl0aG9uIGZ1bmN0aW9uIGluIGV4ZWNfcHl0aG9uX2Z1bmMoKSBh
dXRvZ2VuZXJhdGVkOgoxNDo0NDowOSAKMTQ6NDQ6MDkgVGhlIHN0YWNrIHRyYWNlIG9mIHB5dGhv
biBjYWxscyB0aGF0IHJlc3VsdGVkIGluIHRoaXMgZXhjZXB0aW9uL2ZhaWx1cmUgd2FzOgoxNDo0
NDowOSBGaWxlOiAnZXhlY19weXRob25fZnVuYygpIGF1dG9nZW5lcmF0ZWQnLCBsaW5lbm86IDIs
IGZ1bmN0aW9uOiA8bW9kdWxlPgoxNDo0NDowOSAgICAgIDAwMDE6CjE0OjQ0OjA5ICAqKiogMDAw
Mjpkb19hcl9wYXRjaGVkKGQpCjE0OjQ0OjA5ICAgICAgMDAwMzoKMTQ6NDQ6MDkgRmlsZTogJy9o
b21lL2plbmtpbnMvd29ya3NwYWNlL19Db25maWdfbWd1YXJkXzAuMS4wX01HLTI1NC1RTFUzSjIz
V09XTFpaRzc2QVZIVTVCVlkzTTdTSVUzRU9RUVFTVVFOT0VYSFRYUkZUUU1RXzIvL21ndWFyZC9w
b2t5L21ldGEvY2xhc3Nlcy9hcmNoaXZlci5iYmNsYXNzJywgbGluZW5vOiAyMTksIGZ1bmN0aW9u
OiBkb19hcl9wYXRjaGVkCjE0OjQ0OjA5ICAgICAgMDIxNTogICAgYXJfb3V0ZGlyID0gZC5nZXRW
YXIoJ0FSQ0hJVkVSX09VVERJUicpCjE0OjQ0OjA5ICAgICAgMDIxNjogICAgYXJfd29ya2RpciA9
IGQuZ2V0VmFyKCdBUkNISVZFUl9XT1JLRElSJykKMTQ6NDQ6MDkgICAgICAwMjE3OiAgICBiYi5u
b3RlKCdBcmNoaXZpbmcgdGhlIHBhdGNoZWQgc291cmNlLi4uJykKMTQ6NDQ6MDkgICAgICAwMjE4
OiAgICBkLnNldFZhcignV09SS0RJUicsIGFyX3dvcmtkaXIpCjE0OjQ0OjA5ICAqKiogMDIxOTog
ICAgY3JlYXRlX3RhcmJhbGwoZCwgZC5nZXRWYXIoJ1MnKSwgJ3BhdGNoZWQnLCBhcl9vdXRkaXIp
CjE0OjQ0OjA5ICAgICAgMDIyMDp9CjE0OjQ0OjA5ICAgICAgMDIyMToKMTQ6NDQ6MDkgICAgICAw
MjIyOnB5dGhvbiBkb19hcl9jb25maWd1cmVkKCkgewoxNDo0NDowOSAgICAgIDAyMjM6ICAgIGlt
cG9ydCBzaHV0aWwKMTQ6NDQ6MDkgRmlsZTogJy9ob21lL2plbmtpbnMvd29ya3NwYWNlL19Db25m
aWdfbWd1YXJkXzAuMS4wX01HLTI1NC1RTFUzSjIzV09XTFpaRzc2QVZIVTVCVlkzTTdTSVUzRU9R
UVFTVVFOT0VYSFRYUkZUUU1RXzIvL21ndWFyZC9wb2t5L21ldGEvY2xhc3Nlcy9hcmNoaXZlci5i
YmNsYXNzJywgbGluZW5vOiAyOTQsIGZ1bmN0aW9uOiBjcmVhdGVfdGFyYmFsbAoxNDo0NDowOSAg
ICAgIDAyOTA6ICAgIHRhcm5hbWUgPSBvcy5wYXRoLmpvaW4oYXJfb3V0ZGlyLCBmaWxlbmFtZSkK
MTQ6NDQ6MDkgICAgICAwMjkxOgoxNDo0NDowOSAgICAgIDAyOTI6ICAgIGJiLm5vdGUoJ0NyZWF0
aW5nICVzJyAlIHRhcm5hbWUpCjE0OjQ0OjA5ICAgICAgMDI5MzogICAgdGFyID0gdGFyZmlsZS5v
cGVuKHRhcm5hbWUsICd3Omd6JykKMTQ6NDQ6MDkgICoqKiAwMjk0OiAgICB0YXIuYWRkKHNyY2Rp
ciwgYXJjbmFtZT1vcy5wYXRoLmJhc2VuYW1lKHNyY2RpcikpCjE0OjQ0OjA5ICAgICAgMDI5NTog
ICAgdGFyLmNsb3NlKCkKMTQ6NDQ6MDkgICAgICAwMjk2OgoxNDo0NDowOSAgICAgIDAyOTc6IyBj
cmVhdGluZyAuZGlmZi5neiBiZXR3ZWVuIHNvdXJjZS5vcmlnIGFuZCBzb3VyY2UKMTQ6NDQ6MDkg
ICAgICAwMjk4OmRlZiBjcmVhdGVfZGlmZl9neihkLCBzcmNfb3JpZywgc3JjLCBhcl9vdXRkaXIp
OgoxNDo0NDowOSBGaWxlOiAnL3Vzci9saWIvcHl0aG9uMy41L3RhcmZpbGUucHknLCBsaW5lbm86
IDE5NDUsIGZ1bmN0aW9uOiBhZGQKMTQ6NDQ6MDkgICAgICAxOTQxOiAgICAgICAgICAgIHNlbGYu
YWRkZmlsZSh0YXJpbmZvKQoxNDo0NDowOSAgICAgIDE5NDI6ICAgICAgICAgICAgaWYgcmVjdXJz
aXZlOgoxNDo0NDowOSAgICAgIDE5NDM6ICAgICAgICAgICAgICAgIGZvciBmIGluIG9zLmxpc3Rk
aXIobmFtZSk6CjE0OjQ0OjA5ICAgICAgMTk0NDogICAgICAgICAgICAgICAgICAgIHNlbGYuYWRk
KG9zLnBhdGguam9pbihuYW1lLCBmKSwgb3MucGF0aC5qb2luKGFyY25hbWUsIGYpLAoxNDo0NDow
OSAgKioqIDE5NDU6ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlY3Vyc2l2ZSwgZXhjbHVk
ZSwgZmlsdGVyPWZpbHRlcikKMTQ6NDQ6MDkgICAgICAxOTQ2OgoxNDo0NDowOSAgICAgIDE5NDc6
ICAgICAgICBlbHNlOgoxNDo0NDowOSAgICAgIDE5NDg6ICAgICAgICAgICAgc2VsZi5hZGRmaWxl
KHRhcmluZm8pCjE0OjQ0OjA5ICAgICAgMTk0OToKMTQ6NDQ6MDkgRmlsZTogJy91c3IvbGliL3B5
dGhvbjMuNS90YXJmaWxlLnB5JywgbGluZW5vOiAxOTQ1LCBmdW5jdGlvbjogYWRkCjE0OjQ0OjA5
ICAgICAgMTk0MTogICAgICAgICAgICBzZWxmLmFkZGZpbGUodGFyaW5mbykKMTQ6NDQ6MDkgICAg
ICAxOTQyOiAgICAgICAgICAgIGlmIHJlY3Vyc2l2ZToKMTQ6NDQ6MDkgICAgICAxOTQzOiAgICAg
ICAgICAgICAgICBmb3IgZiBpbiBvcy5saXN0ZGlyKG5hbWUpOgoxNDo0NDowOSAgICAgIDE5NDQ6
ICAgICAgICAgICAgICAgICAgICBzZWxmLmFkZChvcy5wYXRoLmpvaW4obmFtZSwgZiksIG9zLnBh
dGguam9pbihhcmNuYW1lLCBmKSwKMTQ6NDQ6MDkgICoqKiAxOTQ1OiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZWN1cnNpdmUsIGV4Y2x1ZGUsIGZpbHRlcj1maWx0ZXIpCjE0OjQ0OjA5ICAg
ICAgMTk0NjoKMTQ6NDQ6MDkgICAgICAxOTQ3OiAgICAgICAgZWxzZToKMTQ6NDQ6MDkgICAgICAx
OTQ4OiAgICAgICAgICAgIHNlbGYuYWRkZmlsZSh0YXJpbmZvKQoxNDo0NDowOSAgICAgIDE5NDk6
CjE0OjQ0OjA5IEZpbGU6ICcvdXNyL2xpYi9weXRob24zLjUvdGFyZmlsZS5weScsIGxpbmVubzog
MTkyMiwgZnVuY3Rpb246IGFkZAoxNDo0NDowOSAgICAgIDE5MTg6CjE0OjQ0OjA5ICAgICAgMTkx
OTogICAgICAgIHNlbGYuX2RiZygxLCBuYW1lKQoxNDo0NDowOSAgICAgIDE5MjA6CjE0OjQ0OjA5
ICAgICAgMTkyMTogICAgICAgICMgQ3JlYXRlIGEgVGFySW5mbyBvYmplY3QgZnJvbSB0aGUgZmls
ZS4KMTQ6NDQ6MDkgICoqKiAxOTIyOiAgICAgICAgdGFyaW5mbyA9IHNlbGYuZ2V0dGFyaW5mbyhu
YW1lLCBhcmNuYW1lKQoxNDo0NDowOSAgICAgIDE5MjM6CjE0OjQ0OjA5ICAgICAgMTkyNDogICAg
ICAgIGlmIHRhcmluZm8gaXMgTm9uZToKMTQ6NDQ6MDkgICAgICAxOTI1OiAgICAgICAgICAgIHNl
bGYuX2RiZygxLCAidGFyZmlsZTogVW5zdXBwb3J0ZWQgdHlwZSAlciIgJSBuYW1lKQoxNDo0NDow
OSAgICAgIDE5MjY6ICAgICAgICAgICAgcmV0dXJuCjE0OjQ0OjA5IEZpbGU6ICcvdXNyL2xpYi9w
eXRob24zLjUvdGFyZmlsZS5weScsIGxpbmVubzogMTc5MSwgZnVuY3Rpb246IGdldHRhcmluZm8K
MTQ6NDQ6MDkgICAgICAxNzg3OiAgICAgICAgIyBVc2Ugb3Muc3RhdCBvciBvcy5sc3RhdCwgZGVw
ZW5kaW5nIG9uIHBsYXRmb3JtCjE0OjQ0OjA5ICAgICAgMTc4ODogICAgICAgICMgYW5kIGlmIHN5
bWxpbmtzIHNoYWxsIGJlIHJlc29sdmVkLgoxNDo0NDowOSAgICAgIDE3ODk6ICAgICAgICBpZiBm
aWxlb2JqIGlzIE5vbmU6CjE0OjQ0OjA5ICAgICAgMTc5MDogICAgICAgICAgICBpZiBoYXNhdHRy
KG9zLCAibHN0YXQiKSBhbmQgbm90IHNlbGYuZGVyZWZlcmVuY2U6CjE0OjQ0OjA5ICAqKiogMTc5
MTogICAgICAgICAgICAgICAgc3RhdHJlcyA9IG9zLmxzdGF0KG5hbWUpCjE0OjQ0OjA5ICAgICAg
MTc5MjogICAgICAgICAgICBlbHNlOgoxNDo0NDowOSAgICAgIDE3OTM6ICAgICAgICAgICAgICAg
IHN0YXRyZXMgPSBvcy5zdGF0KG5hbWUpCjE0OjQ0OjA5ICAgICAgMTc5NDogICAgICAgIGVsc2U6
CjE0OjQ0OjA5ICAgICAgMTc5NTogICAgICAgICAgICBzdGF0cmVzID0gb3MuZnN0YXQoZmlsZW9i
ai5maWxlbm8oKSkKMTQ6NDQ6MDkgRXhjZXB0aW9uOiBGaWxlTm90Rm91bmRFcnJvcjogW0Vycm5v
IDJdIE5vIHN1Y2ggZmlsZSBvciBkaXJlY3Rvcnk6ICcvaG9tZS9qZW5raW5zL3dvcmtzcGFjZS9f
Q29uZmlnX21ndWFyZF8wLjEuMF9NRy0yNTQtUUxVM0oyM1dPV0xaWkc3NkFWSFU1QlZZM003U0lV
M0VPUVFRU1VRTk9FWEhUWFJGVFFNUV8yL2J1aWxkL3FlbXV4ODYtNjRfdG1wL3dvcmstc2hhcmVk
L2djYy03LjMuMC1yMC9nY2MtNy4zLjAvZ2NjL2dlbmd0eXBlLWxleC5jJwoxNDo0NDowOSAKMTQ6
NDQ6MDkgRVJST1I6IGdjYy1zb3VyY2UtNy4zLjAtNy4zLjAtcjAgZG9fYXJfcGF0Y2hlZDogRnVu
Y3Rpb24gZmFpbGVkOiBkb19hcl9wYXRjaGVkCjE0OjQ0OjA5IEVSUk9SOiBMb2dmaWxlIG9mIGZh
aWx1cmUgc3RvcmVkIGluOiAvaG9tZS9qZW5raW5zL3dvcmtzcGFjZS9fQ29uZmlnX21ndWFyZF8w
LjEuMF9NRy0yNTQtUUxVM0oyM1dPV0xaWkc3NkFWSFU1QlZZM003U0lVM0VPUVFRU1VRTk9FWEhU
WFJGVFFNUV8yL2J1aWxkL3FlbXV4ODYtNjRfdG1wL3dvcmstc2hhcmVkL2djYy03LjMuMC1yMC90
ZW1wL2xvZy5kb19hcl9wYXRjaGVkLjQzMjQyCjE0OjQ0OjA5IE5PVEU6IHJlY2lwZSBnY2Mtc291
cmNlLTcuMy4wLTcuMy4wLXIwOiB0YXNrIGRvX2FyX3BhdGNoZWQ6IEZhaWxlZAoxNDo0NDowOSBF
UlJPUjogVGFzayAoL2hvbWUvamVua2lucy93b3Jrc3BhY2UvX0NvbmZpZ19tZ3VhcmRfMC4xLjBf
TUctMjU0LVFMVTNKMjNXT1dMWlpHNzZBVkhVNUJWWTNNN1NJVTNFT1FRUVNVUU5PRVhIVFhSRlRR
TVFfMi8vbWd1YXJkL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2djYy9nY2Mtc291cmNlXzcu
My5iYjpkb19hcl9wYXRjaGVkKSBmYWlsZWQgd2l0aCBleGl0IGNvZGUgJzEnCg==

--_004_VI1PR0501MB2320523BE7412E38D0AB4525B82F0VI1PR0501MB2320_--
