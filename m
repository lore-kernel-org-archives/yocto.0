Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D3AE00C14; Tue, 12 Sep 2017 18:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UPPERCASE_50_75 autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.98 listed in list.dnswl.org]
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
	*  0.0 UPPERCASE_50_75 message body is 50-75% uppercase
X-Greylist: delayed 3576 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Sep 2017 18:30:49 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067098.outbound.protection.outlook.com [40.92.67.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70D29E00B8E
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 18:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=VpmxgNrWrWOw988VmeVu+PIp566ECGMjQ473+rCWobo=;
	b=GaeJhFHbBoBRGao0Jfk2msr8OPlmyY7sNL1lPdcAkA/KZE7+vfFX4JwIuuV5TYTWvKQAZoMla8QUnijZrAiy2vswiNjqe8/BjU8ZqZbVckvPYYO2WsmUuwf8MNOC1P05C4crKxBtadhGVp6F0saId+qjPUuglOFc3ZuC6fxJXboy2oOtO21x3aq/ORyhotDGkkWm0ntsaYUQL33q/VaP6kxMTcrqMSL36K8ivEy+LzCJoOvVFO4mcM/VTQZa77x6GH9VG75Zr3aS4J5qqyruDlKFL4RWP+3PVsj94iZbeggz5lQL3C1nAnWPpjhaHNO6l+Fp1P9cdzE4fT3S4Vh50w==
Received: from VE1EUR02FT019.eop-EUR02.prod.protection.outlook.com
	(10.152.12.57) by VE1EUR02HT220.eop-EUR02.prod.protection.outlook.com
	(10.152.13.175) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.13.11;
	Tue, 12 Sep 2017 07:56:34 +0000
Received: from AM3PR01MB328.eurprd01.prod.exchangelabs.com (10.152.12.56) by
	VE1EUR02FT019.mail.protection.outlook.com (10.152.12.107) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.13.11 via Frontend Transport; Tue, 12 Sep 2017 07:56:33 +0000
Received: from AM3PR01MB328.eurprd01.prod.exchangelabs.com
	([fe80::69d2:6735:4d59:7a2c]) by
	AM3PR01MB328.eurprd01.prod.exchangelabs.com
	([fe80::69d2:6735:4d59:7a2c%17]) with mapi id 15.20.0035.021;
	Tue, 12 Sep 2017 07:56:33 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] Failed to launch bitbake image -u -g depexp on
	a Debian 9 host system ?
Thread-Index: AQHTK5xsWEVRu/3BAUSmXd+P6K02Kg==
Date: Tue, 12 Sep 2017 07:56:33 +0000
Message-ID: <AM3PR01MB3280CDBFF17DF19270F0E1392690@AM3PR01MB328.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:1586D55E7B253F447ADFC5DA14A6BFD1790F10ECD287D4439788CC394579ABC1;
	UpperCasedChecksum:69E6BBC75F2FDF49C04B462280C1618EBB7E855842F22121A800E79CEB23029D;
	SizeAsReceived:7005; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [c6CWaT8mvZ323gEtzrp67LHtvldxU2e6]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT220;
	6:KSKcv+uDw+55QFSt4l6OVf9i4ItUWBfAQePvJjUlfNRGp9LBj4bfR+6eBBcCpM+rdjGB/IoJSZ4OXx0VktG9lUrDyUjHN3mdw/FqXMtGveMCDN/cT1jfXQIX6lF5I2f2BU1C9wGNaeeSkELb/NzJvW4MjiZjzWHFp7CtxEYIWAa/0UC73WfD2s3iRRPPW3kvbX3PaqbgijH9aBq8/DPlFrlHXfI+bCwUm0wIdT8jsEXntDt3yGDxBYFS+WNUzIzbY0EN2HISQhpH0cP2Hiry95xTkVQNbF5aAAE34TjAssFlgIWnEBIgs/gZvN2op21XWDebzlyiL1QDSOQmI+CMrA==;
	5:nuT0lu9gGzJeSuecZZ1ENdzgfJ1UV2TTfoEv8EeVHGn6FhvOneoFI1odxjammlbxqPtYqzHhAXkVx/Ja5OeIvg/IfNvw0RAyIDORKCfynXy37UMFRXWRMSIwjoGKwZVqX497Ekm+7nK4rGYZK+hKFA==;
	24:fDdu3VcbOBX9lOESYNwIYwC3vmMxdi1MHTIqMr6BSeltZrbL39NFujjnzt424mRNTx69WDKQjzh9NGeJmmsSFaXiUQO25/b1MR4GPX3fYY8=;
	7:Cxuk7HshG6AdcFjxWatmCW6SwgewzduJ0NHBkRqaKkNZUZ0+oS1zVAgnn6xUvAsCYg/3Rec9/ug1SSbtB326JbVHPyu6mKBbSgWLRW5mwxnLnYPn+X/9lT7Bh0zqSw5e0OfxMr1XTi8IA1et0FiYv9HFhK252eP0kNB9q4Fr9GXpla9EUHbqhmW6M9/bzCe3Gef2T5iXITkV4KeOxKLXEzsDbtlNQgUKOiAiD40/n6M=
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 0797fd2e-2cb6-457d-5012-08d4f9b3c934
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:VE1EUR02HT220; 
x-ms-traffictypediagnostic: VE1EUR02HT220:
x-exchange-antispam-report-test: UriScan:(158342451672863)(21532816269658);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:VE1EUR02HT220; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VE1EUR02HT220; 
x-forefront-prvs: 042857DBB5
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:VE1EUR02HT220;
	H:AM3PR01MB328.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2017 07:56:33.4005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT220
