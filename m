Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B18EDE00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 16:26:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Aug 2012 16:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,349,1344236400"; 
	d="scan'208,217";a="216503728"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2012 16:26:07 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 31 Aug 2012 16:26:07 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.246]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.127]) with mapi id
	14.01.0355.002; Fri, 31 Aug 2012 16:26:07 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error when applying kernel patch from BSP:  "Uncommited
	changes detected. Refresh first" error
Thread-Index: Ac2Hz/2cTDpVfvxFS7SgEUZiqAev2A==
Date: Fri, 31 Aug 2012 23:26:06 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Error when applying kernel patch from BSP: "Uncommited changes detected. Refresh first" error
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
X-List-Received-Date: Fri, 31 Aug 2012 23:26:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C49003322769ORSMSX103amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C49003322769ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi,

I am trying to apply a kernel patch from the BSP, but getting a error.

DEBUG: Executing shell function do_patch
Unstaged changes after reset:
M     .gitignore
Deleted branch meta-temp (was 580ac9c).
warning: could not find (or was already included): cfg/x86_64.scc (/home/rs=
axena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux-yocto-3.4.4+g=
it3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b54aef08d58135ed2a897=
d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/common-pc-64)
[INFO] validating against known patches  (rangeley-standard-meta)
  [                                                  ] (|)(1 %)
  [#                                                 ] (/)(2 %)
  [#                                                 ] (-)(3 %)
  [##                                                ] (\)(4 %)
  [##                                                ] (|)(5 %)
  [###                                               ] (/)(6 %)

--
[############################################      ] (/)(89 %)
  [#############################################     ] (-)(90 %)
Uncommited changes detected. Refresh first.
[ERROR] unable to complete push
pending patches are:
links/linux-yocto/msi.patch
ERROR. could not update git tree
ERROR. Could not modify standard/common-pc-64/rangeley
ERROR: Function failed: do_patch (see /home/rsaxena/YoctoWork2/rangeley3/tm=
p/work/rangeley-poky-linux/linux-yocto-3.4.4+git3+dab07bdc3a53b21220da3af91=
c5d2729b027b5a7_2+19f7e43b54aef08d58135ed2a897d77b624b320a-r3/temp/log.do_p=
atch.39386 for further information)

My linux-yocto_3.4.bbappend file has the statements:
SRC_URI +=3D"file://patchlist.scc"
SRC_URI +=3D"file://my_rangeley.cfg"
COMPATIBLE_MACHINE_rangeley =3D "rangeley"

KMACHINE_rangeley  =3D "rangeley"
KBRANCH_rangeley  =3D "standard/common-pc-64/rangeley"
SRCREV_machine_pn-linux-yocto_rangeley ?=3D "19f7e43b54aef08d58135ed2a897d7=
7b624b320a"
SRCREV_meta_pn-linux-yocto_rangeley ?=3D "dab07bdc3a53b21220da3af91c5d2729b=
027b5a7"

cat  linux-yocto/patchlist.scc

patch msi.patch

I am using the master branch of poky.

What is the meaning of the ERROR messages above ?
Any suggestions would be greatly appreciated.

Thanks
Rahul

--_000_63ECFF2A2302B44093D7CE9E9962C49003322769ORSMSX103amrcor_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to apply a kernel patch from the BSP, bu=
t getting a error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">DEBUG: Executing shell funct=
ion do_patch<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Unstaged changes after reset=
:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">M&nbsp;&nbsp;&nbsp;&nbsp; .g=
itignore<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Deleted branch meta-temp (wa=
s 580ac9c).<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">warning: could not find (or =
was already included): cfg/x86_64.scc (/home/rsaxena/YoctoWork2/rangeley3/t=
mp/work/rangeley-poky-linux/linux-yocto-3.4.4&#43;git3&#43;dab07bdc3a53b212=
20da3af91c5d2729b027b5a7_2&#43;19f7e43b54aef08d58135ed2a897d77b624b320a-r3/=
linux/meta/cfg/kernel-cache/bsp/common-pc-64)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">[INFO] validating against kn=
own patches&nbsp; (rangeley-standard-meta)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (|)(1 %)<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [#&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (/)(2 %)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [#&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] (-)(3 %)<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [##&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (\)(4 %)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [##&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (|)(5 %)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [###&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (/)(6 %)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">[###########################=
#################&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ] (/)(89 %)<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&nbsp; [####################=
#########################&nbsp;&nbsp;&nbsp;&nbsp; ] (-)(90 %)<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">Uncommited changes detected.=
 Refresh first.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">[ERROR] unable to complete p=
ush<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">pending patches are:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">links/linux-yocto/msi.patch<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR. could not update git =
tree<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR. Could not modify stan=
dard/common-pc-64/rangeley<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">ERROR: Function failed: do_p=
atch (see /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/l=
inux-yocto-3.4.4&#43;git3&#43;dab07bdc3a53b21220da3af91c5d2729b027b5a7_2&#4=
3;19f7e43b54aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
 for further information)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My linux-yocto_3.4.bbappend file has the statements:=
<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">SRC_URI &#43;=3D&quot;file:/=
/patchlist.scc&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">SRC_URI &#43;=3D&quot;file:/=
/my_rangeley.cfg&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">COMPATIBLE_MACHINE_rangeley =
=3D &quot;rangeley&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">KMACHINE_rangeley&nbsp; =3D =
&quot;rangeley&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">KBRANCH_rangeley&nbsp; =3D &quot;standard/common-pc-64/ran=
geley&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">SRCREV_machine_pn-linux-yocto_rangeley ?=3D &quot;19f7e43b=
54aef08d58135ed2a897d77b624b320a&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">SRCREV_meta_pn-linux-yocto_rangeley ?=3D &quot;dab07bdc3a5=
3b21220da3af91c5d2729b027b5a7&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">cat &nbsp;linux-yocto/patchlist.scc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">patch msi.patch<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using the master branch of poky.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the meaning of the ERROR messages above ?<o:=
p></o:p></p>
<p class=3D"MsoNormal">Any suggestions would be greatly appreciated.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Rahul<o:p></o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C49003322769ORSMSX103amrcor_--
