Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D011E0094C; Tue, 11 Apr 2017 06:51:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 21233 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Apr 2017 06:51:51 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0125.outbound.protection.outlook.com [104.47.36.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C62F8E006CD
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 06:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=WwlPEi6XsSm8d7ZOurdsk+KneBJaqNMw5VV3gjR4z0o=;
	b=bKRtUEXWAnNK9T6EB6wW2LFIZa5ti/cajeUV5g/GpuzBcB4ysr3PDX9neB/oFQoKFa6TKfD8tlbdZ3OEf0n8oupPqrUlTfOWyIkYKfRDsOAFg4F3NveQA6kf7NTaQP3vaKxnc5qgud7OS3vIBXPhJlr/g1mzHRiVL6Ruj0zfQt8=
Received: from MWHPR07MB3440.namprd07.prod.outlook.com (10.164.192.15) by
	MWHPR07MB3440.namprd07.prod.outlook.com (10.164.192.15) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1034.10; Tue, 11 Apr 2017 13:51:49 +0000
Received: from MWHPR07MB3440.namprd07.prod.outlook.com ([10.164.192.15]) by
	MWHPR07MB3440.namprd07.prod.outlook.com ([10.164.192.15]) with mapi id
	15.01.1034.011; Tue, 11 Apr 2017 13:51:49 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sub-directories from Git in SRC-URI
Thread-Index: AdKyi+6CZGeMF7dnRvSNMfKHmDj6BgADEHXAAABdAOAADBiOUA==
Date: Tue, 11 Apr 2017 13:51:49 +0000
Message-ID: <MWHPR07MB3440011C3E862FBFE1CDA66696000@MWHPR07MB3440.namprd07.prod.outlook.com>
References: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
	<CY4PR07MB3429F7E461F3DA2C5DD111E696000@CY4PR07MB3429.namprd07.prod.outlook.com>
	<7efedc166d4c4ebdbf2a1938d1ff4f7d@FE-MBX1014.de.bosch.com>
In-Reply-To: <7efedc166d4c4ebdbf2a1938d1ff4f7d@FE-MBX1014.de.bosch.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: de.bosch.com; dkim=none (message not signed)
	header.d=none; de.bosch.com;
	dmarc=none action=none header.from=Honeywell.com; 
x-originating-ip: [199.64.75.71]
x-microsoft-exchange-diagnostics: 1; MWHPR07MB3440;
	7:6/i+nAA+7ctm4atnBhqe+Q3P3yyg5HvYq90MelixXOkgvXVZKi8eBY6I1TPpcG9z8WeBqQ0mYfjCfWWXhCJW4B7FpCNzJRcAiuDtpf/07iSjqGa1L2zU1Zggt9ea9Xwi0/p3fQnqg6/rgCDSShwwbzWe9lV8CurdOWlMoEYT5wvQVWbLoS7+o+7Q5+GtvDub+BKURcXYs9bqiiV7fj+RzU2NPN4p8SK13JzF3zoCKSqVtTOp9leqaEdP+f4UkocKEH45wVBu98596Mu6k0+feVvj7mnF6RTW0QbXgKbjgz5GQe1MYfs5jQWMsmLxcTFrZj+Ya+hwZmOp2XJwIHqdHA==;
	20:t7ps4bpdcrkUeV/7UTFyxJAnKhSk3ny6c/C2wIOvxuSXjOP81l8mkpkkX3K+cibFbykuQjbRZ93S5r2JNHL46xcR/Uy0a6wySk4HN+/JPcW80T+wdMdfzLlRCcAg4wapr/2oiuPSClk4PzneBtCbQpOZgMm1cAgLw/C5SXMtrcuPjDf/ZyfSSnA2FWN2yKd7KCLWvLKUTLyAzejF9bzkF7Trl8ybjBu8+0XAm8cGTnSIyk8o8aB/fbv0KbkQtHch
x-ms-office365-filtering-correlation-id: 110cf413-39a4-43f4-9eba-08d480e1e719
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081)(201702281549075);
	SRVR:MWHPR07MB3440; 
