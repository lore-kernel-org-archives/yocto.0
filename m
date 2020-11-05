Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.10999.1604597114490091232
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 09:25:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Ne4ktyJn;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1604597114; x=1762277114;
  h=from:to:subject:date:mime-version;
  bh=nPm68AQjtx5AFhv5z7kaI4gVw1FWLTFlt/WAtDnNKUk=;
  b=Ne4ktyJnqfSXP8NGEbyQ4i3Q2JKSm2kxqKm2oW805dZPq6ZKNLY+6G68
   B4gPR1Eccaxp411RZHk8TmitvS263NMnO7kbmxuDLO9ZFr0ewXFi23Ccz
   SK5OePlsEznp5p08qgp0/45idRoXqNeP0XxOlC8jkiLi9ekP6JEHJUZ36
   8=;
IronPort-PHdr: =?us-ascii?q?9a23=3A5BQ6zRSQb9cDfP3T9UrmP/gE9dpsv+yvbD5Q0YIu?=
 =?us-ascii?q?jvd0So/mwa6zbBCN2/xhgRfzUJnB7Loc0qyK6v+mADRfqsfQ+Fk5M7V0Hycfjs?=
 =?us-ascii?q?sXmwFySOWkMmbcaMDQUiohAc5ZX0Vk9XzoeWJcGcL5ekGA6ibqtW1aFRrwLxd6?=
 =?us-ascii?q?KfroEYDOkcu3y/qy+5rOaAlUmTaxe7x/IAi0oAnLq8UanYlvJqk1xxbNv3BFZ/?=
 =?us-ascii?q?lYyWR0KFyJgh3y/N2w/Jlt8yRRv/Iu6ctNWrjkcqo7ULJVEi0oP3g668P3uxbD?=
 =?us-ascii?q?SxCP5mYHXWUNjhVIGQnF4wrkUZr3ryD3q/By2CiePc3xULA0RTGv5LplRRP0lC?=
 =?us-ascii?q?sKMSMy/WfKgcJyka1bugqsqRxhzYDJfIGbOvlwfqLBctwVXmdORNpdVy5bD4+g?=
 =?us-ascii?q?c4cDEewMNvtYoYnnoFsOqAOzCQerCuPozD9InWH50rMh0+g5DArIwRAgEMwQsH?=
 =?us-ascii?q?vKqtX+KbkfWv2xwKbG0DvPav1a0ir65YjTbhAuv++MUqx2ccbLzEkvEAXFjk6O?=
 =?us-ascii?q?poP7JDOYzf8CvHKF4Op7VeOvkHInpB90oji03Msjlo7JhocMx13C6C52z5o7K8?=
 =?us-ascii?q?eiR05nfd6rDoFQtyeCOoV4TM4vX2BltSQ7x7EYpJK2YisHxZQjyhPQZPGLboaG?=
 =?us-ascii?q?7xLsWuqMJTp1hnJodb2+ihqv70Wtzu7xW8qp3VpXoSRIlMTHuHMV1xHL98SLVu?=
 =?us-ascii?q?Fx80mj1DqVygze7u9JLVo1mKfaM5It36I8moAcvEnMBCP7nF/6gayUe0gi5+Om?=
 =?us-ascii?q?8f7oYq/8qZ+ZL4J0jwb+PbkwlcGnGuQ4NxQOX3Cc+eShyL3v5U35T6tOjv0xiq?=
 =?us-ascii?q?TZtpDaJcIBqa68GA9Y0YYu5wqjAzu7ytgYm2MIIEhedx2dkYfpIFHPIOvkDfih?=
 =?us-ascii?q?hlSsiy1nyOzBPr3kGpnNL37Dn6n9fbtl9kJQ1BA/wN5d6p5OF70MJPz+VlXwud?=
 =?us-ascii?q?HZFhM5Nha7w+fjCNVzzIMeXmePD7eCMKPOr1CI+PwgI++WaI8Qvzb9LeMl6ODw?=
 =?us-ascii?q?gn8iglISZrOm0oUMaHG4BfRmP1uWYX/3gtsbDWgKuQ8+QPTwiFKeST5Te2qyX6?=
 =?us-ascii?q?Uk6zA7D4KpEZvDRoe2jbyF3Se7BYFWZntcBlGMFnfna5mEW/AUaCKIJc9hkCIL?=
 =?us-ascii?q?WqS9S4M70hGurgD6mPJbKb+e6yoTqZXL0Nlu+/aVhBY56TtsFcOf3mqRCWZukS?=
 =?us-ascii?q?lAEy4x17x4iUh80UuYl7l/iOBfDcZU5f5CTkE9L5GKnMJgDNWnECfGeMyERU3i?=
 =?us-ascii?q?Cu66DC88SJoai58zWAc3U4G5kh3d0izsBrgTjLGGH7Q++6/HzmPtKsNmjX3B0f?=
 =?us-ascii?q?9y3BEdXsJTODj+1eZE/A/JCtuRng=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2D4BAAvNKRf/0LBJQpig3uBd4FAsXwLA?=
 =?us-ascii?q?QEBAQEBAQEBCAEvBAEBhlsmOBMSAQEGAgEBAQYEAYZSC4I3IoNNXgGBACYBBBu?=
 =?us-ascii?q?DH4F+syOFV4RvkE8+jnMikDKKTIMomX8HA4JtmwAroW2TTaBEAgQCBAUCFYFrg?=
 =?us-ascii?q?XpwhAkXAg2caIFDCY03gREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2D4BAAvNKRf/0LBJQpig3uBd4FAsXwLAQEBAQEBAQEBCAE?=
 =?us-ascii?q?vBAEBhlsmOBMSAQEGAgEBAQYEAYZSC4I3IoNNXgGBACYBBBuDH4F+syOFV4Rvk?=
 =?us-ascii?q?E8+jnMikDKKTIMomX8HA4JtmwAroW2TTaBEAgQCBAUCFYFrgXpwhAkXAg2caIF?=
 =?us-ascii?q?DCY03gREBAQ?=
