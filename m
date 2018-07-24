Return-Path: <Nisha.Parrakat@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9DE0E009AA; Tue, 24 Jul 2018 03:52:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.40 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 848 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jul 2018 03:52:24 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0040.outbound.protection.outlook.com [104.47.101.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F001E006F1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 03:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GRsvrz15r5CHPd9dTF9R+NwKnLQ8q36FQuC1atPSPdE=;
	b=bykh4mhLVc7n68XIBsPpFDIF4ULYjCbeZiRuqxJsFvyaWUItUF31/eZC/bFML9kHYeqc09wI/BWyOldGCzV58feM3YLZdD1xnhA78+3JC8BcecSmXc93b0ibWU25+N6i3khLBKavk0ELRfDYsvA9L/m4VKtwwI1CBNiD74AtS6g=
Received: from MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM (10.164.122.7) by
	MA1PR01MB0279.INDPRD01.PROD.OUTLOOK.COM (10.164.120.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.973.21; Tue, 24 Jul 2018 10:38:12 +0000
Received: from MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM
	([fe80::d821:754b:7f3a:424d]) by
	MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM
	([fe80::d821:754b:7f3a:424d%6]) with mapi id 15.20.0973.022;
	Tue, 24 Jul 2018 10:38:12 +0000
From: Nisha Parrakat <Nisha.Parrakat@kpit.com>
To: "openembedded-issues@lists.openembedded.org"
	<openembedded-issues@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Thread-Topic: [meta-openembedded] Original ltrace_git.bb SRCREV  commit used
	is now unavailable in git tarball from ltrace.org
Thread-Index: AQHUIzoV3BiBKx3WjkiwsHOhpDxktQ==
Date: Tue, 24 Jul 2018 10:38:12 +0000
Message-ID: <MA1PR01MB053655685322C5FE49975DADEE550@MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Nisha.Parrakat@kpit.com; 
x-originating-ip: [217.89.178.116]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0279;
	6:vGeWSbJTEEZ3vy/lnUw8qAywrsF1UHpsV7PSuEcLbwiCErHQMS4W3uRBdT1gt35dmJoytuak9FmhhT75SQmnzRQhTWKyloVGfA68QmJMdUXS4g2mzMkvwcE9eY7X8n/BhoHb6QRo4GdkmAdwseBCFaz61ueqAKm5abrgr8IdPiUV7oMVDuSBn+Cdn0Vy8nt4sA78IgirhW6bzSxIupIQmRQnc491p7BDcbHEb/QYNCIRQGA/rP5h1oC4xlHwe/4YDVIZc83BSIUVxDr0RSUduD2r4CC0ib2VMMB3DRwfsfAjmjXDZ/Ekqn/XJVQ5KEb8s0qlURbrr7eAh1sf5YWtzEiZr7WW4RtXwPv0eaWlF2zkjilr9fMsF5CK+fgRhXTWGxXOblojU+Wjwm5tPS991ceNTa610RHnAJ/s0sK6XWuL4CVfsVRiYZM7OGR2cCQ1cGGHC9E1NipH8J3UnO4dZg==;
	5:ivN3ptkasrSDZV9Uwr+6KEOHFhyVYFAiZK9viQRGb/dhef/nu+tHK7UnuVmL6XGHukdlNJC7L6AvRRKD7SQmpekxswvwt15CDepRWaPoSiwHcduKYBK9E8Q7VPzDpsEyM4bTs7s2uQp0PctK7eMtox2C3dJ2kyOGE0IZaE9geUs=;
	7:H/xvXhKrwlhlzNt9AL53q1QCXdaWqhi5NIjVqpzq58nRayC3PdH/nxwupyG7qvfVYJlm+k8SEZjQGic8F4ymrPyPKkGKXh6t0Tz+XrPU71YnZQpSc0PuHzF8iJpXgdlNwL97ObArQ3+pSFU2bOY2NuFDZs7uX+8AMySJ/dSuHHOIS6cfIJMjMkQYONainRnaaO6z0zX3TNl/movRcPyKHTlJHlGs3HL9vNvlkQ702XfRwnrKqf2wOJoR/k2P2U7I
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: def76337-6b06-480f-f995-08d5f1518e5c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600073)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB0279; 
x-ms-traffictypediagnostic: MA1PR01MB0279:
x-microsoft-antispam-prvs: <MA1PR01MB02792FA2A493CB41F420B95DEE550@MA1PR01MB0279.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(223705240517415);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93001095)(3231311)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(20161123562045)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:MA1PR01MB0279; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0279; 
x-forefront-prvs: 0743E8D0A6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(396003)(136003)(376002)(346002)(366004)(199004)(189003)(53754006)(14444005)(478600001)(9686003)(476003)(486006)(54896002)(55016002)(6436002)(68736007)(256004)(33656002)(105586002)(25786009)(106356001)(7696005)(81166006)(8676002)(81156014)(8936002)(7736002)(2906002)(110136005)(99286004)(5660300001)(66066001)(97736004)(102836004)(6116002)(3846002)(186003)(26005)(6606003)(74316002)(316002)(19627405001)(2900100001)(99946001)(6506007)(1857600001)(5250100002)(72206003)(86362001)(2501003)(4326008)(14454004)(53936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0279;
	H:MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: R1s4yMn3R1RBXPfnLviIKSU4/YuIU9ujjilOk+BXe4ujKNdk/A/Yu/TlGLB7mQmytEMgVoIYKZpzNvelaNJSFgl6/y18WaaSdDY6Nj9Wz7lcLuTQIMS09UsQ4TnQYC/GNeZNJevp+qJUHBBoEFtw96Uj/Cw17HsaO24UUQz8aPSNWFveAwN8coEjHpojPTnO/2bG+f/h7xe91ZcmZc/EMNu+W/1K22LLOKx7cTOWAplqmAGcaKmfh+kEQsDC9vHO183ygcK3CTtVS+ypTBK0GZBpLH+gjZIv7I5+E85xjeriy2T2RznMQcKmOCQDwy6RcCp6/EvcJgT1iTv/DxHdxlGZHVsdkZqx0h8xmzRUe2Q=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: def76337-6b06-480f-f995-08d5f1518e5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2018 10:38:12.2713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0279
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-openembedded] Original ltrace_git.bb SRCREV commit used is now unavailable in git tarball from ltrace.org
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
X-List-Received-Date: Tue, 24 Jul 2018 10:52:27 -0000
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB053655685322C5FE49975DADEE550MA1PR01MB0536INDP_"

