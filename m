Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3635.1580246154914155046
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 13:15:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: hpe.com, ip: 140.211.169.56, mailfrom: prvs=0296a607ac=sean.mckay@hpe.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E5BBE015FA; Tue, 28 Jan 2020 13:15:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.147.86 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1469 seconds by postgrey-1.32 at yocto-www; Tue, 28 Jan 2020 13:15:51 PST
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 291FEE0078F
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 13:15:51 -0800 (PST)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 00SKi8ka005987
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 20:51:21 GMT
Received: from g4t3426.houston.hpe.com (g4t3426.houston.hpe.com [15.241.140.75])
	by mx0a-002e3701.pphosted.com with ESMTP id 2xtt4hs0ty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 20:51:21 +0000
Received: from G2W6309.americas.hpqcorp.net (g2w6309.austin.hp.com [16.197.64.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3426.houston.hpe.com (Postfix) with ESMTPS id 70DB64E
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 20:51:20 +0000 (UTC)
Received: from G9W8453.americas.hpqcorp.net (2002:10d8:a0d3::10d8:a0d3) by
 G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Tue, 28 Jan 2020 20:51:20 +0000
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (15.241.52.13) by
 G9W8453.americas.hpqcorp.net (16.216.160.211) with Microsoft SMTP Server
 (TLS) id 15.0.1367.3 via Frontend Transport; Tue, 28 Jan 2020 20:51:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NWZla+dzrxqu3MxYnjF0PmryvfdNoVj7tupdSXshZZdi4GeZzwBvzBi50KgEYLhxuaMT1d2DMf6Wpp5Aii+filBjpyBE1iGTFPzeWdTuolf2p1LMiPwv2ws50mFtds383+5mKfsF5VRLbhHGcz7kUOgDwFiGSrMGrXna7bNEIyybYkt9E5nRDWNQC7cXjIQqUa8h/FFbkoBHrh21yQTkHSAIFjYpu8qoGm8BD4bBkeXHP0mwbr68oQR64pMi9dXzGgePZjKo711KWp6XC1me+rIOfSFmLgE82ZSQxn00akxWfe5b/RfwoyhMDWgYGQfx5Zf3N+uqBRpnlhmfby6zLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RhYAtqElxrMNGS5BbWJ/lXHIQ9FA5ASp26K0JllNkwg=;
 b=PqN8nmMQwY0fiR9YGhmNep4BwqH8QPC8xD1HDu4ogQLWQdPWRSFTEA3yw7PGcBsMQpDMEKtBX3PksrGrPYcIKB6jW2LZQ2Ea+wwN9UWM6FesjgNz/u60sg7qXVVJz0v7yyJFbb+KQknImzXZv7acE0doPFQy/KzrYkvVt4X5Oez4sUC9sJu5+hNIHQUBOWIzDsZRWOyqS5IEH/dJlUwAzXpWlhO+munNjJv616z6KFXoKLJj7Hw78ZhJKRCvVVLPDX/w6WFcHsBt1WhJaSBndXm2xM5gTXMec6J0WDzDobNqdCNX2TpEyRgheA87AlbwJipFzNzH1oCid2svIkuxyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.19) by
 TU4PR8401MB0526.NAMPRD84.PROD.OUTLOOK.COM (10.169.42.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 20:51:19 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::544a:6ecf:77ab:adb]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::544a:6ecf:77ab:adb%4]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 20:51:18 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Help triaging git repo corruption caused by bb fetch
