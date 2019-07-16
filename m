Return-Path: <jeffrey.siegel@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05E3BE00D6B; Tue, 16 Jul 2019 09:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.2.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20129.outbound.protection.outlook.com [40.107.2.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC257E00D63
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 09:44:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=mcqP8Jx/b9fdvjcds10hH/yX3jDRZYzfTFccixpQsDOAvTSr6Ebco2r2DOMEiSDz7o8PwQB9wGzqf3XzzNveanwMnDlAB7p61UQ8FEgqMkVGfykcVp7NCgCDTfaAZ6TOs1fNqE0fs4lbaJW8gUJzqal0Qg0VHJXaRi0cg30JTPNctCiUg0VqOpGHjJh4AWWfUKQfcbb9hjXdxaqaVBsoNHE+Y32k1AEQzo2T35Hx110a7K0vuf2fr39nj0SIX+NJGb56FjLp3BbPiihUZILPsspEK+7yAEvtLHgQdJoYEd+I35ALZWrwHzUd5hOhZoneLvxe2/N7Lj4A1OIGwYArlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=qDy/b7h212IWd5eutDaIN2gGNBa2Z6zWh1J9wDeLBXQ=;
	b=MQ++mpJPPx5X+WzG2mCfa30xaO7lymdQTBDj55V/Zbn0WxYbbKdpvhABWAnGSA6uc7HYCFDLmKCusUclgmFMOrTXR54QNj8EIzAuvNhXO+F1vjKudv+2CYuzT0estWqGCGnGtavXLQgWWUognSbpVcLvny4FnNdhy4M//GlTA13pxNreeN17GG4iAXnG1OJwYnS3Dfegmed6QyCOxcnDACZWf8VUQlogBL7FEjtg2+kouGVVE7vpY6E4dXAaCn+uUnOwnkSYILmY0pzXjrU1VmBr89jW7uWMN6zQqmhsI4u8cQIJtU+itU3oo8A06H2s2RcZ0ipEC4yBeGiLDsbM3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=nokia.com;dmarc=pass action=none
	header.from=nokia.com;dkim=pass header.d=nokia.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=qDy/b7h212IWd5eutDaIN2gGNBa2Z6zWh1J9wDeLBXQ=;
	b=IPxTsPOj7V6SBWZYn9LYCoOolKG0clJBU1vCGtzef/Y/lx/nbosqZoj6fOoZ/6omkjdg48VNo9R+QIvbeUmGVALw//v5MnOBpaJwJ6OrlKV6exnUO0Snh/p7MBuhrHsSv1eyBLk2bIhAc3ujgAWLc2pBNkeq1aJCVS6PJaoKgM8=
Received: from DB7PR07MB3868.eurprd07.prod.outlook.com (52.134.96.151) by
	DB7PR07MB5096.eurprd07.prod.outlook.com (20.177.194.213) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.6; Tue, 16 Jul 2019 16:44:03 +0000
Received: from DB7PR07MB3868.eurprd07.prod.outlook.com
	([fe80::28be:481:544c:d163]) by DB7PR07MB3868.eurprd07.prod.outlook.com
	([fe80::28be:481:544c:d163%6]) with mapi id 15.20.2094.009;
	Tue, 16 Jul 2019 16:44:03 +0000
From: "Siegel, Jeffrey (Nokia - US/Murray Hill)" <jeffrey.siegel@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Patching a file in $WORKDIR
Thread-Index: AdU79JIhVFWSJI/zROiORfF4+b2aPw==
Date: Tue, 16 Jul 2019 16:44:02 +0000
Message-ID: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jeffrey.siegel@nokia.com; 
x-originating-ip: [135.245.20.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3de6dde-7d32-41d7-fbb9-08d70a0ccf63
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:DB7PR07MB5096; 
x-ms-traffictypediagnostic: DB7PR07MB5096:
x-microsoft-antispam-prvs: <DB7PR07MB5096479B595433EB357BF7A889CE0@DB7PR07MB5096.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(376002)(136003)(366004)(396003)(346002)(39860400002)(199004)(189003)(8676002)(9686003)(99286004)(6306002)(81166006)(9326002)(81156014)(54896002)(8936002)(55016002)(53936002)(74316002)(6436002)(2351001)(486006)(1730700003)(7736002)(2906002)(68736007)(256004)(14454004)(5640700003)(64756008)(478600001)(66476007)(52536014)(476003)(71190400001)(71200400001)(2501003)(66556008)(66446008)(316002)(4744005)(76116006)(33656002)(66946007)(5660300002)(6506007)(3846002)(6116002)(86362001)(25786009)(186003)(102836004)(26005)(7696005)(790700001)(66066001)(6916009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR07MB5096;
	H:DB7PR07MB3868.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gnOEi7ASm7F+vrSWTL9hSFgn0Je/Z5lJfccgXsnGPmrm5Oqq477HoNcYcUD+V0MSX87VD234kmu4m0dGF/ablaLE5TmvDV83yFAFIZ3dzIx4acZEeoUU9cNs4IVhtyTb5FLdakUVvk4EcKnfDjmbtje57K1DTYrbG8XXUPdiez1Zw2mN8asVHZ5kvusz7v2UEAOXtnTpbDVGYLbPoaVlTs/iRWtoBi8ro/920QWbLhT89HcLuLH1fDhFPysS9hgLH2HJUQzqBESzPIPnQat7Hu5jXpD5qEgegu2ow/OjubKhv1rq8gy2Zn85IM+6ZOhyvSzBGj1JsAr3s6LODmbT0/VYi1UIvOU+ztTyCrEMe5DNUVpZk2DwIT+CUEhSwxf7Pg/1cn0WXytatpGbS4To97azL9rUAZzRcc2ejnGeZx8=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3de6dde-7d32-41d7-fbb9-08d70a0ccf63
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 16:44:02.7948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jeffrey.siegel@nokia.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB5096
Subject: Patching a file in $WORKDIR
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jul 2019 16:44:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB7PR07MB386841A804D548629B676B8F89CE0DB7PR07MB3868eurp_"

--_000_DB7PR07MB386841A804D548629B676B8F89CE0DB7PR07MB3868eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to use a bbappend file to patch a file in $WORKDIR. To my under=
standing, the native Yocto patching process only works for patching files i=
n $S.
I have come up with a solution:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI_append =3D" file://inputrc.ptch"
do_patch_append () {
    cmd=3D"patch <inputrc.ptch"
    (exitstatus, output) =3D oe.utils.getstatusoutput(cmd)
    if exitstatus !=3D 0:
       raise bb.process.CmdError(cmd, output)
    return output
}

It does work. But I think this is line is not very elegant: cmd=3D"patch <i=
nputrc.ptch". Using devshell, I have confirmed that the "patch" program bei=
ng executed is the one from the Yocto environment ($BUILDDIR/tmp-glibc/host=
tools), not the build host. But I still suspect there is a better way. Any =
suggestions?

Regards,
Jeff

--_000_DB7PR07MB386841A804D548629B676B8F89CE0DB7PR07MB3868eurp_
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to use a bbappend file to patch a file i=
n $WORKDIR. To my understanding, the native Yocto patching process only wor=
ks for patching files in $S.
<o:p></o:p></p>
<p class=3D"MsoNormal">I have come up with a solution:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI_append =3D&quot; file://inputrc.ptch&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal">do_patch_append () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; cmd=3D&quot;patch &lt;inputrc.ptc=
h&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; (exitstatus, output) =3D oe.utils=
.getstatusoutput(cmd)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; if exitstatus !=3D 0:<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise bb.proces=
s.CmdError(cmd, output)<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; return output<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It does work. But I think this is line is not very e=
legant: cmd=3D&quot;patch &lt;inputrc.ptch&quot;. Using devshell, I have co=
nfirmed that the &#8220;patch&#8221; program being executed is the one from=
 the Yocto environment ($BUILDDIR/tmp-glibc/hosttools), not the
 build host. But I still suspect there is a better way. Any suggestions?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_DB7PR07MB386841A804D548629B676B8F89CE0DB7PR07MB3868eurp_--
