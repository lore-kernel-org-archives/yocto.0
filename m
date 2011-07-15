Return-Path: <mark.d.gray@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 021B54C80205
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 05:45:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jul 2011 03:45:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,534,1304319600"; d="scan'208,217";a="27590012"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by azsmga001.ch.intel.com with ESMTP; 15 Jul 2011 03:45:09 -0700
Received: from irsmsx501.ger.corp.intel.com (163.33.7.70) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 11:44:57 +0100
Received: from irsmsx505.ger.corp.intel.com ([163.33.3.241]) by
	irsmsx501.ger.corp.intel.com ([163.33.7.70]) with mapi; Fri, 15 Jul 2011
	11:44:57 +0100
From: "Gray, Mark D" <mark.d.gray@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 15 Jul 2011 11:44:56 +0100
Thread-Topic: yocto build fails
Thread-Index: AcxC3DzHL8tx2A2ARkeqQcNl2S48aw==
Message-ID: <888DA70AE496A645A106B23AEC7F2A99B465F1B7@irsmsx505.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: yocto build fails
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
X-List-Received-Date: Fri, 15 Jul 2011 10:45:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_888DA70AE496A645A106B23AEC7F2A99B465F1B7irsmsx505gercor_"

--_000_888DA70AE496A645A106B23AEC7F2A99B465F1B7irsmsx505gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have been trying to build on Ubuntu 11.0.4. I think I have followed the o=
nline documentation correctly. I have also followed the wiki page, which is=
 required for me, to set up the proxy servers. However, the build is still =
failing for me. This is for Bernard-5.0.1. I get the following message

NOTE: Executing RunQueue Tasks
NOTE: Running task 697 of 1863 (ID: 484, /home/green/mdgray/yocto/poky-bern=
ard-5.0.1/meta/recipes-kernel/linux/linux-yocto_git.bb, do_fetch)
NOTE: package linux-yocto-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3=
512_1+c75cbd202d8abb0b5f316f934f5d33c17ff6d3c3-r16: task do_fetch: Started
ERROR: Function 'Fetcher failure for URL: 'git://git.pokylinux.org/linux-yo=
cto-2.6.37;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-pc/=
base,meta;name=3Dmachine,meta'. Unable to fetch URL git://git.pokylinux.org=
/linux-yocto-2.6.37;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/c=
ommon-pc/base,meta;name=3Dmachine,meta from any source.' failed
ERROR: Logfile of failure stored in: /home/green/mdgray/yocto/poky-5.0.1-bu=
ild/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git1+212cae404e57ff9dc58=
c808035770d51325c3512_1+c75cbd202d8abb0b5f316f934f5d33c17ff6d3c3-r16/temp/l=
og.do_fetch.8521
Log data follows:
| NOTE: fetch http://autobuilder.yoctoproject.org/sources/git2_git.pokylinu=
x.org.linux-yocto-2.6.37.tar.gz
| Cloning into bare repository /home/green/mdgray/yocto/poky-5.0.1-build/do=
wnloads/git2/git.pokylinux.org.linux-yocto-2.6.37...
|  nc: read failed (0/3): Broken pipe
|  fatal: The remote end hung up unexpectedly
| ERROR: Function 'Fetcher failure for URL: 'git://git.pokylinux.org/linux-=
yocto-2.6.37;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-p=
c/base,meta;name=3Dmachine,meta'. Unable to fetch URL git://git.pokylinux.o=
rg/linux-yocto-2.6.37;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard=
/common-pc/base,meta;name=3Dmachine,meta from any source.' failed
|
NOTE: package linux-yocto-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3=
512_1+c75cbd202d8abb0b5f316f934f5d33c17ff6d3c3-r16: task do_fetch: Failed
ERROR: Task 484 (/home/green/mdgray/yocto/poky-bernard-5.0.1/meta/recipes-k=
ernel/linux/linux-yocto_git.bb, do_fetch) failed with exit code '1'
ERROR: '/home/green/mdgray/yocto/poky-bernard-5.0.1/meta/recipes-kernel/lin=
ux/linux-yocto_git.bb' failed

On closer inspection, the file http://autobuilder.yoctoproject.org/sources/=
git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz is unavailable in the repo=
. I did a search and I could only find http://autobuilder.yoctoproject.org/=
sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz.bad

Can anyone help me on this?

Thanks

Mark
--------------------------------------------------------------
Intel Shannon Limited
Registered in Ireland
Registered Office: Collinstown Industrial Park, Leixlip, County Kildare
Registered Number: 308263
Business address: Dromore House, East Park, Shannon, Co. Clare

This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). Any review or distribution by others =
is strictly prohibited. If you are not the intended recipient, please conta=
ct the sender and delete all copies.