X-IronPort-AV: E=Sophos;i="5.77,454,1596499200"; 
   d="scan'208,217";a="461246050"
X-IronPort-AV: E=Sophos;i="5.77,454,1596499200"; 
   d="scan'208,217";a="230352418"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: # yocto zeus -building a grub image
Thread-Topic: # yocto zeus -building a grub image
Thread-Index: Adazl2IcxeuLw6S3T4+nEKTzJ5E+0Q==
Date: Thu, 5 Nov 2020 17:16:22 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.1644AC938FD39C71.6372@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2c6e8d7de6d04432ac4152c1e426d3ebbaesystemscom_"

--_000_2c6e8d7de6d04432ac4152c1e426d3ebbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Can someone provide an answer on how to correct the following grub build is=
sue ?

I am attempting to build a grub image under zeus, and I am seeing the error=
 output below...

It appears that `./grub-core/verify.*' -do not appear to have been built un=
der the "./grub-core" build directory for zeus.

Under our "rocko" based build the verify.marker/verify.mod/verify.module ar=
e all present.

How do I generate the referenced modules ?

Thanks,
Steve

ERROR OUTPUT SEEN:

Initialising tasks: 100% |#################################################=
##########################################| Time: 0:00:04
Sstate summary: Wanted 2127 Found 2096 Missed 31 Current 0 (98% match, 0% c=
omplete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: grub-efi-2.04-r0 do_mkimage: Execution of '/disk0/scratch/smonsees/y=
octo/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64=
-poky-linux/grub-efi/2.04-r0/temp/run.do_mkimage.7707' failed with exit cod=
e 1:
/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cybero=
bjects/core /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/b=
uilds/sbcb-default
/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-d=
efault
grub-mkimage: error: cannot open `./grub-core/verify.mod': No such file or =
directory.
WARNING: /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/buil=
ds/sbcb-default/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/temp/run.do_=
mkimage.7707:1 exit 1 from 'grub-mkimage -c "/disk0/scratch/smonsees/yocto/=
workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky=
-linux/grub-efi/2.04-r0/image/ofp/proc4-initial.cfg" -p /ofp -k "/disk0/scr=
atch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cyberobjects/cor=
e/proc4.key" -d "./grub-core" -O "x86_64-efi" -C "auto" -o "/disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/corei7-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi" configfile echo efi=
net gcry_rsa loopback password_pbkdf2 reboot sleep tftp verify boot linux e=
xt2 fat serial part_msdos part_gpt normal efi_gop iso9660 configfile search=
 loadenv test chain efivar mok2verify password_pbkdf2'

