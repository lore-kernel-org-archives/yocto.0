Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE977E00B28; Tue, 27 Mar 2018 11:38:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5029 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Mar 2018 11:38:54 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065026.outbound.protection.outlook.com [40.92.65.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C353E00529
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 11:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=m4hIg8OKwoW6NmY55pNUQkZ8Si7KS6dpZSGGQzcCjrI=;
	b=Khl72qI12lLI4hQt8tb1ON/3uO1rmK3wgfxS6duycoGLxoGTR6Eu/19mD1xiKsF+ZvcSGu7ocRgUjiHH50pmTcWdKO7MyHptCggyhomriTqBWr9f68lV5YRT7ADRbMh1+5Y8IExttblIi/ek7DmLaQ92tE6kHR3ItK5S/HdT1GVQcHD+z4TwJqHGE39ejEsjr6jD3cc275WVoT/ZNHawdV/Vd0vvld+9sFC+sZSbiGEtJ7KzgRrTg4hX1Jr4OBVzWjorwvc8xSh7cf5KczqRlj5G6Uqro5K7Basop9fMy01dQkJynV8Sayn3ECsyFZC5Dl/9f3aPuNEhwW55EY0ydw==
Received: from DB5EUR01FT006.eop-EUR01.prod.protection.outlook.com
	(10.152.4.59) by DB5EUR01HT213.eop-EUR01.prod.protection.outlook.com
	(10.152.5.64) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.631.7;
	Tue, 27 Mar 2018 13:03:42 +0000
Received: from AM5PR0101MB2354.eurprd01.prod.exchangelabs.com (10.152.4.57) by
	DB5EUR01FT006.mail.protection.outlook.com (10.152.4.134) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.631.7 via Frontend Transport; Tue, 27 Mar 2018 13:03:42 +0000
Received: from AM5PR0101MB2354.eurprd01.prod.exchangelabs.com
	([fe80::15fc:ca4e:4624:3000]) by
	AM5PR0101MB2354.eurprd01.prod.exchangelabs.com
	([fe80::15fc:ca4e:4624:3000%5]) with mapi id 15.20.0609.012;
	Tue, 27 Mar 2018 13:03:42 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] meta layers for freescale IMX8 ?
Thread-Index: AQHTxcvSZXx4lVT6AEG/g6NGXKhEqA==
Date: Tue, 27 Mar 2018 13:03:42 +0000
Message-ID: <AM5PR0101MB235431CDAF5A367491A3F20092AC0@AM5PR0101MB2354.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B84CBEC1777EAC39E9750AA40893A61AF6F759FE0F0537EF925AC994624D75FC;
	UpperCasedChecksum:B6945263651A23A02AFE7DB69189A76FBC5B9305E8F74DB565E828AD9F14AC40;
	SizeAsReceived:6930; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [oQP1dSBWuYyThhGerB8bW98kEsk2jtUj]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT213;
	7:yFksvMy9jmosdUtLflrqMSR+51PloVu+/+JuJ20wmj86e+iYT2ofLRvcxN15aJWUtnMVGF7Feaj15aL9ALvtMp6BOJMcH07RrPD6CnBmUw+uGxLVyOVmDXWOChaeczKbOz3XGfg05XTLabVFpNkudCy9/hhejrlH+MqmfySRnMwwfTdTBt6dtKfr71jC2jKJ0+HM5exPrc1+w47KvEP7vAH195oUSgc6wYAzH8zroNS3wN92mQG/8cAFb3CX76gW;
	23:/AwtAwDY2ahJ9bmEF9RvWVhXEpY9VP49H8CvOYEq6kpN/qNa+zkW20z6xiIClvOodU6845RsWrMcyizZYvn4fPHEDtMkU/JcpyxTjEOKz7DZDcN6UrqZzfVP3zcjyFqyKeCBCCBezdLfMNkx2XNwaw==;
	23:c56S6+Tbah445KgZzHS13jUVbN+XHf8wY1y6A/FKty/1bHnkuKEP8n5yU/Kt0QVcu2K092ZcXF3H+UI7S5Y5XMvsLZWKC2NJmNunKKjy0PpOfiDRN2NbPE96g9ecVdxOC0dr9czQqmBnIZT7+y9jfw==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:DB5EUR01HT213; 
X-MS-TrafficTypeDiagnostic: DB5EUR01HT213:|DB5EUR01HT213:|DB5EUR01HT213:
x-ms-office365-filtering-correlation-id: 0811c62d-8016-4f8d-44d0-08d593e32a72
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DB5EUR01HT213; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT213; 
x-forefront-prvs: 0624A2429E
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:DB5EUR01HT213;
	H:AM5PR0101MB2354.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:; 
x-microsoft-antispam-message-info: ozVlWydUHwH0QQe8D0LLnsVpWaJRr/Zfls1GTaqJaBvUpfKCVz+BGrHAMTdsqXjun5fDVqxnSAMZGKVj0YA+0kQ3DTg7+wTK1n8Tg+DzrMkqkL/XtGd/sRQLQnpEf9zl7FNs9kiOTXR802yxBsm5jnkhzUhMtK4jlFzS3z6MYVUQtgIrX6H7zB2Be+cUyiep
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0811c62d-8016-4f8d-44d0-08d593e32a72
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2018 13:03:42.0693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT213
X-OriginatorOrg: hotmail.com
Subject: meta layers for freescale IMX8 ?
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
X-List-Received-Date: Tue, 27 Mar 2018 18:38:56 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0101MB235431CDAF5A367491A3F20092AC0AM5PR0101MB2354_"

--_000_AM5PR0101MB235431CDAF5A367491A3F20092AC0AM5PR0101MB2354_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

We just received some evaluation boards based on Freescale IMX8 Quad.
We'll have to firstly build a custom linux image to test our products.
I'm not experienced with freescales processors.

Is there some layers managing the recent IMX8 Freescale ?

Thanks .

K


--_000_AM5PR0101MB235431CDAF5A367491A3F20092AC0AM5PR0101MB2354_
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
Hi all,
<div><br>
</div>
<div>We just received some evaluation boards based on Freescale IMX8 Quad.<=
/div>
<div>We'll have to firstly build a custom&nbsp;linux image to test our prod=
ucts.</div>
<div>I'm not experienced with freescales processors.</div>
<div><br>
</div>
<div>Is there some layers managing&nbsp;the recent&nbsp;IMX8 Freescale ?</d=
iv>
<div><br>
</div>
<div>Thanks .</div>
<div><br>
</div>
<div>K</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_AM5PR0101MB235431CDAF5A367491A3F20092AC0AM5PR0101MB2354_--
