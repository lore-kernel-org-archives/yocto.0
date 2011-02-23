Return-Path: <christophe.sureau@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42A2A4C80093
	for <yocto@yoctoproject.org>; Wed, 23 Feb 2011 09:43:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Feb 2011 07:43:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,212,1297065600"; 
	d="txt'?scan'208,217";a="605740491"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by orsmga002.jf.intel.com with ESMTP; 23 Feb 2011 07:43:23 -0800
Received: from irsmsx501.ger.corp.intel.com ([163.33.7.70]) by
	irsmsx601.ger.corp.intel.com ([163.33.7.164]) with mapi;
	Wed, 23 Feb 2011 15:42:10 +0000
From: "Sureau, Christophe" <christophe.sureau@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Feb 2011 15:42:06 +0000
Thread-Topic: Yocto Alpha Test Program
Thread-Index: AcvTcDnIQBH83MW4Qsix8ryEmHJ3iA==
Message-ID: <8250E4885F9967469CAC3FB5CBA2CE69935212D85E@irsmsx501.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 24 Feb 2011 02:15:44 -0600
Subject: Yocto Alpha Test Program
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Feb 2011 15:43:26 -0000
X-Groupsio-MsgNum: 1064
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_"

--_004_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_
Content-Type: multipart/alternative;
	boundary="_000_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_"

--_000_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto Team and Julie,

Below is my assessment:


a.      Which architecture you chose in step 3.

1.      Qemux86

1.      Poky-image-sato

2.      Qemuarm

1.      Poky-image-sato

2.      Poky-image-minimal

3.      Qemux86-64

1.      Poky-image-sato

4.      Qemumips

1.      Poky-image-sato

5.      Atom-pc

1.      Poky-image-sato

2.      Poky-image-sato-live


b.      How easily you were able to build an image and boot an image.

All images built stated above were done pretty quickly (setting up 8 core p=
rocessor).

All images were successfully ran, except Atom-pc.

Atom-pc do not boot whatever target is used.

Looking at BugZilla, I found that it was a known issue 686<http://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D686>, however, hddimg did not start neit=
her on an Atom Touch Tablet from Lenovo (IdeaPad S10-3t) with a Boot Error =
(looking at image using "fdisk -l" is giving a lot of issues on partition t=
able see attached in "FdiskReport.txt" File).



c.      Whether it was easy to find the support you needed to perform the a=
bove steps.

No support needed except for getting "Bernard-5.0-alpha".



d.      Which bugzilla reports you submitted (providing the bugzilla number=
 and description is sufficient).)
None since the one I found was already logged in BugZilla: 686<http://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D686>


e.      If you have the time and the hardware, create an image that boots o=
n a netbook or laptop or other hardware of interest to you.

Built an Atom-pc image successfully.



f.       Boot the resulting image on that hardware

Booting images resulting from previous step was not successful.

-        Tried Poky-image-sato and flash ext3 file on 2 different USB HDD d=
rive

-        Tried Poky-image-sato-live and flash hddimg on 2 different USB HDD=
 drive

An additional comment:
When executing "source poky-init-build-env XXXX", this gives a list of some=
 possible targets (4) and a link to poky documentation (http://pokylinux.or=
g/doc/poky-handbook.html).
Looking at poky documentation, it is said in "Appendix 4. Reference: Images=
":
               Poky has several standard images covering most people's stan=
dard needs. A full list of image targets can be found by looking in the "me=
ta/packages/images/" directory.
However on version we retrieved for Yocto Alpha Testing, this directory doe=
s not exist. Targets seems to be spread into multiple directories (consider=
ing "bb" files type)...

Hope this helps ! :)

See you,
Chris.

