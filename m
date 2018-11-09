Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20B5EE00C18; Fri,  9 Nov 2018 06:34:36 -0800 (PST)
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
	*      [104.47.100.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 795 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Nov 2018 06:34:34 PST
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0060.outbound.protection.outlook.com [104.47.100.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99491E00A0A
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xvYIy8VTa0rJX/BzCaC20M3zZB8fABnvRsYRmb3D6Tk=;
	b=BxKSGZtWTmSdo69jm0ZGD/y/9Setoq8JxQeHXp9s94eGE/8a7gGKN74kzK+QcZGv8/+r/27WpsLnBwZq7N1+HREc8Sl01+BXQWfQafCdCshJnHXzY45S0HBvKm+FQzhx4qFZlFoyLiN229lXzO7Kx421YRBHug3tFi/lsovWwnU=
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM (52.134.148.204) by
	MA1PR01MB2699.INDPRD01.PROD.OUTLOOK.COM (52.134.148.205) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.21; Fri, 9 Nov 2018 14:18:36 +0000
Received: from MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d]) by
	MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM
	([fe80::c5bc:8574:a8b7:a28d%4]) with mapi id 15.20.1294.034;
	Fri, 9 Nov 2018 14:18:36 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] so how does PACKAGECONFIG_remove really work?
Thread-Index: AQHUeDV4pElhuLdu3kuRYa/axKzlQg==
Date: Fri, 9 Nov 2018 14:18:36 +0000
Message-ID: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [103.230.148.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MA1PR01MB2699;
	6:qPRhposXnDjel2yInBZWIvUgDVbCr0etNVOQMj449r/10f5pvRh589I4Px3UHVDofnAz/rs8taPz7wUF9nic2CSDnQXqrQcdhU33/Q3SatLnsJj76wzSi1/DS04kHVAcMhml/ekrCHVqES6F//RaMH8K9/NjLpUWDQM4ZhjK4c//oRBeHgp3oosinUHZnJUw9mxzf61aaqgPZQfV2JO1euGpPzRvtfUhAZuMhrh2JfSl0stCO+hlXYkb4IFsAGLwxHCBVlTHPqQRsni+U24doSSBomGz0z4gtWuEcEnd2MqTiE6R45zKctdeViG57LUFbknkeqLBWXC1UAsEE3uxnFOTGDHCdSs2nCBwCLo/0Mwh0Z1iFziZjJNA+khMAX7dHMlLOEEI6QItFPhTGCvgCissgH8UPHVNi3WtJI9xX9yfnPaH0arx+9NjWaMml9ZNKSNaORi1OJBf5FId3Nb4Sw==;
	5:19mAf6pykXu1kYeIFuKexZbZxa1kozTh31zHdh42So7IIOJqCOyykRdcTLDGjA3I9DhC6GSPZO+YfmjvpiiMexp5/11ijr1sdwsqmtxuKQuSpf+xUiVkF2kBPg1kmphzTunUIC2IudgYCii/1pEZvbYBTrK6OhH5QMBGbrb8dxQ=;
	7:d2CAYkMwwtCBt/e4nhvy/yXpR6/RmZvKXKmETCCkw4pKXsbWuwqBzv1g8sHEEtM6y/sXXUz5ldAdf9JQj03FlaSNknGMrYVCWl5mfKVXdssUvyTZ3LqRUDfpgar8awQC0CAzayB7fzn1/WHB/gjYvg==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 5b1bda6b-c0a5-4b93-dbc2-08d6464e3d06
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR01MB2699; 
x-ms-traffictypediagnostic: MA1PR01MB2699:
x-microsoft-antispam-prvs: <MA1PR01MB26996A1316D61E41EBC8773B91C60@MA1PR01MB2699.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231382)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(20161123560045)(20161123562045)(201708071742011)(7699051)(76991095);
	SRVR:MA1PR01MB2699; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB2699; 
x-forefront-prvs: 08512C5403
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(366004)(376002)(136003)(346002)(396003)(199004)(189003)(3846002)(6116002)(1857600001)(486006)(6916009)(14444005)(256004)(26005)(316002)(6606003)(68736007)(476003)(6506007)(71200400001)(25786009)(2906002)(33656002)(102836004)(74316002)(2900100001)(71190400001)(7736002)(9686003)(54896002)(5660300001)(97736004)(8676002)(478600001)(14454004)(55016002)(7696005)(86362001)(6436002)(72206003)(53936002)(99286004)(66066001)(66574009)(186003)(8936002)(19627405001)(81156014)(81166006)(105586002)(106356001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB2699;
	H:MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: gGGhFF2o2Kb/Sgfvd4a/for4cowp+RwYWcFyRei93vXEKBW0jE0HHO8yjX4FGD3EFGLD7/XVpJ/o/WZiPWYUJFXiLwxb/NLGU2mzvAK2hh/NVAW9xFQlEzVbYfA85e8RIV9kQCwCPP3S+J49aKKBteR4IlS7M1LqbRSvHSecQgLDKajuU0BQ60NTt3sFEM3U3RValkM4f3VCKA7X2QKWMY/vB/xnD2WnB32rZ4jUvty24W25krpA+9hSic8iL4JLjz8kEQunp6l5erUhEMh8viIEK805WH8wrUuqWhFTdg/iYmQxiZHEO9VpIu1+Wwn9ZmjLjCttvqozZJagB1A3t3DZH+sAEKitG04Hvwmneys=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b1bda6b-c0a5-4b93-dbc2-08d6464e3d06
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2018 14:18:36.2515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2699
Subject: so how does PACKAGECONFIG_remove really work?
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
X-List-Received-Date: Fri, 09 Nov 2018 14:34:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2604734A613E22FAFAA2424A91C60MA1PR01MB2604INDP_"

--_000_MA1PR01MB2604734A613E22FAFAA2424A91C60MA1PR01MB2604INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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

--_000_MA1PR01MB2604734A613E22FAFAA2424A91C60MA1PR01MB2604INDP_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Can any one please help me to und=
erstand&nbsp;<span>PACKAGECONFIG_remove</span> feature</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Let's take an example of systemd =
recipe as follows:<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span><span>PACKAGECONFIG ??=3D &=
quot;</span>vconsole&quot;<br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>PACKAGECONFIG[vconsole] =3D=
 &quot;-Dvconsole=3Dtrue,-Dvconsole=3Dfalse,,${PN}-vconsole-setup&quot;</sp=
an></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Now how should we disable feature=
s set in PACKAGECONFIG using
<span>PACKAGECONFIG</span>_remove from it's bbappend file?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0;margin-bottom:0">Aditya Tayade</p>
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

--_000_MA1PR01MB2604734A613E22FAFAA2424A91C60MA1PR01MB2604INDP_--
