Return-Path: <knapp@ambibox.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A50E00CD5; Thu,  9 May 2019 02:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_IMAGE_ONLY_24, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [52.58.63.59 listed in list.dnswl.org]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 918 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 May 2019 02:46:45 PDT
Received: from rfoutemea2.hes.trendmicro.eu (rfoutemea2.hes.trendmicro.eu
	[52.58.63.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F57E00A96
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 02:46:45 -0700 (PDT)
Received: from 0.0.0.0_hes.trendmicro.com (unknown [192.168.11.221])
	by rfoutemea2.hes.trendmicro.eu (Postfix) with ESMTPS id 5EE9E17937
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 09:31:28 +0000 (UTC)
Received: from 0.0.0.0_hes.trendmicro.com (unknown [192.168.14.20])
	by routemea3.hes.trendmicro.eu (Postfix) with SMTP id D3DC245605B
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 09:31:26 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (unknown
	[104.47.2.54])
	by relayemea2.hes.trendmicro.eu (TrendMicro Hosted Email Security) with
	ESMTPS id 2649558C04E
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 09:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pho2risGmbHCoKG.onmicrosoft.com; s=selector1-ambibox-de;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GdfPGwcVEkdY8vj9KIoCeGaThv8sMDrcf4h49QZV06g=;
	b=0/gNcYxw2LsBd2m5ot2qYLzNtcsOGkKXRoAqy36E7+3Ad2YbcRxWCWIIZ2fzLT5IAa1WAzHK+ZvBIcReva1Ud1xZlmSPk0es02eNna4qnEcUky3Oy379bDb814BtVeGyvoDzFxbhaCAWnKzQIUqMi/20Mbm7fQdSiMlDCYYDFKE=
Received: from AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM (20.178.119.24) by
	AM0PR10MB2178.EURPRD10.PROD.OUTLOOK.COM (20.177.110.96) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1856.12; Thu, 9 May 2019 09:31:24 +0000
Received: from AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM
	([fe80::68a3:3654:91a8:bd71]) by
	AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM
	([fe80::68a3:3654:91a8:bd71%4]) with mapi id 15.20.1856.012;
	Thu, 9 May 2019 09:31:24 +0000
From: Fabian Knapp <knapp@ambibox.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Multiple MACHINEs and DISTROs: When to use own build dir,
	SSTATE_DIR, DL_DIR ?
Thread-Index: AQHVBklc5id/KFpo+UymAjRkmQDYBw==
Date: Thu, 9 May 2019 09:31:24 +0000
Message-ID: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=knapp@ambibox.de; 
x-originating-ip: [89.27.146.131]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a29ee519-48c0-4b95-7227-08d6d4611ad8
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM0PR10MB2178; 
x-ms-traffictypediagnostic: AM0PR10MB2178:
x-microsoft-antispam-prvs: <AM0PR10MB2178C7A982A594B60F2A8F93C3330@AM0PR10MB2178.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39830400003)(396003)(136003)(366004)(346002)(504964003)(199004)(189003)(8676002)(74316002)(81156014)(86362001)(1730700003)(81166006)(71200400001)(71190400001)(256004)(14454004)(33656002)(68736007)(486006)(6506007)(52536014)(8936002)(476003)(2501003)(74482002)(25786009)(105004)(66066001)(53936002)(316002)(53386004)(75402003)(19627405001)(2906002)(102836004)(2351001)(606006)(6116002)(3846002)(7696005)(6916009)(26005)(66476007)(66556008)(64756008)(66446008)(66946007)(4744005)(99286004)(7736002)(76116006)(6436002)(733005)(5640700003)(861006)(55016002)(73956011)(5660300002)(54896002)(9686003)(6306002)(236005)(508600001)(186003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR10MB2178;
	H:AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ambibox.de does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Mm+CrB8JO0UCVtfrgo3T09dX2sX6Zm639xOqQZTNUPp4ICPp1k7Vc4O4VGFxpgc/K2JCkfJ94l5EsCDoKtLtmaRHXjGkaDmmbyT1BWkBoeI8/NjNTjy+oIwG9oRm1EX4pGYt9PL7UzeruPhBba4J36Hxw050WDl8qLEgvIVaa2S7lRJA8X4ePAhG8tqs1CkhPgzCcnLgYYGRIaNSd7LkKNf65k/Z5a4beZB2aGBA4Je+6i7h19j9i9BxnaxHfZGZrOXVNrOR56rUXJOU6Mdd0DAoi2HFPKM+ZzT6di3A4utjq+Yers3lzImM1d1QTMn14UoLFmfztY/nSlYanbcYJWOdS1QxrN1FwUXResFXcQpPOVvDaxdDEuXWjQhCbpGqu2aMm70DaFUqz73UCz8z7HRT9kvqbGwEHjFCK9zHXzA=
MIME-Version: 1.0
X-OriginatorOrg: ambibox.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a29ee519-48c0-4b95-7227-08d6d4611ad8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 09:31:24.5783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a41b53b7-6aea-46d7-8cc4-114287daa697
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB2178
X-TMASE-Version: StarCloud-1.3-8.2.1013-24602.005
X-TMASE-Result: 10--0.508800-4.000000
X-TMASE-MatchedRID: TE7h93R7O3jfhEiutuDfj4XOXi9YU0Y/PNzEhPDkO0mJ6icw2HMxEJXW
	hmtVIiN3uyk/HuTVlgpDlITt332TellOqKNI2QkGdZrnAXMAyW5r9+Kgn2XgeLv81BNUjUj5807
	t+VEWpeZXoWfCQzKBl35XITSaJ05DuPEkxwVlqwV7k1ZHmKLF7ZkShYcLpGH9H06W6rwtvNWzYM
	Za9F0/96441foHWiRKZKm7a9vVALSsAZLKPq9b8C+PrAd8gbHJzgMwzBVI5+xNT6IutH/hQSkrl
	/sMfs3vfIzJiUR60W8QCNG3JtkCz+VHGbcDbAq6GFT0qj0zi72Zso5Sxds3ZK9dKZJ2Vxia5AP+
	yqovSZmuV6T5MJCQmsDUzVjC/TV32bNx1HEv7HA2iBNGQeKB3PbRKi/53yt6LYYv+L7e2aDsCFg
	MS213iemXYJAkQjc1oxjhmwo+TgRydqbGn9BWGGAp/wMEDHsVuQRvztcuHs0/soFEURE6RArGf3
	SZWwwOnZSf3+nmJwXTnoO2+pC6ppoYwT03q3Hqf3+4ofAGFM5tVuwvg8MRQXDwFfkzTH7UCSEpc
	DQEzy3Kt06w9SVevcC+ksT6a9fy
X-TM-Deliver-Signature: 1870009178D8AFC7534B524C177CCDE5
Subject: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Thu, 09 May 2019 09:46:48 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0PR10MB2658E98F7B370BD2FAEE187EC3330AM0PR10MB2658EURP_"

--_000_AM0PR10MB2658E98F7B370BD2FAEE187EC3330AM0PR10MB2658EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello,

we have multiple MACHINEs and DISTROs and Im wondering for which combinatio=
ns I have to setup a dedicated build dir, SSTATE_DIR and DL_DIR.

Information in the form of:

Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but c=
an share DL_DIR.

would be very helpful for me.

Thank you in advance.

Fabian

[Visit us at EES Europe]<http://www.thesmartere.de>

--_000_AM0PR10MB2658E98F7B370BD2FAEE187EC3330AM0PR10MB2658EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,<br>
<br>
we have multiple MACHINEs and DISTROs and Im wondering for which combinatio=
ns I have to setup a dedicated build dir, SSTATE_DIR and DL_DIR.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Information in the form of:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but c=
an share DL_DIR.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
would be very helpful for me.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you in advance.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Fabian<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
</div>
</div>
<br>
<a href=3D"http://www.thesmartere.de" target=3D"_blank"><img src=3D"https:/=
/ambibox.de/downloads/TSEE2019_Banner_AmbiboxGmbH_de_1.jpg" width=3D"500" a=
lt=3D"Visit us at EES Europe"></a>
</body>
</html>

--_000_AM0PR10MB2658E98F7B370BD2FAEE187EC3330AM0PR10MB2658EURP_--
