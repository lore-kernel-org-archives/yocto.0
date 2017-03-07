Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E40E0050B; Tue,  7 Mar 2017 01:23:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 428 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Mar 2017 01:23:08 PST
Received: from imta22.fe.bosch.de (imta22.fe.bosch.de [139.15.243.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F204DE0033D
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 01:23:08 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta22.fe.bosch.de (Postfix) with ESMTP id 359E88407B5
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 10:15:59 +0100 (CET)
Received: from vsmta12.fe.internet.bosch.com (unknown [10.4.98.52])
	by imta24.fe.bosch.de (Postfix) with ESMTP id E902DD8021E
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 10:15:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1488878156;
	bh=hLqT2vXj/jvkqMGoSgLFKe0YbzZlXjzXhgfSibXFDT8=; l=10;
	h=From:From:Reply-To:Sender;
	b=w/9iudyDvq9XHuszkD+meoVXGKPpCp0c02TJRtUfhroZZS/0T3nf9ap8zP3ZYly59
	btbpZfIa5cRslOWtF9osI3D8NZs7kuySTxiRQLESgW6UnAxCac5/mXD4HWXwgPBDsI
	CnS39ZLANhFk7/bNkIRj3Pdy49NK/AEkxR2N0ULU=
Received: from SI-MBX1013.de.bosch.com (vsgw23.fe.internet.bosch.com
	[10.4.98.23])
	by vsmta12.fe.internet.bosch.com (Postfix) with ESMTP id CF26C1B80231
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 10:15:56 +0100 (CET)
Received: from FE-MBX1014.de.bosch.com (10.3.230.72) by
	SI-MBX1013.de.bosch.com (10.3.230.50) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Tue, 7 Mar 2017 10:15:56 +0100
Received: from FE-MBX1014.de.bosch.com ([fe80::b117:3c01:ab22:7491]) by
	FE-MBX1014.de.bosch.com ([fe80::b117:3c01:ab22:7491%16]) with mapi id
	15.00.1236.000; Tue, 7 Mar 2017 10:15:56 +0100
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Not able to create a new BSP layer using yocto-bsp script
Thread-Index: AdKXI1ylTXGD1XcxRiK6vy2eQ522BQ==
Date: Tue, 7 Mar 2017 09:15:55 +0000
Message-ID: <febded3bd8db4f5097d3bd0fe26c88b0@FE-MBX1014.de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.60.64.154]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22924.006
X-TMASE-MatchedRID: oQHFeo+4SgNWW77qETJZVuQydRUvl3QTUVU/vIfBdApIbPu1XHDHwTkY
	ECSfCBE+vsnnK/VbfkoD2WXLXdz+Ae8lj2kHOCDU+Cckfm+bb6B7nqzzG+5SEJTD8tUbLQsXdxX
	p7GtG8NWeCT0HsFTwb49URkDgdlb5rHCvytg5b44sdxrrsOVv4EGzU7CKX1sd1Bh8AQwUREn9Vz
	vpXTfvriZ6g2ERe8Tshrs6JAEL1u6gBWRVHG2+kQZbeEWcL03VyK394J+8PKK9DXfYpaf/GrYHt
	JdDWTg0ePs/Cx1DJd39zT4slMys3b7xhVTyv5qoNEJplIoT86w5ANR0rpr3DAmEsK9ct90kaF/w
	NSr8QtMe1C8SQ7ENMlLohQ2fhSJoQ6/DFZugyt0wODfUl7mJKYzS8a3MSlYljJFbHTCWdQZ/pbK
	05rJl29ZXwwpvfhGVWCjDJRYeAZ2H7D1bP/FcOhHyswgJ7SqQ8zGz65yndkzuDNx+Tk7mCyBPSE
	2DyE9ZXLwuIT0vGF4iPTMUjkOgki1RIwMdx4yupOwTxn+Ouv6KDmsVmCR5F8bjakaCx8Wcdacge
	Xd4g9yXBXaJoB9JZxRFJJyf5BJeY2fxc+IAshurkHq3RkpCLcLeaN9zSPdmocfcoC+Vw/iCjYv0
	NHeE5ZMvizVLaxSE2Nl5MKffWAvtfSitNKGtOg==
Subject: Not able to create a new BSP layer using yocto-bsp script
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
X-List-Received-Date: Tue, 07 Mar 2017 09:23:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_febded3bd8db4f5097d3bd0fe26c88b0FEMBX1014deboschcom_"

--_000_febded3bd8db4f5097d3bd0fe26c88b0FEMBX1014deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to create a new bsp layer for a customized board.

After running the commands: Yocto-bsp create  ctp arm,

I am seeing the following errors:

evk1206@evk1206-VirtualBox:~/Projects/Yocto/build-ctp$ yocto-bsp create cus=
tom arm
Checking basic git connectivity...
Done.

Would you like to use the default (4.8) kernel? (y/n) [default: y] y
Do you need a new machine branch for this BSP (the alternative is to re-use=
 an existing branch)? [y/n] [default: y] y
Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-4.=
8.git...
Traceback (most recent call last):
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/yocto-bsp", line=
 158, in <module>
    ret =3D main()
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/yocto-bsp", line=
 154, in main
    return args.func(args)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/yocto-bsp", line=
 67, in do_create_bsp
    yocto_bsp_create(args.bspname, args.karch, scripts_path, bsp_output_dir=
, args.codedump, args.properties_file)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 1617, in yocto_bsp_create
    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedu=
mp, properties_file, properties)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 1584, in yocto_common_create
    run_program_lines(program_lines, codedump)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 1365, in run_program_lines
    exec(buf)
  File "<string>", line 82, in <module>
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 656, in invoke_deferred_choices
    choices =3D input_line.gen_choices(context, checklist)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 460, in gen_choices
    choicepairs =3D self.gen_choices_list(context, checklist)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 428, in gen_choices_list
    choices =3D self.exec_listgen_fn(context)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 380, in exec_listgen_fn
    self.lineno, self.line)
  File "/home/evk1206/Projects/Yocto-CTP-2019/poky/scripts/lib/bsp/engine.p=
