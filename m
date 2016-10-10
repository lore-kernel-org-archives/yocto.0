Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2273E009E7; Mon, 10 Oct 2016 06:11:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BLU004-OMC4S12.hotmail.com (blu004-omc4s12.hotmail.com
	[65.55.111.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D50BE0097C
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 06:11:27 -0700 (PDT)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.55.111.135])
	by BLU004-OMC4S12.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 10 Oct 2016 06:11:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=XJ2qjVTkQx3rlctNJBVp271SkAQd2yopSc5T6zPMDYs=;
	b=a7NRbs4e5+ViZtZ+tMP7hoTJPUMiPxPprQorREMuPGraklh5LIOvZzhoPLI8IEQh2orJBO/pZAG2KzU6J+s0vtgHe3DtHEzYGpWdIFL1nqwTS0mbFwSQzW+59lAOIvakN9B+psUMOe79pZJgnuJURLfyuDQ34CxCMiFUXy2sNS2HkIIaubBFwervfc+L19DmrY36Cc7I8znn27p0zNeN5f6oGiY5xegZ80JKPz1FY4lebog9iPJOHHNcCcsMz6CJdqT0e6LScG4F30G82Gj5rG1X1GahIerBxkhmOH8W4Yhf/TovdwjLcTgTOZ+YUtha3rd5oNMQ4wYGFuxELhId/g==
Received: from DB5EUR01FT011.eop-EUR01.prod.protection.outlook.com
	(10.152.4.58) by DB5EUR01HT011.eop-EUR01.prod.protection.outlook.com
	(10.152.4.122) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 10 Oct 2016 13:11:25 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.4.53) by
	DB5EUR01FT011.mail.protection.outlook.com (10.152.5.3) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 10 Oct 2016 13:11:25 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.027; Mon, 10 Oct 2016 13:11:25 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] Issue with SVN fetcher options
Thread-Index: AQHSIvfMT40cGlnOokGPbSNPc565xw==
Date: Mon, 10 Oct 2016 13:11:24 +0000
Message-ID: <HE1PR01MB1883348257D55AE5272796C092DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ftDTCpYJxbL4QB2BXdr8vf1LtNwAaroS]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT011;
	6:2LGsaDo6x7xeP8SX3F/xcQZFmbBZ2WYm9a+jST2lLhzw100OUlk83miNuWVZVgdp7zUKiISHZ+BBGS69ZEbpEiAdZV/IyiWQsM8JhyqbM01RwTpUcsixkI1V2Sb5Xi+dR9vav5rimhgOrc9vFkjac93jOShoqjudRUkRog/VxwIPuTCJlY7IkJ6lyA4gsEqjcD2V7APjJPW+5HHGeMSKh+30bXQmzaGB9w7LLsIzBukF27UESqf5qNoopvjeqa4gYVylV6UXuMCQ6B5ZxNN/hHsMjaZx4pP4bj9YkAzIouk=;
	5:+eoHLPLzEWxdvuCop2on011HUBTGTCKkPEnrwn0K3RFMR6pHT393vjckMY5jaM8ehrxB9LyIqx4Ro7byCrIEishq51kkACToAqln9UrxAXbCzdXfsyNoSkHyu36cnzQL/PxCW9ui9PcnPd2IlGapgg==;
	24:1yzg/sk8v8UtR8FSmMhU6I9nr6Q5l7oLhRH9CVFXiPqXnl4w/vmDLCSLHvqwaMtwzwuqAhsqyYG+S0deqVuvPHsIcEzGrmWO2cxrHEklPiw=;
	7:g+lD/wk0jyHk5Ns5PQ32tw+ppl+0BjcmZbdXkJLBrg0F1jLa+pXDT+BwCPsBQ+VsNjrscXGhPg2GNFk9rrVS0xLiunzJP8DFnBJaiHFID2n7ew392ElSwhElFPrPa8GRMfrPAMH1/E4iJZH/TEY9hEKdbYW1iuTHy2tHR33fe0D2v5N05JQItRSL3xteJcMGvY1Pjkc2qfipcqddAyMNuEfmL747d3nXVSqmbkGlI8K44IpnmIDQnAibmmlfwCw5uJaHJNeDpJwdzABKwoDUZ0n0h6Aeey9SsqqVFb2T/PcUL66CUDWGbrvh4M45WRARn0ezFMjLadhu68JJ8207wA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR01HT011;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 036fed08-5697-4f4d-4afa-08d3f10ef031
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR01HT011;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR01HT011; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT011; 
x-forefront-prvs: 0091C8F1EB
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2016 13:11:24.9809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT011
X-OriginalArrivalTime: 10 Oct 2016 13:11:27.0307 (UTC)
	FILETIME=[CF0B81B0:01D222F7]
Subject: [bitbake] Issue with SVN fetcher options
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
X-List-Received-Date: Mon, 10 Oct 2016 13:11:29 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883348257D55AE5272796C092DB0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883348257D55AE5272796C092DB0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm writing a recipe to build a custom project for an ARM based board (Coli=
bri T20).

I need to fetch the different sub-projects from SVN and launch the respecti=
ve makefile.


However, I'm experiencing a problem with the SVN fetcher of bitbake.

Indeed, my URI looks like:


SRC_URI =3D "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037=
/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp"

Basically, it works fine. But the source code is fetched into:

../downloads/svn/our-server:22037/svn-atonce/subproject/trunk


And I need it to be checked out into a local directory as follow:


../downloads/svn/our-server:22037/svn-atonce/subproject/

I haven'nt found yet an option for the SVN fetcher to specify a local direc=
tory for the check-out.

Is there an option that I haven'nt found in the BitBake manual ?

Cheers.

Karim


--_000_HE1PR01MB1883348257D55AE5272796C092DB0HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>I'm writing a recipe to build a custom project for an ARM based board (C=
olibri T20).</p>
<p>I need to fetch the different sub-projects from SVN and launch the respe=
ctive makefile.</p>
<p><br>
</p>
<p>However, I'm experiencing a problem with the SVN fetcher of bitbake.</p>
<p>Indeed, my URI looks like:</p>
<p><br>
</p>
<p></p>
<div>SRC_URI =3D &quot;svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-se=
rver:22037/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp&quot;</div=
>
<div><br>
</div>
<div>Basically, it works fine. But the source code is fetched into:</div>
<div><br>
</div>
<div>
<div><b>../downloads/svn/our-server:22037/svn-atonce/subproject/trunk</b></=
div>
<div><br>
</div>
<br>
</div>
<div>And I need it&nbsp;to be checked out into a local directory as follow:=
</div>
<div><br>
</div>
<div><br>
</div>
<div><b style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;=
Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;=
Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: =
16px;">../downloads/svn/our-server:22037/svn-atonce/subproject/</b><br>
</div>
<div><br>
</div>
<div>I haven'nt found yet an option for the SVN fetcher to specify a local =
directory for the check-out.</div>
<div><br>
</div>
<div>Is there an option that I haven'nt found in the BitBake manual ?</div>
<div><br>
</div>
<div>Cheers.</div>
<div><br>
</div>
<div>Karim</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_HE1PR01MB1883348257D55AE5272796C092DB0HE1PR01MB1883eurp_--
