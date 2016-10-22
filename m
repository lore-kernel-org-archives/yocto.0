Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 588C0E00510; Sat, 22 Oct 2016 08:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.90.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC1S9.hotmail.com (snt004-omc1s9.hotmail.com
	[65.55.90.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15384E0049B
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 08:16:21 -0700 (PDT)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com ([65.55.90.8]) by
	SNT004-OMC1S9.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 22 Oct 2016 08:16:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=2ZBktcFvCSq9vjMvBZNYAIgIRznVC2+Yj2beHUms42I=;
	b=CMtDvnJQ2bV8IV0y71PJRMMTY5Wn3xySHLAnwlISShe66JxPaH62j5JdrJAmXBlO6cqEk2gMbc1GtYQ7LhoJRDnvngSUn6sxUOVHKJRBiIttqLVBfUiDMMAF/E+bNCTcXQq9b4VlybEeMAiEVnEZ8j3PD0RYCnICDnz3+K8TvNBs25MqAaoTm0iLMGodqlDEQy6dQIN6QU6x3fMImny2CcFOtJgmCfpoMRk96z9rSR/y3memw1LGEext+ByoEacrFdnfL782g0obFF7MICIfcPA2PV1KviqHpHOExa/EQvABMqRBv+nKlM1CjWZEyPT+O/CfYt9mn1YZcT2XPhTvng==
Received: from DB5EUR03FT005.eop-EUR03.prod.protection.outlook.com
	(10.152.20.53) by DB5EUR03HT088.eop-EUR03.prod.protection.outlook.com
	(10.152.21.13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Sat, 22 Oct 2016 15:16:19 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.20.56) by
	DB5EUR03FT005.mail.protection.outlook.com (10.152.20.122) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sat, 22 Oct 2016 15:16:18 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.021; Sat, 22 Oct 2016 15:16:18 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCu6C0lPiB
Date: Sat, 22 Oct 2016 15:16:18 +0000
Message-ID: <HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
In-Reply-To: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wY44pKY4yhNhbWvPSSImK9QHbHt4HSDV]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT088;
	6:nRkILuEWa3x6QfAUzz9ytppugVkBDlddhFftNOFS+kg16bEY0ic5AP1tbZta0jc0atVF039kBUErRmrl3/NGV3tboiRaTolf+ewNaAfgGi7vRvlpVlWgstw20G0e1JgLYJX6pdYT85M/csINXWIx/Zz+ISjNVAWI0gL4ndrSMeRyejY5NSTt9bJj+PQsIKl4tBG4xXXk8FSlHMrmYIADf8lwb+StvKip2I3IARx/5ASlk81hu+YsjHZyXr+P5GIoAaUSC+CdXNaYQR4mxJOMAKoDXygRr4w0gIGSospGT6oA1SGrlrjpQ+bSfSJyhSkM;
	5:l9mTbmtWsOvy45wqZ2ofy9wYqkjmQuiE3vrqZfI/SnM5oHpYgq5BffHL6Rrg7uyV8jGNBtMZmxIUlIL65vn7Xu/aYmmhTbPF38dnoamzt+XjFiWLVPac+kqWTdLgxN1oC/AHwbG0ahDOSB3+4DvVYiU7KLvzcGY4BQ7faatHhoQ=;
	24:ue8z28dfKGEUbtPTnlrLXKmWMu+jXJP/Z/JccoiJqlAw4qI7P5QM9PTYMOT/teXVmzvqepTxXEbrdmvOcUZQRGbXWACi7NA1yrV0teVGWDc=;
	7:Q46vq7ZX0U9D5V8LnqV1C8oHJetrTt0vRj7qnaOCDJSfQkmkZy6MJdyRwx3GmyJ5KAAbjzhK3Iu7fZPJefirQ/SpyM/AYscKBQQ54vdchkCxT/hUNYyJSuHnGCaP3N/mEKfkOCKXrA1pomI8Z/v/xx50vQs2P8qLoGnbdK0pyXPnGe+/AW7FpE/89RujBCiaRCS1DlozGw0AqvhpxPKglXULjCjuXI0eI9RCMhvlqMsIjabdXeR+Im4Zlpg8ix3MfbhHe3IlsZEk4xPymyIbuL+opcfONHDKv0LjnX0bA6X45FyBTLqpyAUNDJv4e4ucUh7XDv0s2NIrCS/FZUJ8YjlzR83cKUYXiV2yTXFd56c=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR03HT088;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 5c301488-5789-4748-9101-08d3fa8e5f79
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR03HT088;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR03HT088; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT088; 
x-forefront-prvs: 01039C93E4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2016 15:16:18.1322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT088
X-OriginalArrivalTime: 22 Oct 2016 15:16:20.0911 (UTC)
	FILETIME=[3E89BBF0:01D22C77]
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 15:16:24 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883059387B8E06758D4889092D70HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883059387B8E06758D4889092D70HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Actually, it looks like the issue comes from gstreamer1.0-plugins-bad recip=
e.


This function, graphics_get_display_size, comes from libbcm_host which seem=
s to be present in sysroot.


In log.doconfigure i found:


checking for bcm_host_init in -lbcm_host... yes
checking bcm_host.h usability... yes
checking bcm_host.h presence... yes
checking for bcm_host.h... yes

So it seems that it found the necessary library.


However, in the logfile of the compile error, there is no "-lbcm_host" depe=
ndency at all.


Any idea to solve it ?


Karim



________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : samedi 22 octobre 2016 14:26
=C0 : yocto
Objet : [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5


Hi all,


Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-plu=
gins-bad.


The underlying error seems to be:


| ./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display_siz=
e


This function seems to come from bcm_host library.

Isn't it related to  RaspberryPi graphic libs ?


Should I add a specific dependency ?


Weird.


Karim



--_000_HE1PR01MB1883059387B8E06758D4889092D70HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Actually, it looks like the issue comes from gstreamer1.0-plugins-bad re=
cipe.</p>
<p><br>
</p>
<p>This function, graphics_get_display_size, comes from libbcm_host which s=
eems to be present in sysroot.</p>
<p><br>
</p>
<p>In log.doconfigure i found:</p>
<p><br>
</p>
<p></p>
<div>checking for bcm_host_init in -lbcm_host... yes</div>
<div>checking bcm_host.h usability... yes</div>
<div>checking bcm_host.h presence... yes</div>
<div>checking for bcm_host.h... yes</div>
<div><br>
</div>
So it seems that it found the necessary library.
<p></p>
<p><br>
</p>
<p>However, in the logfile of the compile error, there is no &quot;-lbcm_ho=
st&quot; dependency at all.</p>
<p><br>
</p>
<p>Any idea to solve it ?</p>
<p><br>
</p>
<p>Karim</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 14:26<br>
<b>=C0 :</b> yocto<br>
<b>Objet :</b> [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolch=
ain-qt5</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi all,</p>
<p><br>
</p>
<p>Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-=
plugins-bad.</p>
<p><br>
</p>
<p>The underlying error seems to be:</p>
<p><br>
</p>
<p><i><b></b></i><span><b><i>| ./.libs/libgstgl-1.0.so: undefined reference=
 to `graphics_get_display_size</i></b></span><br>
</p>
<p><span><b><i><br>
</i></b></span></p>
<p><span>This function seems to come from bcm_host library.</span></p>
<p><span>Isn't it related to&nbsp; RaspberryPi graphic libs ?</span></p>
<p><br>
</p>
<p>Should I add a specific dependency ?</p>
<p><br>
</p>
<p>Weird.</p>
<p><br>
</p>
<p>Karim</p>
<p><span><b><i><br>
</i></b></span></p>
<p><span><b><i><br>
</i></b></span></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB1883059387B8E06758D4889092D70HE1PR01MB1883eurp_--