---------------------------------------------------------------------
Intel Corporation SAS (French simplified joint stock company)
Registered headquarters: "Les Montalets"- 2, rue de Paris,=20
92196 Meudon Cedex, France
Registration Number:  302 456 199 R.C.S. NANTERRE
Capital: 4,572,000 Euros

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--_000_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Courier;
	panose-1:2 7 4 9 2 2 5 2 4 4;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:#002060;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:8142535;
	mso-list-type:hybrid;
	mso-list-template-ids:-1979278768 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1
	{mso-list-id:729890648;
	mso-list-type:hybrid;
	mso-list-template-ids:1053741262 -1775997574 67895299 67895301 67895297 67=
895299 67895301 67895297 67895299 67895301;}
@list l1:level1
	{mso-level-start-at:5;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:90.0pt;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#002060'>Hi Yocto Team and Julie,<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'color:#002060'><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#002060=
'>Below is my assessment:<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#002060'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoListParagraph style=3D'margin-left:72.0pt;text-indent:-18.0pt;mso-list:l=
0 level2 lfo1'><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-l=
ist:Ignore'>a.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US>Which arch=
itecture you chose in step 3.<o:p></o:p></span></p><p class=3DMsoListParagr=
aph style=3D'margin-left:108.0pt;text-indent:-18.0pt;mso-list:l0 level3 lfo=
1'><![if !supportLists]><b><span lang=3DEN-US style=3D'color:#002060'><span=
 style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b><span l=
ang=3DEN-US style=3D'color:#002060'>Qemux86<o:p></o:p></span></b></p><p cla=
ss=3DMsoListParagraph style=3D'margin-left:144.0pt;text-indent:-18.0pt;mso-=
list:l0 level4 lfo1'><![if !supportLists]><b><span lang=3DEN-US style=3D'co=
lor:#002060'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "T=
imes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><!=
[endif]><b><span lang=3DEN-US style=3D'color:#002060'>Poky-image-sato<o:p><=
/o:p></span></b></p><p class=3DMsoListParagraph style=3D'margin-left:108.0p=
t;text-indent:-18.0pt;mso-list:l0 level3 lfo1'><![if !supportLists]><b><spa=
n lang=3DEN-US style=3D'color:#002060'><span style=3D'mso-list:Ignore'>2.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/span></span></span></b><![endif]><b><span lang=3DEN-US style=3D'color:#002=
060'>Qemuarm<o:p></o:p></span></b></p><p class=3DMsoListParagraph style=3D'=
margin-left:144.0pt;text-indent:-18.0pt;mso-list:l0 level4 lfo1'><![if !sup=
portLists]><b><span lang=3DEN-US style=3D'color:#002060'><span style=3D'mso=
-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b><span lang=3DEN-US s=
tyle=3D'color:#002060'>Poky-image-sato<o:p></o:p></span></b></p><p class=3D=
MsoListParagraph style=3D'margin-left:144.0pt;text-indent:-18.0pt;mso-list:=
l0 level4 lfo1'><![if !supportLists]><b><span lang=3DEN-US style=3D'color:#=
002060'><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times =
New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endi=
f]><b><span lang=3DEN-US style=3D'color:#002060'>Poky-image-minimal<o:p></o=
:p></span></b></p><p class=3DMsoListParagraph style=3D'margin-left:108.0pt;=
text-indent:-18.0pt;mso-list:l0 level3 lfo1'><![if !supportLists]><b><span =
lang=3DEN-US style=3D'color:#002060'><span style=3D'mso-list:Ignore'>3.<spa=
n style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </s=
pan></span></span></b><![endif]><b><span lang=3DEN-US style=3D'color:#00206=
0'>Qemux86-64<o:p></o:p></span></b></p><p class=3DMsoListParagraph style=3D=
'margin-left:144.0pt;text-indent:-18.0pt;mso-list:l0 level4 lfo1'><![if !su=
pportLists]><b><span lang=3DEN-US style=3D'color:#002060'><span style=3D'ms=
o-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b><span lang=3DEN-US =
style=3D'color:#002060'>Poky-image-sato<o:p></o:p></span></b></p><p class=
=3DMsoListParagraph style=3D'margin-left:108.0pt;text-indent:-18.0pt;mso-li=
st:l0 level3 lfo1'><![if !supportLists]><b><span lang=3DEN-US style=3D'colo=
r:#002060'><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Tim=
es New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![e=
ndif]><b><span lang=3DEN-US style=3D'color:#002060'>Qemumips<o:p></o:p></sp=
an></b></p><p class=3DMsoListParagraph style=3D'margin-left:144.0pt;text-in=
dent:-18.0pt;mso-list:l0 level4 lfo1'><![if !supportLists]><b><span lang=3D=
EN-US style=3D'color:#002060'><span style=3D'mso-list:Ignore'>1.<span style=
=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></s=
pan></span></b><![endif]><b><span lang=3DEN-US style=3D'color:#002060'>Poky=
-image-sato<o:p></o:p></span></b></p><p class=3DMsoListParagraph style=3D'm=
argin-left:108.0pt;text-indent:-18.0pt;mso-list:l0 level3 lfo1'><![if !supp=
ortLists]><b><span lang=3DEN-US style=3D'color:#002060'><span style=3D'mso-=
list:Ignore'>5.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; </span></span></span></b><![endif]><b><span lang=3DEN-US st=
yle=3D'color:#002060'>Atom-pc<o:p></o:p></span></b></p><p class=3DMsoListPa=
ragraph style=3D'margin-left:144.0pt;text-indent:-18.0pt;mso-list:l0 level4=
 lfo1'><![if !supportLists]><b><span lang=3DEN-US style=3D'color:#002060'><=
