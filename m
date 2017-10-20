Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D2E6E00CF5; Fri, 20 Oct 2017 06:36:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 346 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Oct 2017 06:36:03 PDT
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D55A8E00CCC
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 06:36:03 -0700 (PDT)
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 6FDF860C63
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 13:30:17 +0000 (UTC)
Received: from G4W9122.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.210.21.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 48F5A86
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 13:30:16 +0000 (UTC)
Received: from G9W8456.americas.hpqcorp.net (2002:10d8:a15f::10d8:a15f) by
	G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 20 Oct 2017 13:30:07 +0000
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (15.241.52.11) by
	G9W8456.americas.hpqcorp.net (16.216.161.95) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Fri, 20 Oct 2017 13:30:07 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.155) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 20 Oct 2017 13:30:06 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.20.0077.022; Fri, 20 Oct 2017 13:30:06 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bbappend - FILESEXTRAPATHS
Thread-Index: AdNJpinujzzVlpkoQ6e+ofeYH4nWog==
Date: Fri, 20 Oct 2017 13:30:06 +0000
Message-ID: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0174;
	6:pUzaaz5enuLLY5vQHjwrGaQfCzw5K6is9CtURg0grII34mmf0v6ArwNz4KPVKLXIBdg8mv/adP4rHpjigWOMkLjgWyteECxMUcIoF2MZxMtzh0z1zNvojoT1AyFyga/C6nCt6/RtyQ9lQzgskJGGzbMuVHTFRcOOiTKsIkET+pC+wRfZsMWbwNNgFZ/vmCcspHZzyXjS1j5XM2GZa+HN+bEyf/nmS75vzjaLqvVOLa8GrcHS+MP+nwk9ysJrXmA7HBs1HvP5szQZiACRfCnp06iIdtD6ufzjFW6DlYrCUJQ1Hldl7Re1GDKazn0t3m21GyubIPXsLCsNlUqSk2Sk3g==;
	5:SfL3o2OmkRkr17obzvdwWhBTY6OeaNPWTQZKEL+fOmYqnxIIU3kKUls/Rf67717A6/lU+LpSdf/DHHzRd1WqOEapKmdYV0Y5BmYv8wOX0Mk9TLwSVuSQr5odJlJ1Is+TakjPH2wCizgvihILNVOVKg==;
	24:NtLTARgf/QqBM5GGsV1jYByhqxjwP4/mIoUeAmdD18ZcI5ppl1HwOYUUyD16NUZDeZeFFmehynZ6BBkmk2Evt2Obz4uTWTvMrF/vdA8dElE=;
	7:4D9GPwdinRBdx0+AonhIJAJDQCWdkB9SY0Nlgb4SAMhVqeEqir8Y398ZKZq2Ycsipz08G+h6CzThy3GJioHdl1tAdLH7gDtlYlOEKWnBueYp3QPfsttOFefI5j3J16X2DSdbH4947zUwkQ5J6SZAdsXZvU+W6J/xjVgtQ3G/Tmu3UgKfW48lVRYRPF9W0cK7IMgnxcTBTsnyAOYxQe6PmC5diuK1BSX6gvr3tEYGI0A=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 0cd0ac12-75d3-48d1-c534-08d517bead8e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(48565401081)(4534020)(4602075)(4627075)(201703031133081)(201702281549075)(2017052603199)(49563074);
	SRVR:TU4PR84MB0174; 
x-ms-traffictypediagnostic: TU4PR84MB0174:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <TU4PR84MB0174A4987F589413E3A12620ED430@TU4PR84MB0174.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(102415395)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(3231020)(10201501046)(3002001)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(20161123555025)(20161123558100)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0174; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0174; 
x-forefront-prvs: 0466CA5A45
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(346002)(376002)(199003)(189002)(99936001)(9326002)(2900100001)(33656002)(5640700003)(81166006)(9686003)(3280700002)(68736007)(101416001)(6436002)(6916009)(2906002)(5630700001)(74316002)(5660300001)(97736004)(106356001)(6306002)(8676002)(66066001)(25786009)(53936002)(316002)(2351001)(55016002)(86362001)(54896002)(8936002)(102836003)(3846002)(6116002)(2501003)(105586002)(14454004)(6506006)(478600001)(77096006)(189998001)(81156014)(50986999)(7696004)(7736002)(790700001)(54356999)(1730700003)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0174;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2017 13:30:06.4583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0174
X-OriginatorOrg: hpe.com
Subject: bbappend - FILESEXTRAPATHS
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
X-List-Received-Date: Fri, 20 Oct 2017 13:36:05 -0000
X-Groupsio-MsgNum: 38461
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0170_01D34986.019BCF30"

