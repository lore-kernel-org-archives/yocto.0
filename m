Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D84A24C80AC5
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 19:45:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Mar 2011 17:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,279,1299484800"; 
	d="scan'208,217";a="412047693"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 31 Mar 2011 17:45:45 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Apr 2011 08:45:42 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 1 Apr 2011
	08:45:41 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Murilo Travaglia
	<murilo.travaglia@phiinnovations.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 1 Apr 2011 08:45:39 +0800
Thread-Topic: [yocto] Remote Debugging with Yocto Project Plugin
Thread-Index: AcvvuW+rKlmAAGGUSManbhqs7egMPQAKFQrwAAivEVA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659734A7EAF76@shsmsx501.ccr.corp.intel.com>
References: <AANLkTimd3rsfyCahO6rNJ_ziccFvxc6-GiME-vN-fJSa@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552169843@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9552169843@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Remote Debugging with Yocto Project Plugin
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
X-List-Received-Date: Fri, 01 Apr 2011 00:45:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_789F9655DD1B8F43B48D77C5D30659734A7EAF76shsmsx501ccrcor_"

--_000_789F9655DD1B8F43B48D77C5D30659734A7EAF76shsmsx501ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Travaglia



1.       Our our java code and eclipse code is in TCF upstream community al=
ready (both Agent C code and java code part). Yet the community code is sli=
ghtly different with our poky-TCF. TCF upstream disable login process, yet =
our local poky-TCF have login authentication.

So if we use poky TCF, we must use poky TCF agent as well as Poky TCF java =
plugin.

2.       Make sure the login in Prompt (PS1) is what? For example, my ubunt=
u 10.04 is "$", Qemu is "#". Make sure the prompt in the TCF connection Pro=
perties is correct. For qemu, it should be the default one "#" .

For poky-agent, login.Required is "true" Pwd.Required is "false".

If TCF upstream, Login.Required =3D "false", Pwd.Required =3D "false"



We will try to modify this settings, trying to detect the prompt in later v=
ersions. And also, login service might be provided by TCF framework sooner =
or later in upstream.





Thanks a lot for your info!



criping






From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Zhang, Jessica
Sent: Friday, April 01, 2011 4:30 AM
To: Murilo Travaglia; yocto@yoctoproject.org
Subject: Re: [yocto] Remote Debugging with Yocto Project Plugin

Hi Travaglia,

Based on our conversation on the IRC channel, it seems the TCF agent and yo=
ur customized Linux distro may have some mismatch issue.  Did you follow th=
e steps in the readme file to build out your tcf agent and started in the q=
emu instance?  The readme I'm mentioning here is do a git clone of git.poky=
linux.org/eclipse-poky, under tcf there's the readme provided detailed step=
s of patching and build out the tcf agent and started it on the remote targ=
et.  Also, can you provide us the agent log file that may provide some furt=
her information for us to further debug the issue?

Thanks,
Jessica

________________________________
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Murilo Travaglia
Sent: Thursday, March 31, 2011 8:35 AM
To: yocto@yoctoproject.org
Subject: [yocto] Remote Debugging with Yocto Project Plugin
Hi all,

Hi I'm new in Yocto Project and I intent to study TCF Agent and port ir to =
diferents platforms. The first thing I'm doing is to simulate how does the =
Yocto Project works, especially the TCF Agent with the Eclipse Debug Framew=
ork.

First at all I installed the Yocto Plugin in my eclipse, installed a toolch=
ain (586), download a toolchain to 586, download a pre-built linux kernel a=
nd a filesystem (sato). So I'm able to run QEMU and use the features, remot=
e file explorer, remote debug and use yocto tools.

The second step I'm trying to do is to use the features of Yocto in my cust=
om Linux. So I built a 586_linux and I'm running it in QEMU. I got the sour=
ce code of eclipse_poky and TCF, aplied the patches of Yocto Project in TCF=
 code and built (localy in my machine, because is the same architecture) th=
