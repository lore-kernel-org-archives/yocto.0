Received: from JPN01-TY1-obe.outbound.protection.outlook.com (JPN01-TY1-obe.outbound.protection.outlook.com [40.107.140.101])
 by mx.groups.io with SMTP id smtpd.web09.8149.1610546127242637089
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 05:55:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denso-ten.com header.s=selector2 header.b=vf6rTlqZ;
 spf=pass (domain: denso-ten.com, ip: 40.107.140.101, mailfrom: yuvaraj.velumani@denso-ten.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aWWAmLPxZHdoWC47U+ciaH/j50/QlNcIQhIgfeMh9biJMPm1ylrHKdV9TfeaJhQTlA9ibwmRCrX0HqjrLttNG1YINte7p0gFkV4WylFhhiHTaiGunjVfPvoODkkSNmf1jotV92isAhzo9uWkBzWLagAJd2c1fw92eqwuYfeuUz7I6xczkYWdR+BHuC6WTN+Rds+PkNHeeH19001bmHVo/TMSWLdShKMyXU9MPh7Gi0H2urw1l/VaVwng5dXdFeW1PFi3hfAOVAVmyUP+s1rUydieQa5rMcScDCmDluZ55ONXeb4gcSo2Olouzj2kCcDUF3vrPETyylxSx/9DnCsZxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFw5SA0zTssn8NmQHoF5Tr0sm66NMEehay5F6k3AAhg=;
 b=jNQAV7DbwwRsmFdtn1LZmhv0mZkAyA6p9eBPVdQ3klI6kCB+JX1+JvR6jbV3jahRP5hXEzPxow9xPb8JUwuvI/GDLHaw6Nnw9jwqWC/CqlWg3KZwtT7I6UVzLcGWEPuuDF9Q5Kf9ch8JdoYjndhOKwdc29kRPUNnlbxpGG7xf6OA6lCwCHIUNZrCrm0jllsbjU/MJ30JKOhEWa9eFVyf14MXU/RSkjFu+9v0CmjeeZPvixVjrM3PjPsn7WxF55H2Oppgx9PMR89MLVL/3oLgYhop+LcGIeea334wcmqd265kb04aq8CJbP0Y97oRac2MEiABgROgzOAJP/VyqGgOiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=denso-ten.com; dmarc=pass action=none
 header.from=denso-ten.com; dkim=pass header.d=denso-ten.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denso-ten.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFw5SA0zTssn8NmQHoF5Tr0sm66NMEehay5F6k3AAhg=;
 b=vf6rTlqZCkpntaqutgGWg7WFo0b6Da/R1J664rn/p1tFnIX53c62HkdeLYVu49P8X9RctLHliryJj2rYoA7RrJ3ZlwJCAxziWkSJAD9UNKSc24fofitIajhVi/jMKvTKHkszjFmxFHN0gSZzAppsJf1DcokSLqy6mxkFopEhIB4=
Received: from OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:a5::14)
 by OSYP286MB0119.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:91::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.8; Wed, 13 Jan
 2021 13:55:24 +0000
Received: from OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM
 ([fe80::b867:a2a6:100a:b05f]) by OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM
 ([fe80::b867:a2a6:100a:b05f%5]) with mapi id 15.20.3763.010; Wed, 13 Jan 2021
 13:55:24 +0000
From: yuvaraj.velumani@denso-ten.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [Yocto] Bitbake's cached basehash does not match
Thread-Topic: [Yocto] Bitbake's cached basehash does not match
Thread-Index: AdbptB6rpyNtanliRp+b9HlWcQldMQ==
Date: Wed, 13 Jan 2021 13:55:24 +0000
Message-ID: 
 <OS0P286MB035588196A5EAD098D28D6F6D9A90@OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=denso-ten.com;
