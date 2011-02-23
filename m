Return-Path: <helia.correia@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D60BC4C80A90
	for <yocto@yoctoproject.org>; Wed, 23 Feb 2011 09:21:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Feb 2011 07:21:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,212,1297065600"; 
	d="png'150?scan'150,208,217,150";a="392927787"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by azsmga001.ch.intel.com with ESMTP; 23 Feb 2011 07:21:31 -0800
Received: from irsmsx501.ger.corp.intel.com (163.33.7.70) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 23 Feb 2011 15:20:34 +0000
Received: from irsmsx503.ger.corp.intel.com ([163.33.7.254]) by
	irsmsx501.ger.corp.intel.com ([163.33.7.70]) with mapi; Wed, 23 Feb 2011
	15:20:33 +0000
From: "Correia, Helia" <helia.correia@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 23 Feb 2011 15:20:29 +0000
Thread-Topic: Yocto alpha testing feedback
Thread-Index: AcvTbIVs2LIQGVQJQ6iNUc2i0wP6IwAAHA9A
Message-ID: <A782C372B9527D44AB20BF45FEEBB14F75A767C27A@irsmsx503.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto alpha testing feedback
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
X-List-Received-Date: Wed, 23 Feb 2011 15:21:34 -0000
X-Groupsio-MsgNum: 1058
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_";
	type="multipart/alternative"

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_
Content-Type: multipart/alternative;
	boundary="_000_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_"

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Below is my assessment.
Regards,

Helia

---

Alpha tester: helia.correia@intel.com<mailto:helia.correia@intel.com>
Technical background: Medium

a.           Which architecture you chose in step 3.
Targets: poky-image-sato, poky-image-minimal.
Machines: qemux86, mx31ads, qemuppc.

b.           How easily you were able to build an image and boot an image.
I was not comfortable with handling some terminal messages involving tools =
and/or notions I am not used to. But I could overcome the problems I met th=
anks to the help of Christophe Sureau, one of my team mates, as well as the=
 of #yocto IRC channel community who is responsive and provides great assis=
tance. Further detail about my testing is as follows.

First test

-        Target: poky-image-sato / Machine: qemux86

-        I used $ git clone git://git.pokylinux.org/poky.git -branch bernar=
d-5.0-alpha command
This scenario went well, and I could run Yocto built image (displays a grap=
hical user interface) but it was out of the scope since Alpha test was mean=
t to be performed from bernard-5-alpha tag.

Second test

-        Target: poky-image-sato + poky-image-minimal / Machine: mx31ads

-        I met below errors when using bitbake command:

1.      /proc/sys/vm/mmap_min_addr is not 0

Fixed by adding vm.mmap_min_addr =3D 0 in /etc/sysctl.conf (helped by team =
mate).

2.      Nothing PROVIDES mx31ads

