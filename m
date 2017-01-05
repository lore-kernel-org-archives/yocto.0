Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86A4CE00563; Thu,  5 Jan 2017 00:33:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.174 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Jan 2017 00:33:35 PST
Received: from BLU004-OMC4S35.hotmail.com (blu004-omc4s35.hotmail.com
	[65.55.111.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24105E0043B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:33:35 -0800 (PST)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.55.111.136])
	by BLU004-OMC4S35.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 5 Jan 2017 00:32:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=DxGgb+lbMIrhIKObuY9uwTOKqlN/uFJ5aRaAh9RJAqU=;
	b=USgDvXpT906026Kgt+RznzUf9b5zrEhOIqZacvK7bDMB4ZYGY/Y7fVkvPv4/maE8komX8bQeuOk1HuQOSz1nyF5j67VClsSlB/7OsukJKkT3LuBoWwUMBpOhKfXuK8SGci8ZkOomX9pa4uy+UR+pkcAHy0Z3qdStjaouXGonsmJYdrPXHHSBcNvwq+mLVgAu6jW5LAQGN3YzkUXn6j/OA/E/gieV6TcnRKKOU84JR8tgUd0knaQa8zairlwpB/AX8syynQovG7KqbUZRal3x4Y+DvEE9GKnOwNmHzypjdtmE4zwfYUrQg/LZfzJDyE43KVpNYqxyHGUy5jVYcvT1FQ==
Received: from HE1EUR01FT064.eop-EUR01.prod.protection.outlook.com
	(10.152.0.60) by HE1EUR01HT152.eop-EUR01.prod.protection.outlook.com
	(10.152.1.27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.789.10;
	Thu, 5 Jan 2017 08:32:26 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.0.52) by
	HE1EUR01FT064.mail.protection.outlook.com (10.152.1.31) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Thu, 5 Jan 2017 08:32:26 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.202])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.202])
	with mapi id 15.01.0817.012; Thu, 5 Jan 2017 08:32:25 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] Best way to custom recipe to build c++ sources
Thread-Index: AQHSZy49jiZ4d40/90ebUCgUVzHjfw==
Date: Thu, 5 Jan 2017 08:32:25 +0000
Message-ID: <AMSPR01MB18404AC10D8C17714E60A1692600@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:FB37452810AFE6FE294EC3DAC1B07F8E2B415B4C17F5CEEFE132E99D41D37A77;
	UpperCasedChecksum:66FA696586F8B72A1656CD6790B49DD2C71256D281DBA1AB3F0B2432758FA555;
	SizeAsReceived:7285; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [jhg6tEKuMMad1GuaMcjscdRevY6rtUTw]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT152;
	7:ryGat+1khRz7dHhviXBWJm5VYX2cMpGLm5lwzNnFils6YtdJLtwNGqYTJ27xNONvCGo9YaZyYi4an3618HyZ7gem5bscce4lvLNUF6d7HLuxKcgtPEC+CNnTGvN1y+lfpZole1Q1oJhoi6jkrF+iFhppAPpqUeOzPloS5DL+NfVIZZBbaikyHMMqP27QiaLE/XvwqqBgLArYiVMjReValk6ujGNMiTyzKi6swLkFYdnRDyUJ+SMzIrqPccA1O70hETivWbARCVYWyuoR21STiu6nVUWqnME+HB1UBA/z7Q8mDG0hkkWFQ945oKrwEq0iIF1RtU0/RJGb9gyw2REydL48xUe3r71gE1VeKY7kAObHY5uzmkNHFwDDN/+/bJr2bn7DJF58/KJurPNj5rLrxgjo9sVc28i47pZlaxtNhNrYfzlX4AkI2kCXWpE+2xxiXWb+TaRRf3IU2g7fHB5USQ==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR01HT152;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c77fec9e-2bf9-4147-9fad-08d4354560b9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(1603103113)(1601125047);
	SRVR:HE1EUR01HT152; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:HE1EUR01HT152; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR01HT152; 
x-forefront-prvs: 0178184651
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2017 08:32:25.4375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT152
X-OriginalArrivalTime: 05 Jan 2017 08:32:33.0364 (UTC)
	FILETIME=[42C6B140:01D2672E]
Subject: Best way to custom recipe to build c++ sources
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
X-List-Received-Date: Thu, 05 Jan 2017 08:33:38 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB18404AC10D8C17714E60A1692600AMSPR01MB184eurprd_"

--_000_AMSPR01MB18404AC10D8C17714E60A1692600AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm currently writing a custom recipe that builds a c++ program developped =
by our team.

It is  a huge c++ program with many contrib dependencies. It's supposed to =
run on many platforms, including Rpi.


The recipe is really simply, it fetches sources, launches makefiles and ins=
tall binaries.


Firslty, on my linux, I have created the SDK (with populate_sdk) in order t=
o test the compilation (I installed it into /opt/poky)

So in my makefiles, I have added some compilation flags for the sysroot, ld=
 flags etc.

But for this purpose I was obliged to "source" the environment script provi=
ded by the SDK to have the variables such as SDKTARGETSYSROOT, PATH, TARGET=
_PREFIX correctly set.


My question is:

when I'm writing my final recipe myprog_1.0.bb, I'm not suposed to have a p=
roper SDK installed into /opt/poky ?

When a poky environment is sourced before launching bitbake, are the SDKTAR=
GETSYSROOT set with any value ?


What's the best way to achieve it ?


Thanks.


Z.





--_000_AMSPR01MB18404AC10D8C17714E60A1692600AMSPR01MB184eurprd_
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
<p>I'm currently writing a custom recipe that builds a c&#43;&#43; program =
developped by our team.</p>
<p>It is &nbsp;a huge c&#43;&#43; program with many contrib dependencies. I=
t's supposed to run on many platforms, including Rpi.</p>
<p><br>
</p>
<p>The recipe is really&nbsp;simply, it&nbsp;fetches sources, launches make=
files and install binaries.</p>
<p><br>
</p>
<p>Firslty, on my linux, I have created the SDK (with populate_sdk) in orde=
r to test the compilation (I installed it into /opt/poky)</p>
<p>So in my makefiles, I have added some compilation flags for the sysroot,=
 ld flags etc.</p>
<p>But for this purpose I was obliged to &quot;source&quot; the environment=
 script&nbsp;provided by the SDK to have the variables such as SDKTARGETSYS=
ROOT, PATH, TARGET_PREFIX correctly set.</p>
<p><br>
</p>
<p>My question is:</p>
<p>when I'm writing my final recipe myprog_1.0.bb, I'm not suposed to have =
a proper SDK installed into /opt/poky ?</p>
<p>When a poky environment is sourced before launching bitbake, are the SDK=
TARGETSYSROOT set with any value ?</p>
<p><br>
</p>
<p>What's the best way to achieve it ?</p>
<p><br>
</p>
<p>Thanks.</p>
<p><br>
</p>
<p>Z.</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_AMSPR01MB18404AC10D8C17714E60A1692600AMSPR01MB184eurprd_--
