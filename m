Return-Path: <chunhuax.lv@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E73BE00349
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 20:46:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Jul 2012 20:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="167539032"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by azsmga001.ch.intel.com with ESMTP; 12 Jul 2012 20:46:44 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 12 Jul 2012 20:46:43 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.220]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.62]) with mapi id
	14.01.0355.002; Fri, 13 Jul 2012 11:46:42 +0800
From: "Lv, ChunhuaX" <chunhuax.lv@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: webhob: DB design
Thread-Index: Ac1gqh1l7gJ9hrSgRfOVARte7DPqBg==
Date: Fri, 13 Jul 2012 03:46:42 +0000
Message-ID: <11E5CEEDEF69BA4BAFC2DB04F73355550877C1@SHSMSX101.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: webhob: DB design
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
X-List-Received-Date: Fri, 13 Jul 2012 03:46:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_11E5CEEDEF69BA4BAFC2DB04F73355550877C1SHSMSX101ccrcorpi_"

--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877C1SHSMSX101ccrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

hi everyone,
here are webhob database design.
webhob database include 14 tables:
db_role, db_operator, db_systemConfig, db_settings, db_layers, db_history,
db_builds, db_group, db_project, db_images, db_permissions,db_build_logs,
db_mgt_bitbake_servers, db_build_temp

tables list
<1>table: db_builds
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

build's name

project_id

int

foreign key

operator_id

int

foreign key

size

int

image's size

image_id

int

foreign key

is_buildComplete

boolean

build's result (true/false)

valid

boolean

valid

create_date

datetime

create_date

  <2> table: db_group
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

group's name

creator

varchar(100)

creator

operator__id

int

foreign key

valid

boolean

valid

create_date

datetime

create_date

  <3>table:db_history
Name

Fieldtype

Note

id

int

primary key

message

text

message

operator_id

int

foreign key

project_id

int

foreign key

valid

boolean

valid

create_date

datetime

create_date

  <4>table:db_images
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

image's name

size

int

image's size

url

varchar(100)

download url

valid

boolean

valid

create_date

datetime

create_date

  <5>table: db_layers
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

layer's name

types

varchar(50)

layer's type (core layer/user's layer)

project_id

int

foreign key

create_date

datetime

create_date

  <6>table:db_operator
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

operator's name

password

varchar(100)

login password

role__id

int

foreign key

email

varchar(100)

login username

valid

boolean

valid

create_date

datetime

create_date

  <7>table:db_permissions
Name

Fieldtype

Note

id

int

primary key

project_id

int

foreign key

group_id

int

foreign key

operator_id

int

foreign key

system_config_id

int

foreign key

valid

boolean

valid

create_date

datetime

create_date

  <8>table:db_project
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

project's name

valid

boolean

valid

creator

varchar(100)

creator

create_date

datetime

create_date

operator__id

int

foreign key

group__id

int

foreign key

  <9>table:db_role
Name

Fieldtype

Note

id

int

primary key

name

varchar(100)

role's name

valid

boolean

valid

create_date

datetime

create_date

  <10>table:db_settings
Name

Fieldtype

Note

id

int

primary key

image_types

text

image_types

package_formats

varchar(100)

package_formats

image_rootfs_size

int

image_rootfs_size

image_extra_size

int

image_extra_size

gplv3_checkbox

varchar(50)

gplv3_checkbox's value

build_toolchain_checkbox

boolean

build_toolchain is checked

build_toolchain_value

varchar(50)

build_toolchain's value

distro

varchar(50)

distro

project_id

int

foreign key

is_template

boolean

settings config is saved as a template

valid

boolean

valid

create_date

datetime

create_date

  <11>table:db_systemConfig
Name

Fieldtype

Note

id

int

primary key

types

varchar(100)

types (distro,pkg format,image type,build toolchain)

name

varchar(100)

name

valid

boolean

valid

create_date

datetime

create_date

  <12>table:db_build_logs
Name

Fieldtype

Note

id

int

primary key

guid

varchar(100)

global unique id (user_name + project_name + build_name + timerstamp)

build_task

varchar(100)

current task (parse recipe/build pkg or image)

valid

boolean

valid

create_date

datetime

create_date

operator__id

int

foreign key

project_id

int

foreign key

  <13>table:db_mgt_bitbake_servers
Name

Fieldtype

Note

id

int

primary key

ip

varchar(200)

bitbake machine ip

port

int(5)

bitbake port

status

varchar(200)

status(free, busy,down)

status_code

int(5)

1:free 2: busy 3:down

error_msg

varchar(1000)

error message note

  <14>table:db_build_temp
Name

Fieldtype

Note

id

int

primary key

guid

varchar(100)

global unique id

build_content

text

store build info(such as bitbake, setting config, recipe/pkg treemodel)

valid

boolean

valid

every feedback is very welcome.

thanks
chunhua


