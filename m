Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0BA4E00AB6; Mon, 10 Oct 2016 10:16:11 -0700 (PDT)
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
	*      [65.54.190.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC1S15.hotmail.com (bay004-omc1s15.hotmail.com
	[65.54.190.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6C7E00A1E
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 10:16:09 -0700 (PDT)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.54.190.61])
	by BAY004-OMC1S15.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 10 Oct 2016 10:16:09 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=4q8MK32F52XTmm/0jwtmScQry621C0oRxvV3jOVFk6M=;
	b=DqoAVhdew+meoMh0Xg/ZyxL2Xz1hP55AuysmGlopBfrS/1++3QnCE0smLOqCbJxPRq+9aB/P6kogzam6oXfH8D4OUngkox1uzZ/o0QkYBiYNHqvYZsWoFThCxloILyiIfjkiHUx+b6RUrpVqScQRGgs91klviUUBbGUdQyrAFk86ROPfVXU1YqccpZ+3B7/emul8ugeAcYc1DqzVYXaSrA5jnmNnDHoacK+dtgW1emxuOhzfrpe2jQs8VegjbIyoCthQLou9CfygsEbJUB4h9whHRhZ9CuCKHHsHjTGY7y9ElCOR+DSPn1X5/YGDSfN6livBOjl5zMxXLv3mgDw9RQ==
Received: from VE1EUR01FT042.eop-EUR01.prod.protection.outlook.com
	(10.152.2.54) by VE1EUR01HT078.eop-EUR01.prod.protection.outlook.com
	(10.152.3.142) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 10 Oct 2016 17:16:07 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.2.53) by
	VE1EUR01FT042.mail.protection.outlook.com (10.152.3.114) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 10 Oct 2016 17:16:06 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.027; Mon, 10 Oct 2016 17:16:05 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [bitbake] Issue with SVN fetcher options
Thread-Index: AQHSIvzo/qipfpN4wEaQLH+eGqLksqChtuaAgAA28CE=
Date: Mon, 10 Oct 2016 17:16:05 +0000
Message-ID: <HE1PR01MB18832DBE35654794A012ADE492DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883348257D55AE5272796C092DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB18838005E94E76E68939A7A592DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<8d1bd880-ab06-fcab-6f4d-627bf5baf3f2@windriver.com>
In-Reply-To: <8d1bd880-ab06-fcab-6f4d-627bf5baf3f2@windriver.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.2.53)
	smtp.mailfrom=hotmail.com; windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com;
	dmarc=fail action=none header.from=hotmail.com; 
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.2.53 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [pYEfbg3r6b+OVV3RQN5cd0Qjh/mJ9616]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT078;
	6:KUAPNE4knYAQtI0yXgxvBirPhp/h4vXwr2rflwUHBMVd4wZc8F1Nv4j8BUtoCyDuB1mzaA+iauGLEshr3QzVYoy4Ocsue0LcfHoh7Ai+OFPBA2hGNOeiK/nWwFbLb3I+lreoergTJilkURGKuTUseYw9VhIyAy3dJ9Z7ofZxDN34W0EnkB16rDoC6N0Vxw0WHnBmt5gnWTKCdfQNZjcz5LRPU8SA9e6RN69QC+FjFQZtli4JtFSw7AyJorgISgEZGBHzz2rdTF1RR+naJFhl8iu3iEj9NwtBXlxJQPYTdi8=;
	5:85G7RYWozx1elzJ7dSUNQBfPdm7FbHqi/rdCMh6dkCjm4ST3WJUEvq04WcMO9DXJoCe+WjKDEgQaV4eXecGbJsUgykrDG84HSx3UPcSPR46no/c9Ib9XmE5nK0CLTa+iG4BYQL/+P/Wbypb6iKfonw==;
	24:B1hfXfYh+5y8eebaBW+5t8i8VDqt+sPszVRvMcoTnGot751KuzV9/nVFFXwAPeR/mwNKgpL6eOcrQzGzls4VRjrPepK3ZztMJ5+IsO4VSAc=;
	7:YB9y1JV1j1yeqrO/VLZg6JNUAhyuh6nm6qPjcyUVJ+nTJiv4swvJSL2T9sg0UVBqOdfXY3YBJE+eaF4YT05qWa/RPpZoOBl1/r02NcdUwsq1/hD71F23Vmuic84lLmAwm1XfY8xX/O39Kk2Dq3CItUOrGx23SaMGNByeL9HVQNw+UsvM8WXJs9J/Ejo5PBnhPXgGg4l1/636zWLvJ/h/VkS+YSIK76nkDeTRYF9UR4zNuwiW6MFRrK0fMckeh6XKo/yUw0E2kjmbg4+aOQvJoQUOQL+idiTnbewySVOXpWlLefCqlbm6KCMuZLyPev5e+PtZ93nV++RVQLcH6fk8UA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT078;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 40c82b55-f860-4710-374f-08d3f1311e88
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR01HT078;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR01HT078; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT078; 
x-forefront-prvs: 0091C8F1EB
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2016 17:16:05.6866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT078
X-OriginalArrivalTime: 10 Oct 2016 17:16:09.0740 (UTC)
	FILETIME=[FE74FCC0:01D22319]