span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman=
"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span></b><![endif]><b><sp=
an lang=3DEN-US style=3D'color:#002060'>Poky-image-sato<o:p></o:p></span></=
b></p><p class=3DMsoListParagraph style=3D'margin-left:144.0pt;text-indent:=
-18.0pt;mso-list:l0 level4 lfo1'><![if !supportLists]><b><span lang=3DEN-US=
 style=3D'color:#002060'><span style=3D'mso-list:Ignore'>2.<span style=3D'f=
ont:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><=
/span></b><![endif]><b><span lang=3DEN-US style=3D'color:#002060'>Poky-imag=
e-sato-live<o:p></o:p></span></b></p><p class=3DMsoNormal><span lang=3DEN-U=
S><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParagraph style=3D'margin-l=
eft:72.0pt;text-indent:-18.0pt;mso-list:l0 level2 lfo1'><![if !supportLists=
]><span lang=3DEN-US><span style=3D'mso-list:Ignore'>b.<span style=3D'font:=
7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></spa=
n><![endif]><span lang=3DEN-US>How easily you were able to build an image a=
nd boot an image.<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D=
'margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'>All imag=
es built stated above were done pretty quickly (setting up 8 core processor=
).<o:p></o:p></span></b></p><p class=3DMsoListParagraph style=3D'margin-lef=
t:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'>All images were suc=
cessfully ran, except Atom-pc.<o:p></o:p></span></b></p><p class=3DMsoListP=
aragraph style=3D'margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:=
#002060'>Atom-pc do not boot whatever target is used.<o:p></o:p></span></b>=
</p><p class=3DMsoListParagraph style=3D'margin-left:72.0pt'><b><span lang=
=3DEN-US style=3D'color:#002060'>Looking at BugZilla, I found that it was a=
 known issue </span></b><a name=3Db686></a><a href=3D"http://bugzilla.yocto=
