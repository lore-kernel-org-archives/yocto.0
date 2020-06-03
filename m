Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
 by mx.groups.io with SMTP id smtpd.web11.2571.1591209887914795429
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 11:44:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.147.86, mailfrom: prvs=04232c17df=sean.mckay@hpe.com)
Received: from pps.filterd (m0150242.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 053IiDfd001891
	for <yocto@lists.yoctoproject.org>; Wed, 3 Jun 2020 18:44:47 GMT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com [15.241.140.78])
	by mx0a-002e3701.pphosted.com with ESMTP id 31efst8s90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 18:44:47 +0000
Received: from G4W9120.americas.hpqcorp.net (g4w9120.houston.hp.com [16.210.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3425.houston.hpe.com (Postfix) with ESMTPS id 8A492A9
	for <yocto@lists.yoctoproject.org>; Wed,  3 Jun 2020 18:44:46 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) by
 G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 3 Jun 2020 18:44:46 +0000
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (15.241.52.11) by
 G2W6309.americas.hpqcorp.net (16.197.64.51) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 3 Jun 2020 18:44:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YO59VJugNKxkdKZ8WSKuPnyCQGnmIzUq/UX+1wVdaUE1ySEmFrGm5DuGW1lpGKZ+ONoYGRPd2DMcqii00btfqFgY7ShEMXC/adk2SUY7I9NaDZZEb2DTtnsfVd/GKai4vvtEM1Vkz7zXk/i8FMOQERA+0EL4t5kH/tCUs92ptGatH4GaR/hkmf32F7BoJqq3v9NkJQ6Y31Rvo3gazSIGyunaRPaIni6e0WthJs3WWp4LR8KYcKimX/s5/Uvxy7Pq1SB/tnkhBm3d436gQFmMhmizSQZdnQYhKnDbSBtr0UjinkdJxVcck+I68owjRGOHrgTjwHxji5k5+DVEbUjoVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5h7uG+u5CJGWw0LkSX+MCrVYscelbNljKAXOWBFjLnU=;
 b=XlIiEpdquxdILdA8qL5IZnXjE+axnLzDcmzLHah9rEF4xB8Df2bKzNiAvffvxTqcMJPnDDgY6h0CLVOa22Gs8wd1A1bLOmXS2PqWhQ5GjDiEfJoEbJxCF82IwQe9VEI1PptxCHJCHcp6TGMnrYGgDhGHga1/A/DrbxGWsguUO2JenAsK9Km5o7+vP1whkzgvNiy0rz8CnbQbbU0wR5576cKjzYcfsqeQ+0PpqF4YR0WB5Zf6gQMOkKwijMI2MI8ijqJoYogkts+SMVpMOJuMAFTJzmNimuhwBP6kQXK2rNePyPgWvwkArlws7/FyE4vGjtiUZbq5NGeQH0Kb3ieu2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760a::15) by DF4PR8401MB0411.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 18:44:45 +0000
Received: from DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e8f3:b8f9:2cfe:75bd]) by DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::e8f3:b8f9:2cfe:75bd%10]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 18:44:44 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "McKay, Sean" <sean.mckay@hpe.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: Why does setting PATCHTOOL="git" result in do_patch trying to look at git hooks in the host repo?
Thread-Topic: Why does setting PATCHTOOL="git" result in do_patch trying to
 look at git hooks in the host repo?
Thread-Index: AdY5UGukMmfCk+BSQhaiVxo2bwCETAAhmR/A
Date: Wed, 3 Jun 2020 18:44:44 +0000
Message-ID: <DF4PR8401MB11475C589E6569E9EA724AF082880@DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM>
References: <1614E8638286601C.21938@lists.yoctoproject.org>
In-Reply-To: <1614E8638286601C.21938@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: hpe.com; dkim=none (message not signed)
 header.d=none;hpe.com; dmarc=none action=none header.from=hpe.com;