------=_NextPart_000_0170_01D34986.019BCF30
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0171_01D34986.019BCF30"

------=_NextPart_001_0171_01D34986.019BCF30
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

I have been using Yocto for over 2 years now, and whenever I create a new
bbappend file, I always have to remember that FILESEXTRAPATHS variable,
often typing it wrong, EXTRAFILESPATHS or FILEEXTRAPATHS or FILESEXTRAPATH,
etc.

 

I did a quick check on my setup and on 102 bbappend recipe found, there are
73 that uses the FILESEXTRAPATHS variable, so that is around 71% of them.  

 

I was wondering if the team would enhance the user/dev experience here and
modify bitbake behavior as to not require this variable and be able to
"override" any FILESPATH that already exists with the bbappend location.  So
that for example the FILESPATH "files" would be looked up in the bbappend
folder location before the initial bb recipe folder location automatically
without having to manually enter a FILESEXTRAPATHS statement.

 

Or alternatively, a script or command to create an initial skeleton bbappend
with the initial .bb in comment 

 

               bbappend mylayer recipename.bb

               # Create a file under mylayer/recipes-*/*.bbappend (using %
for version when not specified on cmd line) with the original .bb in comment
and a section containing FILESEXTRAPATHS

 

I think this would greatly help when creating those files.

 

--

Yannick Koehler

HPE Aruba


