Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: from sierrawireless.com (spf.sierrawireless.com [208.81.121.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513E2E00AF7
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 08:26:06 -0700 (PDT)
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Wed, 2 Apr 2014
	08:26:05 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 2 Apr 2014 08:26:03 -0700
Thread-Topic: berlios.de git clone connection refused
Thread-Index: Ac9Nue2gvD29RgcMT/qVy9FyTLm2KwAj19CAAA4Z8oA=
Message-ID: <8F90F944E50427428C60E12A34A309D237F05CA8CC@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D237F0479FD4@carmd-exchmb01.sierrawireless.local>
	<969F26A8BAB325438E7EB80D3C3134FB1CE7747B@IRSMSX105.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CE7747B@IRSMSX105.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: berlios.de git clone connection refused
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
X-List-Received-Date: Wed, 02 Apr 2014 15:26:07 -0000
X-Groupsio-MsgNum: 18810
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_";
	type="multipart/alternative"

--_004_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

After two+ days trying the anonymous git protocol and even trying to get an=
 account from berlios.de all I get are connection refused for anonymous acc=
ess permission related errors when attempting to use SSH.  This happens wit=
h any git project there (OK I just randomly sampled a few), not just jamvm.

I don't think this can be resolved using a patch.  Either berlios.de needs =
to fix their servers or the effected repository needs to be hosted somewher=
e that works.  (The same is likely true of other upstream projects hosted t=
here as well).

Funny thing is there is a bug 19342 logged there that is essentially the sa=
me as my complaint and they ran into the same issue sometime last year.

I can see recent jamvm project activity using the cgit web interface at ber=
lious (as recent as last month).  So I am hoping that the remarks of berlio=
s.de shutting down I found using google were obsolete rumors.  Does someone=
 know what is going on with them?

At present, I work around this by restoring my previous state (and not buil=
d from scratch) until this is resolved upstream.


Regards,

Darcy

[cid:image002.jpg@01CF4E4D.2F623F90]

Darcy Watkins
Senior Software Developer

T 604.523.2371 x 449
F 604.648.9629
darcy.watkins@inmotiontechnology.com<mailto:darcy.watkins@inmotiontechnolog=
y.com>
www.inmotiontechnology.com<blocked::http://www.inmotiontechnology.com/>
350-625 Agnes Street - New Westminster, BC - V3M 5Y4

From: Iorga, Cristian [mailto:cristian.iorga@intel.com]
Sent: April-02-14 12:59 AM
To: Darcy Watkins; yocto@yoctoproject.org
Subject: RE: berlios.de git clone connection refused

Hello,
Patches and solving issues are always welcome.

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Darcy Watkins
Sent: Tuesday, April 1, 2014 5:52 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] berlios.de git clone connection refused

What is being done about the fetch failures at berlios.de?  This has broken=
 jamvm.  Are there other projects affected by this?  From what I can google=
 about it, berios.de was supposed to shut down over a year ago with project=
s migrated to sourceforge.

--_000_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-CA link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'>After two+ days trying the anonymous git protocol and ev=
en trying to get an account from berlios.de all I get are connection refuse=
d for anonymous access permission related errors when attempting to use SSH=
.&nbsp; This happens with any git project there (OK I just randomly sampled=
 a few), not just jamvm.<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'>I don&#8217;t think this can be resolved using a =
patch.&nbsp; Either berlios.de needs to fix their servers or the effected r=
epository needs to be hosted somewhere that works.&nbsp; (The same is likel=
y true of other upstream projects hosted there as well).<o:p></o:p></span><=
/p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>Funny thing is th=
ere is a bug 19342 logged there that is essentially the same as my complain=
t and they ran into the same issue sometime last year.<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span=
></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>I can see recent ja=
mvm project activity using the cgit web interface at berlious (as recent as=
 last month).&nbsp; So I am hoping that the remarks of berlios.de shutting =
down I found using google were obsolete rumors.&nbsp; Does someone know wha=
t is going on with them?<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'>At present, I work around this by restoring my pr=
evious state (and not build from scratch) until this is resolved upstream.<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:=
p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><span style=3D'font-fami=
ly:"Arial","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-family:"Arial","sans-serif";color:#1F497D'=
>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-fam=
ily:"Arial","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p clas=
s=3DMsoNormal><span style=3D'font-family:"Arial","sans-serif";color:#1F497D=
'>Darcy<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-famil=
y:"Arial","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'><img width=3D286 height=3D155 id=
=3D"Picture_x0020_1" src=3D"cid:image002.jpg@01CF4E4D.2F623F90" alt=3D"IMTS=
W Logo"></span><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"=
;color:blue'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-family:"Arial","sans-serif";color:black'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:13.5p=
t;font-family:"Arial","sans-serif";color:black'>Darcy Watkins</span></b><sp=
an lang=3DEN-US style=3D'font-size:12.0pt;font-family:"Arial","sans-serif";=
color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Arial","sans-serif";color:black'>Seni=
or Software Developer</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Arial","sans-ser=
if";color:black'>T 604.523.2371 x 449<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Arial","sans-=
serif";color:black'>F 604.648.9629<br></span><u><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:#150DB3'><a href=
=3D"mailto:darcy.watkins@inmotiontechnology.com">darcy.watkins@inmotiontech=
nology.com</a></span></u><span lang=3DEN-US style=3D'font-size:12.0pt;font-=
family:"Arial","sans-serif";color:#150DB3'><br><a href=3D"blocked::http://w=
ww.inmotiontechnology.com/" title=3D"http://www.inmotiontechnology.com/"><s=
pan style=3D'font-size:9.0pt;color:#150DB3'>www.inmotiontechnology.com</spa=
n></a><br></span><span lang=3DEN-US style=3D'font-size:9.0pt;font-family:"A=
rial","sans-serif";color:black'>350-625 Agnes Street - New Westminster, BC =
- V3M 5Y4<o:p></o:p></span></p></div><p class=3DMsoNormal><span style=3D'co=
lor:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D'border:none;bor=
der-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal=
><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans=
-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Tahoma","sans-serif"'> Iorga, Cristian [mailto:cristian.iorga@intel=
.com] <br><b>Sent:</b> April-02-14 12:59 AM<br><b>To:</b> Darcy Watkins; yo=
cto@yoctoproject.org<br><b>Subject:</b> RE: berlios.de git clone connection=
 refused<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;<=
