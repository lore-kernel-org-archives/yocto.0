Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB51E00DC9; Mon,  9 Jul 2018 07:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.7.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 48278 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jul 2018 07:04:45 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007091.outbound.protection.outlook.com [40.92.7.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7116CE009B9
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 07:04:45 -0700 (PDT)
Received: from DM3NAM03HT229.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e49::445) by
	CO1NAM03HT230.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e48::383) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.930.16;
	Mon, 9 Jul 2018 05:32:33 +0000
Received: from BY2NAM03HT226.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e4a::178) by
	DM3NAM03HT229.eop-NAM03.prod.protection.outlook.com
	(2a01:111:e400:7e49::445) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.930.16;
	Mon, 9 Jul 2018 00:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Q5jZ/LA//hm40HSSKitQYBdw26wVhA+TN9/xQCREmb8=;
	b=Wxrr5h2WOsYlcgoBNbNE81tr61zINt9DzaXutXWYSMLeQxm9YvIODJPt2nF/H1fE2p9kw48G7JhWEXqKVvfdVV+DfAB2kXxY3v7JqHnz/eBxypHNOAHVKRxlxWbZ5ZNVnZ+zRAEks4VHC1XKs+kcqIjeuGvwBQum282eLy8t3GWTeQGV8TPYQjpnTp7SqjnsP6ltzeM7NvEuDLPaNDcnXzsLESRUywTLonrF/ZiAaumgt1vJrG8USckDkHgWg3R8LqkNWKrVoH6yOcvkNz7uzbL+dBYJnmllWh3DieR8xLZBhYb0Bp4TvktiE7tCZ/F6RFR4yiQ3YTXjRqswQ59fGw==
Received: from BY2NAM03FT046.eop-NAM03.prod.protection.outlook.com
	(10.152.84.53) by BY2NAM03HT226.eop-NAM03.prod.protection.outlook.com
	(10.152.84.178) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.930.16;
	Mon, 9 Jul 2018 00:32:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.84.51) by
	BY2NAM03FT046.mail.protection.outlook.com (10.152.85.84) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.930.16 via Frontend Transport; Mon, 9 Jul 2018 00:32:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.022;
	Mon, 9 Jul 2018 00:32:31 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] How to remove openssl from sysroots
Thread-Index: AQHUFXWajXIcjzfwuUSyRHt2ANT94aSEXDwAgAB9+OmAACAWAIABEGcagAAC6CI=
Date: Mon, 9 Jul 2018 00:32:31 +0000
Message-ID: <MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>,
	<MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:74A7B5DECA026E6893ACC25612CA6C91FE96E6C9237686658FF7C30A1D9F22C7;
	UpperCasedChecksum:B7C43F5DEBAA0283B1178CE8B6D813F763FAF899FD6F383259938BBE8D0569A2;
	SizeAsReceived:7589; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [v6NbUrdevi2XY1oGH6XZUyR2/Oa4BwQz]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BY2NAM03HT226;
	7:JMncgpvesE52b+bkLtehrJQNetLFwVwUzWjJeqVSiVagpPEgC7CjAJPTnjVfthAuqLdPL7ZV4hbV4VrIjlUNgzFs2d14n/W0Gua6DPzWKdAoIEgVW1cKIo6sDvTxheEWs/stzmVe6LTsxfc/iaeYo4X03hAahru4crd7pccN/x8w+z0r3g5eqlBKucRryqec0wlhWwa7aOPWUXeUTItdpZk8KLZx901bI6Bg3mxuWABxSRAYaJocYgDWjDBBwPDC
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125500)(1701031045);
	SRVR:BY2NAM03HT226; 
X-MS-TrafficTypeDiagnostic: BY2NAM03HT226:|BY2NAM03HT226:|DM3NAM03HT229:|DM3NAM03HT229:|CO1NAM03HT230:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(82015058);
	SRVR:BY2NAM03HT226; BCL:0; PCL:0; RULEID:; SRVR:BY2NAM03HT226; 