x-originating-ip: [73.220.75.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 69b62f47-953c-41dd-75ba-08d807ee2f47
x-ms-traffictypediagnostic: DF4PR8401MB0411:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DF4PR8401MB0411CDF9E16EB2801E7EC58282880@DF4PR8401MB0411.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:182;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HsXaOCStNaV1PbQpbWsw27HhIiZySTq8fVLoeq1cXtslQMiX+DWm9KSUu0/5ShvXvOV+g+k+e7VZ9xjWadG26d0NLdghvd0M5LJBLyaTzl4eorCg6TZb33pDN9oSyZw9KeZDOnCEiAKAB3b5wtuE21crTTOn1G0J7J23XAoMrE9/DgYi94Tg7icwoGIwGkxUBK+j9/GbX/cfqwasWzMDgXfA7wZz5SxN3nPOmjN2QflL42N7k2aZEg8DztkqJVzWZ+tnlK1jRhOQlUdU79y03XAJOIL6yq1y2srGu5mQZMmAn9D8jU/Hwc884aX5MrCYnalL01/xkSrIxHqaYVnHVg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DF4PR8401MB1147.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(376002)(136003)(346002)(396003)(39860400002)(366004)(478600001)(86362001)(52536014)(9686003)(66446008)(66946007)(66476007)(64756008)(2906002)(33656002)(71200400001)(55016002)(66556008)(76116006)(6506007)(110136005)(7696005)(5660300002)(186003)(26005)(8676002)(83380400001)(316002)(53546011)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: z7/fh9XyJWL+2jVw7QwHPrjAbJLNueTZ0smJxyZSAI1dwmSt/KJH+xAoaYeh9ZrXUKjCmTjWzpGdaIbCiNh+St1JPZpj70zzxIX7F0JHd1Q7BUP7K//o/d7a9DnUumpsMVK/RnCu7+H+9UW9RJ95O5Sop9wTJ6c7f7JuVToUiqG0w5CT1F61dnv4oDlG/WWvcJXSKfMH6kzltTKRSRL2dh252WvxtoWMYdZ0XVItZYCwShYnwG818E/68IeBVL9fDBrxG2je3z0AJMZCq4uhxdHxGvo9UrlBWPAuMU9UnBlJsmeUoQkZcFNYZCH2c/Hl1RAQCIpcXs+4BO/RH4r4w3ETAZ0y/KVNK897VGZyV4cVJ99axR/o4CFAEPqE8A26qQeFh8aGIwLM1kmOuwYZx1XCjZyVl5Jki3YMvzSQO9yg1Y7BYojVvhm2+8s/ZpznnMgegjhvR2mm+SdT6lFCGXDX+DdwYMCK3erAZffc//c=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 69b62f47-953c-41dd-75ba-08d807ee2f47
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 18:44:44.8349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qk0DbCKJQT3AtpvQc2QxqX7OBPPy7Ttj+ijxJmE5hONn+gE6KGRqkMpAaBO2AUFP5rCIS/saa2wz81GuaDm4SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB0411
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-03_13:2020-06-02,2020-06-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 suspectscore=0 cotscore=-2147483648 impostorscore=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 malwarescore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006030144
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DF4PR8401MB11475C589E6569E9EA724AF082880DF4PR8401MB1147_"

--_000_DF4PR8401MB11475C589E6569E9EA724AF082880DF4PR8401MB1147_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I retract my question and apologize for being an idiot...
Apparently somewhere along the line while I wasn't paying attention, the en=
tirety of that upstream git repo got pulled into our local codebase, so I w=
as trying to use git patching on a directory fetched with file://

Sigh... time to go fix it. At least it makes sense.

Cheers!
-Sean

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Sean McKay
Sent: Tuesday, June 2, 2020 7:41 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] Why does setting PATCHTOOL=3D"git" result in do_patch tryi=
ng to look at git hooks in the host repo?

Hi all,

I have a component in our build that's pulling from an upstream git server,=
 so I decided to set the PATCHTOOL=3D"git" so that it's easier to determine=
 in the local repository what patches have been applied (since using the gi=
t PATCHTOOL results in full commits, whereas quilt just makes a mess and ev=
erything goes into the child git repo as a giant unstaged change).

However, in testing, I'm hitting this failure if I'm building in a git work=
tree:
*** 0505:        os.mkdir(hooks_dir)
     0506:        commithook =3D os.path.join(hooks_dir, 'commit-msg')
     0507:        applyhook =3D os.path.join(hooks_dir, 'applypatch-msg')
     0508:        with open(commithook, 'w') as f:
     0509:            # NOTE: the formatting here is significant; if you ch=