e org.eclipse.tm.tcf.terminals.agent agent. Then I put the binary of the ag=
ent in my linux running in QEMU and started it. In Eclipse if the Yocto plu=
gin installed I'm able to use Remote File System Explorer, I can see my hom=
e files, etc, can execute some yocto tools, but when I try to the debug an =
aplication in my remote target, I can't do it. I can see that the binary fi=
le is copied to the target (I also can execute it manually), but eclipse st=
ay trying to debug (maybe trying to find the file) and then after a time a =
got an error. I also tryed to put the tcf-agent binary provided in the yoct=
o-image-sato-qemux86-0.9.rootfs and I have the same behavior.

Does anybody know why I'm having this issue? Why I can debug in remote targ=
et using the linux provided by poky-qemu and can't do this in my custom-lin=
ux?

Thanks in advance!


Best regards,

--
Murilo Marques Travaglia
Phi Innovations



--_000_789F9655DD1B8F43B48D77C5D30659734A7EAF76shsmsx501ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><!--[if !mso]><style>v\:* {behavior:url(#def=
ault#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:900024271;
	mso-list-type:hybrid;
	mso-list-template-ids:-172714228 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Hi, Trava=
glia<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DM=
soListParagraph style=3D'text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if=
 !supportLists]><span style=3D'font-size:11.0pt;font-family:"Calibri","sans=
-serif";color:#1F497D'><span style=3D'mso-list:Ignore'>1.<span style=3D'fon=
t:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></sp=
an></span><![endif]><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>Our our java code and eclipse code is in TCF ups=
tream community already (both Agent C code and java code part). Yet the com=
munity code is slightly different with our poky-TCF. TCF upstream disable l=
ogin process, yet our local poky-TCF have login authentication.<o:p></o:p><=
/span></p><p class=3DMsoListParagraph><span style=3D'font-size:11.0pt;font-=
family:"Calibri","sans-serif";color:#1F497D'>So if we use poky TCF, we must=
 use poky TCF agent as well as Poky TCF java plugin.<o:p></o:p></span></p><=
p class=3DMsoListParagraph style=3D'text-indent:-18.0pt;mso-list:l0 level1 =
lfo1'><![if !supportLists]><span style=3D'font-size:11.0pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'><span style=3D'mso-list:Ignore'>2.<span s=
tyle=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></span></span><![endif]><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>Make sure the login in Prompt (PS1) i=
s what? For example, my ubuntu 10.04 is &#8220;$&#8221;, Qemu is &#8220;#&#=
8221;. Make sure the prompt in the TCF connection Properties is correct. Fo=
r qemu, it should be the default one &#8220;#&#8221; . <o:p></o:p></span></=
p><p class=3DMsoListParagraph><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif";color:#1F497D'>For poky-agent, login.Required is &#82=
20;true&#8221; Pwd.Required is &#8220;false&#8221;.<o:p></o:p></span></p><p=
 class=3DMsoListParagraph><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'>If TCF upstream, Login.Required =3D &#8220=
;false&#8221;, Pwd.Required =3D &#8220;false&#8221;<o:p></o:p></span></p><p=
 class=3DMsoListParagraph><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
ListParagraph><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-s=
erif";color:#1F497D'>We will try to modify this settings, trying to detect =
the prompt in later versions. And also, login service might be provided by =
TCF framework sooner or later in upstream.<o:p></o:p></span></p><p class=3D=
MsoListParagraph><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParag=
raph><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";col=
or:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParagraph><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
Thanks a lot for your info!<o:p></o:p></span></p><p class=3DMsoListParagrap=
h><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoListParagraph><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>cri=
ping <o:p></o:p></span></p><p class=3DMsoListParagraph><span style=3D'font-=
size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoListParagraph><span style=3D'font-size:11.0pt;=
font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNo=
rmal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";col=
or:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-le=
ft:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'border:no=
ne;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p class=3DMso=
Normal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"=
'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","san=
s-serif"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoprojec=
t.org] <b>On Behalf Of </b>Zhang, Jessica<br><b>Sent:</b> Friday, April 01,=
 2011 4:30 AM<br><b>To:</b> Murilo Travaglia; yocto@yoctoproject.org<br><b>=
