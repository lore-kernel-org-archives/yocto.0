Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3595E00B28; Fri,  6 Apr 2018 22:35:45 -0700 (PDT)
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
	no *      trust *      [40.92.2.12 listed in list.dnswl.org]
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
X-Greylist: delayed 39444 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 22:35:43 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092002012.outbound.protection.outlook.com [40.92.2.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3651FE0086B
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 22:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=qBgc24eqEH3iiVs3YKxYyFJgfStmvUDwOs6IFm0kezU=;
	b=GdinNApt3+BDtqMnYy3tEvoEX2XCm3Iwhsy9wZF+3nHLMGXBQX3+mDvdJtvP+AO15I310pikEnQ1lerJV2VS8/RVemiYR2Fh9qNl8md+/Cdjce2vuEykkenV/vZ6KVEgd7gtlnm8yt5gXcAD0IuE72YdlovfJ9ESHOhVMDvBFPhOMXYRYkNc8GXBJadERPWt3zxqtfCPyOgLO6HvjYgse3uGCGQ1RtIC+uxi7aejPc9zoYTk2vPNPcH56w5N1NhPt1k3ucE3RgoBun4k0rNLnrikwo4UtTBe6ngIyGXJe2VDMtMvDi9KXXF+OqAT/soN0wdRejs2BkVRCh7mCkkNUQ==
Received: from BN3NAM01FT031.eop-nam01.prod.protection.outlook.com
	(10.152.66.53) by BN3NAM01HT195.eop-nam01.prod.protection.outlook.com
	(10.152.67.84) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.8;
	Fri, 6 Apr 2018 06:05:36 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.66.52) by
	BN3NAM01FT031.mail.protection.outlook.com (10.152.67.156) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Fri, 6 Apr 2018 06:05:36 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Fri, 6 Apr 2018 06:05:36 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Adding debug output in recipe
Thread-Index: AQHTzLAit2+6n2Xi7EWx49+fo7yXrqPzLKaAgAAQCLk=
Date: Fri, 6 Apr 2018 06:05:36 +0000
Message-ID: <MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
In-Reply-To: <5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:7D9780C11B30E2C2C09E50B7028ACB47F6B5EDE55B89F702016987F2EA1460DD;
	UpperCasedChecksum:A322E71E83FBA9272C0E6CD35379719AE663B1F2E2EEC9F94A0D05CDD3CAB354;
	SizeAsReceived:7254; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [kKGSQW8e90vqR0YbbxQ4o5t62JmiULh03Zo+Qrtd/iYll1R1qie3Lns0WPMhUWhj]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT195;
	7:zfsjmCGnO8jloHov3s5IGb0Td77k4WwzFEN2kXprrMaiMRbk3UPwKJslUZzEINK/EF5X+bMoCJXLbOGdeobSVfH2H4JRLSU6pEsaWerURbDJQm8fwTUY8FKMMG+KWz4NB17S4O2qF9i5JBheOrnPRHBbio7g4XtATU3hU5Wfq/bkD3hk0rSCNraPnmHuHEyBxxgrcF5t+MDlPk82ZKDysZJGz3nfVbr083VejfspPOzXjeNYC6TXVw7z0GqsLjT8
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:BN3NAM01HT195; 
x-ms-traffictypediagnostic: BN3NAM01HT195:
x-ms-office365-filtering-correlation-id: 05df5b2d-eb92-4a77-899e-08d59b846a1d
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BN3NAM01HT195; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT195; 
x-forefront-prvs: 0634F37BFF
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:BN3NAM01HT195;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: RU1u4OVmUeIgUCcen1oQUHNPt7Z1Za99YGq/yBX/Ueno6oLl63C+lXsN49sGAIMEd5bNlkEkoEZbdu2kGHhR2oyIEHGMmHHNKILbV9FTFQBzC2KizqLlr+DFly48EjfrKOvmeZxNJPtZbtgwyMyNpNAgdsz8oqIQBiMTTTNHDoBk05ARSNXPEVs3t2XPtn5A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05df5b2d-eb92-4a77-899e-08d59b846a1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2018 06:05:36.0320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT195
Subject: Re: Adding debug output in recipe
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
X-List-Received-Date: Sat, 07 Apr 2018 05:35:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118326D76F8C45037C1BA6E6C5BA0MWHPR19MB1183namp_"

--_000_MWHPR19MB118326D76F8C45037C1BA6E6C5BA0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Anuj,