ange it you'll also need to
Exception: NotADirectoryError: [Errno 20] Not a directory: '/ws/mckays/zeus=
-test/.git/hooks'

Now, to be fair, it's quite correct - that isn't a directory, since that's =
not how git worktrees operate.
I can probably come up with a patch to submit upstream to correct this beha=
vior, but I can't fathom why the patcher should logically be trying to do a=
nything with the parent git repo for any reason. And I can solve this for g=
it worktrees, but what if someone just has a tarball and isn't trying to bu=
ild inside git at all - wouldn't they hit the same failure?

I'd appreciate any clarity you can provide. Thanks!!!

-Sean


Full stack trace:
The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
    0001:
*** 0002:patch_do_patch(d)
     0003:
File: '/ws/mckays/zeus-test/yocto/poky/meta/classes/patch.bbclass', lineno:=
 145, function: patch_do_patch
     0141:        except Exception as exc:
     0142:            bb.utils.remove(process_tmpdir, True)
     0143:            bb.fatal(str(exc))
     0144:        try:
*** 0145:            resolver.Resolve()
     0146:        except bb.BBHandledException as e:
     0147:            bb.utils.remove(process_tmpdir, True)
     0148:            bb.fatal(str(e))
     0149:
File: '/ws/mckays/zeus-test/yocto/poky/meta/lib/oe/patch.py', lineno: 716, =
function: Resolve
     0712:    def Resolve(self):
     0713:        olddir =3D os.path.abspath(os.curdir)
     0714:        os.chdir(self.patchset.dir)
     0715:        try:
*** 0716:            self.patchset.Push()
     0717:        except Exception:
     0718:            import sys
     0719:            os.chdir(olddir)
     0720:            raise
File: '/ws/mckays/zeus-test/yocto/poky/meta/lib/oe/patch.py', lineno: 267, =
function: Push
     0263:            else:
     0264:                next =3D 0
     0265:
     0266:            bb.note("applying patch %s" % self.patches[next])
*** 0267:            ret =3D self._applypatch(self.patches[next], force)
     0268:
     0269:            self._current =3D next
     0270:            return ret
     0271:
File: '/ws/mckays/zeus-test/yocto/poky/meta/lib/oe/patch.py', lineno: 505, =
function: _applypatch
     0501:        if os.path.lexists(hooks_dir_backup):
     0502:            raise Exception("Git hooks backup directory already e=
xists: %s" % hooks_dir_backup)
     0503:        if os.path.lexists(hooks_dir):
     0504:            shutil.move(hooks_dir, hooks_dir_backup)
*** 0505:        os.mkdir(hooks_dir)
     0506:        commithook =3D os.path.join(hooks_dir, 'commit-msg')
     0507:        applyhook =3D os.path.join(hooks_dir, 'applypatch-msg')
     0508:        with open(commithook, 'w') as f:
     0509:            # NOTE: the formatting here is significant; if you ch=
ange it you'll also need to
Exception: NotADirectoryError: [Errno 20] Not a directory: '/ws/mckays/zeus=
-test/.git/hooks'


--_000_DF4PR8401MB11475C589E6569E9EA724AF082880DF4PR8401MB1147_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">I retract my question and apologize for being an idi=
ot&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">Apparently somewhere along the line while I wasn&#82=
17;t paying attention, the entirety of that upstream git repo got pulled in=
to our local codebase, so I was trying to use git patching on a directory f=
etched with file://<br>
<br>
Sigh... time to go fix it. At least it makes sense.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Sean McKay<br>
<b>Sent:</b> Tuesday, June 2, 2020 7:41 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] Why does setting PATCHTOOL=3D&quot;git&quot; result=
 in do_patch trying to look at git hooks in the host repo?<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a component in our build that&#8217;s pulling=
 from an upstream git server, so I decided to set the PATCHTOOL=3D&#8221;gi=