x-forefront-prvs: 07283408BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(979002)(189003)(199004)(83332001)(97736004)(81156014)(105586002)(8936002)(229853002)(104016004)(74316002)(6436002)(8676002)(86362001)(20460500001)(82202002)(87572001)(2900100001)(606006)(2940100002)(106356001)(6246003)(45080400002)(4326008)(33656002)(68736007)(14444005)(53386004)(93886005)(256004)(5660300001)(11346002)(486006)(476003)(26005)(25786009)(6916009)(446003)(19627405001)(76176011)(966005)(55016002)(54896002)(14454004)(53546011)(9686003)(236005)(6606003)(73972006)(7696005)(5250100002)(6506007)(99286004)(102836004)(6346003)(6306002)(15852004)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BY2NAM03HT226;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: UWl32k1jZLhiC2b89zOjzCaIGEUMXLPLgDJ33zAXfBjhSoYBGStaN3d29lgRpa92FevY/H97nxbD14eb3G35g5pqeRvOlVApTo5g/Af7jp7NERQK7qyBCcy6TMcgd9T3CWK5MtI7LAclJ+0PP37lO5EelK7queVnowxowmgmufV/fv/nAnSdFdeFMuta4EarLRonvhH6Ui1ZA4/FptQFxia0PbviIgdMNqAJXOWRaJk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: aff28d35-e9bb-40fe-66df-08d5e5337511
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2018 00:32:31.2300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT226
X-Microsoft-Exchange-Diagnostics: 1; DM3NAM03HT229;
	23:YkfofrP9/2HRglPHb10Bnv8v9wOjJOsAt5JJlp/Yb8w5yXPDHkcoZfar5VEPCXrIT0gyCE62B0krG/CIFRuy/9G9oVsTnSEckzbZ/doNKz8M5ehv8cBo6s0PoOx+NUhPwb2Z+kdhjmJTOXjm6BLiSw==
X-Microsoft-Exchange-Diagnostics: 1; CO1NAM03HT230;
	23:/tAqrxTKISFoRC0CXsgReYkdm90EcgNJwFpxcctPXAzyq2bsVvA8Fbxijyz7rPlzaKsRB5ELRA5OjVDwCpvP5E6vXAgMEQg2EG4voDP4hJyinjjQeuFbMShti190NJDSv+0d5J8oT9xS3hGDLiNPgQ==
X-OriginatorOrg: hotmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 14:04:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440MWHPR19MB1183namp_"

--_000_MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


+ yocto mailing list.

________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Sunday, July 8, 2018 5:31 PM
To: Burton, Ross
Subject: Re: [yocto] How to remove openssl from sysroots


We're not going to integrate everything into one homogeneous package.  Poky=
 and BSP would be together.  Then, we've application codes that we'd build =
in the same old way with SCONs the way we do before.  The two parts would l=
ink together.


And we do have a number of 3rd party vendor packages beside openssl.  Curre=
ntly, the issue with openssl is that, we run into build issue with the vers=
ion we got in 2016 release.  See this:




In file included from /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/core=
i7-64-poky-linux/usr/include/openssl/evp.h:66:0,

                 from src/infra/utils/obf/cv_obfuscate.c:20:

/volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/i=
nclude/openssl/opensslconf.h:41:36: fatal error: openssl/opensslconf-32.h: =
No such file or directory

We plan to use 64-bit kernel, and 32-bit applications.  Perhaps that explai=
ns the issue above.  We don't want to spend a lot of effort doing porting s=
imply because we adopt Yocto.  So ideally, if we could remove what's in Yoc=
to, we could integrate our apps with our own openssl; no changes, including=
 upgrade, would be needed.  We'd upgrade when we're ready.

Another question from my team is why the "minimal" package includes connect=
ivity, which includes openssl?

Raymond

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Sunday, July 8, 2018 1:06 AM
To: Raymond Yeung
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to remove openssl from sysroots

I strongly recommend you just write a recipe that builds openssl as you wis=
h, instead of building it out of the build system and somehow getting it in=
to the images.  The problem is that how do you intend to build software aga=
inst openssl if it can't link to the one in oe-core (as you don't want it) =
or your custom one (because it doesn't exist yet).

The workaround - which is horrible - would be to use a rootfs postprocess h=
ook to forcibly remove the openssl packages from the rootfs, and then drop =
in your own files.

Ross

On 8 July 2018 at 07:14, Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeun=
g@hotmail.com>> wrote:

We have a shell script that builds openssl.  It uses the native makefiles f=
rom the open source project.  There's no  recipe.  I suppose we define a re=
cipe for this out-of-tree sources.


Still, if we could yank out embedded openssl easily, that would be the best=
.


Raymond


________________________________
From: Burton, Ross <ross.burton@intel.com<mailto:ross.burton@intel.com>>
Sent: Saturday, July 7, 2018 3:41 PM
To: Raymond Yeung
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] How to remove openssl from sysroots