------=_NextPart_001_0171_01D34986.019BCF30
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-CA =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span lang=3DFR-CA>Hi,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DFR-CA><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>I have been using Yocto for over 2 years now, and =
whenever I create a new bbappend file, I always have to remember that =
FILESEXTRAPATHS variable, often typing it wrong, EXTRAFILESPATHS or =
FILEEXTRAPATHS or FILESEXTRAPATH, etc&#8230;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I did a =
quick check on my setup and on 102 bbappend recipe found, there are 73 =
that uses the FILESEXTRAPATHS variable, so that is around 71% of =
them.&nbsp; <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I was wondering if the team would enhance the user/dev =
experience here and modify bitbake behavior as to not require this =
variable and be able to &#8220;override&#8221; any FILESPATH that =
already exists with the bbappend location.&nbsp; So that for example the =
FILESPATH &#8220;files&#8221; would be looked up in the bbappend folder =
location before the initial bb recipe folder location automatically =
without having to manually enter a FILESEXTRAPATHS =
statement.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Or alternatively, a script or command to create an =
initial skeleton bbappend with the initial .bb in comment =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bbappend mylayer =
recipename.bb<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Create a file under =
mylayer/recipes-*/*.bbappend (using % for version when not specified on =
cmd line) with the original .bb in comment and a section containing =
FILESEXTRAPATHS<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I think this =
would greatly help when creating those files.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>--<o:p></o:p></p><p class=3DMsoNormal>Yannick =
Koehler<o:p></o:p></p><p class=3DMsoNormal>HPE =
Aruba<o:p></o:p></p></div></body></html>

------=_NextPart_001_0171_01D34986.019BCF30--

------=_NextPart_000_0170_01D34986.019BCF30
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIROjCCBBkw
ggMBAhBhcMtJjF+YRSnnsKbZUFt6MA0GCSqGSIb3DQEBBQUAMIHKMQswCQYDVQQGEwJVUzEXMBUG
A1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOjA4
BgNVBAsTMShjKSAxOTk5IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkx
RTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBB
dXRob3JpdHkgLSBHMzAeFw05OTEwMDEwMDAwMDBaFw0zNjA3MTYyMzU5NTlaMIHKMQswCQYDVQQG
EwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5l
dHdvcmsxOjA4BgNVBAsTMShjKSAxOTk5IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQg
dXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlm
aWNhdGlvbiBBdXRob3JpdHkgLSBHMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK8K
DcLVLNtnuS3llCfdpb7gsE2Ps2FWPNZ8w/TNPobLooji4dikacW14r/BpkdQXkY5i9WWurVvFL8Q
zicTngVHmzF6E9gf2dMCN4utLEfwjoEGpw0wDOv3PA8gHdxyRu6lAshbw8lWaUzFGMGRewvVEwCb
vO/DSD5GYCCFKtWQts2LoMwy3bf9QFWyUBxWrsyNd03HIE2nMXbvaJKKkB4IgVayrWmjUtDLHMQj
PR+Z/kzoFmOOxgiO9jH20vrldt21HJKjSc3NAc1ozalpuqPrHQ2cpCCmwaDF0UZMF23SrGY/lozg
hNQ2/yJZxfkRYKhfBH3yGvYlQmEPxEq4PokCAwEAATANBgkqhkiG9w0BAQUFAAOCAQEANCYVPMCN
TUNJHb3pIZLXZpy33sW40ORdX3YiwCb5hDo6+Yy1++xg8ejOBLDI3acDjzDzmN+k5qQx39McC0bc
ciA/ru4FPKQzPws5rHB4c0uZK98wwlSwqDtVof4WKM1CvXRugNsnRKfORF3UG5CYDR5ClLEALATQ
dKMCBSJjY82DtfvBbWJraXX9XXBBufW/fN++wTJzIiGLWIF7FZF6uuNkSLB/+zYl2pXQ8SQUF90Y
gGtGIzlU9Y5iCQQdlJCmm+Yl4kJFqriQrb4Ij6kLQhiUz3I54bFD4CjPt+dabBNrSbP/4xh8iYsz
Xawz16f52jpVyVgQ+arvWrbPS0vfKjCCBlwwggVEoAMCAQICECNSxTxdjNDjyAs6sGHstj0wDQYJ
KoZIhvcNAQELBQAwgcoxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0G
A1UECxMWVmVyaVNpZ24gVHJ1c3QgTmV0d29yazE6MDgGA1UECxMxKGMpIDE5OTkgVmVyaVNpZ24s
IEluYy4gLSBGb3IgYXV0aG9yaXplZCB1c2Ugb25seTFFMEMGA1UEAxM8VmVyaVNpZ24gQ2xhc3Mg
MiBQdWJsaWMgUHJpbWFyeSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEczMB4XDTE1MDMxNzAw
MDAwMFoXDTI1MDMxNjIzNTk1OVowgcgxCzAJBgNVBAYTAlVTMSswKQYDVQQKEyJIZXdsZXR0IFBh
Y2thcmQgRW50ZXJwcmlzZSBDb21wYW55MR8wHQYDVQQLExZTeW1hbnRlYyBUcnVzdCBOZXR3b3Jr
MTUwMwYDVQQLEyxDbGFzcyAyIE1hbmFnZWQgUEtJIEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQTE0
MDIGA1UEAxMrSGV3bGV0dCBQYWNrYXJkIEVudGVycHJpc2UgQ29sbGFib3JhdGlvbiBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALPCN6KJCXCb6w8M+5y13OdMY59h1fzLt1fwNiyK
Sgd3REDsdZPuvQmGBNuSeG/+ttnZ5xF+e3dVtpTAKm+lsUZDAXnstPYNVhfwRC9Pu4ijX8goHcpz
9AkS8fcPvxb3/I5LNygCxd9uZWhkyskg8+Fxv7fyzvkOM0hShZLvb+F79NUN9wcLLK4yeTTB9743
7sv5QnUfb9Fw/KSSX5kWfAilnxgfKx0gQ65ooeD61e4XsyAgzLrCYd8YaRwL6lWHVSkHgZqeijj3
/OMyyovQnpNfcijOA5HNjdx4ebY5IJpuva8UVIDyoGBjsiL3jnwg00TbMnU5bYOviPMky3jiY28C
AwEAAaOCAjwwggI4MDcGCCsGAQUFBwEBBCswKTAnBggrBgEFBQcwAYYbaHR0cDovL3BraS1vY3Nw
LnN5bWF1dGguY29tMBIGA1UdEwEB/wQIMAYBAf8CAQAwbAYDVR0gBGUwYzBhBgtghkgBhvhFAQcX
AjBSMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3LnN5bWF1dGguY29tL2NwczAoBggrBgEFBQcCAjAc
GhpodHRwOi8vd3d3LnN5bWF1dGguY29tL3JwYTAvBgNVHR8EKDAmMCSgIqAghh5odHRwOi8vcy5z
eW1jYi5jb20vcGNhMi1nMy5jcmwwDgYDVR0PAQH/BAQDAgEGMCgGA1UdEQQhMB+kHTAbMRkwFwYD
VQQDExBTeW1hbnRlY1BLSS0yLTg2MB0GA1UdDgQWBBT24EWCywxLDrRYiCH1jke+JIZgUDCB8AYD
VR0jBIHoMIHloYHQpIHNMIHKMQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4x
HzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOjA4BgNVBAsTMShjKSAxOTk5IFZlcmlT
aWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENs
YXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHM4IQYXDLSYxf
mEUp57Cm2VBbejANBgkqhkiG9w0BAQsFAAOCAQEALhMGTAylk1RlpYV8PavJ0UHCZWmouoY6FKpZ
Z9sdW/E+o31zGsq1kaarZQikzWVqEPsRgzHs3ybmHZV26hpx2N86gjOh9V7aG0GmiHJZAh8YqzZc
Pek7EwQvyOTavxXMi5CmywQI0AHonwnGI5EOb4wk5RcUZcyziiVK/vcIrnoTuslYzvbH35Gu2tXR
k65EQvGslTaNuIfkiJXJ/twfzKGqdG6I2mOqpofLMcKUSNvjp8LNeOnGsBDiS3hwpEIGyELjKhlm
Q0HJIArUxI5dstktuUWF+BYQBAwMOU+ihPu8yFLR1evsnmGK2gOe1JDBUwws3/wbNj3RAkrFe9ki
TzCCBrkwggWhoAMCAQICEEwqEIb5xqVgvXbWxLB51EMwDQYJKoZIhvcNAQELBQAwgcgxCzAJBgNV
BAYTAlVTMSswKQYDVQQKEyJIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb21wYW55MR8wHQYD
VQQLExZTeW1hbnRlYyBUcnVzdCBOZXR3b3JrMTUwMwYDVQQLEyxDbGFzcyAyIE1hbmFnZWQgUEtJ
IEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQTE0MDIGA1UEAxMrSGV3bGV0dCBQYWNrYXJkIEVudGVy
cHJpc2UgQ29sbGFib3JhdGlvbiBDQTAeFw0xNzA5MTEwMDAwMDBaFw0xOTA5MTEyMzU5NTlaMIGo
MSswKQYDVQQKFCJIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb21wYW55MSYwJAYDVQQLFB1F
bXBsb3ltZW50IFN0YXR1cyAtIEVtcGxveWVlczEPMA0GA1UECxQGUy9NSU1FMRgwFgYDVQQDDA9Z
YW5uaWNrIEtvZWhsZXIxJjAkBgkqhkiG9w0BCQEWF3lhbm5pY2sua29laGxlckBocGUuY29tMIIB
IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1vKQTVsLIot3H3MJBLuIre47UX0modzWnS82
E+DQfofa6nL9IOYbkyj8q565UKKUaW78HGBWqXz33UlRb6Et0dFMFiqfluawYxF7NGjAHtn/PMiu
8kPwZBrz7ZjkyzOdifC+mDlqUUl/QlehQK83a3FTCTHRRbdc77uSLfyyygIvZndP5YE8/nx4BHez
FrbCyL/goIMzCSfXrdql8GSSCT5FdAMWiwYa/A0pC0k2R2fq6bZ95agWHxUVGONYYyvJhCm5D8J/
rr0/dWSAoCUL3HqFOmZ11nO1mdLSJmsO6CfB8TrKWIhC1MNdoGh/lr4osYG2jOO9U1yfcG+hcbRb
YQIDAQABo4ICuzCCArcwIgYDVR0RBBswGYEXeWFubmljay5rb2VobGVyQGhwZS5jb20wDAYDVR0T
AQH/BAIwADAOBgNVHQ8BAf8EBAMCBaAwYQYDVR0fBFowWDBWoFSgUoZQaHR0cDovL29uc2l0ZWNy
bC52ZXJpc2lnbi5jb20vSGV3bGV0dFBhY2thcmRFbnRlcnByaXNlQ29tcGFueVNNSU1FL0xhdGVz
dENSTC5jcmwwHwYDVR0jBBgwFoAU9uBFgssMSw60WIgh9Y5HviSGYFAwHQYDVR0OBBYEFJ1v66fm
7YscfvtcG1BXfCBX/rrvMDcGCCsGAQUFBwEBBCswKTAnBggrBgEFBQcwAYYbaHR0cDovL2hwZS1v
Y3NwLnN5bWF1dGguY29tMFcGCSqGSIb3DQEJDwRKMEgwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3
DQMCAgFAMA4GCCqGSIb3DQMEAgIAgDAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwggEkBgNVHSAE
ggEbMIIBFzCCARMGC2CGSAGG+EUBBxcCMIIBAjAmBggrBgEFBQcCARYaaHR0cDovL3d3dy5zeW1h
dXRoLmNvbS9jcHMwgdcGCCsGAQUFBwICMIHKGoHHQXV0aG9yaXR5IHRvIGJpbmQgSGV3bGV0dCBQ
YWNrYXJkIEVudGVycHJpc2UgZG9lcyBub3QgY29ycmVzcG9uZCB3aXRoIHVzZSBvciBwb3NzZXNz
aW9uIG9mIHRoaXMgY2VydC4gSXNzdWVkIHRvIGZhY2lsaXRhdGUgY29tbXVuaWNhdGlvbiB3aXRo
IEhld2xldHQgUGFja2FyZCBFbnRlcnByaXNlLiBTeW1hbnRlYydzIENQUyBpbmNvcnAgYnkgcmVm
LjAWBgNVHSUBAf8EDDAKBggrBgEFBQcDBDANBgkqhkiG9w0BAQsFAAOCAQEARejP7zkYSH88vlbv
0xD4qOCssYynG3WD+w+ZJK4o+/nQ2s7kojhIIaVo1AfmYKKFbMpRRVV/xpHMJoJsgrBb9DHJyYjj
rGDg7K63/JmJZjC2lxUahyFyiJYhn314f14CRRBSRSdZTtvERwAghjJo595QCj5SDa88hGrVX3MY
vADSaowkDVRe/MVzeugG7gjMFuxB5gAvPYUhUfhBBicQP1aE98MI5lMt7qBJkVD8PEp1MY4dIrnk
fQjVlCFJAgsxPmuYI8YMjxo50JDVWjFSskSP5wDntC4EF3S3rbbd2okIMO+rxIllVUG8kuzmxVvg
8KpjaimASuKDDSw7pt4n1DGCBOAwggTcAgEBMIHdMIHIMQswCQYDVQQGEwJVUzErMCkGA1UEChMi
SGV3bGV0dCBQYWNrYXJkIEVudGVycHJpc2UgQ29tcGFueTEfMB0GA1UECxMWU3ltYW50ZWMgVHJ1
c3QgTmV0d29yazE1MDMGA1UECxMsQ2xhc3MgMiBNYW5hZ2VkIFBLSSBJbmRpdmlkdWFsIFN1YnNj
cmliZXIgQ0ExNDAyBgNVBAMTK0hld2xldHQgUGFja2FyZCBFbnRlcnByaXNlIENvbGxhYm9yYXRp
b24gQ0ECEEwqEIb5xqVgvXbWxLB51EMwCQYFKw4DAhoFAKCCAtcwGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTcxMDIwMTMzMDAyWjAjBgkqhkiG9w0BCQQxFgQUyvkL
1jqKw449XC7vGG5OOlgPuVswgZMGCSqGSIb3DQEJDzGBhTCBgjALBglghkgBZQMEASowCwYJYIZI
AWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcN
AwICAUAwBwYFKw4DAhowCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgEwge4G
CSsGAQQBgjcQBDGB4DCB3TCByDELMAkGA1UEBhMCVVMxKzApBgNVBAoTIkhld2xldHQgUGFja2Fy
ZCBFbnRlcnByaXNlIENvbXBhbnkxHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxNTAz
BgNVBAsTLENsYXNzIDIgTWFuYWdlZCBQS0kgSW5kaXZpZHVhbCBTdWJzY3JpYmVyIENBMTQwMgYD
VQQDEytIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb2xsYWJvcmF0aW9uIENBAhBMKhCG+cal
YL121sSwedRDMIHwBgsqhkiG9w0BCRACCzGB4KCB3TCByDELMAkGA1UEBhMCVVMxKzApBgNVBAoT
Ikhld2xldHQgUGFja2FyZCBFbnRlcnByaXNlIENvbXBhbnkxHzAdBgNVBAsTFlN5bWFudGVjIFRy
dXN0IE5ldHdvcmsxNTAzBgNVBAsTLENsYXNzIDIgTWFuYWdlZCBQS0kgSW5kaXZpZHVhbCBTdWJz
Y3JpYmVyIENBMTQwMgYDVQQDEytIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb2xsYWJvcmF0
aW9uIENBAhBMKhCG+calYL121sSwedRDMA0GCSqGSIb3DQEBAQUABIIBAK2RnVWS8i0LfcZKUBio
1uzNdo/yYGkM6Jn95o3pGCUNfdaR+zfiKmXlGWdh7B1nRtDjj8swlfx5IxglKefXhgatGGEYA3PK
itAlaK7TfAL4capYqXfE9UPji4wkizfAt7IL91Yre63HWSN6N1F9EF7PZ+1Ln3+JOrOYjeHanVO5
KSuCch8yYTQT/VP73FXXPVUq3KU7GdMsfbM1M4HJlBHmScNm5aklga7rmXmuifNF10XbQrrij2AX
pfWktwc0NglF686AGS9oP87IzgLFW58j27gFeR+HLNF7rmAIXvzy4Ya9it9eogxFfF9grgYAbLab
sV0sG1ywRcU3Stu4zRwAAAAAAAA=

------=_NextPart_000_0170_01D34986.019BCF30--