t&#8221; so that it&#8217;s easier to determine in the local repository wha=
t patches have been applied (since using the git PATCHTOOL results
 in full commits, whereas quilt just makes a mess and everything goes into =
the child git repo as a giant unstaged change).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, in testing, I&#8217;m hitting this failure =
if I&#8217;m building in a git worktree:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0505: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;os.mkdir(hooks_dir)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0506:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; commithook =3D os.path.join(hooks_dir, 'commit-ms=
g')<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0507:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; applyhook =3D os.path.join(hooks_dir, 'applypatch=
-msg')<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0508:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; with open(commithook, 'w') as f:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0509:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # NOTE: the formatting he=
re is significant; if you change it you'll also need to<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">Exception: NotADirectoryError: [Errno 20] Not a=
 directory: '/ws/mckays/zeus-test/.git/hooks'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-famil=
y:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Now, to be fair, it&#8217;s quite correct &#8211; th=
at isn&#8217;t a directory, since that&#8217;s not how git worktrees operat=
e.<o:p></o:p></p>
<p class=3D"MsoNormal">I can probably come up with a patch to submit upstre=
am to correct this behavior, but I can&#8217;t fathom why the patcher shoul=
d
<i>logically</i> be trying to do anything with the <i>parent</i> git repo f=
or <i>
any</i> reason. And I can solve this for git worktrees, but what if someone=
 just has a tarball and isn&#8217;t trying to build inside git at all &#821=
1; wouldn&#8217;t they hit the same failure?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;d appreciate any clarity you can provide. Th=
anks!!!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Sean<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Full stack trace:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">The stack trace of python calls that resulted i=
n this exception/failure was:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">File: 'exec_python_func() autogenerated', linen=
o: 2, function: &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp;0001:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0002:patch_do_patch(d)<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0003:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">File: '/ws/mckays/zeus-test/yocto/poky/meta/cla=
sses/patch.bbclass', lineno: 145, function: patch_do_patch<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0141:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; except Exception as exc:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0142:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.remove(process_t=
mpdir, True)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0143:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.fatal(str(exc))<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0144:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; try:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0145:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; resolver.Resolve()<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0146:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; except bb.BBHandledException as e:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0147:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.remove(process_t=
mpdir, True)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0148:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.fatal(str(e))<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0149:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">File: '/ws/mckays/zeus-test/yocto/poky/meta/lib=
/oe/patch.py', lineno: 716, function: Resolve<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0712:&nbsp;&nbsp;&nbsp=
; def Resolve(self):<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0713:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; olddir =3D os.path.abspath(os.curdir)<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0714:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; os.chdir(self.patchset.dir)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0715:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; try:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0716:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; self.patchset.Push()<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0717:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; except Exception:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0718:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; import sys<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0719:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.chdir(olddir)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0720:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">File: '/ws/mckays/zeus-test/yocto/poky/meta/lib=
/oe/patch.py', lineno: 267, function: Push<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0263:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0264:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; n=
ext =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0265:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0266:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.note(&quot;applying pa=
tch %s&quot; % self.patches[next])<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0267:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D self._applypatch(self.patches[next], f=
orce)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0268:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0269:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._current =3D next<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0270:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0271:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">File: '/ws/mckays/zeus-test/yocto/poky/meta/lib=
/oe/patch.py', lineno: 505, function: _applypatch<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0501:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if os.path.lexists(hooks_dir_backup):<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0502:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise Exception(&quot;Git=
 hooks backup directory already exists: %s&quot; % hooks_dir_backup)<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0503:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; if os.path.lexists(hooks_dir):<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0504:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;shutil.move(hooks_dir, ho=
oks_dir_backup)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">*** 0505:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; os.mkdir(hooks_dir)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0506:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; commithook =3D os.path.join(hooks_dir, 'commit-ms=
g')<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0507:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; applyhook =3D os.path.join(hooks_dir, 'applypatch=
-msg')<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0508:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; with open(commithook, 'w') as f:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp; 0509:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # NOTE: the formatting he=
re is significant; if you change it you'll also need to<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas">Exception: NotADirectoryError: [Errno 20] Not a=
 directory: '/ws/mckays/zeus-test/.git/hooks'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
8.0pt;font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DF4PR8401MB11475C589E6569E9EA724AF082880DF4PR8401MB1147_--