y", line 71, in parse_error
    raise SyntaxError("%s: %s" % (msg, line))
  File "<string>", line None
SyntaxError: function specified for 'gen' property returned nothing : input=
 type:"choicelist" name:"new_kbranch" gen:"bsp.kernel.all_branches" branche=
s_base:"standard" prio:"20" msg:"Please choose a machine branch to base thi=
s BSP on:" default:"standard/base"

Couly anyone let me know how to fix the issue.

I tried using both the master and morty-16.0.1<http://git.yoctoproject.org/=
cgit/cgit.cgi/poky/tag/?id=3Dmorty-16.0.1>  branches of poky.


Mit freundlichen Gr=FC=DFen / Best regards
Vinothkumar Eswaran



--_000_febded3bd8db4f5097d3bd0fe26c88b0FEMBX1014deboschcom_
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
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am trying to create a new bsp layer for a customize=
d board.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">After running the commands:
<b>Yocto-bsp create&nbsp; ctp arm</b>, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am seeing the following errors:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">evk1206@evk1206-VirtualBox:~/Projects/Yocto/build-ctp=
$ yocto-bsp create custom arm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Checking basic git connectivity...<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Done.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Would you like to use the default (4.8) kernel? (y/n)=
 [default: y] y<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Do you need a new machine branch for this BSP (the al=
ternative is to re-use an existing branch)? [y/n] [default: y] y<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Getting branches from remote repo git://git.yoctoproj=
ect.org/linux-yocto-4.8.git...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Traceback (most recent call last):<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/yocto-bsp&quot;, line 158, in &lt;module&gt;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; ret =3D main()<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/yocto-bsp&quot;, line 154, in main<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; return args.func(args)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/yocto-bsp&quot;, line 67, in do_create_bsp<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; yocto_bsp_create(args.bspname, arg=
s.karch, scripts_path, bsp_output_dir, args.codedump, args.properties_file)=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 1617, in yocto_bsp_create<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; yocto_common_create(machine, arch,=
 scripts_path, bsp_output_dir, codedump, properties_file, properties)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 1584, in yocto_common_create<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; run_program_lines(program_lines, c=
odedump)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 1365, in run_program_lines<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; exec(buf)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;&lt;string&gt;&quot;, line 82, in &=
lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 656, in invoke_deferred_choic=
es<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; choices =3D input_line.gen_choices=
(context, checklist)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 460, in gen_choices<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; choicepairs =3D self.gen_choices_l=
ist(context, checklist)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 428, in gen_choices_list<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; choices =3D self.exec_listgen_fn(c=
ontext)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 380, in exec_listgen_fn<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; self.lineno, self.line)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;/home/evk1206/Projects/Yocto-CTP-20=
19/poky/scripts/lib/bsp/engine.py&quot;, line 71, in parse_error<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp; raise SyntaxError(&quot;%s: %s&quo=
t; % (msg, line))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; File &quot;&lt;string&gt;&quot;, line None<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">SyntaxError: function specified for 'gen' property re=
turned nothing : input type:&quot;choicelist&quot; name:&quot;new_kbranch&q=
uot; gen:&quot;bsp.kernel.all_branches&quot; branches_base:&quot;standard&q=
uot; prio:&quot;20&quot;
 msg:&quot;Please choose a machine branch to base this BSP on:&quot; defaul=
t:&quot;standard/base&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Couly anyone let me know how to fix the issue.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I tried using both the master and
</span><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=3D=
morty-16.0.1">morty-16.0.1</a><span style=3D"font-size:10.0pt;font-family:&=
quot;Arial&quot;,sans-serif"> &nbsp;branches of poky.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<b>Vinothkumar Eswaran<br>
<br>
</b></span><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_febded3bd8db4f5097d3bd0fe26c88b0FEMBX1014deboschcom_--