Subject:</b> Re: [yocto] Remote Debugging with Yocto Project Plugin<o:p></o=
:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p clas=
s=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:blue'>Hi Travaglia,</span><o:p></o:p></p><p class=3DMsoNormal>&nb=
sp;<o:p></o:p></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:blue'>Based on our conversation on the I=
RC channel, it seems the TCF agent and your customized Linux distro may hav=
e some mismatch issue.&nbsp; Did you follow the steps in the readme file to=
 build out your tcf agent and started in the qemu instance?&nbsp; The readm=
e I'm mentioning here is do a git clone of git.pokylinux.org/eclipse-poky, =
under tcf there's the readme provided detailed steps of patching and build =
out the tcf agent and started it on the remote target.&nbsp; Also, can you =
provide us the agent log file that may provide some further information for=
 us to further debug the issue?</span><o:p></o:p></p><p class=3DMsoNormal>&=
nbsp;<o:p></o:p></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:blue'>Thanks,</span><o:p></o:p></p><p =
class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:blue'>Jessica</span><o:p></o:p></p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><div class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><hr size=3D2 width=3D"100%" align=3Dcenter></div><p class=3DMsoNorma=
l style=3D'margin-bottom:12.0pt'><b><span style=3D'font-size:10.0pt;font-fa=
mily:"Tahoma","sans-serif"'>From:</span></b><span style=3D'font-size:10.0pt=
;font-family:"Tahoma","sans-serif"'> yocto-bounces@yoctoproject.org [mailto=
:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Murilo Travaglia<br><b=
>Sent:</b> Thursday, March 31, 2011 8:35 AM<br><b>To:</b> yocto@yoctoprojec=
t.org<br><b>Subject:</b> [yocto] Remote Debugging with Yocto Project Plugin=
</span><o:p></o:p></p><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>H=
i all,<br><br>Hi I'm new in Yocto Project and I intent to study TCF Agent a=
nd port ir to diferents platforms. The first thing I'm doing is to simulate=
 how does the Yocto Project works, especially the TCF Agent with the Eclips=
e Debug Framework.<br><br>First at all I installed the Yocto Plugin in my e=
clipse, installed a toolchain (586), download a toolchain to 586, download =
a pre-built linux kernel and a filesystem (sato). So I'm able to run QEMU a=
nd use the features, remote file explorer, remote debug and use yocto tools=
.<br><br>The second step I'm trying to do is to use the features of Yocto i=
n my custom Linux. So I built a 586_linux and I'm running it in QEMU. I got=
 the source code of eclipse_poky and TCF, aplied the patches of Yocto Proje=
ct in TCF code and built (localy in my machine, because is the same archite=
cture) the org.eclipse.tm.tcf.terminals.agent agent. Then I put the binary =
of the agent in my linux running in QEMU and started it. In Eclipse if the =
Yocto plugin installed I'm able to use Remote File System Explorer, I can s=
ee my home files, etc, can execute some yocto tools, but when I try to the =
debug an aplication in my remote target, I can't do it. I can see that the =
binary file is copied to the target (I also can execute it manually), but e=
clipse stay trying to debug (maybe trying to find the file) and then after =
a time a got an error. I also tryed to put the tcf-agent binary provided in=
 the yocto-image-sato-qemux86-0.9.rootfs and I have the same behavior.<br><=
br>Does anybody know why I'm having this issue? Why I can debug in remote t=
arget using the linux provided by poky-qemu and can't do this in my custom-=
linux?<br><br>Thanks in advance!<br><br><br>Best regards,<br clear=3Dall><b=
r>-- <br>Murilo Marques Travaglia<br>Phi Innovations<br><br><br><o:p></o:p>=
</p></div></div></body></html>=

--_000_789F9655DD1B8F43B48D77C5D30659734A7EAF76shsmsx501ccrcor_--