ERROR: Logfile of failure stored in: /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/g=
rub-efi/2.04-r0/temp/log.do_mkimage.7707
Log data follows:
| DEBUG: Executing shell function do_mkimage
| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cybe=
robjects/core /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws=
/builds/sbcb-default
| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb=
-default
| grub-mkimage: error: cannot open `./grub-core/verify.mod': No such file o=
r directory.
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/bu=
ilds/sbcb-default/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/temp/run.d=
o_mkimage.7707:1 exit 1 from 'grub-mkimage -c "/disk0/scratch/smonsees/yoct=
o/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-po=
ky-linux/grub-efi/2.04-r0/image/ofp/proc4-initial.cfg" -p /ofp -k "/disk0/s=
cratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cyberobjects/c=
ore/proc4.key" -d "./grub-core" -O "x86_64-efi" -C "auto" -o "/disk0/scratc=
h/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/wo=
rk/corei7-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi" configfile echo e=
finet gcry_rsa loopback password_pbkdf2 reboot sleep tftp verify boot linux=
 ext2 fat serial part_msdos part_gpt normal efi_gop iso9660 configfile sear=
ch loadenv test chain efivar mok2verify password_pbkdf2'
| ERROR: Execution of '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/m=
eta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r=
0/temp/run.do_mkimage.7707' failed with exit code 1:
| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cybe=
robjects/core /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws=
/builds/sbcb-default
| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb=
-default
| grub-mkimage: error: cannot open `./grub-core/verify.mod': No such file o=
r directory.
| WARNING: /disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/bu=
ilds/sbcb-default/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/temp/run.d=
o_mkimage.7707:1 exit 1 from 'grub-mkimage -c "/disk0/scratch/smonsees/yoct=
o/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-po=
ky-linux/grub-efi/2.04-r0/image/ofp/proc4-initial.cfg" -p /ofp -k "/disk0/s=
cratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/cyberobjects/c=
ore/proc4.key" -d "./grub-core" -O "x86_64-efi" -C "auto" -o "/disk0/scratc=
h/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/wo=
rk/corei7-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi" configfile echo e=
finet gcry_rsa loopback password_pbkdf2 reboot sleep tftp verify boot linux=
 ext2 fat serial part_msdos part_gpt normal efi_gop iso9660 configfile sear=
ch loadenv test chain efivar mok2verify password_pbkdf2'
|
ERROR: Task (/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-bs=
p/grub/grub-efi_2.04.bb:do_mkimage) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5951 tasks of which 5421 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /disk0/scratch/smonsees/yocto/workspace_3/poky/meta/recipes-bsp/grub/grub=
-efi_2.04.bb:do_mkimage
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