Subject: Re: [bitbake] Issue with SVN fetcher options
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
X-List-Received-Date: Mon, 10 Oct 2016 17:16:12 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18832DBE35654794A012ADE492DB0HE1PR01MB1883eurp_"

--_000_HE1PR01MB18832DBE35654794A012ADE492DB0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


________________________________
De : Mark Hatle <mark.hatle@windriver.com>
Envoy=E9 : lundi 10 octobre 2016 15:58
=C0 : Karim ATIKI; yocto
Objet : Re: [yocto] [bitbake] Issue with SVN fetcher options

On 10/10/16 3:47 PM, Karim ATIKI wrote:
> OK.
>
>
> I found  out the solution.
>
>
> Actually, I noticed in the log file "log.do_fetch()" that the SVN command
> finishes with the "module" name as the output directory.
>
> I took a look to bitbake sourcecode and realized that the parameter I was
> looking for in the SRC_URI was "path_spec".
>
>
> ThereforeI changed the SRC_URI with:
>
>
>
> SRC_URI =3D
> "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/svn-atonc=
e/subproject/;module=3Dtrunk;protocol=3Dhttp;path_spec=3Dsubproject"
>
> And everything works fine.
> Please note that there are no mentions of "path_spec" in the the BitBake =
manual
> nor Yocto MegaManual.
>
> I just wonder if there's a reason for that. Anyway, it solved my problem.
>
> Cheers.
>
> Karim
>
>
> -------------------------------------------------------------------------=
-------
> *De :* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de=
 la
