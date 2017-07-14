Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE473E00BB7; Fri, 14 Jul 2017 08:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2019 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Jul 2017 08:56:59 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0043.outbound.protection.outlook.com [104.47.34.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8763CE00B49
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 08:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=bQK6TlM79g1TtcVaS5PzoCq41FD80sVLmI1EeEpOG70=;
	b=iSw9gZzFzySCUMt5fMsnBir4KTHvMSme1ZH2QnUnlbKz9FKqpO/nrFz0jRP9C7U8Qmfw6XUFN0qJrgF5BDv5s7tTvwQBT7wwh1o5DFXcEZG8G/lFM73KA40Y1B0C0osktxObs2OLziUa0//nnhbI/fD1yL74D3Z3SojHVlKpIsU=
Received: from CY4PR06MB2616.namprd06.prod.outlook.com (10.173.39.22) by
	CY4PR06MB2615.namprd06.prod.outlook.com (10.173.39.21) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1261.13; Fri, 14 Jul 2017 15:23:18 +0000
Received: from CY4PR06MB2616.namprd06.prod.outlook.com ([10.173.39.22]) by
	CY4PR06MB2616.namprd06.prod.outlook.com ([10.173.39.22]) with mapi id
	15.01.1261.018; Fri, 14 Jul 2017 15:23:18 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel Build Failures with Shared SSTATE
Thread-Index: AdL8s+LQRo/RwkUISx+LkNQoGtuBCw==
Date: Fri, 14 Jul 2017 15:23:18 +0000
Message-ID: <CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0@CY4PR06MB2616.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=commscope.com;
x-originating-ip: [131.239.32.100]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR06MB2615;
	7:PxDIFO7OjeV8PPElOJ0m82yKvxQfF8ELU1kf2wt5DJgfU2uqqvH24j6rUBi+6ifUrzw3W7p4gjZsGxfUf5GLLyRU7W/kTqdNo9M0yfR6JZDYMy7/HHXNis0+c7JAxg21HWsTQlZb++N8V8d0HQv2DwrAqoQL+t3dZfrW4Hz5+C4od2ONqcC7mEvqjaI4O8cJNHPjIOuQpbxcvoWggZHHwPQvHY8T59vh0ce7nZPOpWLILbjzi31s+y0LUVRtsrvF0Mne7wD/g0FXpkUFFM6L7Q5R10bqbDS+cQ9m1BwY/XejFEfHECQI9TrOcExj/PhRpACnhxMySnjjdswS7lxmtpcpjoHMjXBB9MjHdPbKJGLE/7rAzHkYt1/JYWFnp2bhWZvdIYHenXHUbpVOY9l2oUpjFWN9RKthHWdTsEzuxiEBLlJxYsrsr05QjvWr2HlYDaOJdpoiSSVpBFAv0st9296gr0kUyyz4bVBDPCw6N8SH2smbaAwSRiQR7+z+fFFBE8Q5ogwFA9YvPLmin+mThYtPhHwUzlGGM70V5Dirkj4+Lo7t9jnHclTMIkTRjJMua2EB08nQFKXRkW1zxNNBA/3zbevsAFPZvtqZ6EEM1Ob2jDZ1gXWwamrg16pNN0bx4jLGscu4UZUO3jArBVLpF1DCVxh8S/uT+ZosHlZrU8ue5SNIIbIybtIIp9hPE6pfTQc2mUDpRS+cMwV70pIEfZhtw16JPBDhGmJlYOKX7xgonD9ggbVGMfRLtgeZq6tw1U7ygOyLm/YXCN08yxCymO7f4TaV95Q+D+q4yshi8N0=
x-ms-office365-filtering-correlation-id: b0e475a8-1af8-46d1-4bf8-08d4cacc4165
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:CY4PR06MB2615; 
x-ms-traffictypediagnostic: CY4PR06MB2615:
x-exchange-antispam-report-test: UriScan:(151999592597050)(26388249023172)(236129657087228)(21748063052155)(167848164394848);
x-microsoft-antispam-prvs: <CY4PR06MB2615F8DA58D9CEBCDC3E67F7E6AD0@CY4PR06MB2615.namprd06.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(2017060910075)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(6041248)(20161123564025)(20161123558100)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123562025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR06MB2615; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR06MB2615; 
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39400400002)(39410400002)(39840400002)(39850400002)(6436002)(102836003)(6506006)(9686003)(6116002)(86362001)(72206003)(74316002)(7736002)(33656002)(6916009)(8936002)(790700001)(9326002)(54896002)(6306002)(25786009)(81166006)(5640700003)(478600001)(55016002)(3846002)(8676002)(1730700003)(189998001)(2501003)(5660300001)(2906002)(3280700002)(3660700001)(99286003)(5630700001)(14454004)(68736007)(50986999)(54356999)(66066001)(7696004)(53936002)(77096006)(110136004)(38730400002)(2900100001)(2351001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR06MB2615;
	H:CY4PR06MB2616.namprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2017 15:23:18.3816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR06MB2615
Subject: Kernel Build Failures with Shared SSTATE
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
X-List-Received-Date: Fri, 14 Jul 2017 15:57:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0CY4PR06MB2616namp_"

--_000_CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0CY4PR06MB2616namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I had been running into kernel build failures on the morty branch when usin=
g a shared state.  First I'll describe the error, and then my solution.

The first build that initializes the sstate cache works fine.  Subsequent c=
lean builds will fail.  The failure
would occur in the do_compile_kernelmodules task.  The error would indicate=
 a failure because tmp/work-shared/<machine>/kernel-build-artifacts was mis=
sing.

My analysis concluded that the kernel build was restored from the cache, bu=
t it did not restore the kernel-build-artifacts needed by the do_compile_ke=
rnelmodules task.

My solution was to include the following in a bbappend file for the kernel:

SSTATETASKS +=3D "do_shared_workdir"

do_shared_workdir[sstate-plaindirs] =3D "${STAGING_KERNEL_BUILDDIR}"

python do_shared_workdir_setscene () {
    sstate_setscene(d)
}

I assume the correct way to fix this would be to update the meta/classes/ke=
rnel.bbclass.  It looks like there was some attempt to do something with th=
e shared_workdir because there is a do_shared_workdir_setscene routine, but=
 right now it just returns a 1.  Is that intentional.  It seems wrong.

Rich

--_000_CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0CY4PR06MB2616namp_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I had been running into kernel build failures on the=
 morty branch when using a shared state.&nbsp; First I&#8217;ll describe th=
e error, and then my solution.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The first build that initializes the sstate cache wo=
rks fine.&nbsp; Subsequent clean builds will fail.&nbsp; The failure<o:p></=
o:p></p>
<p class=3D"MsoNormal">would occur in the do_compile_kernelmodules task.&nb=
sp; The error would indicate a failure because tmp/work-shared/&lt;machine&=
gt;/kernel-build-artifacts was missing.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My analysis concluded that the kernel build was rest=
ored from the cache, but it did not restore the kernel-build-artifacts need=
ed by the do_compile_kernelmodules task.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My solution was to include the following in a bbappe=
nd file for the kernel:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SSTATETASKS &#43;=3D &quot;do_shared_workdir&quot;<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_shared_workdir[sstate-plaindirs] =3D &quot;${STAG=
ING_KERNEL_BUILDDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">python do_shared_workdir_setscene () {<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; sstate_setscene(d)<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I assume the correct way to fix this would be to upd=
ate the meta/classes/kernel.bbclass.&nbsp; It looks like there was some att=
empt to do something with the shared_workdir because there is a do_shared_w=
orkdir_setscene routine, but right now
 it just returns a 1.&nbsp; Is that intentional.&nbsp; It seems wrong.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR06MB2616C3F2554154EEDD1F5C75E6AD0CY4PR06MB2616namp_--