Presumably you've a recipe for the vendor openssl.  If it has the same
name but is a different version then just set PREFERRED_VERSION.  If
it has a different name too, it should PROVIDE openssl and you can
just set PREFERRED_PROVIDER.

If it doesn't do either of those things, then it is broken.

Ross

On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeun=
g@hotmail.com>> wrote:
> I've changed the subject heading to make it more specific to our problem.
> Hopefully this generates some responses.
>
>
> It has been blocking us for close to one week now.  We want to use our 3r=
d
> party vendor openssl, not the one that comes with the source.  Apparently=
,
> even with "minimal" instead of "base" or "sato" cannot exclude it.
>
>
> Any idea [e.g. how do we systematically find out how it's included now, a=
nd
> possibly what other packages/recipes we may also need to remove due to
> dependency]?
>
>
> Thanks,
>
> Raymond
>
>
>
> ________________________________
> From: Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeung@hotmail.com>>
> Sent: Monday, July 2, 2018 11:05 PM
> To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> Subject: How to remove a package from a build
>
>
> We've our own non-yocto openssl that we want to use.  At the moment, we'r=
e
> using "sato" image, rather than "minimal" and includes its openssl that i=
s
> out-of-date.  What is the best way to exclude it from our image (and from
> sysroots)?
>
>
> We have thought about two ideas -
>
>
> Use smaller image like core-image-base, or core-image-full-cmdline (but n=
ot
> -minimal that may remove too much functionality).
> Use INSTALL_IMAGE_remove +=3D " openssl"
>
>
> Would either one work?  Also, how do I follow the .bb files etc (e.g.
> starting from the one for sato) to trace down which sub-package includes
> openssl?
>
>
> Thanks,
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org<http://lists.yoctoproject.org>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.



>


--_000_MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
&#43; yocto mailing list.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Sunday, July 8, 2018 5:31 PM<br>
<b>To:</b> Burton, Ross<br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Diso-8859-1">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">We're not going to integrate eve=
rything into one homogeneous package. &nbsp;Poky and BSP would be together.=
 &nbsp;Then, we've application codes that we'd build in the same old way wi=
th SCONs the way we do before. &nbsp;The two parts
 would link together.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">And we do have a number of 3rd p=
arty vendor packages beside openssl. &nbsp;Currently, the issue with openss=
l is that, we run into build issue with the version we got in 2016 release.=
 &nbsp;See this:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div style=3D"">
<div style=3D"margin-left:0.5in">
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in; font-size:=
11pt; font-family:Calibri,sans-serif">
&nbsp;</p>
</div>
</div>
<div style=3D"">
<div style=3D"margin-left:0.5in">
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in; font-size:=
11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"position:static!importan=
t; margin:0px!important; padding:0px!important; float:inherit!important; fo=
nt-family:inherit!important; font-size:inherit!important; font-style:inheri=
t!important; line-height:inherit!important">In
 file included from /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7=
-64-poky-linux/usr/include/<span style=3D"background-color:rgb(255,238,148)=
!important; position:static!important; margin:0px!important; padding:0px!im=
portant; float:inherit!important; font-family:inherit!important; font-size:=
inherit!important; font-style:inherit!important; line-height:inherit!import=
ant">openssl</span>/evp.h:66:0,</span></span></p>
</div>
</div>
<div style=3D"">
<div style=3D"margin-left:0.5in">
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in; font-size:=
11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;from src/infra/utils/obf/cv_obfuscate.c:20:</span></=
p>
</div>
</div>
<div style=3D"">
<div style=3D"margin-left:0.5in">
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in; font-size:=
11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"position:static!importan=
t; margin:0px!important; padding:0px!important; float:inherit!important; fo=
nt-family:inherit!important; font-size:inherit!important; font-style:inheri=
t!important; line-height:inherit!important">/volume/tools/x86_64_linux.x86_=
64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/<span style=3D"backgroun=
d-color:rgb(255,238,148)!important; position:static!important; margin:0px!i=
mportant; padding:0px!important; float:inherit!important; font-family:inher=
it!important; font-size:inherit!important; font-style:inherit!important; li=
ne-height:inherit!important">openssl</span>/<span style=3D"background-color=
:rgb(255,238,148)!important; position:static!important; margin:0px!importan=
t; padding:0px!important; float:inherit!important; font-family:inherit!impo=
rtant; font-size:inherit!important; font-style:inherit!important; line-heig=
ht:inherit!important">openssl</span>conf.h:41:36:
 fatal error:&nbsp;<span style=3D"background-color:rgb(255,238,148)!importa=
