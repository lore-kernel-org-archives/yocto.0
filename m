Return-Path: <rajakumar.g@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8114E00D11; Fri, 26 Apr 2019 17:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rajakumar.g[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.11.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 46918 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 Apr 2019 17:28:44 PDT
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092011099.outbound.protection.outlook.com [40.92.11.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D194CE00CD6
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 17:28:44 -0700 (PDT)
Received: from CO1NAM04HT230.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4d::468) by
	BN3NAM04HT229.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4e::316) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.13;
	Fri, 26 Apr 2019 19:57:06 +0000
Received: from BN3NAM04HT230.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4e::331) by
	CO1NAM04HT230.eop-NAM04.prod.protection.outlook.com
	(2a01:111:e400:7e4d::468) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1792.25;
	Fri, 26 Apr 2019 14:34:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Zn/oETKAGzfUY+j6rblKOI/QEIRP/pCxo07X9FhEflI=;
	b=rA/ptopM13Z/tjz9M2lFPLXqKz/90YKCw3B3MwE32Js0Wwan3rV7paT8tnbXPUWFXkWs9h3BJdDUBKnVgl2e1xf/sk17UFfskQNQEpNh/1vIMS53KmRuVFQ5aMOasGECHjQR2LThrzxS73x/MKaX2viDi/CGF+4NRyO8BgEysvUEZlg/mJAQKNHc5crnG7DQcaJ7K4Jpm9zqlfI1/eZqHKOq+roCcpl5dgFOBhiXRJVeKJc4/mhpIudQnMprbZGkFSrRNysDBBosbAEXMGTI+LB3Dvh4HQGswdeYDE6sAsXuaU/ElaI/vKmB60ZkgMyK+i1mdEO1RuLMdn3OZoSc4A==
Received: from BN3NAM04FT052.eop-NAM04.prod.protection.outlook.com
	(10.152.92.57) by BN3NAM04HT230.eop-NAM04.prod.protection.outlook.com
	(10.152.93.75) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.13;
	Fri, 26 Apr 2019 11:11:01 +0000
Received: from DM6PR04MB5562.namprd04.prod.outlook.com (10.152.92.57) by
	BN3NAM04FT052.mail.protection.outlook.com (10.152.92.241) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1835.13 via Frontend Transport; Fri, 26 Apr 2019 11:11:01 +0000
Received: from DM6PR04MB5562.namprd04.prod.outlook.com
	([fe80::c82:153c:a9ea:b938]) by DM6PR04MB5562.namprd04.prod.outlook.com
	([fe80::c82:153c:a9ea:b938%3]) with mapi id 15.20.1813.017;
	Fri, 26 Apr 2019 11:11:01 +0000
From: raja.g kumar <rajakumar.g@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto System Requirement for developing OS
Thread-Index: AQHU/CBf2aWhJpuQz0a/zdAovL7tIg==
Date: Fri, 26 Apr 2019 11:11:00 +0000
Message-ID: <DM6PR04MB55626373DDB86D5E8B65596FFE3E0@DM6PR04MB5562.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E2B5026A5976F506C5508DA823CB862177C8BA2431A1739785DC2D1DB2FB8226;
	UpperCasedChecksum:FC4415265E2E84A37A218CA773EB64629C4277AE51A28FEDF92CB2362AE66EF4;
	SizeAsReceived:6531; Count:40
x-tmn: [IkdiqG4FOoHSeRuvEPENIjgSGFLDPeuF]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:BN3NAM04HT230; 
X-MS-TrafficTypeDiagnostic: BN3NAM04HT230:|BN3NAM04HT230:|CO1NAM04HT230:|CO1NAM04HT230:|BN3NAM04HT229:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: 9l0EjtS9LIn6GP07yGNo9bPzoEwV+C0YAvw3hKjDKKBBzuw/GlOCWhV9Szi5hWtBp5AVlJ7W+gErpJgEzbC18Z5LOiaBLP+VyZ0igz42PgLf89EzB4GHAnC7iupvNxgzNJKsVYP54F1nGo60z1BY6/u/d4eGYOJomK8ygaN4lV4ytpKOGd6H//3/laINMMc7
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a052e64-06f4-4496-9a25-08d6ca37dda5
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2019 11:11:00.9062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT230
X-OriginatorOrg: hotmail.com
Subject: Yocto System Requirement for developing OS
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
X-List-Received-Date: Sat, 27 Apr 2019 00:28:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR04MB55626373DDB86D5E8B65596FFE3E0DM6PR04MB5562namp_"

--_000_DM6PR04MB55626373DDB86D5E8B65596FFE3E0DM6PR04MB5562namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi
Can I know the RAM ,Disk space and processor requirement for developing the=
 os with yocto for IoT ?

Please suggest and it would be greatly helpful.

Regards
Rajakumar G

Get Outlook for Android<https://aka.ms/ghei36>


--_000_DM6PR04MB55626373DDB86D5E8B65596FFE3E0DM6PR04MB5562namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hi <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Can I know the RAM ,Disk space and processor requirement for developing the=
 os with yocto for IoT ?<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Please suggest and it would be greatly helpful.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Regards <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Rajakumar G<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
<br>
</div>
</body>
</html>

--_000_DM6PR04MB55626373DDB86D5E8B65596FFE3E0DM6PR04MB5562namp_--
