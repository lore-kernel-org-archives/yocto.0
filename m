Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
 by mx.groups.io with SMTP id smtpd.web11.5648.1591152081916702159
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 19:41:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.147.86, mailfrom: prvs=04232c17df=sean.mckay@hpe.com)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0532dbk3014598
	for <yocto@lists.yoctoproject.org>; Wed, 3 Jun 2020 02:41:21 GMT
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com [15.241.140.78])
	by mx0a-002e3701.pphosted.com with ESMTP id 31e2pag6gn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 03 Jun 2020 02:41:21 +0000
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com [16.193.72.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3425.houston.hpe.com (Postfix) with ESMTPS id 6839DBE
	for <yocto@lists.yoctoproject.org>; Wed,  3 Jun 2020 02:41:20 +0000 (UTC)
Received: from G9W8670.americas.hpqcorp.net (16.220.49.29) by
 G1W8106.americas.hpqcorp.net (16.193.72.61) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 3 Jun 2020 02:41:20 +0000
Received: from G4W10205.americas.hpqcorp.net (2002:10cf:520f::10cf:520f) by
 G9W8670.americas.hpqcorp.net (2002:10dc:311d::10dc:311d) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 3 Jun 2020 02:41:19 +0000
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (15.241.52.10) by
 G4W10205.americas.hpqcorp.net (16.207.82.15) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 3 Jun 2020 02:41:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPW2WANFfMW1h2j+yujrr77aCrZVCJGI9QKLNlfgtfF1RbDfBzQ/XfrXnguU2RxJvbmXalYYVN2J7xskLOkBgFdNF983lbTDm0L/u9iGqxAGHJwUMWzYh+q/ASvlLko+0yUzH+70gXxEsjBMY4z1qKUPfzhiht9smRyvZNvGjXsPJM+Tg02kVBBupwsrMcMI8NjcrLdL6J3VfSoQJZ8BJIIj0t4vYgJVjN335IKwNQOtoyMR5bTZ44m44+Oh8gpYUex6jJrjDeojZTLhymqBccy7FMUnO4KbLVmeyMnkVPhvI6KShmSWZ7+8IIb0tU191sdHAL4Lr4y0oypUSx+vGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AEnR1EtY7tXE2XT9OIWUn4uEfJRgBVx0rektbWKveZY=;
 b=SY3eOqZQCJ/VPOuZltakgrrEH8QUpk9ABhRws68LW6zOnsH3XhA2zqrkko/0HHCX/7UpUmi1YeEfVl8byp5wIgmH7B+fLA3pdbDT5M9u7+28aSTgmFICbc7jAxTxC6tsHSTBKNAGj/BnMXwlokznFbcZtAYHD0My3J7yaBi9N81CzPGz0eOXVER5pZjNvtM/+DPlwBU8B3l6tkgoxP6/KBwkyH2jW40a5UWUg+ADpg/7DuRRSfPn8KQj2Xx71zUVsY7HKJ/LpLZJoBG4C+nH94dOHEKnEyt36mJEmO1XEm/WuJ8cDIe8nCn3EwmRUcS0sbVJbpeVwalQ8nMta8xNNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0861.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:770e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Wed, 3 Jun
 2020 02:41:18 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::61ee:4422:53f9:4e4e]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::61ee:4422:53f9:4e4e%11]) with mapi id 15.20.3045.018; Wed, 3 Jun 2020
 02:41:18 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Why does setting PATCHTOOL="git" result in do_patch trying to look at git hooks in the host repo?
Thread-Topic: Why does setting PATCHTOOL="git" result in do_patch trying to
 look at git hooks in the host repo?
Thread-Index: AdY5UGukMmfCk+BSQhaiVxo2bwCETA==
Date: Wed, 3 Jun 2020 02:41:18 +0000
Message-ID: <TU4PR8401MB1151EB65C9A27BF7DD21BCE782880@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=hpe.com;
x-originating-ip: [2601:204:cb03:2202:4512:d2ac:2eaa:3c63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 566521da-c1f5-4e32-0cdf-08d8076797e0
x-ms-traffictypediagnostic: TU4PR8401MB0861:
x-microsoft-antispam-prvs: <TU4PR8401MB0861800749C2AD609132B69F82880@TU4PR8401MB0861.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:854;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jJ/oRxPiDj1mcQUxeP6oyQGVmVXjsbfWu/smRdXPO4qsWI3xVbgz4UCIHzdc3/TswP346/FgoS72hVC31X5YBjWwVm1pgY58IjytjcKBM1VIsVqGMKKbXB0dgJWuJUP0eCX5bbc/KI8o5XBqe6g4fmcShAbNXshHqxym/2nAKdqd0dRTirvCeMj0f6WwhMX3AnCyKHuklmQj4kITEyWrI2TlMDTW1CbIMJFTeSeAvR+GKGTdexVbErBTgpcR5mGnK3ccUCWfW/IkIQXlk8OovpGwJXAmacr0rljNwZuZ19nP9EpVTyUietkUSQRhklzn92ajT/qgAMF0cKJMQb2QCQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(376002)(39850400004)(366004)(346002)(396003)(136003)(76116006)(66446008)(66946007)(64756008)(9686003)(316002)(66556008)(66476007)(186003)(86362001)(55016002)(6506007)(478600001)(6916009)(2906002)(33656002)(8676002)(71200400001)(8936002)(5660300002)(7696005)(83380400001)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: kUSWmmby/zzLd0wOhbOyYxmqITXEl644P+u6MqKm583frfumKSVJRDklLKi2FvNbG5dwO8Q37MrIPaohgqL9OYQactTbmH2moR5cpHs3J7bKapzr3qU62U9fYh/qbEYBBV4crKHnJIcbfxM8wibhGRHW44dlkhi111F4Lunu2pt4eRHUT0a2HD8nPURQvy35VhlFN/KAlIHFW1Gg6rLy9kt4ViRSGaTPpNb9po1f4k+Mq9VTo7gyrSeFqyPPUAP40wx1BBFu5Grm9xU6FtSUU6mdnNOYTMmeHMvbFCvgXqhsBZpulXoR1oryi/d+dzRWCdx6JzuY8t4PtDT64QhdjQnC1TYbkkIB3o6ExoAedTEuqf/MTASXNnXEen2klppeidRD3IN5S+1DQ8Yaeged9rtnyhsfK/blDvYSJp8nW2TivIDu+2hYO24VfXJtevKAQJHvSVQaeypd6tq5qIdLHpGlIpOice5QtRmMF6Isw7s3voDWO7DCdvxWiHxly6Hpi2c0rtp1I0iYm4qNi0KNB4MPz0uSezk/IZoGH6UXYqtqu+aN9UzzCQkgwKI3+t2d
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 566521da-c1f5-4e32-0cdf-08d8076797e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 02:41:18.2054
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DIe23vD1GOx+13PbAD2N0MDQCTW/kLbstWgD2ZnaGHW6u+2MiKAtGq0KNvy4TL+Ggf5Q5g723sNiTzrJqUlUTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0861
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-02_15:2020-06-02,2020-06-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 phishscore=0 mlxlogscore=999 cotscore=-2147483648 bulkscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006030019
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB1151EB65C9A27BF7DD21BCE782880TU4PR8401MB1151_"

--_000_TU4PR8401MB1151EB65C9A27BF7DD21BCE782880TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_TU4PR8401MB1151EB65C9A27BF7DD21BCE782880TU4PR8401MB1151_
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

--_000_TU4PR8401MB1151EB65C9A27BF7DD21BCE782880TU4PR8401MB1151_--