Fixed by using bitbake command along with a target name instead of the mach=
ine name (helped by #yocto IRC channel community).

3.      /home/helia/poky/meta/recipes/-kernel/linux/linux-mx31_2.6.22.6.bb =
failed

I tried both poky-image-sato and poky-image-minimal targets to determine wh=
ether the error was specific to one target or not.

Fixed by updating the list of machines in local.conf file (helped by #yocto=
 IRC channel community).
This scenario was out of the scope as I tried to build for a machine that d=
idn't seem to be supported.

Third test

-        Target: poky-image-sato / Machine: qemux86
This scenario went well, and I could run the built image (displays a graphi=
cal user interface).

Fourth test

-        Target: poky-image-sato / Machine: qemuppc
This scenario went well, and I could run the built image (command line inte=
rface).

c.            Whether it was easy to find the support you needed to perform=
 the above steps.
Yes it was.

d.           Which bugzilla reports you submitted (providing the bugzilla n=
umber and description is sufficient).
None.



---
Helia Correia
Test Engineer

[cid:image001.png@01CBD373.05BD6870]Software and Services Group, Intel corp.
                            Montpellier, France

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

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equi=
v=3DContent-Type content=3D"text/html; charset=3Dus-ascii"><meta name=3DGen=
erator content=3D"Microsoft Word 12 (filtered medium)"><!--[if !mso]><style=
>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
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
	{font-family:"Neo Sans Intel";
	panose-1:2 11 5 4 2 2 2 2 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:10.0pt;
	margin-left:36.0pt;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:353239212;
	mso-list-type:hybrid;
	mso-list-template-ids:-1360493270 67895311 67895321 67895323 67895311 6789=
5321 67895323 67895311 67895321 67895323;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
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
	{mso-list-id:814681620;
	mso-list-type:hybrid;
	mso-list-template-ids:1599918192 1498844808 67895299 67895301 67895297 678=
95299 67895301 67895297 67895299 67895301;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:Calibri;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
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
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span la=
ng=3DEN-US>Below is my assessment.<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US>Regards,<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>Helia<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>---<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US>Alpha tester: <a href=
=3D"mailto:helia.correia@intel.com">helia.correia@intel.com</a><o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>Technical background: Med=
ium<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp=
;</o:p></span></p><p class=3DMsoNormal><b><span lang=3DEN-US>a.&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Which architecture you cho=
se in step 3.<o:p></o:p></span></b></p><p class=3DMsoNormal><span lang=3DEN=
-US>Targets: poky-image-sato, poky-image-minimal.<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Machines: qemux86, mx31ads, qemuppc.<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal><b><span lang=3DEN-US>b.&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; How easily you were able to buil=
d an image and boot an image.<o:p></o:p></span></b></p><p class=3DMsoNormal=
><span lang=3DEN-US>I was not comfortable with handling some terminal messa=
ges involving tools and/or notions I am not used to. But I could overcome t=
he problems I met thanks to the help of Christophe Sureau, one of my team m=
ates, as well as the of #yocto IRC channel community who is responsive and =
provides great assistance. Further detail about my testing is as follows.<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US>First test<o:p></o:p><=
/span></p><p class=3DMsoListParagraph style=3D'margin-bottom:0cm;margin-bot=
tom:.0001pt;text-indent:-18.0pt;line-height:normal;mso-list:l1 level1 lfo2'=
><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-list:Ignore'>-<=
span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US>Target: poky-=
image-sato / Machine: qemux86<o:p></o:p></span></p><p class=3DMsoListParagr=
aph style=3D'margin-bottom:0cm;margin-bottom:.0001pt;text-indent:-18.0pt;li=
ne-height:normal;mso-list:l1 level1 lfo2'><![if !supportLists]><span lang=
=3DEN-US><span style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times =
New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span=
><![endif]><span lang=3DEN-US>I used <i>$ git clone git://git.pokylinux.org=
/poky.git -branch bernard-5.0-alpha</i> command<i><o:p></o:p></i></span></p=
><p class=3DMsoNormal><span lang=3DEN-US>This scenario went well, and I cou=
ld run Yocto built image (displays a graphical user interface) but it was o=
ut of the scope since Alpha test was meant to be performed from <i>bernard-=
5-alpha</i> tag.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Seco=
nd test<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-bo=
ttom:0cm;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;mso-l=
ist:l1 level1 lfo2'><![if !supportLists]><span lang=3DEN-US><span style=3D'=
mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3D=
EN-US>Target: poky-image-sato + poky-image-minimal / Machine: mx31ads<o:p><=
/o:p></span></p><p class=3DMsoListParagraph style=3D'margin-bottom:0cm;marg=
in-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;mso-list:l1 level1=
 lfo2'><![if !supportLists]><span lang=3DEN-US><span style=3D'mso-list:Igno=
re'>-<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US>I met b=
elow errors when using bitbake command:<o:p></o:p></span></p><p class=3DMso=
ListParagraph style=3D'margin-bottom:0cm;margin-bottom:.0001pt;text-indent:=
-18.0pt;line-height:normal;mso-list:l0 level1 lfo4'><![if !supportLists]><i=
><span lang=3DEN-US><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span=
></i><![endif]><i><span lang=3DEN-US>/proc/sys/vm/mmap_min_addr is not 0<o:=
p></o:p></span></i></p><p class=3DMsoListParagraph style=3D'margin-bottom:0=
cm;margin-bottom:.0001pt;line-height:normal'><span lang=3DEN-US>Fixed by ad=
ding <i>vm.mmap_min_addr =3D 0</i> in /etc/sysctl.conf (helped by team mate=
).<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-bottom:=
0cm;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;mso-list:l=
0 level1 lfo4'><![if !supportLists]><i><span lang=3DEN-US><span style=3D'ms=
o-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span></i><![endif]><i><span lang=3DEN-US>=
Nothing PROVIDES mx31ads<o:p></o:p></span></i></p><p class=3DMsoListParagra=
ph style=3D'margin-bottom:0cm;margin-bottom:.0001pt;line-height:normal'><sp=
an lang=3DEN-US>Fixed by using bitbake command along with a target name ins=
tead of the machine name (helped by #yocto IRC channel community).<o:p></o:=
p></span></p><p class=3DMsoListParagraph style=3D'margin-bottom:0cm;margin-=
bottom:.0001pt;text-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lf=
o4'><![if !supportLists]><i><span lang=3DEN-US><span style=3D'mso-list:Igno=
re'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; </span></span></span></i><![endif]><i><span lang=3DEN-US>/home/helia=
/poky/meta/recipes/-kernel/linux/linux-mx31_2.6.22.6.bb failed<o:p></o:p></=
span></i></p><p class=3DMsoListParagraph style=3D'margin-bottom:0cm;margin-=
bottom:.0001pt;line-height:normal'><span lang=3DEN-US>I tried both poky-ima=
ge-sato and poky-image-minimal targets to determine whether the error was s=
pecific to one target or not.<o:p></o:p></span></p><p class=3DMsoListParagr=
aph style=3D'margin-bottom:0cm;margin-bottom:.0001pt;line-height:normal'><s=
pan lang=3DEN-US>Fixed by updating the list of machines in local.conf file =
(helped by #yocto IRC channel community).<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US>This scenario was out of the scope as I tried t=
o build for a machine that didn&#8217;t seem to be supported.<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US>Third test<o:p></o:p></span></p><p=
 class=3DMsoListParagraph style=3D'margin-bottom:0cm;margin-bottom:.0001pt;=
text-indent:-18.0pt;line-height:normal;mso-list:l1 level1 lfo2'><![if !supp=
ortLists]><span lang=3DEN-US><span style=3D'mso-list:Ignore'>-<span style=
=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; </span></span></span><![endif]><span lang=3DEN-US>Target: poky-image-sato=
 / Machine: qemux86<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>This scenario went well, and I could run the built image (displays a =
graphical user interface).<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>Fourth test<o:p></o:p></span></p><p class=3DMsoListParagraph style=3D=
'margin-bottom:0cm;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:no=
rmal;mso-list:l1 level1 lfo2'><![if !supportLists]><span lang=3DEN-US><span=
 style=3D'mso-list:Ignore'>-<span style=3D'font:7.0pt "Times New Roman"'>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><sp=
an lang=3DEN-US>Target: poky-image-sato / Machine: qemuppc<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US>This scenario went well, and I=
 could run the built image (command line interface).<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><b><span lang=3DEN-US>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; Whether it was easy to find the support you ne=
eded to perform the above steps.<o:p></o:p></span></b></p><p class=3DMsoNor=
mal><span lang=3DEN-US>Yes it was.<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><s=
pan lang=3DEN-US>d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; Which bugzilla reports you submitted (providing the bugzilla number an=
d description is sufficient).<o:p></o:p></span></b></p><p class=3DMsoNormal=
><span lang=3DEN-US>None.<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o=
:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'=
font-size:8.0pt;font-family:"Neo Sans Intel","sans-serif"'>---<o:p></o:p></=
span></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:8.0p=
t;font-family:"Neo Sans Intel","sans-serif"'>Helia Correia<o:p></o:p></span=
></b></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:8.0pt;f=
ont-family:"Neo Sans Intel","sans-serif"'>Test Engineer<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:8.0pt;font-fam=
ily:"Neo Sans Intel","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:8.0pt;font-family:"Neo Sans Intel","sans-=
serif"'><img border=3D0 width=3D79 height=3D52 id=3D"Picture_x0020_1" src=
=3D"cid:image001.png@01CBD373.05BD6870" alt=3D"http://geekattitu.de/wp-cont=
ent/uploads/2010/08/intel.png"></span><span lang=3DEN-US style=3D'font-size=
:8.0pt;font-family:"Neo Sans Intel","sans-serif"'>Software and Services Gro=
up, Intel corp.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:8.0pt;font-family:"Neo Sans Intel","sans-serif"'>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Montpellier, France<o:p></o:p></span></p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p></div><font face=3D"monospace">----------------------------=
-----------------------------------------<br>
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

--_000_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_--

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=5519;
	creation-date="Wed, 23 Feb 2011 15:15:37 GMT";
	modification-date="Wed, 23 Feb 2011 15:15:37 GMT"
Content-ID: <image001.png@01CBD373.05BD6870>
Content-Transfer-Encoding: base64

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

--_004_A782C372B9527D44AB20BF45FEEBB14F75A767C27Airsmsx503gerc_--