project.org/show_bug.cgi?id=3D686"><b><span lang=3DEN-US style=3D'font-fami=
ly:"Verdana","sans-serif";color:#002060'>686</span></b></a><b><span lang=3D=
EN-US style=3D'font-family:"Verdana","sans-serif";color:#002060'>, </span><=
/b><b><span lang=3DEN-US style=3D'color:#002060'>however, hddimg did not st=
art neither on an Atom Touch Tablet from Lenovo (IdeaPad S10-3t) with a Boo=
t Error (looking at image using &#8220;fdisk -l&#8221; is giving a lot of i=
ssues on partition table see attached in &#8220;FdiskReport.txt&#8221; File=
).<o:p></o:p></span></b></p><p class=3DMsoListParagraph style=3D'margin-lef=
t:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'><o:p>&nbsp;</o:p></=
span></b></p><p class=3DMsoListParagraph style=3D'margin-left:72.0pt;text-i=
ndent:-18.0pt;mso-list:l0 level2 lfo1'><![if !supportLists]><span lang=3DEN=
-US><span style=3D'mso-list:Ignore'>c.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span=
 lang=3DEN-US>Whether it was easy to find the support you needed to perform=
 the above steps.<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D=
'margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'>No suppo=
rt needed except for getting &#8220;Bernard-5.0-alpha&#8221;.<o:p></o:p></s=
pan></b></p><p class=3DMsoListParagraph style=3D'margin-left:72.0pt'><b><sp=
an lang=3DEN-US style=3D'color:#002060'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoListParagraph style=3D'margin-left:72.0pt;text-indent:-18.0pt;ms=
o-list:l0 level2 lfo1'><![if !supportLists]><span lang=3DEN-US><span style=
=3D'mso-list:Ignore'>d.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US>W=
hich bugzilla reports you submitted (providing the bugzilla number and desc=
ription is sufficient).)<o:p></o:p></span></p><p class=3DMsoNormal style=3D=
'margin-left:70.8pt'><b><span lang=3DEN-US style=3D'color:#002060'>None sin=
ce the one I found was already logged in BugZilla: </span></b><b><span styl=
e=3D'font-family:"Verdana","sans-serif";color:#002060'><a href=3D"http://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D686"><span lang=3DEN-US style=3D'=
color:#002060'>686</span></a><o:p></o:p></span></b></p><p class=3DMsoNormal=
 style=3D'margin-left:70.8pt'><b><span lang=3DEN-US style=3D'color:#002060'=
><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoListParagraph style=3D'margi=
n-left:72.0pt;text-indent:-18.0pt;mso-list:l0 level2 lfo1'><![if !supportLi=
sts]><span lang=3DEN-US style=3D'color:#002060'><span style=3D'mso-list:Ign=
ore'>e.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; </span></span></span><![endif]><i><span lang=3DEN-US>If you have th=
e time and the hardware, create an image that boots on a netbook or laptop =
or other hardware of interest to you.</span></i><span lang=3DEN-US style=3D=
'color:#002060'><o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'=
margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'>Built an =
Atom-pc image successfully.<o:p></o:p></span></b></p><p class=3DMsoListPara=
graph style=3D'margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:#00=
2060'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoListParagraph style=3D'=
margin-left:72.0pt;text-indent:-18.0pt;mso-list:l0 level2 lfo1'><![if !supp=
ortLists]><span lang=3DEN-US style=3D'color:#002060'><span style=3D'mso-lis=
t:Ignore'>f.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><i><span lang=3DEN-US>Boo=
t the resulting image on that hardware</span></i><span lang=3DEN-US style=
=3D'color:#002060'><o:p></o:p></span></p><p class=3DMsoListParagraph style=
=3D'margin-left:72.0pt'><b><span lang=3DEN-US style=3D'color:#002060'>Booti=
ng images resulting from previous step was not successful.<o:p></o:p></span=
></b></p><p class=3DMsoListParagraph style=3D'margin-left:90.0pt;text-inden=
t:-18.0pt;mso-list:l1 level1 lfo2'><![if !supportLists]><span lang=3DEN-US =
style=3D'color:#002060'><span style=3D'mso-list:Ignore'>-<span style=3D'fon=
t:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </spa=
n></span></span><![endif]><b><span lang=3DEN-US style=3D'color:#002060'>Tri=
ed Poky-image-sato and flash ext3 file on 2 different USB HDD drive<o:p></o=
:p></span></b></p><p class=3DMsoListParagraph style=3D'margin-left:90.0pt;t=
ext-indent:-18.0pt;mso-list:l1 level1 lfo2'><![if !supportLists]><span lang=
=3DEN-US style=3D'color:#002060'><span style=3D'mso-list:Ignore'>-<span sty=
le=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </span></span></span><![endif]><b><span lang=3DEN-US style=3D'color:#00=
2060'>Tried Poky-image-sato-live and flash hddimg on 2 different USB HDD dr=
ive<o:p></o:p></span></b></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'color:#002060'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'color:#002060'>An additional comment:<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#002060'>When e=
xecuting &#8220;source poky-init-build-env XXXX&#8221;, this gives a list o=
f some possible targets (4) and a link to poky documentation (<a href=3D"ht=
tp://pokylinux.org/doc/poky-handbook.html">http://pokylinux.org/doc/poky-ha=
ndbook.html</a>).<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'color:#002060'>Looking at poky documentation, it is said in &#=
8220;Appendix 4. Reference: Images&#8221;:<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US style=3D'color:#002060'>&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span=
 lang=3DEN style=3D'font-family:"Verdana","sans-serif";color:#333333'>Poky =
