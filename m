Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C21E00A10; Fri,  9 Nov 2018 06:36:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.100.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0043.outbound.protection.outlook.com [104.47.100.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF71E00901
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vQek7oaiNZUmYBu/yNyedmSFZv4reNSiuAqqn+DQPjQ=;
	b=Cf7Q2hhfjZQsAgnPXG1taWJFg3/LtbR3DZ9R2E44gugPWQRzHKQKm23oCVpM5my0w/4Zt85eP3yaTRaxbki+GYicLB6a5OC15Gi5VyWKVWo50O0zDc+53qvNXFv7Mg+5ILVZaRaPXGEmP1JaiLssUJAQxH+LQ0ons1AU+xacCf8=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB2699.INDPRD01.PROD.OUTLOOK.COM (52.134.148.205) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.21; Fri, 9 Nov 2018 14:21:17 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d%4]) with mapi id 15.20.1294.034;
	Fri, 9 Nov 2018 14:21:17 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] so how does PACKAGECONFIG_remove really work?
Thread-Index: AQHUeDV4pElhuLdu3kuRYa/axKzlQqVHfgRW
Date: Fri, 9 Nov 2018 14:21:17 +0000
Message-ID: <MA1PR01MB2604847AB21F2309705B5AA091C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [103.230.148.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB2699;
	6:IbXOb55eAFHQSj+yjmE+1SDkJH08+rpwhzm/oPZ6o+yMjyemo+Hxbv2pR/aQFlDWI7PBKGdZDttHvyl/DyDWnT3ev66Mi0GQn+IsTke+E9cZ8tdfPa7BuPwd1dKcF5WQhz6hpL88hAzHJRVyEkMbOtMOQURySuFaQKH37m3fhA4y2E1nwGMyfhvLeDGKRGm5oiNr9rVZTUUQNC4XCW0+4hpZftEKhNTw9dvqTXigqET4S6Mq7cAliieL+21RE7JzLhZTaEbs3cPm4hvyusbGUZL6K7UuPZsh8Ywin4F1Lvb+ZX7rRVdZETzIJRRMT47Uig3H7b375DAS0x5VOQyRHQsUbGVqKcsBzK2voA9gSYmjCL6hDPBVr4CmHpuyTc0l4DJIICZwtKS4yoYaXm2Lz3JEQ65JzzvCdk/mSfJfj57NnTKZzOX9t5ic3l/7UPpXE5opS3W3Qco1hwLS4Wsy/Q==;
	5:SY1p7NPM/43OIKJu0AMjHkwDcr6SV0+iICA8oqgXrA6K6L2EDlrVw4hU2d/1epPv+Kpa7Jo9uSL8OcJIQ0HyavyP8WCHIC+bTcMp9ybo92gmCDBFlJ+oC3a1m4CWU+A5J214lqGA9mfInEpgDdgpme9agLKC/PQwJyQSWol6SR8=;
	7:dgF8Gj0RKwCQ9iY5HMEfKD1US1LhRNKcma/B/3mrOsnvxQvnKcJSPRAdMHRUSpzEhj/q15dHN3Bg7QAP8UFmoBV2yRKPrKvzoLDV2jdKnlXNYX6Ry/XZSyy7QohXT8hS610lBXC4HnoIo5T90SFJxg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 8453bb26-0934-4cec-79ee-08d6464e9d1e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB2699; 
x-ms-traffictypediagnostic: MA1PR01MB2699:
x-microsoft-antispam-prvs: <MA1PR01MB26992D951FEDC04F6FF9421191C60@MA1PR01MB2699.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(3231382)(944501410)(52105095)(6055026)(148016)(149066)(150057)(6041310)(20161123562045)(20161123560045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB2699; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB2699; 
x-forefront-prvs: 08512C5403
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(346002)(136003)(376002)(39860400002)(366004)(189003)(199004)(86362001)(53936002)(72206003)(6436002)(97736004)(5660300001)(9686003)(54896002)(7736002)(76176011)(7696005)(14454004)(55016002)(8676002)(478600001)(81156014)(81166006)(11346002)(19627405001)(105586002)(106356001)(66574009)(66066001)(99286004)(6246003)(8936002)(186003)(446003)(316002)(93156006)(6606003)(6916009)(14444005)(26005)(256004)(71190400001)(3846002)(6116002)(229853002)(486006)(2900100001)(25786009)(33656002)(71200400001)(476003)(68736007)(6506007)(2906002)(74316002)(2940100002)(102836004)(53546011);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB2699;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: o4RIj8k2uQbL074ffNkDMj6iMiQmWfEbx1sQ0p/jE+bX5KErKxSb6HjpmeJi6GZIpaUDWSzefORnbmKKNdQf9pmcQxw0waqUmtMByoEynlGiJfQ8hz0zgJ8XsdE/mNc3cq9uJ4E4wPJHvwj8xIJ1iJxd9MyWW35vpvTJNXUWEuoLcKOeScuHiekkCFNzbBR7qMGdCw+7CddgY7HDhrVz9MVaYXAa1avnNSZA7qjCA6vq/Z30MsYJiQR/S0WT2kL/Gw5mQfX6AICuT2pxzW93Fyq9HmntkkjoESqaXBRAchFQntUDnndm5Pb78lwvhUju6sT08M4IqdtjExPK8CDs6Ezsn5RC15D2epvEWe3JM6s=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8453bb26-0934-4cec-79ee-08d6464e9d1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2018 14:21:17.5416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2699
Subject: Re: so how does PACKAGECONFIG_remove really work?
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
X-List-Received-Date: Fri, 09 Nov 2018 14:36:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2604847AB21F2309705B5AA091C60MA1PR01MB2604INDP_"

--_000_MA1PR01MB2604847AB21F2309705B5AA091C60MA1PR01MB2604INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,


Can any one please help me to understand PACKAGECONFIG_remove feature


Let's take an example of systemd recipe as follows:

PACKAGECONFIG ??=3D "vconsole"

PACKAGECONFIG[vconsole] =3D "-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-vc=
onsole-setup"


Now how should we disable features set in PACKAGECONFIG[vconsole] using PAC=
KAGECONFIG_remove from it's bbappend file?


Regards,

Aditya Tayade


________________________________
From: Aditya Tayade
Sent: Friday, November 9, 2018 7:48:36 PM
To: Yocto discussion list
Subject: [yocto] so how does PACKAGECONFIG_remove really work?


Hi,


Can any one please help me to understand PACKAGECONFIG_remove feature


Let's take an example of systemd recipe as follows:

PACKAGECONFIG ??=3D "vconsole"

PACKAGECONFIG[vconsole] =3D "-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-vc=
onsole-setup"


Now how should we disable features set in PACKAGECONFIG using PACKAGECONFIG=
_remove from it's bbappend file?


Regards,

Aditya Tayade

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MA1PR01MB2604847AB21F2309705B5AA091C60MA1PR01MB2604INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, serif, &quo=
t;EmojiFont&quot;;">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Can any one please help me to un=
derstand&nbsp;<span>PACKAGECONFIG_remove</span> feature</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Let's take an example of systemd=
 recipe as follows:<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span>PACKAGECONFIG ??=3D =
&quot;</span>vconsole&quot;<br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>PACKAGECONFIG[vconsole] =
=3D &quot;-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-vconsole-setup&quot;<=
/span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Now how should we disable featur=
es set in PACKAGECONFIG[vconsole] using
<span>PACKAGECONFIG</span>_remove from it's bbappend file?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade</p>
</div>
</div>
</div>
<br>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Aditya Tayade<br>
<b>Sent:</b> Friday, November 9, 2018 7:48:36 PM<br>
<b>To:</b> Yocto discussion list<br>
<b>Subject:</b> [yocto] so how does PACKAGECONFIG_remove really work?</font=
>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Can any one please help me to un=
derstand&nbsp;<span>PACKAGECONFIG_remove</span> feature</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Let's take an example of systemd=
 recipe as follows:<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span><span>PACKAGECONFIG ??=3D =
&quot;</span>vconsole&quot;<br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0"><span>PACKAGECONFIG[vconsole] =
=3D &quot;-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-vconsole-setup&quot;<=
/span></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Now how should we disable featur=
es set in PACKAGECONFIG using
<span>PACKAGECONFIG</span>_remove from it's bbappend file?</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade</p>
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

--_000_MA1PR01MB2604847AB21F2309705B5AA091C60MA1PR01MB2604INDP_--