--_000_2c6e8d7de6d04432ac4152c1e426d3ebbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{margin:0in;
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone provide an answer on how to correct the =
following grub build issue ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am attempting to build a grub image under zeus, an=
d I am seeing the error output below&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears that <b><span style=3D"color:red">`./grub=
-core/verify.*'</span></b> &#8211;do not appear to have been built under th=
e &#8220;./grub-core&#8221; build directory for zeus.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under our &#8220;rocko&#8221; based build the verify=
.marker/verify.mod/verify.module are all present.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How do I generate the referenced modules ?<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR OUTPUT SEEN:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
#################################################################| Time: 0:=
00:04<o:p></o:p></p>
<p class=3D"MsoNormal">Sstate summary: Wanted 2127 Found 2096 Missed 31 Cur=
rent 0 (98% match, 0% complete)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Setscene tasks completed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: grub-efi-2.04-r0 do_mkimage: Execution of '/d=
isk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/temp/run.do_mkimage.770=
7' failed with exit code 1:<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/m=
eta-limws/builds/cyberobjects/core /disk0/scratch/smonsees/yocto/workspace_=
3/meta-bae/meta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/m=
eta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"color:red">grub-mkimage: error: ca=
nnot open `./grub-core/verify.mod': No such file or directory.<o:p></o:p></=
span></b></p>
<p class=3D"MsoNormal">WARNING: /disk0/scratch/smonsees/yocto/workspace_3/m=
eta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/grub-e=
fi/2.04-r0/temp/run.do_mkimage.7707:1 exit 1 from 'grub-mkimage -c &quot;/d=
isk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-def=
ault/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/image/ofp/proc4-initial=
.cfg&quot;
 -p /ofp -k &quot;/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-l=
imws/builds/cyberobjects/core/proc4.key&quot; -d &quot;./grub-core&quot; -O=
 &quot;x86_64-efi&quot; -C &quot;auto&quot; -o &quot;/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7=
-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi&quot;
 configfile echo efinet gcry_rsa loopback password_pbkdf2 reboot sleep tftp=
 verify boot linux ext2 fat serial part_msdos part_gpt normal efi_gop iso96=
60 configfile search loadenv test chain efivar mok2verify password_pbkdf2'<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /disk0/scratch/=
smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work=
/corei7-64-poky-linux/grub-efi/2.04-r0/temp/log.do_mkimage.7707<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_mkimage<o:p></o=
:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/cyberobjects/core /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">| grub-mkimage: error: cannot open `./grub-core/veri=
fy.mod': No such file or directory.<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /disk0/scratch/smonsees/yocto/workspace_3=
/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/grub=
-efi/2.04-r0/temp/run.do_mkimage.7707:1 exit 1 from 'grub-mkimage -c &quot;=
/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-d=
efault/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/image/ofp/proc4-initi=
al.cfg&quot;
 -p /ofp -k &quot;/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-l=
imws/builds/cyberobjects/core/proc4.key&quot; -d &quot;./grub-core&quot; -O=
 &quot;x86_64-efi&quot; -C &quot;auto&quot; -o &quot;/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7=
-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi&quot;
 configfile echo efinet gcry_rsa loopback password_pbkdf2 reboot sleep tftp=
 verify boot linux ext2 fat serial part_msdos part_gpt normal efi_gop iso96=
60 configfile search loadenv test chain efivar mok2verify password_pbkdf2'<=
o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Execution of '/disk0/scratch/smonsees/yocto=
/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-pok=
y-linux/grub-efi/2.04-r0/temp/run.do_mkimage.7707' failed with exit code 1:=
<o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/cyberobjects/core /disk0/scratch/smonsees/yocto/workspac=
e_3/meta-bae/meta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">| /disk0/scratch/smonsees/yocto/workspace_3/meta-bae=
/meta-limws/builds/sbcb-default<o:p></o:p></p>
<p class=3D"MsoNormal">| grub-mkimage: error: cannot open `./grub-core/veri=
fy.mod': No such file or directory.<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /disk0/scratch/smonsees/yocto/workspace_3=
/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7-64-poky-linux/grub=
-efi/2.04-r0/temp/run.do_mkimage.7707:1 exit 1 from 'grub-mkimage -c &quot;=
/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-d=
efault/tmp/work/corei7-64-poky-linux/grub-efi/2.04-r0/image/ofp/proc4-initi=
al.cfg&quot;
 -p /ofp -k &quot;/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-l=
imws/builds/cyberobjects/core/proc4.key&quot; -d &quot;./grub-core&quot; -O=
 &quot;x86_64-efi&quot; -C &quot;auto&quot; -o &quot;/disk0/scratch/smonsee=
s/yocto/workspace_3/meta-bae/meta-limws/builds/sbcb-default/tmp/work/corei7=
-64-poky-linux/grub-efi/2.04-r0/build/proc4.efi&quot;
 configfile echo efinet gcry_rsa loopback password_pbkdf2 reboot sleep tftp=
 verify boot linux ext2 fat serial part_msdos part_gpt normal efi_gop iso96=
60 configfile search loadenv test chain efivar mok2verify password_pbkdf2'<=
o:p></o:p></p>
<p class=3D"MsoNormal">| <o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/disk0/scratch/smonsees/yocto/workspace=
_3/poky/meta/recipes-bsp/grub/grub-efi_2.04.bb:do_mkimage) failed with exit=
 code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 5951 tasks of which 5=
421 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /disk0/scratch/smonsees/yocto/workspace_3/pok=
y/meta/recipes-bsp/grub/grub-efi_2.04.bb:do_mkimage<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2c6e8d7de6d04432ac4152c1e426d3ebbaesystemscom_--
