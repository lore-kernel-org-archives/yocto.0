Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 517E0E00BEC; Wed, 26 Jul 2017 11:11:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.120 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3616 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Jul 2017 11:11:38 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0120.outbound.protection.outlook.com [104.47.40.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3054E00B71
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 11:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=keysighttech.onmicrosoft.com; s=selector1-keysight-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4LO0cCuKCD4o/u/rL1E9g88ADz4U/AxwgktplwK2I+w=;
	b=Qb3GiaerhXEMTo4EfUlD81KL3aaz5PYs+lhgYTVn6u5IWW4OO4XvrHxhC/ei7bmiWzahdhTu5+5iDpJPjoa/f06uZ3S7Tx4xmP0um6aBNWrFbPGnzmtpyo5waFf0GYv9cktzvT1ij0/cfGbGjyaHzG+rS7r2nhaRCZRin7FWUvw=
Received: from BL2PR17MB0723.namprd17.prod.outlook.com (10.167.118.25) by
	BL2PR17MB0721.namprd17.prod.outlook.com (10.167.118.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1282.10; Wed, 26 Jul 2017 15:38:57 +0000
Received: from BL2PR17MB0723.namprd17.prod.outlook.com
	([fe80::a0ac:4d78:1d6:ca6c]) by BL2PR17MB0723.namprd17.prod.outlook.com
	([fe80::a0ac:4d78:1d6:ca6c%14]) with mapi id 15.01.1282.020;
	Wed, 26 Jul 2017 15:38:57 +0000
From: "ALLEN,RICHARD (K-SantaClara,ex1)" <richard_allen@keysight.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: automount pyro, /run/media/sda1 empty, not under morty
Thread-Index: AdMGJLxE0sLSEnO+SaCtL1u4PCOfrw==
Date: Wed, 26 Jul 2017 15:38:56 +0000
Message-ID: <BL2PR17MB07232AC698528788C4D3827BF1B90@BL2PR17MB0723.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard_allen@keysight.com; 
x-originating-ip: [206.49.107.132]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR17MB0721;
	7:k+Q8hjQhRjOY8p6ymgUqmdCtjWiJKX1F5h1B6B9/kC1iDjZLUk0BoPByQxN5AwOZB50fPm560ld6MHDbpUEWFI0c/qkG5XmZwsUMzSlckUVMEiFoUL3Fgew5UzpHN2mQFVhw6o9HVRw/XDw2ILVhWbAIV5xDwwB3ZHYeagFnMjWJ1jAj4hsvO5iKCBETAuJRbLLpKpRL+a2KKY3wkhbC72cEaG5y3/9yWoA9WPZxZyhWDKN5AogCAG3xy0I/yf0aS/VIRuCgBAiIVLDSj4+TNElsVpP2MkgkE6z6aDttbT3n40ZgQX6+QKUfbyyUVjxT3RHKCowXTxcBBY8GDdQl/b/RsFn8hzrkuGYcJJmbN1bRHP+5xhz8g4jzwLUxCa/tnusX77YD/qjEkDPm6bWaZK7x0DYgH27GQkX3bc08KJWfa8gRvaw/YvUFR0P+IZaPgULBy49HNPIrrtaDStE0XILMtjnzbSa4J9OJLd6QKD9jrEH6XpTtGLt9NgnBwjGjbUa6JMd9yZJv4WUAdRH+CX2500byZpMDR/BXgeprNYFGVRL4RqvQNCqIzh7PEpcxPpH8siTcp9Uq+yQOVKQkTsQyCSp9K/w7ENv2fYYzUbPlXG8JC9FTeGK/KGHKXSLAOy7fyago8E+w81EDk5K+MG9PbkuEc/q7oOFuh9Z4LH/eLH1u4sUtRFASFlpWWjz3H1aq5Ci1Q5cHxDq8ViSCmd3XiQUSoQcy6n64O7xACycdKXjOWzVw/jeRLOUv9CePtnwKP4TNRG2gtgjr8HekpU73Gr1VlxWyVFzO5zyGZ40=
x-ms-office365-filtering-correlation-id: 502d8b6f-7d3e-42ef-7404-08d4d43c6dd2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BL2PR17MB0721; 
x-ms-traffictypediagnostic: BL2PR17MB0721:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <BL2PR17MB07219F92704AFAA98E69A9D0F1B90@BL2PR17MB0721.namprd17.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(3002001)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123555025)(20161123562025)(20161123560025)(20161123558100)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL2PR17MB0721; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL2PR17MB0721; 
x-forefront-prvs: 038002787A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39450400003)(39400400002)(39850400002)(39410400002)(39840400002)(199003)(189002)(6916009)(189998001)(5640700003)(66066001)(3280700002)(2906002)(966005)(2501003)(5250100002)(25786009)(2900100001)(478600001)(53936002)(102836003)(86362001)(6116002)(3846002)(3660700001)(6436002)(305945005)(14454004)(7736002)(50986999)(6306002)(8676002)(33656002)(106356001)(68736007)(7696004)(54356999)(5660300001)(55016002)(2351001)(101416001)(74316002)(81156014)(97736004)(9686003)(1730700003)(38730400002)(110136004)(99286003)(6506006)(105586002)(81166006)(8936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR17MB0721;
	H:BL2PR17MB0723.namprd17.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: keysight.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2017 15:38:57.0155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR17MB0721
Subject: automount pyro, /run/media/sda1 empty, not under morty
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
X-List-Received-Date: Wed, 26 Jul 2017 18:11:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL2PR17MB07232AC698528788C4D3827BF1B90BL2PR17MB0723namp_"

--_000_BL2PR17MB07232AC698528788C4D3827BF1B90BL2PR17MB0723namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am new to this area.
I have been using morty to build my image and moved over to pyro
now my automount is resulting in a /run/media/sda1 which is empty
where , under the morty build, I see my files on the usb stick drive  in /r=
un/media/sda1

Note:
login as root, not a privilege issue
using same kernel and .config for both morty and pyro , so not a missing ke=
rnel option

I am not sure where I should be looking at or why automount is behaving thi=
s way.

Any help, suggestions, would greatly be appreciated.
thanks

Richard C. Allen





--_000_BL2PR17MB07232AC698528788C4D3827BF1B90BL2PR17MB0723namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>I am new to this area.</div>
<div>I have been using morty to build my image and moved over to pyro</div>
<div>now my automount is resulting in a /run/media/sda1 which is empty</div=
>
<div>where , under the morty build, I see my files on the usb stick drive&n=
bsp; in /run/media/sda1</div>
<div>&nbsp;</div>
<div>Note: </div>
<div>login as root, not a privilege issue</div>
<div>using same kernel and .config for both morty and pyro , so not a missi=
ng kernel option</div>
<div>&nbsp;</div>
<div>I am not sure where I should be looking at or why automount is behavin=
g this way.</div>
<div>&nbsp;</div>
<div>Any help, suggestions, would greatly be appreciated.</div>
<div>thanks</div>
<div>&nbsp;</div>
<div><font face=3D"Arial" size=3D"2" color=3D"#993300"><span style=3D"font-=
size:10pt;"><b>Richard C. Allen</b></span></font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_BL2PR17MB07232AC698528788C4D3827BF1B90BL2PR17MB0723namp_--
