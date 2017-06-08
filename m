Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB5F8E00BC8; Fri,  9 Jun 2017 02:33:38 -0700 (PDT)
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
	*      [40.92.64.18 listed in list.dnswl.org]
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
X-Greylist: delayed 5491 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Jun 2017 02:33:34 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064018.outbound.protection.outlook.com [40.92.64.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E04E00B57
	for <yocto@yoctoproject.org>; Fri,  9 Jun 2017 02:33:34 -0700 (PDT)
Received: from VE1EUR01HT123.eop-EUR01.prod.protection.outlook.com
	(10.152.3.90) by DB5EUR01HT121.eop-EUR01.prod.protection.outlook.com
	(10.152.4.186) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1143.11;
	Fri, 9 Jun 2017 08:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=SdLb/jj+reALbf/7zlxnOBgKM4hQMRcrMTVsHC454RQ=;
	b=nGAEAKKTb3GTAgVU8ONlnCo1Y2eHNcP7y70Au8UUeMgJs61XxtmIxa1ecYEDonEUsWoUQ+Ox1y4pq50TLPLJSxO5dgFw2C8LEvnBDCdftYDN4qwPne4G+lJGXF3yeyaoEwbe748GBhXpuNJ975IpQrH8ZEX3AbTcfeyuh/Kn0MLL2OoF710CF3DYwNjq3u2VEA2b1pwmxvHX6JZtAIRKnxmrJP8cwY+mfmXAQCWEwUdokNEeOJO1SfPPNgnPrbT5VYbJYFHDkJNT1Kh9T1GBDvAChrzq4Se7Ag1EeWEgihFB+EiMx5HeYpAq3/f0dVdt6MV5QhM1POCrzWV90vjzZQ==
Received: from VE1EUR01FT011.eop-EUR01.prod.protection.outlook.com
	(10.152.2.57) by VE1EUR01HT123.eop-EUR01.prod.protection.outlook.com
	(10.152.3.90) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1101.12;
	Thu, 8 Jun 2017 07:32:54 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com (10.152.2.56) by
	VE1EUR01FT011.mail.protection.outlook.com (10.152.2.229) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1143.11 via Frontend Transport; Thu, 8 Jun 2017 07:32:54 +0000
Received: from DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::b5a0:9c47:868f:2dc9]) by
	DB5PR0101MB1686.eurprd01.prod.exchangelabs.com
	([fe80::b5a0:9c47:868f:2dc9%14]) with mapi id 15.01.1143.019;
	Thu, 8 Jun 2017 07:32:54 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] Conditional Linux Kernel compilation according
	to Yocto Variables