"bitbake -e" is very useful for debugging out-of-tree build issue.  However=
, looks like I have another issue.  From "devtool build" output, I could se=
e variables passed into makefile.  Let's focus on "CC" for now:


CC=3Dx86_64-poky-linux-gcc  -fuse-ld=3Dbfd


If we compare this to "bitbake -e" dump:


export CC=3D"x86_64-poky-linux-gcc  -m64 -march=3Dcorei7 -mtune=3Dcorei7 -m=
fpmath=3Dsse -msse4.2 --sysroot=3D/a/ryeung/dev/yocto-git/yocto_build/build=
/tmp/sysroots/intel-corei7-64"


You can see somehow the variable is modified.  Let's focus on --sysroot por=
tion.  Without it, there seems to be no way for me to control LIBRARY_PATH'=
s value.  The result is that the linker couldn't find crti.o and a few othe=
r files.  By manually adding back --sysroot portion, I could now get past t=
his failure, onto the next.


I suppose, as a possible final solution, I could do:


$(CC) --sysroot=3D$(KERNEL_SRC) ...


I'm really looking for simpler, more intuitive solution.  What about the mi=
ssing "-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2" in the=
 export?


Raymond



________________________________
From: Anuj Mittal <anuj.mittal@intel.com>
Sent: Thursday, April 5, 2018 9:52 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: Re: [yocto] Adding debug output in recipe

On 04/05/2018 03:33 PM, Raymond Yeung wrote:
> Is there a way to add simple debug output (ideally don't need to control
> debug level) to echo out values of variables?  I tried the bb.xxx
> variants, but couldn't get them to work.
>

To find out what a variable is being set to, you can try:

bitbake -e <recipename>

Please see:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variable_but_it_do=
esn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F

Is that what you were looking for?

--_000_MWHPR19MB118326D76F8C45037C1BA6E6C5BA0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi Anuj,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">&quot;bitbake -e&quot; is very us=
eful for debugging out-of-tree build issue. &nbsp;However, looks like I hav=
e another issue. &nbsp;From &quot;devtool build&quot; output, I could see v=
ariables passed into&nbsp;makefile. &nbsp;Let's focus on &quot;CC&quot; for=
 now:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"margin-top:0;margin-bottom:0">CC=3Dx86_64-poky-linux-gcc &nbsp;=
-fuse-ld=3Dbfd&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">If we compare this to &quot;bitba=
ke -e&quot; dump:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">export CC=3D&quot;x86_64-poky-lin=
ux-gcc &nbsp;-m64 -march=3Dcorei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2 -=
-sysroot=3D/a/ryeung/dev/yocto-git/yocto_build/build/tmp/sysroots/intel-cor=
ei7-64&quot;<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">You can see somehow the variable =
is modified. &nbsp;Let's focus on --sysroot portion. &nbsp;Without it, ther=
e seems to be no way for me to control LIBRARY_PATH's value. &nbsp;The resu=
lt is that the linker couldn't find crti.o and a
 few other files. &nbsp;By manually adding back --sysroot portion, I could =
now get past this failure, onto the next.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I suppose, as a possible final so=
lution, I could do:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">$(CC) --sysroot=3D$(KERNEL_SRC) .=
..</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'm really looking for simpler, m=
ore intuitive solution. &nbsp;What about the missing &quot;-m64 -march=3Dco=
rei7 -mtune=3Dcorei7 -mfpmath=3Dsse -msse4.2&quot; in the export?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Anuj Mittal &lt;anuj.=
mittal@intel.com&gt;<br>
<b>Sent:</b> Thursday, April 5, 2018 9:52 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Adding debug output in recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 04/05/2018 03:33 PM, Raymond Yeung wrote:<br>
&gt; Is there a way to add simple debug output (ideally don't need to contr=
ol<br>
&gt; debug level) to echo out values of variables? &nbsp;I tried the bb.xxx=
<br>
&gt; variants, but couldn't get them to work.<br>
&gt; <br>
<br>
To find out what a variable is being set to, you can try:<br>
<br>
bitbake -e &lt;recipename&gt;<br>
<br>
Please see:<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variabl=
e_but_it_doesn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F" id=
=3D"LPlnk346404" previewremoved=3D"true">https://wiki.yoctoproject.org/wiki=
/Technical_FAQ#I_set_a_variable_but_it_doesn.27t_seem_to_be_having_an_effec=
t.2C_how_do_I_fix_this.3F</a><br>
<br>
Is that what you were looking for?<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB118326D76F8C45037C1BA6E6C5BA0MWHPR19MB1183namp_--