nt; position:static!important; margin:0px!important; padding:0px!important;=
 float:inherit!important; font-family:inherit!important; font-size:inherit!=
important; font-style:inherit!important; line-height:inherit!important">ope=
nssl</span>/<span style=3D"background-color:rgb(255,238,148)!important; pos=
ition:static!important; margin:0px!important; padding:0px!important; float:=
inherit!important; font-family:inherit!important; font-size:inherit!importa=
nt; font-style:inherit!important; line-height:inherit!important">openssl</s=
pan>conf-32.h:
 No such file or directory</span></span></p>
</div>
</div>
<div><br>
</div>
We plan to use 64-bit kernel, and 32-bit applications. &nbsp;Perhaps that e=
xplains the issue above. &nbsp;We don't want to spend a lot of effort doing=
 porting simply because we adopt Yocto. &nbsp;So ideally, if we could remov=
e what's in Yocto, we could integrate our apps
 with our own openssl; no changes, including upgrade, would be needed. &nbs=
p;We'd upgrade when we're ready.
<div><br>
</div>
<div>Another question from my team is why the &quot;minimal&quot; package i=
ncludes connectivity, which includes openssl?<br>
<div><br>
</div>
<div>Raymond<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ro=
ss.burton@intel.com&gt;<br>
<b>Sent:</b> Sunday, July 8, 2018 1:06 AM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Dutf-8">
<div>
<div dir=3D"ltr">I strongly recommend you just write a recipe that builds o=
penssl as you wish, instead of building it out of the build system and some=
how getting it into the images.&nbsp; The problem is that how do you intend=
 to build software against openssl if it
 can't link to the one in oe-core (as you don't want it) or your custom one=
 (because it doesn't exist yet).
<div><br>
</div>
<div>The workaround - which is horrible - would be to use a rootfs postproc=
ess hook to forcibly remove the openssl packages from the rootfs, and then =
drop in your own files.</div>
<div><br>
</div>
<div>Ross</div>
</div>
<div class=3D"x_x_gmail_extra"><br>
<div class=3D"x_x_gmail_quote">On 8 July 2018 at 07:14, Raymond Yeung <span=
 dir=3D"ltr">
&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank" id=3D"LPlnk48=
6800" class=3D"x_OWAAutoLink" previewremoved=3D"true">rksyeung@hotmail.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"x_x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-le=
ft:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_x_m_3410379150917000727divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<p style=3D"margin-top:0; margin-bottom:0">We have a shell script that buil=
ds openssl.&nbsp; It uses the native makefiles from the open source project=
.&nbsp; There's no &nbsp;recipe.&nbsp; I suppose we define a recipe for thi=
s out-of-tree sources.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Still, if we could yank out embe=
dded openssl easily, that would be the best.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_m_3410379150917000727divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank" id=3D"LPlnk914068" class=3D"x_OWAAutoLink" previewremoved=3D"true">r=
oss.burton@intel.com</a>&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:41 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=
=3D"LPlnk409823" class=3D"x_OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_x_m_3410379150917000727BodyFragment"><font size=3D"2"><span=
 style=3D"font-size:11pt">
<div class=3D"x_x_m_3410379150917000727PlainText">
<div>
<div class=3D"x_x_h5">Presumably you've a recipe for the vendor openssl.&nb=
sp; If it has the same<br>
name but is a different version then just set PREFERRED_VERSION.&nbsp; If<b=
r>
it has a different name too, it should PROVIDE openssl and you can<br>
just set PREFERRED_PROVIDER.<br>
<br>
If it doesn't do either of those things, then it is broken.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 23:06, Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotma=
il.com" target=3D"_blank" id=3D"LPlnk779667" class=3D"x_OWAAutoLink" previe=
wremoved=3D"true">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; I've changed the subject heading to make it more specific to our probl=
em.<br>
&gt; Hopefully this generates some responses.<br>
&gt;<br>
&gt;<br>
&gt; It has been blocking us for close to one week now.&nbsp; We want to us=
e our 3rd<br>
&gt; party vendor openssl, not the one that comes with the source.&nbsp; Ap=
parently,<br>
&gt; even with &quot;minimal&quot; instead of &quot;base&quot; or &quot;sat=
o&quot; cannot exclude it.<br>
&gt;<br>
&gt;<br>
&gt; Any idea [e.g. how do we systematically find out how it's included now=
, and<br>
&gt; possibly what other packages/recipes we may also need to remove due to=
<br>
&gt; dependency]?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ______________________________<wbr>__<br>
&gt; From: Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotmail.com" target=
=3D"_blank" id=3D"LPlnk66430" class=3D"x_OWAAutoLink" previewremoved=3D"tru=
e">rksyeung@hotmail.com</a>&gt;<br>
&gt; Sent: Monday, July 2, 2018 11:05 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=3D"=
LPlnk594647" class=3D"x_OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
&gt; Subject: How to remove a package from a build<br>
&gt;<br>
&gt;<br>
&gt; We've our own non-yocto openssl that we want to use.&nbsp; At the mome=
nt, we're<br>
&gt; using &quot;sato&quot; image, rather than &quot;minimal&quot; and incl=
udes its openssl that is<br>
&gt; out-of-date.&nbsp; What is the best way to exclude it from our image (=
and from<br>
&gt; sysroots)?<br>
&gt;<br>
&gt;<br>
&gt; We have thought about two ideas -<br>
&gt;<br>
&gt;<br>
&gt; Use smaller image like core-image-base, or core-image-full-cmdline (bu=
t not<br>
&gt; -minimal that may remove too much functionality).<br>
&gt; Use INSTALL_IMAGE_remove &#43;=3D &quot; openssl&quot;<br>
&gt;<br>
&gt;<br>
&gt; Would either one work?&nbsp; Also, how do I follow the .bb files etc (=
e.g.<br>
&gt; starting from the one for sato) to trace down which sub-package includ=
es<br>
&gt; openssl?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=3D"LPln=
k589502" class=3D"x_OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk8=
06228" class=3D"x_x_m_3410379150917000727OWAAutoLink x_OWAAutoLink" target=
=3D"_blank" previewremoved=3D"true">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a> </div>
</div>
<div id=3D"x_x_m_3410379150917000727LPBorder_GT_15310303524610.393380748630=
7961" style=3D"margin-bottom:20px; overflow:auto; width:100%; text-indent:0=
px">
<table id=3D"x_x_m_3410379150917000727LPContainer_15310303524580.1806577473=
6671225" cellspacing=3D"0" style=3D"width:90%; background-color:rgb(255,255=
,255); overflow:auto; padding-top:20px; padding-bottom:20px; margin-top:20p=
x; border-top-width:1px; border-top-style:dotted; border-top-color:rgb(200,=
200,200); border-bottom-width:1px; border-bottom-style:dotted; border-botto=
m-color:rgb(200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"x_x_m_3410379150917000727TextCell_15310303524590.8211319156256691=
" colspan=3D"2" style=3D"vertical-align:top; padding:0px; display:table-cel=
l">
<div id=3D"x_x_m_3410379150917000727LPRemovePreviewContainer_15310303524590=
.6726902240970273">
</div>
<div id=3D"x_x_m_3410379150917000727LPTitle_15310303524590.5921623636573192=
" style=3D"color:rgb(0,120,215); font-weight:normal; font-size:21px; font-f=
amily:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quo=
t;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; line-=
height:21px">
<a id=3D"LPlnk875784" href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank" class=3D"x_OWAAutoLink" style=3D"text-decoration:none" =
previewremoved=3D"true">yocto Info Page</a></div>
<div id=3D"x_x_m_3410379150917000727LPMetadata_15310303524600.8558606096493=
264" style=3D"margin:10px 0px 16px; color:rgb(102,102,102); font-weight:nor=
mal; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quo=
t;,Tahoma,Arial,sans-serif; font-size:14px; line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank" id=3D"LPlnk7765=
50" class=3D"x_OWAAutoLink" previewremoved=3D"true">lists.yoctoproject.org<=
/a></div>
<div id=3D"x_x_m_3410379150917000727LPDescription_15310303524600.4046822785=
049662" style=3D"display:block; color:rgb(102,102,102); font-weight:normal;=
 font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif; font-size:14px; line-height:20px; max-height:100px;=
 overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440MWHPR19MB1183namp_--