Thread-Index: AQHS4Clwel+JVwCHHUe5cwLhroFVTQ==
Date: Thu, 8 Jun 2017 07:32:53 +0000
Message-ID: <DB5PR0101MB168662C8598B20446B65551D92C90@DB5PR0101MB1686.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:3EB3A2A1AC8482BADBC9D8A7C2AF3C25B7E37E08C5C08FED1A21CA9D9662A195;
	UpperCasedChecksum:6129E5B16D8025A5A14B12C638E2E9F4A6145AFC250E2B7F5C56A58628DBD211;
	SizeAsReceived:8221; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [OdsS/kOONYfWcwYG1Lz+MKN/+x0fGg5c77HpgMtB5X4=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT123;
	24:oSXYxF3E2e+c6sjUV/1X2JVzWWvAa2F7lk6TXhMqaxpTJk3dvztj0bT3JwdECq1JH1EdtIA2Hk7lzfhJ9w3TztgiPEuZhmULWvTv3bexZHs=;
	7:0PTqbW7Mn0qufB57W/d1IYWvHyHlU463ooZ8yO2stsZiX9K/InTC2dt+TTnFKwChEpbY4eBwdOdhBfeVioj1MJfFkbh+40satJ8DNVwVgrofSar+t0yzDsToU/hPjQqarGzHuwbeS6jZTtBkQzRcahSS9vC92vdCzpthnx9+KZySTKp0WZr1tGSTTdRrHuObibtj8rkDdLHPPBni7W0gdmWKRuki7v0DNa0QHYnG9BtnpOZQ+GDOijK4NcV9LoeCtUyoRuYejXKid1NuWTlRUzFs/XNpvNhhDlqV13PBnH2k+n8Dp4LkWoeRcttPCZ81
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR01HT123;
	H:DB5PR0101MB1686.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
X-MS-TrafficTypeDiagnostic: VE1EUR01HT123:|DB5EUR01HT121:
x-ms-office365-filtering-correlation-id: 042a81d3-acb7-457f-bfeb-08d4ae409369
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:VE1EUR01HT123; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:VE1EUR01HT123; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VE1EUR01HT123; 
x-forefront-prvs: 0332AACBC3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2017 07:32:53.9778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT123
X-Microsoft-Exchange-Diagnostics: 1; DB5EUR01HT121;
	23:oq/Opg45noLHeFxkRRN8jpuaYLNV2gq91y/gwCp5A7Kqb7AfigJLocxF5AP1bhJuwVV7UnpKfOvIZsbPAJs4k0zrK97ctraKsLuo7F1OxZ1VhxeE2mSVYHyvHncLKfcdn6zSEdeK8gORmWi2m+6ptQ==
X-OriginatorOrg: hotmail.com
Subject: [bitbake] Conditional Linux Kernel compilation according to Yocto Variables
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
X-List-Received-Date: Fri, 09 Jun 2017 09:33:38 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0101MB168662C8598B20446B65551D92C90DB5PR0101MB1686_"

--_000_DB5PR0101MB168662C8598B20446B65551D92C90DB5PR0101MB1686_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto (Poky Dora is mandatory for our project) to create a Linux =
image for an ARM base board.

Currently, we're working on an evaluation board.

We have a dedicated layer (meta-docking) with all the stuff.

We have dedicated recipes that installs a specific version of the Linux Ker=
nel and some specific patch as well.

As we create the image:


bitbake -k docking-image


Now, we're moving toward the final board to be used in production. It diffe=
rs from the evaluation board as some connectors are added (lighting etc.).

Therefore, the Linux Kernel being installed is slightly different, some sou=
rce files need to be replaced/patched/modified consequently.


My colleague, firstly chose to create another copy of the layer (i.e. meta-=
docking-prod).

This option does not satisfy us, I'm sure Yocto provides mechanisms to appl=
y taks according to the target.


My question is, for example, how to apply different patches on a Linux kern=
el (or any yocto resource file) according to user's variable ? or according=
 to the target machine ?

Without having to duplicate layers.


Thanks.


K.

--_000_DB5PR0101MB168662C8598B20446B65551D92C90DB5PR0101MB1686_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>I'm using Yocto (Poky Dora is mandatory for our project) to create a Lin=
ux image for an ARM base board.</p>
<p>Currently, we're working on an evaluation board.</p>
<p>We have a dedicated layer (meta-docking) with all the stuff.</p>
<p>We have dedicated recipes that installs a specific version of the Linux =
Kernel and some specific patch as well.</p>
<p>As we create the image:</p>
<p><br>
</p>
<p>bitbake -k docking-image</p>
<p><br>
</p>
<p>Now, we're moving toward the final board to be used in production. It di=
ffers from the evaluation board as some connectors are added (lighting etc.=
).</p>
<p>Therefore, the Linux Kernel being installed is slightly different, some =
source files need to be replaced/patched/modified consequently.</p>
<p><br>
</p>
<p>My colleague, firstly chose to create another copy of the&nbsp;layer (i.=
e. meta-docking-prod).</p>
<p>This option does not satisfy us, I'm sure&nbsp;Yocto provides mechanisms=
 to apply taks according to the target.</p>
<p><br>
</p>
<p>My question is, for example, how to apply different patches on a Linux k=
ernel (or any yocto resource&nbsp;file) according to user's variable ? or a=
ccording to the target machine ?</p>
<p>Without having to duplicate layers.</p>
<p><br>
</p>
<p>Thanks.</p>
<p><br>
</p>
<p>K.</p>
</div>
</body>
</html>

--_000_DB5PR0101MB168662C8598B20446B65551D92C90DB5PR0101MB1686_--