Thread-Topic: Help triaging git repo corruption caused by bb fetch
Thread-Index: AdXSKHwQV3nBHQ6KTseskkkX38zc5Q==
Date: Tue, 28 Jan 2020 20:51:18 +0000
Message-ID: <TU4PR8401MB11519C7386D28F00D6C6CC9A820A0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.211.195.13]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d5ffbec0-7e63-444a-e643-08d7a433d331
x-ms-traffictypediagnostic: TU4PR8401MB0526:
x-microsoft-antispam-prvs: <TU4PR8401MB0526278ED25C2C437C4B16BA820A0@TU4PR8401MB0526.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(55016002)(66476007)(7696005)(66946007)(81166006)(64756008)(76116006)(66446008)(8936002)(478600001)(81156014)(6916009)(86362001)(33656002)(52536014)(66556008)(5660300002)(2906002)(71200400001)(19627235002)(26005)(8676002)(9686003)(6506007)(316002)(186003);DIR:OUT;SFP:1102;SCL:1;SRVR:TU4PR8401MB0526;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5I2ypGqx75b55ApW69Odn7G6U2DiM6bQFEn37Vl47XIrT7e35+toek+UoOMaJkTVi2z/kvx0ST7EJfexTlovJId9QcyZbSUEJK9PPXP0XIgQkC2NSNrI95vceAH195dF6T5QkDiK7CjbHyoPmvfEPRFG2bY1WmBwDjiKj+nUGMggw4xtMfF/gjxMJ2/F4rWfZPWE1xTWk3EVU5xUd1xpGNVPmoodjUHd4n9sz4x+0n/Ka1QjErtWRhMhAXYWUmkNbuhETI0cClzR8Af30jGHuqgOr4tci1wwDRZ//obuzrXO91NJ2Cm0hDttFF7Ae2CmkW3Dum0BxVr71720dcNhL2himEfxgXa6Lyap8F7dupU3KWxLEorRT45URCyLbLInu8DpCPMkQqVf/gOSVisJk0plvgopLPavUDxIcm+d3vsXd43KCcylcPShMPthrFnq
x-ms-exchange-antispam-messagedata: i8dVxsFGjF5WRKiOhPPPG+vmkYn3yV5/fLwgLJnsAigA0/8otrBohtsccrjpdx5jN29v/6k1UZrzOqAaJ65RlXjSSojAtv92Z4jlWncA89IWn2T4sn+AMmzXbeRgtmsL81Z+kmmf3narWwAC0ZMCLw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d5ffbec0-7e63-444a-e643-08d7a433d331
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 20:51:18.8915
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AGND5Fdbwwe4TiIaGHYIxzE1dR5C2DMRpZv5eapMsWGLi4UCGCBuT3EXOtzvg7IYw1OAY99w8BangeIr1C0VxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0526
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-01-28_08:2020-01-28,2020-01-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 clxscore=1015 mlxscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1911200001 definitions=main-2001280154
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11519C7386D28F00D6C6CC9A820A0TU4PR8401MB1151_"

--_000_TU4PR8401MB11519C7386D28F00D6C6CC9A820A0TU4PR8401MB1151_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Short version:
We have an intermittent issue where under certain circumstances, a build th=
at fails on a fetch task may result in a corrupted parent repo. I'm wonderi=
ng if anyone has heard of anything like this before or has suggestions on w=
here to look through logs for potential culprits.

Long version (read the short version first):
Summary of what I know:

  *   We first started running into this a few years ago on krogoth (2.1).
  *   At the time, the team that (internally) owned poky did some investiga=
tion and put a patch into our copy of bitbake (see below) that seemed to ad=
dress the issue. As far as I know, they did not attempt to upstream the pat=
ch at the time the issue was found.
  *   As we're currently in the middle of upgrading to Warrior, we found th=
e patch and attempted to determine whether it was still relevant. After a w=
eek or so of attempts (which included talking to some of the engineers that=
 did the original triage), we concluded that we couldn't hit the issue and =
removed the patch.
  *   A few days ago while working on our poky upgrade branch, I hit the is=
sue again (once) while dealing with a proxy failure (the proxy was set inco=
rrectly, so all outside fetch jobs would fail)
  *   I have (as yet) been unable to reproduce the issue again. I cloned a =