> part de Karim ATIKI <karim_atiki@hotmail.com>
> *Envoy=E9 :* lundi 10 octobre 2016 15:11
> *=C0 :* yocto
> *Objet :* [yocto] [bitbake] Issue with SVN fetcher options
>
>
> Hi all,
>
>
> I'm writing a recipe to build a custom project for an ARM based board (Co=
libri T20).
>
> I need to fetch the different sub-projects from SVN and launch the respec=
tive
> makefile.
>
>
> However, I'm experiencing a problem with the SVN fetcher of bitbake.
>
> Indeed, my URI looks like:
>
>
> SRC_URI =3D
> "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/svn-atonc=
e/subproject/;module=3Dtrunk;protocol=3Dhttp"
>
> Basically, it works fine. But the source code is fetched into:
>
> *../downloads/svn/our-server:22037/svn-atonce/subproject/trunk*
>
>
> And I need it to be checked out into a local directory as follow:
>
>
> *../downloads/svn/our-server:22037/svn-atonce/subproject/*
>
> I haven'nt found yet an option for the SVN fetcher to specify a local dir=
ectory
> for the check-out.
>
> Is there an option that I haven'nt found in the BitBake manual ?
>
>If this fixes your issues, and is not anywhere in the manual.  I'd suggest
>opening a bug on the docs in the bugzilla so it can be updated.
>
>(bugzilla.yoctoproject.org -- selection documentation)
>
>--Mark

Done.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10405



--_000_HE1PR01MB18832DBE35654794A012ADE492DB0HE1PR01MB1883eurp_
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
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Mark Hatle &lt;mark.=
hatle@windriver.com&gt;<br>
<b>Envoy=E9 :</b> lundi 10 octobre 2016 15:58<br>
<b>=C0 :</b> Karim ATIKI; yocto<br>
<b>Objet :</b> Re: [yocto] [bitbake] Issue with SVN fetcher options</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 10/10/16 3:47 PM, Karim ATIKI wrote:<br>
&gt; OK.<br>
&gt; <br>
&gt; <br>
&gt; I found&nbsp; out the solution.<br>
&gt; <br>
&gt; <br>
&gt; Actually, I noticed in the log file &quot;log.do_fetch()&quot; that th=
e SVN command<br>
&gt; finishes with the &quot;module&quot; name as the output directory.<br>
&gt; <br>
&gt; I took a look to bitbake sourcecode and realized that the parameter I =
was<br>
&gt; looking for in the SRC_URI was &quot;path_spec&quot;.<br>
&gt; <br>
&gt; <br>
&gt; ThereforeI changed the SRC_URI with:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; SRC_URI =3D<br>
&gt; &quot;svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/s=
vn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp;path_spec=3Dsubproject=
&quot;<br>
&gt; <br>
&gt; And everything works fine.<br>
&gt; Please note that there are no mentions of &quot;path_spec&quot; in the=
 the BitBake manual<br>
&gt; nor Yocto MegaManual.<br>
&gt; <br>
&gt; I just wonder if there's a reason for that. Anyway, it solved my probl=
em.<br>
&gt; <br>
&gt; Cheers.<br>
&gt; <br>
&gt; Karim<br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; *De :* yocto-bounces@yoctoproject.org &lt;yocto-bounces@yoctoproject.o=
rg&gt; de la<br>
&gt; part de Karim ATIKI &lt;karim_atiki@hotmail.com&gt;<br>
&gt; *Envoy=E9 :* lundi 10 octobre 2016 15:11<br>
&gt; *=C0 :* yocto<br>
&gt; *Objet :* [yocto] [bitbake] Issue with SVN fetcher options<br>
&gt;&nbsp; <br>
&gt; <br>
&gt; Hi all,<br>
&gt; <br>
&gt; <br>
&gt; I'm writing a recipe to build a custom project for an ARM based board =
(Colibri T20).<br>
&gt; <br>
&gt; I need to fetch the different sub-projects from SVN and launch the res=
pective<br>
&gt; makefile.<br>
&gt; <br>
&gt; <br>
&gt; However, I'm experiencing a problem with the SVN fetcher of bitbake.<b=
r>
&gt; <br>
&gt; Indeed, my URI looks like:<br>
&gt; <br>
&gt; <br>
&gt; SRC_URI =3D<br>
&gt; &quot;svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037/s=
vn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp&quot;<br>
&gt; <br>
&gt; Basically, it works fine. But the source code is fetched into:<br>
&gt; <br>
&gt; *../downloads/svn/our-server:22037/svn-atonce/subproject/trunk*<br>
&gt; <br>
&gt; <br>
&gt; And I need it to be checked out into a local directory as follow:<br>
&gt; <br>
&gt; <br>
&gt; *../downloads/svn/our-server:22037/svn-atonce/subproject/*<br>
&gt; <br>
&gt; I haven'nt found yet an option for the SVN fetcher to specify a local =
directory<br>
&gt; for the check-out.<br>
&gt; <br>
&gt; Is there an option that I haven'nt found in the BitBake manual ?<br>
&gt;<br>
&gt;If this fixes your issues, and is not anywhere in the manual.&nbsp; I'd=
 suggest<br>
&gt;opening a bug on the docs in the bugzilla so it can be updated.<br>
&gt;<br>
&gt;(bugzilla.yoctoproject.org -- selection documentation)<br>
&gt;<br>
&gt;--Mark</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText">Done.</div>
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText"><a href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D10405" class=3D"OWAAutoLink" id=3D"LPlnk477933">https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D10405</a><br>
<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB18832DBE35654794A012ADE492DB0HE1PR01MB1883eurp_--