/o:p></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#1F497D'>He=
llo,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
color:#1F497D'>Patches and solving issues are always welcome.<o:p></o:p></s=
pan></p><p class=3DMsoNormal><a name=3D"_MailEndCompose"></a><span lang=3DE=
N-US style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div style=3D=
'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p c=
lass=3DMsoNormal style=3D'margin-left:36.0pt'><b><span lang=3DEN-US>From:</=
span></b><span lang=3DEN-US> <a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg">yocto-bounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoc=
toproject.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of <=
/b>Darcy Watkins<br><b>Sent:</b> Tuesday, April 1, 2014 5:52 PM<br><b>To:</=
b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=
<b>Subject:</b> [yocto] berlios.de git clone connection refused<o:p></o:p><=
/span></p></div></div><p class=3DMsoNormal style=3D'margin-left:36.0pt'><sp=
an lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'm=
argin-left:36.0pt'>What is being done about the fetch failures at berlios.d=
e?&nbsp; This has broken jamvm.&nbsp; Are there other projects affected by =
this?&nbsp; From what I can google about it, berios.de was supposed to shut=
 down over a year ago with projects migrated to sourceforge.<o:p></o:p></p>=
</div></body></html>=

--_000_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_--

--_004_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_
Content-Type: image/jpeg; name="image002.jpg"
Content-Description: image002.jpg
Content-Disposition: inline; filename="image002.jpg"; size=6374;
	creation-date="Wed, 02 Apr 2014 15:26:03 GMT";
	modification-date="Wed, 02 Apr 2014 15:26:03 GMT"
Content-ID: <image002.jpg@01CF4E4D.2F623F90>
Content-Transfer-Encoding: base64

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
RAREQEREBERAREQEREBERAREQEREH//Z

--_004_8F90F944E50427428C60E12A34A309D237F05CA8CCcarmdexchmb01_--