--_000_MA1PR01MB053655685322C5FE49975DADEE550MA1PR01MB0536INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


ltrace recipe is pointing to a fetch url (git://anonscm.debian.org/collab-m=
aint/ltrace.git;branch=3Dmaster) that is discontinued now.

No ltrace found in alternate salsa.debian.org.

Tarball for ltrace is present in ltrace.org but the SRCREV in the mentioned=
 in the original recipe is not found any more but we do see the same commit=
 with another sha but a different git history.


Please advice if we should modify the SRCREV to reflect the new git source =
from ltrace.org?


original SRCREV in recipe c22d3594...

corresponding SRCREV coming from the git tarball is ea8928da...


Please advice .




Regards,
Ms Nisha Parrakat
KPIT Technologies Ltd, Pune, INDIA


This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MA1PR01MB053655685322C5FE49975DADEE550MA1PR01MB0536INDP_
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
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif;">Hi all,</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">ltrace recipe is pointing to a=
 fetch url (</span><span style=3D"color: rgb(36, 41, 46); font-family: Cali=
bri, Helvetica, sans-serif; font-size: 12pt; white-space: pre;">git://anons=
cm.debian.org/collab-maint/ltrace.git;branch=3Dmaster</span><span style=3D"=
font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;">)
 that is discontinued now.&nbsp;</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">No ltrace found in alternate s=
alsa.debian.org.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">Tarball for ltrace is present =
in ltrace.org but the SRCREV in the mentioned in the original recipe is not=
 found any more but we do see the same
 commit with another sha but a different git history.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">Please advice if we should mod=
ify the SRCREV to reflect the new git source from ltrace.org?</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-family: Calib=
ri, Helvetica, sans-serif; font-size: 12pt;">original SRCREV in recipe&nbsp=
;</span><span style=3D"color: rgb(36, 41, 46); font-family: Calibri, Helvet=
ica, sans-serif; font-size: 12pt; white-space: pre;">c22d3594...
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><font color=3D"#24292e" face=3D"S=
FMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span =
style=3D"font-size: 12pt; white-space: pre; font-family: Calibri, Helvetica=
, sans-serif;">corresponding SRCREV coming
 from the git tarball is ea8928da...</span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><font color=3D"#24292e" face=3D"S=
FMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span =
style=3D"font-size: 12pt; white-space: pre; font-family: Calibri, Helvetica=
, sans-serif;">Please advice .</span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><font color=3D"#24292e" face=3D"S=
FMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"><span =
style=3D"font-size: 12px; white-space: pre;"><br>
</span></font></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<pre class=3D"code-none" style=3D"margin-top: 0px; margin-bottom: 0px; padd=
ing: 0px; max-height: 30em; overflow: auto; white-space: pre-wrap; word-wra=
p: normal; color: rgb(51, 51, 51); font-size: 12px; background-color: rgb(2=
45, 245, 245);"></pre>
<br>
<p></p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font color=3D"#003366" face=3D"Calibri,Arial,Helvetica,sans-serif" size=3D=
"2"><span style=3D"font-size:10pt"><font face=3D"Calibri,Arial,Helvetica,sa=
ns-serif"><font face=3D"Tahoma" size=3D"1"><span style=3D"font-size:13px">
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">Regards,</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">Ms Nisha Parrakat<br>
</font></div>
<div style=3D"margin-top:0; margin-bottom:0"><font face=3D"Calibri,Arial,He=
lvetica,sans-serif" size=3D"2">KPIT Technologies Ltd, Pune, INDIA</font></d=
iv>
</span></font></font></span></font><br>
<br>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MA1PR01MB053655685322C5FE49975DADEE550MA1PR01MB0536INDP_--
