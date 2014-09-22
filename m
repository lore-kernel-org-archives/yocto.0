Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09E48E00876; Mon, 22 Sep 2014 02:18:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ06.extemr.org (usstlz-pinfez06.extemr.org
	[144.191.128.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1897BE00872
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 02:18:51 -0700 (PDT)
Received: from USSTLZ-PMSG001.emrsn.org (10.16.72.26) by
	USSTLZ-PINFEZ06.extemr.org (10.16.8.79) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Mon, 22 Sep 2014 09:18:49 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.186]) by
	USSTLZ-PMSG001.emrsn.org ([169.254.1.153]) with mapi id 14.03.0158.001;
	Mon, 22 Sep 2014 09:18:49 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: create_image.tar fail
Thread-Index: Ac/QwcFOPo0Bg5rkSSK4jS9YNrymzgFg8X/g
Date: Mon, 22 Sep 2014 09:18:48 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C85215B813D9@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: Re: create_image.tar fail
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
X-List-Received-Date: Mon, 22 Sep 2014 09:18:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C85215B813D9USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C85215B813D9USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I use the yocto-bsp tools to creat a new bsp layer, I found this problem li=
ke following :

Yoctto-bsp creat myx86 quem

Traceback (most recent call last):
  File "/home/etcrs/poky/scripts/yocto-bsp", line 150, in <module>
    ret =3D main()
  File "/home/etcrs/poky/scripts/yocto-bsp", line 145, in main
    invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands)
  File "/home/etcrs/poky/scripts/lib/bsp/help.py", line 73, in invoke_subco=
mmand
    subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
  File "/home/etcrs/poky/scripts/yocto-bsp", line 89, in yocto_bsp_create_s=
ubcommand
    yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir, options.=
codedump, options.properties_file)
  File "/home/etcrs/poky/scripts/lib/bsp/engine.py", line 1450, in yocto_bs=
p_create
    yocto_common_create(machine, arch, scripts_path, bsp_output_dir, codedu=
mp, properties_file, properties)
SyntaxError: function specified for 'gen' property returned nothing : input=
 type:"choicelist" name:"new_kbranch" nameappend:"i386" gen:"bsp.kernel.all=
_branches" branches_base:"standard:standard/common-pc" prio:"20" msg:"Pleas=
e choose a machine branch to base this BSP on:" default:"standard/common-pc=
/base"

How to resolve this problem ?  If you know ,please tell me.
Thanks very much.


Thank you&Best regards
Neil Wu


--_000_3204FE6663E1F14CAF4CA6928E60C85215B813D9USSTLZPMSG012em_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi,<o:p></o:p></span></=
b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">I use the yocto-bsp too=
ls to creat a new bsp layer, I found this problem like following :<o:p></o:=
p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span=
></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">Yoctto-bsp creat myx86 =
quem<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span=
></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">Traceback (most recent cal=
l last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; File &quot;/home/et=
crs/poky/scripts/yocto-bsp&quot;, line 150, in &lt;module&gt;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; ret =3D=
 main()<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; File &quot;/home/et=
crs/poky/scripts/yocto-bsp&quot;, line 145, in main<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; invoke_=
subcommand(args, parser, yocto_bsp_help_usage, subcommands)<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; File &quot;/home/et=
crs/poky/scripts/lib/bsp/help.py&quot;, line 73, in invoke_subcommand<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; subcomm=
ands.get(args[0], subcommand_error)[0](args[1:], usage)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; File &quot;/home/et=
crs/poky/scripts/yocto-bsp&quot;, line 89, in yocto_bsp_create_subcommand<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; yocto_b=
sp_create(machine, karch, scripts_path, bsp_output_dir, options.codedump, o=
ptions.properties_file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; File &quot;/home/et=
crs/poky/scripts/lib/bsp/engine.py&quot;, line 1450, in yocto_bsp_create<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; yocto_c=
ommon_create(machine, arch, scripts_path, bsp_output_dir, codedump, propert=
ies_file, properties)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:red">SyntaxError: function specifie=
d for 'gen' property returned nothing : input type:&quot;choicelist&quot; n=
ame:&quot;new_kbranch&quot; nameappend:&quot;i386&quot; gen:&quot;bsp.kerne=
l.all_branches&quot;
 branches_base:&quot;standard:standard/common-pc&quot; prio:&quot;20&quot; =
msg:&quot;Please choose a machine branch to base this BSP on:&quot; default=
:&quot;standard/common-pc/base&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;;color:red"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">How to resolve this pro=
blem ?&nbsp; If you know ,please tell me.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks very much.<o:p><=
/o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you&amp;Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">Neil Wu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C85215B813D9USSTLZPMSG012em_--