--_000_888DA70AE496A645A106B23AEC7F2A99B465F1B7irsmsx505gercor_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-IE link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US>Hi all,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I have bee=
n trying to build on Ubuntu 11.0.4. I think I have followed the online docu=
mentation correctly. I have also followed the wiki page, which is required =
for me, to set up the proxy servers. However, the build is still failing fo=
r me. This is for Bernard-5.0.1. I get the following message<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>NOTE: Executing RunQueue Tasks<o:p>=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>NOTE: Running task=
 697 of 1863 (ID: 484, /home/green/mdgray/yocto/poky-bernard-5.0.1/meta/rec=
ipes-kernel/linux/linux-yocto_git.bb, do_fetch)<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>NOTE: package linux-yocto-2.6.37+git1+212=
cae404e57ff9dc58c808035770d51325c3512_1+c75cbd202d8abb0b5f316f934f5d33c17ff=
6d3c3-r16: task do_fetch: Started<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>ERROR: Function 'Fetcher failure for URL: 'git://git.po=
kylinux.org/linux-yocto-2.6.37;protocol=3Dgit;nocheckout=3D1;branch=3Dyocto=
/standard/common-pc/base,meta;name=3Dmachine,meta'. Unable to fetch URL git=
://git.pokylinux.org/linux-yocto-2.6.37;protocol=3Dgit;nocheckout=3D1;branc=
h=3Dyocto/standard/common-pc/base,meta;name=3Dmachine,meta from any source.=
' failed<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>ERROR=
: Logfile of failure stored in: /home/green/mdgray/yocto/poky-5.0.1-build/t=
mp/work/qemux86-poky-linux/linux-yocto-2.6.37+git1+212cae404e57ff9dc58c8080=
35770d51325c3512_1+c75cbd202d8abb0b5f316f934f5d33c17ff6d3c3-r16/temp/log.do=
_fetch.8521<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Lo=
g data follows:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>| NOTE: fetch http://autobuilder.yoctoproject.org/sources/git2_git.pokyli=
nux.org.linux-yocto-2.6.37.tar.gz<o:p></o:p></span></p><p class=3DMsoNormal=
><span lang=3DEN-US>| Cloning into bare repository /home/green/mdgray/yocto=
/poky-5.0.1-build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37...<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>|&nbsp; nc: read=
 failed (0/3): Broken pipe<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>|&nbsp; fatal: The remote end hung up unexpectedly<o:p></o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US>| ERROR: Function 'Fetche=
r failure for URL: 'git://git.pokylinux.org/linux-yocto-2.6.37;protocol=3Dg=
it;nocheckout=3D1;branch=3Dyocto/standard/common-pc/base,meta;name=3Dmachin=
e,meta'. Unable to fetch URL git://git.pokylinux.org/linux-yocto-2.6.37;pro=
tocol=3Dgit;nocheckout=3D1;branch=3Dyocto/standard/common-pc/base,meta;name=
=3Dmachine,meta from any source.' failed<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US>| <o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>NOTE: package linux-yocto-2.6.37+git1+212cae404e57ff9dc58c8=
08035770d51325c3512_1+c75cbd202d8abb0b5f316f934f5d33c17ff6d3c3-r16: task do=
_fetch: Failed<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>ERROR: Task 484 (/home/green/mdgray/yocto/poky-bernard-5.0.1/meta/recipes-=
kernel/linux/linux-yocto_git.bb, do_fetch) failed with exit code '1'<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>ERROR: '/home/green/=
mdgray/yocto/poky-bernard-5.0.1/meta/recipes-kernel/linux/linux-yocto_git.b=
b' failed<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>On closer i=
nspection, the file <a href=3D"http://autobuilder.yoctoproject.org/sources/=
git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz">http://autobuilder.yoctop=
roject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz</a> is =
unavailable in the repo. I did a search and I could only find <a href=3D"ht=
tp://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yoct=
o-2.6.37.tar.gz.bad">http://autobuilder.yoctoproject.org/sources/git2_git.p=
okylinux.org.linux-yocto-2.6.37.tar.gz.bad</a><o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US>Can anyone help me on this?<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US>Thanks<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>Mark<o:p></o:p></span></p></div><font face=3D"monospace"=
>--------------------------------------------------------------<br>
Intel Shannon Limited<br>
Registered in Ireland<br>
Registered Office: Collinstown Industrial Park, Leixlip, County Kildare<br>
Registered Number: 308263<br>
Business address: Dromore House, East Park, Shannon, Co. Clare<br>
<br>
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). Any review or distribution by others =
is strictly prohibited. If you are not the intended recipient, please conta=
ct the sender and delete all copies.<br>
</font></body></html>

--_000_888DA70AE496A645A106B23AEC7F2A99B465F1B7irsmsx505gercor_--
