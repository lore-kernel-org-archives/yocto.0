Return-Path: <eirik.solberg.hamnvik@tomra.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A57AE00992; Tue, 14 Jul 2015 23:04:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.tomra.com (smtp.tomra.com [62.92.2.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3078DE0086D
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 23:04:21 -0700 (PDT)
Received: from EUNOEUR-EXS010.teu.tomra.corp ([fe80::242c:2953:fc66:e1ee]) by
	EUNOEUR-EXS012.teu.tomra.corp ([fe80::c829:505b:92c9:bab1%14]) with
	mapi id 14.03.0224.002; Wed, 15 Jul 2015 08:04:18 +0200
From: Eirik Solberg Hamnvik <eirik.solberg.hamnvik@tomra.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto with meta-java. Multiple providers problem.
Thread-Index: AdC+xBQP/QrdoPRnSA+szmvjT2AuTQ==
Date: Wed, 15 Jul 2015 06:04:16 +0000
Message-ID: <9EB14782B17D6549A78433A42753B30B244F83FA@EUNOEUR-EXS010.teu.tomra.corp>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.3.8]
x-exclaimer-md-config: 6b757840-9012-48b5-a10c-05c6ceeb7fd2
MIME-Version: 1.0
Subject: Yocto with meta-java. Multiple providers problem.
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
X-List-Received-Date: Wed, 15 Jul 2015 06:04:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9EB14782B17D6549A78433A42753B30B244F83FAEUNOEUREXS010te_"

--_000_9EB14782B17D6549A78433A42753B30B244F83FAEUNOEUREXS010te_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So I am trying to add the meta-java (http://layers.openembedded.org/layerin=
dex/branch/master/layer/meta-java/) to my image with yocto. Just to get it =
to build I have not yet deleted any of the recipes which comes along with i=
t.

When I try to run: bitbake -k core-image-sato

I get this error:

"ERROR: Multiple .bb files are due to be built which each provide virtual/j=
avac-native (/home/frank/poky/meta-java/recipes-core/ecj/ecj-bootstrap-nati=
ve.bb virtual:native:/home/frank/poky/meta-java/recipes-core/jikes/jikes_1.=
22.bb). This usually means one provides something the other doesn't and sho=
uld."

and:

ERROR: The recipe ecj-bootstrap-native is trying to install files into a >s=
hared area when those files already exist. Those files and their manifest >=
location are: /home/frank/poky/build/tmp/sysroots/x86_64-linux/sysroot-prov=
iders>/virtual_javac-native Matched in manifest-x86_64-jikes-native.populat=
e_sysroot Please verify which recipe should provide the above files."

In my build/conf/local.conf file I have set:

PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"

PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"

PREFERRED_VERSION_openjdk-7-jre =3D "75b13-2.5.4"

PREFERRED_VERSION_icedtea7-native =3D "2.1.3"

PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"

I have seen several discussion about this problem but none of the solutions=
 helped me. Usually they answer that I need to set the PREFERRED_PROVIDER_v=
irtual/java-native in my local.conf or distro.conf. I have tried both of th=
ese solutions, but without any luck. Also, most of these discussion where 5=
-6 years old (guess they're a bit out-dated).

Can anyone help me?


--_000_9EB14782B17D6549A78433A42753B30B244F83FAEUNOEUREXS010te_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:NO-BOK;}
span.pln
	{mso-style-name:pln;}
span.pun
	{mso-style-name:pun;}
span.kwd
	{mso-style-name:kwd;}
span.str
	{mso-style-name:str;}
span.lit
	{mso-style-name:lit;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:white">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">So I am trying to add the meta-=
java (</span><span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&qu=
ot;,&quot;sans-serif&quot;;color:#222222"><a href=3D"http://layers.openembe=
dded.org/layerindex/branch/master/layer/meta-java/"><span lang=3D"EN-US" st=
yle=3D"color:#0C65A5;border:none windowtext 1.0pt;padding:0cm;text-decorati=
on:none">http://layers.openembedded.org/layerindex/branch/master/layer/meta=
-java/</span></a></span><span lang=3D"EN-US" style=3D"font-size:11.5pt;font=
-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#222222">)
 to my image with yocto. Just to get it to build I have not yet deleted any=
 of the recipes which comes along with it.<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">When I try to run: bitbake -k c=
ore-image-sato<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">I get this error:<o:p></o:p></s=
pan></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:#FFF9E3">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">&quot;ERROR: Multiple .bb files=
 are due to be built which each provide virtual/javac-native (/home/frank/p=
oky/meta-java/recipes-core/ecj/ecj-bootstrap-native.bb virtual:native:/home=
/frank/poky/meta-java/recipes-core/jikes/jikes_1.22.bb).
 This usually means one provides something the other doesn't and should.&qu=
ot;<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">and:<o:p></o:p></span></p>
<p style=3D"margin:0cm;margin-bottom:.0001pt;line-height:14.65pt;background=
:#FFF9E3">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">ERROR: The recipe ecj-bootstrap=
-native is trying to install files into a &gt;shared area when those files =
already exist. Those files and their manifest &gt;location are:
 /home/frank/poky/build/tmp/sysroots/x86_64-linux/sysroot-providers&gt;/vir=
tual_javac-native Matched in manifest-x86_64-jikes-native.populate_sysroot =
Please verify which recipe should provide the above files.&quot;<o:p></o:p>=
</span></p>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">In my build/conf/local.conf fil=
e I have set:<o:p></o:p></span></p>
<pre style=3D"background:#EEEEEE;max-height: 600px;word-wrap: normal;orphan=
s: auto;widows: 1;-webkit-text-stroke-width: 0px;overflow:auto;word-spacing=
:0px"><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:Consola=
s;color:black;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">=
PREFERRED_PROVIDER_virtual</span></span><span class=3D"pun"><span lang=3D"E=
N-US" style=3D"font-family:Consolas;color:black;border:none windowtext 1.0p=
t;padding:0cm;background:#EEEEEE">/</span></span><span class=3D"pln"><span =
lang=3D"EN-US" style=3D"font-family:Consolas;color:black;border:none window=
text 1.0pt;padding:0cm;background:#EEEEEE">java</span></span><span class=3D=
"pun"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black;border=
:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">-</span></span><span=
 class=3D"kwd"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:dar=
kblue;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">native</=
span></span><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:C=
onsolas;color:black;border:none windowtext 1.0pt;padding:0cm;background:#EE=
EEEE"> </span></span><span class=3D"pun"><span lang=3D"EN-US" style=3D"font=
-family:Consolas;color:black;border:none windowtext 1.0pt;padding:0cm;backg=
round:#EEEEEE">=3D</span></span><span class=3D"pln"><span lang=3D"EN-US" st=
yle=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;paddin=
g:0cm;background:#EEEEEE"> </span></span><span class=3D"str"><span lang=3D"=
EN-US" style=3D"font-family:Consolas;color:maroon;border:none windowtext 1.=
0pt;padding:0cm;background:#EEEEEE">&quot;jamvm-native&quot;</span></span><=
span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:Consolas;color=
:black;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE"><o:p></=
o:p></span></span></pre>
<pre style=3D"background:#EEEEEE"><span class=3D"pln"><span lang=3D"EN-US" =
style=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;padd=
ing:0cm;background:#EEEEEE">PREFERRED_PROVIDER_virtual</span></span><span c=
lass=3D"pun"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black=
;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">/</span></spa=
n><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:Consolas;co=
lor:black;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">java=
c</span></span><span class=3D"pun"><span lang=3D"EN-US" style=3D"font-famil=
y:Consolas;color:black;border:none windowtext 1.0pt;padding:0cm;background:=
#EEEEEE">-</span></span><span class=3D"kwd"><span lang=3D"EN-US" style=3D"f=
ont-family:Consolas;color:darkblue;border:none windowtext 1.0pt;padding:0cm=
;background:#EEEEEE">native</span></span><span class=3D"pln"><span lang=3D"=
EN-US" style=3D"font-family:Consolas;color:black;border:none windowtext 1.0=
pt;padding:0cm;background:#EEEEEE"> </span></span><span class=3D"pun"><span=
 lang=3D"EN-US" style=3D"font-family:Consolas;color:black;border:none windo=
wtext 1.0pt;padding:0cm;background:#EEEEEE">=3D</span></span><span class=3D=
"pln"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black;border=
:none windowtext 1.0pt;padding:0cm;background:#EEEEEE"> </span></span><span=
 class=3D"str"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:mar=
oon;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">&quot;ecj-=
bootstrap-native&quot;</span></span><span class=3D"pln"><span lang=3D"EN-US=
" style=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;pa=
dding:0cm;background:#EEEEEE"><o:p></o:p></span></span></pre>
<pre style=3D"background:#EEEEEE"><span class=3D"pln"><span lang=3D"EN-US" =
style=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;padd=
ing:0cm;background:#EEEEEE">PREFERRED_VERSION_openjdk</span></span><span cl=
ass=3D"pun"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black;=
border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">-</span></span=
><span class=3D"lit"><span lang=3D"EN-US" style=3D"font-family:Consolas;col=
or:maroon;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">7</s=
pan></span><span class=3D"pun"><span lang=3D"EN-US" style=3D"font-family:Co=
nsolas;color:black;border:none windowtext 1.0pt;padding:0cm;background:#EEE=
EEE">-</span></span><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-=
family:Consolas;color:black;border:none windowtext 1.0pt;padding:0cm;backgr=
ound:#EEEEEE">jre </span></span><span class=3D"pun"><span lang=3D"EN-US" st=
yle=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;paddin=
g:0cm;background:#EEEEEE">=3D</span></span><span class=3D"pln"><span lang=
=3D"EN-US" style=3D"font-family:Consolas;color:black;border:none windowtext=
 1.0pt;padding:0cm;background:#EEEEEE"> </span></span><span class=3D"str"><=
span lang=3D"EN-US" style=3D"font-family:Consolas;color:maroon;border:none =
windowtext 1.0pt;padding:0cm;background:#EEEEEE">&quot;75b13-2.5.4&quot;</s=
pan></span><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:Co=
nsolas;color:black;border:none windowtext 1.0pt;padding:0cm;background:#EEE=
EEE"><o:p></o:p></span></span></pre>
<pre style=3D"background:#EEEEEE"><span class=3D"pln"><span lang=3D"EN-US" =
style=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;padd=
ing:0cm;background:#EEEEEE">PREFERRED_VERSION_icedtea7</span></span><span c=
lass=3D"pun"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black=
;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">-</span></spa=
n><span class=3D"kwd"><span lang=3D"EN-US" style=3D"font-family:Consolas;co=
lor:darkblue;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">n=
ative</span></span><span class=3D"pln"><span lang=3D"EN-US" style=3D"font-f=
amily:Consolas;color:black;border:none windowtext 1.0pt;padding:0cm;backgro=
und:#EEEEEE"> </span></span><span class=3D"pun"><span lang=3D"EN-US" style=
=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;padding:0=
cm;background:#EEEEEE">=3D</span></span><span class=3D"pln"><span lang=3D"E=
N-US" style=3D"font-family:Consolas;color:black;border:none windowtext 1.0p=
t;padding:0cm;background:#EEEEEE"> </span></span><span class=3D"str"><span =
lang=3D"EN-US" style=3D"font-family:Consolas;color:maroon;border:none windo=
wtext 1.0pt;padding:0cm;background:#EEEEEE">&quot;2.1.3&quot;</span></span>=
<span class=3D"pln"><span lang=3D"EN-US" style=3D"font-family:Consolas;colo=
r:black;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE"><o:p><=
/o:p></span></span></pre>
<pre style=3D"background:#EEEEEE"><span class=3D"pln"><span lang=3D"EN-US" =
style=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;padd=
ing:0cm;background:#EEEEEE">PREFERRED_PROVIDER_openjdk</span></span><span c=
lass=3D"pun"><span lang=3D"EN-US" style=3D"font-family:Consolas;color:black=
;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">-</span></spa=
n><span class=3D"lit"><span lang=3D"EN-US" style=3D"font-family:Consolas;co=
lor:maroon;border:none windowtext 1.0pt;padding:0cm;background:#EEEEEE">7</=
span></span><span class=3D"pun"><span lang=3D"EN-US" style=3D"font-family:C=
onsolas;color:black;border:none windowtext 1.0pt;padding:0cm;background:#EE=
EEEE">-</span></span><span class=3D"pln"><span lang=3D"EN-US" style=3D"font=
-family:Consolas;color:black;border:none windowtext 1.0pt;padding:0cm;backg=
round:#EEEEEE">jre </span></span><span class=3D"pun"><span lang=3D"EN-US" s=
tyle=3D"font-family:Consolas;color:black;border:none windowtext 1.0pt;paddi=
ng:0cm;background:#EEEEEE">=3D</span></span><span class=3D"pln"><span lang=
=3D"EN-US" style=3D"font-family:Consolas;color:black;border:none windowtext=
 1.0pt;padding:0cm;background:#EEEEEE"> </span></span><span class=3D"str"><=
span lang=3D"EN-US" style=3D"font-family:Consolas;color:maroon;border:none =
windowtext 1.0pt;padding:0cm;background:#EEEEEE">&quot;openjdk-7-jre&quot;<=
/span></span><span lang=3D"EN-US" style=3D"font-family:Consolas;color:#3933=
18"><o:p></o:p></span></pre>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span lang=3D"EN-US" style=3D"font-size:11.5pt;font-family:&quot;Helvetica&=
quot;,&quot;sans-serif&quot;;color:#222222">I have seen several discussion =
about this problem but none of the solutions helped me. Usually they answer=
 that I need to set the PREFERRED_PROVIDER_virtual/java-native
 in my local.conf or distro.conf. I have tried both of these solutions, but=
 without any luck. Also, most of these discussion where 5-6 years old (gues=
s they're a bit out-dated).<o:p></o:p></span></p>
<p style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:12.0pt;ma=
rgin-left:0cm;line-height:14.65pt;background:white;orphans: auto;widows: 1;=
-webkit-text-stroke-width: 0px;word-spacing:0px">
<span style=3D"font-size:11.5pt;font-family:&quot;Helvetica&quot;,&quot;san=
s-serif&quot;;color:#222222">Can anyone help me?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9EB14782B17D6549A78433A42753B30B244F83FAEUNOEUREXS010te_--