Subject: [bitbake] Failed to launch bitbake image -u -g depexp on a Debian 9 host system ?
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
X-List-Received-Date: Wed, 13 Sep 2017 01:30:51 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM3PR01MB3280CDBFF17DF19270F0E1392690AM3PR01MB328eurprd_"

--_000_AM3PR01MB3280CDBFF17DF19270F0E1392690AM3PR01MB328eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I'm currently using Yocto Poky pyro on a Debian 9 host.

I tried to launch bitbake -u -g depexp to have the GUI window with dependen=
cies but I got the following errors:


Unable to init server: Could not connect: Connection refused
Unable to init server: Could not connect: Connection refused
FATAL: Unable to import extension module "depexp" from bb.ui. Valid extensi=
on modules: knotty, ncurses or taskexp
DEBUG: Removed the following variables from the environment: GJS_DEBUG_TOPI=
CS, SESSION_MANAGER, LS_COLORS, XDG_MENU_PREFIX, _, VTE_VERSION, XDG_SESSIO=
N_ID, QT_LINUX_ACCESSIBILITY_ALWAYS_ON, WINDOWPATH, GJS_DEBUG_OUTPUT, GPG_A=
GENT_INFO, XDG_VTNR, XAUTHORITY, QT_QPA_PLATFORMTHEME, XDG_RUNTIME_DIR, GNO=
ME_DESKTOP_SESSION_ID, XDG_CURRENT_DESKTOP, QT_ACCESSIBILITY, JOURNAL_STREA=
M, WINDOWID, DISPLAY, XDG_DATA_DIRS, GTK_MODULES, BUILDDIR, XDG_SESSION_DES=
KTOP, DBUS_SESSION_BUS_ADDRESS, COLORTERM, OLDPWD, GDM_LANG, XDG_SEAT, GDMS=
ESSION, DESKTOP_SESSION, SHLVL, LANG, XDG_SESSION_TYPE, USERNAME

Is it related to Debian 9 ?

Anyone has experienced this problem ?


Thanks.


Karim

--_000_AM3PR01MB3280CDBFF17DF19270F0E1392690AM3PR01MB328eurprd_
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
<p>Hi all,</p>
<p><br>
</p>
<p>I'm currently using Yocto Poky pyro on a Debian 9 host.</p>
<p>I tried to launch bitbake -u -g depexp to have the GUI window with depen=
dencies but I got the following errors:</p>
<p><br>
</p>
<p></p>
<div><i>Unable to init server: Could not connect: Connection refused</i></d=
iv>
<div><i>Unable to init server: Could not connect: Connection refused</i></d=
iv>
<div><i>FATAL: Unable to import extension module &quot;depexp&quot; from bb=
.ui. Valid extension modules: knotty, ncurses or taskexp</i></div>
<div><i>DEBUG: Removed the following variables from the environment: GJS_DE=
BUG_TOPICS, SESSION_MANAGER, LS_COLORS, XDG_MENU_PREFIX, _, VTE_VERSION, XD=
G_SESSION_ID, QT_LINUX_ACCESSIBILITY_ALWAYS_ON, WINDOWPATH, GJS_DEBUG_OUTPU=
T, GPG_AGENT_INFO, XDG_VTNR, XAUTHORITY,
 QT_QPA_PLATFORMTHEME, XDG_RUNTIME_DIR, GNOME_DESKTOP_SESSION_ID, XDG_CURRE=
NT_DESKTOP, QT_ACCESSIBILITY, JOURNAL_STREAM, WINDOWID, DISPLAY, XDG_DATA_D=
IRS, GTK_MODULES, BUILDDIR, XDG_SESSION_DESKTOP, DBUS_SESSION_BUS_ADDRESS, =
COLORTERM, OLDPWD, GDM_LANG, XDG_SEAT,
 GDMSESSION, DESKTOP_SESSION, SHLVL, LANG, XDG_SESSION_TYPE, USERNAME</i></=
div>
<div><br>
</div>
Is it related to Debian 9 ?
<p></p>
<p>Anyone has experienced this problem ?</p>
<p><br>
</p>
<p>Thanks.</p>
<p><br>
</p>
<p>Karim</p>
</div>
</body>
</html>

--_000_AM3PR01MB3280CDBFF17DF19270F0E1392690AM3PR01MB328eurprd_--