x-recptdomain: NotTLSDomain
x-atp-bypass: TRUE
x-microsoft-antispam-prvs: <MWHPR07MB3440CFFDF67EA4031DE3EFE396000@MWHPR07MB3440.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(278428928389397)(93747276172241)(21748063052155); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(10201501046)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(6072148);
	SRVR:MWHPR07MB3440; BCL:0; PCL:0; RULEID:; SRVR:MWHPR07MB3440; 
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39400400002)(39850400002)(39860400002)(39410400002)(39450400003)(7696004)(38730400002)(236005)(122556002)(55016002)(99286003)(2950100002)(54896002)(9686003)(5660300001)(6306002)(25786009)(229853002)(53936002)(76176999)(54356999)(50986999)(6246003)(7906003)(7736002)(8936002)(2501003)(66066001)(74316002)(33656002)(3660700001)(2900100001)(2906002)(606005)(8676002)(6436002)(3846002)(189998001)(86362001)(3280700002)(77096006)(790700001)(6116002)(102836003)(81166006)(6506006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR07MB3440;
	H:MWHPR07MB3440.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2017 13:51:49.6326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR07MB3440
Subject: Re: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 13:51:55 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_MWHPR07MB3440011C3E862FBFE1CDA66696000MWHPR07MB3440namp_"

--_000_MWHPR07MB3440011C3E862FBFE1CDA66696000MWHPR07MB3440namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Following Miguel Aveiro's link, I noticed a parameter called subpath that I=
 had never see:
https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-m=
anual.html#git-fetcher
This parameter may provide you the feature you are looking for.

Jo=EBl Esponde
Honeywell | Safety and Productivity Solutions

De : Eswaran Vinothkumar (BEG/PJ-IOT-EL) [mailto:Vinothkumar.Eswaran@de.bos=
ch.com]
Envoy=E9 : mardi 11 avril 2017 10:04
=C0 : Esponde, Joel <Joel.Esponde@Honeywell.com>; yocto@yoctoproject.org
Objet : AW: Sub-directories from Git in SRC-URI

Hi,

Thanks for your answer. I had thought about using this solution initially. =
In my case I have a common git repo for some 20 different applications and =
planning to write an individual recipe for each application.

If I plan to use in this way, I have 20 copies in my disk which I don't wan=
t to have.

Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1
Von: Esponde, Joel [mailto:Joel.Esponde@Honeywell.com]
Gesendet: Dienstag, 11. April 2017 09:58
An: Eswaran Vinothkumar (BEG/PJ-IOT-EL) <Vinothkumar.Eswaran@de.bosch.com<m=
ailto:Vinothkumar.Eswaran@de.bosch.com>>; yocto@yoctoproject.org<mailto:yoc=
to@yoctoproject.org>
Betreff: RE: Sub-directories from Git in SRC-URI

Hi,

Here is one way to manage this use case.
In the SRC_URI variable, you set the git repo access.
Now let's say that your sub-directory relative path is "src/myapp".
Son now you just have to add to your recipe this line:

S =3D "${WORKDIR}/git/src/myapp"

It is not optimized from a disk usage point of view (a full copy of the rep=
o files is in ${WORKDIR}/git) but it works.

Regards,

Jo=EBl Esponde
Honeywell | Safety and Productivity Solutions

De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org] De la part de Eswaran Vinothkumar (=
BEG/PJ-IOT-EL)
Envoy=E9 : mardi 11 avril 2017 08:25
=C0 : yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Objet : [yocto] Sub-directories from Git in SRC-URI

Hallo,

May I now is it possible to include a sub-directory from git repo in the SR=
C_URI of bitbake recipe.

Also in SRC_URI is it possible to include a directory instead of a single f=
ile?

I know I could create a tar file of a directory and include it , but I woul=
d like to know is it possible to include directory as a SRC_URI.


Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1


