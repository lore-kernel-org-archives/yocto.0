Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AF35E00831; Tue,  1 May 2018 20:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.10.51 listed in list.dnswl.org]
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
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092010051.outbound.protection.outlook.com [40.92.10.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A42E007C2
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 20:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=7SPRM8gn8OTRX0wciUbPHH8VYurMgMeGymH1JXSxF6o=;
	b=QacF14pa39PiBrFoyRBbT7Ue9AcE6qyq59LMOcw3z2PfkevrcHY4ZjAdVsgr7QSE+wbJ6sakC7Yt1cimp1ZZE9J8SUUCnxkJdsyWWosnTDZsm4SAgBjzX29ObnJdWsl4ngLHbxlh9R/poABOQyW1NjayD/qkFVvmUSiQHZJ2bmZeox4hUvH/fQruNZZUUciK6jxQKgK+klYdF5RCJEXqlFwP4gzBlDVFfIz5NoZSz8+18aWAmgF1DKZQKLQ/Qp2bAB14M62ntrgIdDWT89EhDdeBEOobW111hg9RS6yAt1rtNZPyQX578Yngy2I0h6FXnLgNUygFkqzLYqlu11wPmw==
Received: from SN1NAM04FT008.eop-NAM04.prod.protection.outlook.com
	(10.152.88.57) by SN1NAM04HT019.eop-NAM04.prod.protection.outlook.com
	(10.152.89.22) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.696.11;
	Tue, 1 May 2018 20:43:03 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.88.51) by
	SN1NAM04FT008.mail.protection.outlook.com (10.152.88.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.13 via Frontend Transport; Tue, 1 May 2018 20:43:03 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.018;
	Tue, 1 May 2018 20:43:03 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with Python when running oe-init-build-env
Thread-Index: AQHT4Yz/dtz/63pkLUiUOVQzIKCXyw==
Date: Tue, 1 May 2018 20:43:02 +0000
Message-ID: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:62C6B8EA01E8D4AF50DEEAB268BE1A6D282798C3283A454060CF1DC882869FC0;
	UpperCasedChecksum:FBAEF637AAFA18E15E560FD2A6E4131D96AA506D548E0E7328EF21C017AC0A20;
	SizeAsReceived:6886; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [gENcm2Ilt3K3cPEu0uMPeenY8kp8WGOD]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM04HT019;
	7:ra24yTB3mZ2eyo+SPjfKVwyD8OiqwtJkf4nU3i/aL6/h9L5prrmdcxhnxrQlJup+WPeQzW+5j8JNtufi2CUHEFc28856R1Uv1r3LCywpS4smVz863MCgsCkTgWlmZHVMgl7wR6zYfZEi5PJkaZT7EK6tOGZa5s1kgVUnVXTgnR6tNVYD5jy6LZMVA6z2Fh3MNty6aop0BoiMhq+EnmW9+KMEksz0EMS7iaAYsnPjx7AvVSTnSQ+QrCkqiIt9+lVb
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SN1NAM04HT019; 
x-ms-traffictypediagnostic: SN1NAM04HT019:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM04HT019; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM04HT019; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM04HT019;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: pGxnucoB5CY26+CWk9w5BLZpaPbc/X5Sh9HcseyK6aI2uo8gfBUuhB2Rll04wlvb9dl02tlMhrAiEB3//fIt446IYa3QjWnS48eKLOvo34NmOTGTwmDy400K0jW6DjbMpL4jZB02r3fPQOPWsd3t+zrYTtKm/TlL8EIZbZBfy+WFpT2APW0WzpfMcj5kRsGm
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: c914fbd5-5fe9-45bf-dc27-08d5afa4227c
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: c914fbd5-5fe9-45bf-dc27-08d5afa4227c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2018 20:43:03.0273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT019
Subject: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Wed, 02 May 2018 03:18:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183D3C8CA06798F8109DCFCC5810MWHPR19MB1183namp_"

--_000_MWHPR19MB1183D3C8CA06798F8109DCFCC5810MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'd just git cloned Rocko and meta-ti.  When I try to source oe-init-build-=
env, I got errors:


-bash: python3: command not found

BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives "Py=
thon 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed online=
 description to install Python 3.6 on CentOS 7.  However, after installatio=
n, it looks like I need to invoke it with python3.6.


How does this work now?  I suppose the oe-init-build-env script uses/expect=
s python3, not python3.6.


Any insight?


Raymond

--_000_MWHPR19MB1183D3C8CA06798F8109DCFCC5810MWHPR19MB1183namp_
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
<p>I'd just git cloned Rocko and meta-ti. &nbsp;When I try to source oe-ini=
t-build-env, I got errors:</p>
<p><br>
</p>
<p>-bash: python3: command not found</p>
<p>BitBake requires Python 3.4.0 or later as 'python3'. &nbsp;&quot;python =
-V&quot; gives &quot;Python 2.7.9&quot;. &nbsp;&quot;python3&quot; is not i=
n $PATH. &nbsp;I'd followed some detailed online description to install Pyt=
hon 3.6 on CentOS 7. &nbsp;However, after installation, it looks like I nee=
d to invoke
 it with python3.6.</p>
<p><br>
</p>
<p>How does this work now? &nbsp;I suppose the oe-init-build-env script use=
s/expects python3, not python3.6.</p>
<p><br>
</p>
<p>Any insight?</p>
<p><br>
</p>
<p>Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB1183D3C8CA06798F8109DCFCC5810MWHPR19MB1183namp_--