--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877C1SHSMSX101ccrcorpi_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:8.0pt;
	font-family:"Calibri","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1875606505;
	mso-list-type:hybrid;
	mso-list-template-ids:-1544264424 -892018516 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
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
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">hi ever=
yone,<br>
here are webhob database design.</span><span lang=3D"EN-US"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">webhob database include 14 tabl=
es: <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">db_role, db_operator, db_system=
Config, db_settings, db_layers, db_history,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">db_builds, db_group, db_project=
, db_images, db_permissions,db_build_logs,<br>
db_mgt_bitbake_servers, db_build_temp<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:10.5pt;text-indent:-10.5pt"><b>=
<span lang=3D"EN-US">tables list</span></b><span lang=3D"EN-US"><br>
&lt;1&gt;table:<b> db_builds</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:solid window=
text 1.0pt;border-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:solid window=
text 1.0pt;border-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build&#8217;s name</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">size</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image&#8217;s size</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">is_buildComplete</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build&#8217;s result (true/fals=
e)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span>=
</p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border:none;border-=
left:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"163" valign=3D"top" style=3D"width:121.9pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;2&gt; table:<b> db_g=
roup</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group&#8217;s name</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;3&gt;table:<b>db_his=
tory</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">message</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">message</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;4&gt;table:<b>db_ima=
ges</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image&#8217;s name</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">size</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image&#8217;s size</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">url</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">download url</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;5&gt;table: <b>db_la=
yers</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">layer&#8217;s name</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">layer&#8217;s type (core layer/=
user&#8217;s layer)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><=
o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;6&gt;table:<b>db_ope=
rator</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator&#8217;s name</span><sp=
an lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">password</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">login password</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">role__id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">email</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">login username</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;7&gt;table:<b>db_per=
missions</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group_id</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator_id</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">system_config_id</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;8&gt;table:<b>db_pro=
ject</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project&#8217;s name</span><spa=
n lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">creator</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"163" valign=3D"top" style=3D"width:121.95pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">group__id</span><span lang=3D"E=
N-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"162" valign=3D"top" style=3D"width:121.85pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;9&gt;table:<b>db_rol=
e</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border-top:solid w=
indowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">role&#8217;s name</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;padding:0cm 5.65pt=
 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"155" valign=3D"top" style=3D"width:116.25pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"170" valign=3D"top" style=3D"width:127.55pt;border:none;border=
-bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"333" valign=3D"top" style=3D"width:249.45pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;10&gt;table:<b>db_se=
ttings</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border-top:solid wi=
ndowtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_types</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_types</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">package_formats</span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">package_formats</span><span lan=
g=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_rootfs_size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_rootfs_size</span><span l=
ang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_extra_size</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">image_extra_size</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">gplv3_checkbox</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">gplv3_checkbox&#8217;s value</s=
pan><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain_checkbox</span>=
<span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain is checked</spa=
n><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain_value</span><sp=
an lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_toolchain&#8217;s value</=
span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">distro</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(50)</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">distro</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">is_template</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">settings config is saved as a t=
emplate</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></=
span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;padding:0cm 5.65pt =
0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"191" valign=3D"top" style=3D"width:143.2pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"161" valign=3D"top" style=3D"width:120.5pt;border:none;border-=
bottom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"306" valign=3D"top" style=3D"width:229.55pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;11&gt;table:<b>db_sy=
stemConfig</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">types (distro,pkg format,image =
type,build toolchain)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"=
><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">name</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;12&gt;table:<b>db_bu=
ild_logs</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">guid</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">global unique id (user_name &#4=
3; project_name &#43; build_name &#43; timerstamp)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_task</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">current task (parse recipe/buil=
d pkg or image)</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p>=
</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">datetime</span><span lang=3D"EN=
-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">create_date</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">operator__id</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">project_id</span><span lang=3D"=
EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">foreign key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;13&gt;table:<b>db_mg=
t_bitbake_servers</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">ip</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(200)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake machine ip</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">port</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int(5)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake port</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(200)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status(free, busy,down)</span><=
span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">status_code</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int(5)</span><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">1:free 2: busy 3:down</span><sp=
an lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">error_msg</span><span lang=3D"E=
N-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(1000)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">error message note</span><span =
lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; &lt;14&gt;table:<b>db_bu=
ild_temp</b><o:p></o:p></span></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"margin-left:11.3pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Name</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border-top:solid wind=
owtext 1.0pt;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Fieldtype</span><span lang=3D"EN-US" style=3D"font-size:12.0p=
t"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span l=
ang=3D"EN-US">Note</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">id</span><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">int</span><span lang=3D"EN-US" =
style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">primary key</span><span lang=3D=
"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">guid</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">varchar(100)</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">global unique id</span><span la=
ng=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border-top:none;bo=
rder-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">build_content</span><span lang=
=3D"EN-US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;padding:0cm 5.65pt 0c=
m 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">text</span><span lang=3D"EN-US"=
 style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">store build info(such as bitbak=
e, setting config, recipe/pkg treemodel)</span><span lang=3D"EN-US" style=
=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"153" valign=3D"top" style=3D"width:114.85pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"151" valign=3D"top" style=3D"width:4.0cm;border:none;border-bo=
ttom:solid windowtext 1.0pt;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">boolean</span><span lang=3D"EN-=
US" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
<td width=3D"353" valign=3D"top" style=3D"width:265.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.65pt 0cm 5.65pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US">valid</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">every f=
eedback is very welcome.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><br>
thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">chunhua=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_11E5CEEDEF69BA4BAFC2DB04F73355550877C1SHSMSX101ccrcorpi_--