new instance of our repo and wrote a quick script to rerun the commands tha=
t I attempted which originally resulted in the corruption. After a few days=
 and ~10k iterations, I concluded there's probably an external factor with =
the network connections and gave up attempting to reproduce it in that fash=
ion.
  *   The major symptoms are:
     *   All branches in the repo are gone. They've been replaced by the re=
fs for the branches that belong in the repo that bitbake was trying to fetc=
h
     *   Remotes from the repo being fetched have overwritten any remotes w=
ith matching names on the local repo (typically this is just origin)
     *   All the objects from the repo being fetched have been merged with =
the objects from the existing repo (both sets of object files exist in the =
.git directory)
  *   This is the patch that appears to have kept our users from encounteri=
ng this problem over the last few years
diff --git a/yocto/poky/bitbake/lib/bb/fetch2/git.py b/yocto/poky/bitbake/l=
ib/bb/fetch2/git.py
index 4de88f5ab91..457aae69420 100644
--- a/yocto/poky/bitbake/lib/bb/fetch2/git.py
+++ b/yocto/poky/bitbake/lib/bb/fetch2/git.py
@@ -186,9 +186,19 @@ class Git(FetchMethod):

         # If the checkout doesn't exist and the mirror tarball does, extra=
ct it
         if not os.path.exists(ud.clonedir) and os.path.exists(ud.fullmirro=
r):
+            original_path =3D os.getcwd()
             bb.utils.mkdirhier(ud.clonedir)
             os.chdir(ud.clonedir)
-            runfetchcmd("tar -xzf %s" % (ud.fullmirror), d)
+            try:
+                runfetchcmd("tar -xzf %s" % (ud.fullmirror), d)
+            except bb.fetch2.FetchError as e:
+                logger.debug(1, "Error while extracting tarball: %s" % e.m=
essage)
+                # If tar fails, then remove the clonedir directory as the
+                # extracted repo is not complete.
+                os.chdir(original_path)
+                bb.utils.remove(ud.clonedir, True)
+                raise bb.fetch2.FetchError(
+                    "Unable to extract %s into %s" % (ud.fullmirror, ud.cl=
onedir))

  *   As best I can figure, the above probably fixes our issue as a side ef=
fect, since none of that code is going to be messing with the refs in the r=
epo

Questions:

  *   I still have the broken repo saved. Are there suggestions for where I=
 might look in logs and ${TMPDIR} to figure out exactly what happened so I =
can better reproduce it?
  *   Does anyone know if there are others who have experienced similar iss=
ues? Perhaps the circumstances surrounding their issues could point us in t=
he right direction. Or mailing threads I should look at?

Thank you very much!
-Sean McKay

--_000_TU4PR8401MB11519C7386D28F00D6C6CC9A820A0TU4PR8401MB1151_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1153327180;
	mso-list-type:hybrid;
	mso-list-template-ids:-1255116234 1784559328 67698691 67698693 67698689 67=
698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">Short version:<o:p></o:p></p>
<p class=3D"MsoNormal">We have an intermittent issue where under certain ci=
rcumstances, a build that fails on a fetch task may result in a corrupted p=
arent repo. I&#8217;m wondering if anyone has heard of anything like this b=
efore or has suggestions on where to look
 through logs for potential culprits.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Long version (read the short version first):<o:p></o=
:p></p>
<p class=3D"MsoNormal">Summary of what I know:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">We first started running into this a few years ago on krogoth (2.1).<=
o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-=
list:l0 level1 lfo1">At the time, the team that (internally) owned poky did=
 some investigation and put a patch into our copy of bitbake (see below) th=
at seemed to address the issue. As far as I know, they
 did not attempt to upstream the patch at the time the issue was found.<o:p=
></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-lis=
t:l0 level1 lfo1">As we&#8217;re currently in the middle of upgrading to Wa=
rrior, we found the patch and attempted to determine whether it was still r=
elevant. After a week or so of attempts (which included
 talking to some of the engineers that did the original triage), we conclud=