--_000_MWHPR07MB3440011C3E862FBFE1CDA66696000MWHPR07MB3440namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#400000;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#400000;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#400000">Following Miguel Aveir=
o&#8217;s link, I noticed a parameter called
<i>subpath</i> that I had never see:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><a href=3D"https://www=
.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#=
git-fetcher">https://www.yoctoproject.org/docs/latest/bitbake-user-manual/b=
itbake-user-manual.html#git-fetcher</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">This parameter may pro=
vide you the feature you are looking for.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">Honeywell</span></b><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#707070"> | Sa=
fety and Productivity Solutions<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR">De&nbsp;:</span></b><span lang=
=3D"FR"> Eswaran Vinothkumar (BEG/PJ-IOT-EL) [mailto:Vinothkumar.Eswaran@de=
.bosch.com]
<br>
<b>Envoy=E9&nbsp;:</b> mardi 11 avril 2017 10:04<br>
<b>=C0&nbsp;:</b> Esponde, Joel &lt;Joel.Esponde@Honeywell.com&gt;; yocto@y=
octoproject.org<br>
<b>Objet&nbsp;:</b> AW: Sub-directories from Git in SRC-URI<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Thanks for your answer. I had thought about using thi=
s solution initially. In my case I have a common git repo for some 20 diffe=
rent applications and planning to write an individual
 recipe for each application.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">If I plan to use in this way, I have 20 copies in my =
disk which I don&#8217;t want to have.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"DE" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Mit freundlichen Gr=FC=DFen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b></span><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,sans-serif"><o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"DE">Von:</span></b><span lang=3D"DE=
"> Esponde, Joel [<a href=3D"mailto:Joel.Esponde@Honeywell.com">mailto:Joel=
.Esponde@Honeywell.com</a>]
<br>
<b>Gesendet:</b> Dienstag, 11. April 2017 09:58<br>
<b>An:</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL) &lt;<a href=3D"mailto:Vinoth=
kumar.Eswaran@de.bosch.com">Vinothkumar.Eswaran@de.bosch.com</a>&gt;;
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<b>Betreff:</b> RE: Sub-directories from Git in SRC-URI<o:p></o:p></span></=
p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Hi,</span><o:p></o:p><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Here is one way to man=
age this use case.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">In the SRC_URI variabl=
e, you set the git repo access.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Now let&#8217;s say th=
at your sub-directory relative path is &#8220;src/myapp&#8221;.</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Son now you just have =
to add to your recipe this line:</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><span style=3D"font-siz=
e:10.0pt;font-family:Consolas">S =3D &quot;${WORKDIR}/git/src/myapp&quot;</=
span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">It is not optimized fr=
om a disk usage point of view (a full copy of the repo files is in
</span><span style=3D"font-size:10.0pt;font-family:Consolas">${WORKDIR}/git=
)</span><span style=3D"color:#400000"> but it works.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Regards,</span><o:p></=
o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&nbsp;</span><o:p></o:=
p></p>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde</span></b><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">Honeywell</span></b><span style=3D"fo=
nt-size:9.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#707070"> | Sa=
fety and Productivity Solutions</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"FR">De&nbsp;:</span></b><span lang=
=3D"FR"> <a href=3D"mailto:yocto-bounces@yoctoproject.org">
yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org">mailto:yocto-bounces@yoctoproject.org</a>]
<b>De la part de</b> Eswaran Vinothkumar (BEG/PJ-IOT-EL)<br>
<b>Envoy=E9&nbsp;:</b> mardi 11 avril 2017 08:25<br>
<b>=C0&nbsp;:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
<b>Objet&nbsp;:</b> [yocto] Sub-directories from Git in SRC-URI</span><o:p>=
</o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">Hallo,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I now is it possible to include a sub-directory f=
rom git repo in the SRC_URI of bitbake recipe.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Also in SRC_URI is it possible to include a directory=
 instead of a single file?</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I know I could create a tar file of a directory and i=
nclude it , but I would like to know is it possible to include directory as=
 a SRC_URI.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"DE" sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black=
">Mit freundlichen Gr=FC=DFen / Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b><br>
<br>
</span><o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR07MB3440011C3E862FBFE1CDA66696000MWHPR07MB3440namp_--