x-originating-ip: [2601:40d:8004:59e1:115f:fd45:c4de:af8e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42dff7de-5f31-4be1-6007-08d8b7cae018
x-ms-traffictypediagnostic: OSYP286MB0119:
x-microsoft-antispam-prvs: 
 <OSYP286MB011911F0674E46C335D8AC6BD9A90@OSYP286MB0119.JPNP286.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 7ypCPp78UmzeasPMEWJVOqKCoop0OC37HH4+WzEMNv1lfCaD+vAzE2VYKWIrawIH9hDwxEqKulh+/28YMIfD4LAkCMaTksOx7AfNn6fGTk/IIl+dxn0kg3KlzRL/e3wI3TUZ+kWE7LnaYVXoIYKyRQYXiQGoS/ZN07rD8TxuXIw5p/+WcjhdL7Q4Ba4uF7tP873e4nzbUzblD88qUVAYGTRTYnLb7ypwFsfkjtY2+RnOz+D68augtVcixGH6QYnyxK/pyeDtFVyAINIduDaSUpwZt7w5NssUdQwXNUi1x0nIYSB26nIQRg6fZksxX4lvvtq8AVDfobR3k0Z1audQeg+kpYF3Ss6M4cY88cfJU1v1GU8YN+Rd29wM5evAjhgPVi2Z2A1X+bgvluZjX0L57akZvL81S3Jdg3rqQgBsHKAgLyZ9x8DkKXdtnzVcXACl
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(346002)(366004)(396003)(376002)(39860400002)(33656002)(5660300002)(8936002)(8676002)(9326002)(64756008)(478600001)(6506007)(86362001)(6916009)(9686003)(55016002)(7696005)(71200400001)(66556008)(66476007)(2906002)(76116006)(52536014)(316002)(66446008)(186003)(66946007)(83380400001)(554374003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?us-ascii?Q?6pFk/XHI88oR3CY87V4cd8hRYvWnYZbElM76Mh9kcW+qUSaN+Py7I71CfIuK?=
 =?us-ascii?Q?5w0Q/IQRaDRhGsS607KhOU0E5WivJCeTzolhrApoA5aPWP6ICW+SdeTyrbR3?=
 =?us-ascii?Q?ZdMi4fSFZavOBy2WUhr38rYAX6g/597YgvbNWLQoSmzL5uCVabaVOZMMILdU?=
 =?us-ascii?Q?xcb3VVoCPbWGX/kb//du5SJpelwgip+5NdVNc3XDcAXFmalW8tr6R4x2unFf?=
 =?us-ascii?Q?Ut6wDY8MP6jjcFTQXHDIXf5Tf1TiciJFvuxKF5vPnhNJX4uld+hkfRF0lIX7?=
 =?us-ascii?Q?+puU7ZVnr6f8NsL29zQxOoOo2VL0EDrRdnwZHzgn3GWwGD5bK9s7KLJ25fxt?=
 =?us-ascii?Q?Clc1M/gXLC8lfOydv3ffwaOpiZVLGzpVtpUnPg9v6Brv+lfz7OZuI6wlV52l?=
 =?us-ascii?Q?UQsmPhdR+bl8wEfMvDlH0UBjEoOyKsEV+ntT6XBXxFqGUXYeIoQnM0S3euSq?=
 =?us-ascii?Q?Pt56p3v1pgDHSx8Z16zkAeJf7I4aRK6eNr2TgBT0wCOVqmeRohrwMrgdphpL?=
 =?us-ascii?Q?7JxGJGuwrV+Gy40tUjRjMB8di0QcbkF0YJt668fAYBaolSXheTdo/lgxQJqk?=
 =?us-ascii?Q?NtxzrJIy2FOyodSdNs+GZjxiA0Xr1cYWf4r8kotlZpGEe1U93BRM+Tlm7HEl?=
 =?us-ascii?Q?wgYQIWX2PX/utpu1SLnYdmHUGvAjDXh7bwnzvoPM/kEas2Y0tGOLIYbaku4F?=
 =?us-ascii?Q?V/nZ2W53avCuAvN7WVpfJa3xN8pMZumF3flHMDnVwtxyU1Uv9BDClajQtSls?=
 =?us-ascii?Q?rsmIbLXAUQhuroe3ahgU8sx5FWlbCICbbPa0NnVLjqV/EGvN6hp5+66vDeK+?=
 =?us-ascii?Q?si6z09Mjw6nQlh0QoOd6rpAGn5zSQyN/SY3LU8Wvb5ml0d0vyDKFKhjpjRij?=
 =?us-ascii?Q?Aa+ulXG9RsUmy/P/KGZKj/9BTpcW7fdSG26rCHk/mnN2l8Oasq0OU7Hxq8sV?=
 =?us-ascii?Q?aSgm6N+8rN8MzUQsRzgPDSGmPYn+1rw2pdChOafO0kkVymg365P6ltVZ4LKj?=
 =?us-ascii?Q?OSBZXywS0WZWtg+6rGPZ5ZtAyd4q8K0P8m9bQHA5joabbcA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: denso-ten.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0P286MB0355.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 42dff7de-5f31-4be1-6007-08d8b7cae018
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2021 13:55:24.3457
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 21b05a7e-884a-4d43-9466-158c2e291974
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0wacG2i1zrHXa2FL9gSF+v3tO5Pk82f6YNKfx7m7t/+UPlNDHd7bY0T78bNdevlMrL2fVhAJ23a0v+N3uKl8nI9wZlXgne6kewanWVT5j0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSYP286MB0119
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_OS0P286MB035588196A5EAD098D28D6F6D9A90OS0P286MB0355JPNP_"

--_000_OS0P286MB035588196A5EAD098D28D6F6D9A90OS0P286MB0355JPNP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am not quite sure why am I getting the below error message and how do I f=
ix it.

"ERROR: When reparsing /home/ota/qcombuild/8155_agl/apps/apps_proc/meta-flu=
tter/recipes-graphics/flutter-engine/flutter-engine_git.bb:do_patch, the ba=
sehash value changed from 1530cc970eeaed481afc4b0e34db2e2d05660b730efe2596b=
eb3669e11282467 to cf17c978d7ffc1da3406f5345b779730717dff7f671ca7bdaa25dbb6=
c77b3e72. The metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake flutter-engine -cdo_patch -Snone
ERROR: Then:
ERROR: $ bitbake flutter-engine -cdo_patch -Sprintdiff

ERROR: Bitbake's cached basehash does not match the one we just generated (=
/home/ota/qcombuild/8155_agl/apps/apps_proc/meta-flutter/recipes-graphics/f=
lutter-engine/flutter-engine_git.bb:do_patch)!
ERROR: The mismatched hashes were 1530cc970eeaed481afc4b0e34db2e2d05660b730=
efe2596beb3669e11282467 and cf17c978d7ffc1da3406f5345b779730717dff7f671ca7b=
daa25dbb6c77b3e72
ERROR: Taskhash mismatch 5e73f226e97df142e82bb61aac71967b6e2f8a0e7e8203b62a=
90ececcda81012 versus 3e73b20fffb5291533f6ce0221399f71fb9b93d57e8a394694399=
0b718987625 for /home/ota/qcombuild/8155_agl/apps/apps_proc/meta-flutter/re=
cipes-graphics/flutter-engine/flutter-engine_git.bb:do_patch"

Any help would be highly appreciated.

Regards,
Raj

DENSO TEN AMERICA Limited(r) The information in this transmittal (including=
 attachments, if any) may be confidential, proprietary, legally privileged,=
 or subject to other restrictions and is meant only for the intended recipi=
ent(s)/addressee(s). Any review, use, disclosure, distribution, copying, or=
 storing of this transmittal is prohibited except by or on behalf of any of=
 the intended recipients. If you are not an intended recipient/addressee, a=
ny use of the transmittal and/or its contents, including, but not limited t=
o, dissemination, distribution or copying is strictly prohibited and may be=
 unlawful, and you must not take any action in reliance on it. If you recei=
ve this transmittal in error, please immediately notify the sender and dele=
te the original message, any copies of it from your computer system and any=
 hard copies that may have been generated. The company denies any liability=
 for damages resulting from the use of this transmittal by an unintended re=
cipient/addressee, including the recipient in error.

--_000_OS0P286MB035588196A5EAD098D28D6F6D9A90OS0P286MB0355JPNP_
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
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#222222;background:white">Hi,&nbsp;</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222">I am not qui=
te sure why am I getting the below error&nbsp;message and how do I fix it.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222">&quot;ERROR:=
 When reparsing /home/ota/qcombuild/8155_agl/apps/apps_proc/meta-flutter/re=
cipes-graphics/flutter-engine/flutter-engine_git.bb:do_patch,
 the basehash value changed from 1530cc970eeaed481afc4b0e34db2e2d05660b730e=
fe2596beb3669e11282467 to cf17c978d7ffc1da3406f5345b779730717dff7f671ca7bda=
a25dbb6c77b3e72. The metadata is not deterministic and this needs to be fix=
ed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#222222;background:white">ERROR: The following c=
ommands may help:</span><span style=3D"font-size:12.0pt;font-family:&quot;A=
rial&quot;,sans-serif;color:#222222"><br>
<span style=3D"background:white">ERROR: $ bitbake flutter-engine -cdo_patch=
 -Snone</span><br>
<span style=3D"background:white">ERROR: Then:</span><br>
<span style=3D"background:white">ERROR: $ bitbake flutter-engine -cdo_patch=
 -Sprintdiff</span><br>
<br>
<span style=3D"background:white">ERROR: Bitbake's cached basehash does not =
match the one we just generated (/home/ota/qcombuild/8155_agl/apps/apps_pro=
c/meta-flutter/recipes-graphics/flutter-engine/flutter-engine_git.bb:do_pat=
ch)!</span><br>
<span style=3D"background:white">ERROR: The mismatched hashes were 1530cc97=
0eeaed481afc4b0e34db2e2d05660b730efe2596beb3669e11282467 and cf17c978d7ffc1=
da3406f5345b779730717dff7f671ca7bdaa25dbb6c77b3e72</span><br>
<span style=3D"background:white">ERROR: Taskhash mismatch 5e73f226e97df142e=
82bb61aac71967b6e2f8a0e7e8203b62a90ececcda81012 versus 3e73b20fffb5291533f6=
ce0221399f71fb9b93d57e8a3946943990b718987625 for /home/ota/qcombuild/8155_a=
gl/apps/apps_proc/meta-flutter/recipes-graphics/flutter-engine/flutter-engi=
ne_git.bb:do_patch&quot;</span></span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222">Any help wou=
ld be highly appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222">Regards,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#222222">Raj<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
DENSO TEN AMERICA Limited&reg; The information in this transmittal (includi=
ng attachments, if any) may be confidential, proprietary, legally privilege=
d, or subject to other restrictions and is meant only for the intended reci=
pient(s)/addressee(s). Any review, use,
 disclosure, distribution, copying, or storing of this transmittal is prohi=
bited except by or on behalf of any of the intended recipients. If you are =
not an intended recipient/addressee, any use of the transmittal and/or its =
contents, including, but not limited
 to, dissemination, distribution or copying is strictly prohibited and may =
be unlawful, and you must not take any action in reliance on it. If you rec=
eive this transmittal in error, please immediately notify the sender and de=
lete the original message, any copies
 of it from your computer system and any hard copies that may have been gen=
erated. The company denies any liability for damages resulting from the use=
 of this transmittal by an unintended recipient/addressee, including the re=
cipient in error.
</body>
</html>

--_000_OS0P286MB035588196A5EAD098D28D6F6D9A90OS0P286MB0355JPNP_--