has several standard images covering most people's standard needs. A full l=
ist of image targets can be found by looking in the &#8220;</span><code><sp=
an lang=3DEN style=3D'font-size:13.5pt;font-family:Courier;color:#333333'>m=
eta/packages/images/&quot;</span></code><span lang=3DEN style=3D'font-famil=
y:"Verdana","sans-serif";color:#333333'> directory.</span><span lang=3DEN-U=
S style=3D'color:#002060'><o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'color:#002060'>However on version we retrieved for Yo=
cto Alpha Testing, this directory does not exist. Targets seems to be sprea=
d into multiple directories (considering &#8220;bb&#8221; files type)...<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#=
002060'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'color:#002060'>Hope this helps ! </span><span lang=3DEN-US style=
=3D'font-family:Wingdings;color:#002060'>J</span><span lang=3DEN-US style=
=3D'color:#002060'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'color:#002060'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNor=
mal><span lang=3DEN-US style=3D'color:#002060'>See you,<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'color:#002060'>Chris.<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p></div><font face=3D"monospace">--------------------------------=
-------------------------------------<br>
Intel Corporation SAS (French simplified joint stock company)<br>
Registered headquarters: "Les Montalets"- 2, rue de Paris, <br>
92196 Meudon Cedex, France<br>
Registration Number:&nbsp; 302 456 199 R.C.S. NANTERRE<br>
Capital: 4,572,000 Euros<br>
<br>
This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</font></body></=
html>

--_000_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_--

--_004_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_
Content-Type: text/plain; name="FdiskReport.txt"
Content-Description: FdiskReport.txt
Content-Disposition: attachment; filename="FdiskReport.txt"; size=1471;
	creation-date="Wed, 23 Feb 2011 15:36:10 GMT";
	modification-date="Wed, 23 Feb 2011 15:36:10 GMT"
Content-Transfer-Encoding: base64

RGlzayAvZGV2L3NkYzogNDAzNCBNQiwgNDAzNDkyMDQ0OCBieXRlcw0KMTI1IGhlYWRzLCA2MiBz
ZWN0b3JzL3RyYWNrLCAxMDE2IGN5bGluZGVycw0KVW5pdHMgPSBjeWxpbmRlcnMgb2YgNzc1MCAq
IDUxMiA9IDM5NjgwMDAgYnl0ZXMNClNlY3RvciBzaXplIChsb2dpY2FsL3BoeXNpY2FsKTogNTEy
IGJ5dGVzIC8gNTEyIGJ5dGVzDQpJL08gc2l6ZSAobWluaW11bS9vcHRpbWFsKTogNTEyIGJ5dGVz
IC8gNTEyIGJ5dGVzDQpEaXNrIGlkZW50aWZpZXI6IDB4MDAwOWU4N2QNCg0KVGhpcyBkb2Vzbid0
IGxvb2sgbGlrZSBhIHBhcnRpdGlvbiB0YWJsZQ0KUHJvYmFibHkgeW91IHNlbGVjdGVkIHRoZSB3
cm9uZyBkZXZpY2UuDQoNCiAgIERldmljZSBCb290ICAgICAgU3RhcnQgICAgICAgICBFbmQgICAg
ICBCbG9ja3MgICBJZCAgU3lzdGVtDQovZGV2L3NkYzEgICA/ICAgICAgNDE1OTE5ICAgICAgNDQ3
NzQ4ICAgMTIzMzM5OTYyICAgZjQgIFNwZWVkU3Rvcg0KUGFydGl0aW9uIDEgaGFzIGRpZmZlcmVu
dCBwaHlzaWNhbC9sb2dpY2FsIGJlZ2lubmluZ3MgKG5vbi1MaW51eD8pOg0KICAgICBwaHlzPSg3
OTMsIDIyLCAxMykgbG9naWNhbD0oNDE1OTE4LCAzNiwgMjEpDQpQYXJ0aXRpb24gMSBoYXMgZGlm
ZmVyZW50IHBoeXNpY2FsL2xvZ2ljYWwgZW5kaW5nczoNCiAgICAgcGh5cz0oODcwLCAyMzUsIDYx
KSBsb2dpY2FsPSg0NDc3NDcsIDExOSwgNDgpDQpQYXJ0aXRpb24gMSBkb2VzIG5vdCBlbmQgb24g
Y3lsaW5kZXIgYm91bmRhcnkuDQovZGV2L3NkYzIgICA/ICAgICAgIDQ4ODAwICAgICAgIDkxNjY4
ICAgMTY2MTE2Nzk0ICAgMTAgIE9QVVMNClBhcnRpdGlvbiAyIGhhcyBkaWZmZXJlbnQgcGh5c2lj
YWwvbG9naWNhbCBiZWdpbm5pbmdzIChub24tTGludXg/KToNCiAgICAgcGh5cz0oMjA1LCA3LCAw
KSBsb2dpY2FsPSg0ODc5OSwgNywgNTQpDQpQYXJ0aXRpb24gMiBoYXMgZGlmZmVyZW50IHBoeXNp
Y2FsL2xvZ2ljYWwgZW5kaW5nczoNCiAgICAgcGh5cz0oODcwLCAyMzUsIDUwKSBsb2dpY2FsPSg5
MTY2NywgMTE0LCA3KQ0KUGFydGl0aW9uIDIgZG9lcyBub3QgZW5kIG9uIGN5bGluZGVyIGJvdW5k
YXJ5Lg0KL2Rldi9zZGMzICAgPyAgICAgICAyOTExMSAgICAgICAyOTExMSAgICAgICAgICAgNSAg
IDc0ICBVbmtub3duDQpQYXJ0aXRpb24gMyBoYXMgZGlmZmVyZW50IHBoeXNpY2FsL2xvZ2ljYWwg
YmVnaW5uaW5ncyAobm9uLUxpbnV4Pyk6DQogICAgIHBoeXM9KDM2NywgNjYsIDQ3KSBsb2dpY2Fs
PSgyOTExMCwgMTUsIDEzKQ0KUGFydGl0aW9uIDMgaGFzIGRpZmZlcmVudCBwaHlzaWNhbC9sb2dp
Y2FsIGVuZGluZ3M6DQogICAgIHBoeXM9KDM3MCwgMzIsIDM3KSBsb2dpY2FsPSgyOTExMCwgMTUs
IDIyKQ0KUGFydGl0aW9uIDMgZG9lcyBub3QgZW5kIG9uIGN5bGluZGVyIGJvdW5kYXJ5Lg0KDQpQ
YXJ0aXRpb24gdGFibGUgZW50cmllcyBhcmUgbm90IGluIGRpc2sgb3JkZXINCg==

--_004_8250E4885F9967469CAC3FB5CBA2CE69935212D85Eirsmsx501gerc_--