ed that we couldn&#8217;t hit the issue and removed the patch.<o:p></o:p></=
li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 leve=
l1 lfo1">A few days ago while working on our poky upgrade branch, I hit the=
 issue again (once) while dealing with a proxy failure (the proxy was set i=
ncorrectly, so all outside fetch jobs would
 fail)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0=
in;mso-list:l0 level1 lfo1">I have (as yet) been unable to reproduce the is=
sue again. I cloned a new instance of our repo and wrote a quick script to =
rerun the commands that I attempted which originally resulted
 in the corruption. After a few days and ~10k iterations, I concluded there=
&#8217;s probably an external factor with the network connections and gave =
up attempting to reproduce it in that fashion.<o:p></o:p></li><li class=3D"=
MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo1">The maj=
or symptoms are:<o:p></o:p></li><ul style=3D"margin-top:0in" type=3D"circle=
">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level2 =
lfo1">All branches in the repo are gone. They&#8217;ve been replaced by the=
 refs for the branches that belong in the repo that bitbake was trying to f=
etch<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in=
;mso-list:l0 level2 lfo1">Remotes from the repo being fetched have overwrit=
ten any remotes with matching names on the local repo (typically this is ju=
st origin)<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-le=
ft:0in;mso-list:l0 level2 lfo1">All the objects from the repo being fetched=
 have been merged with the objects from the existing repo (both sets of obj=
ect files exist in the .git directory)<o:p></o:p></li></ul>
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">This is the patch that appears to have kept our users from encounteri=
ng this problem over the last few years<o:p></o:p></li></ul>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">diff --git a/yocto/poky/bitbake/lib/bb/fetch2/=
git.py b/yocto/poky/bitbake/lib/bb/fetch2/git.py<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">index 4de88f5ab91..457aae69420 100644<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">--- a/yocto/poky/bitbake/lib/bb/fetch2/git.py<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&#43;&#43; b/yocto/poky/bitbake/lib/bb/fe=
tch2/git.py<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">@@ -186,9 &#43;186,19 @@ class Git(FetchMethod=
):<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; # If the checkout doesn't exist and the mirror tarball does, extract it<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; if not os.path.exists(ud.clonedir) and os.path.exists(ud.fullmirror):<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;original_path =3D os.getcwd()<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.mkdirhier(ud.clonedir)<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; os.chdir(ud.clonedir)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; runfetchcmd(&quot;tar -xzf %s&quot; % (ud.fullmirror)=
, d)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; try:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; runfetchcmd(&quot;tar -xz=
f %s&quot; % (ud.fullmirror), d)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; except bb.fetch2.FetchError as e:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; logger.debug(1, &quot;Err=
or while extracting tarball: %s&quot; % e.message)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # If tar fails, then remo=
ve the clonedir directory as the<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # extracted repo is not c=
omplete.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.chdir(original_path)<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.utils.remove(ud.cloned=
ir, True)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise bb.fetch2.FetchErro=
r(<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in;text-indent:.5in"><span st=
yle=3D"font-family:Consolas">&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &=
quot;Unable to extract %s into %s&quot; % (ud.fullmirror, ud.clonedir))<o:p=
></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">As best I can figure, the above probably fixes our issue as a side ef=
fect, since none of that code is going to be messing with the refs in the r=
epo<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Questions:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">I still have the broken repo saved. Are there suggestions for where I=
 might look in logs and ${TMPDIR} to figure out exactly what happened so I =
can better reproduce it?<o:p></o:p></li><li class=3D"MsoListParagraph" styl=
e=3D"margin-left:0in;mso-list:l0 level1 lfo1">Does anyone know if there are=
 others who have experienced similar issues? Perhaps the circumstances surr=
ounding their issues could point us in the right direction. Or mailing thre=
ads
 I should look at?<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you very much!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_TU4PR8401MB11519C7386D28F00D6C6CC9A820A0TU4PR8401MB1151_--
