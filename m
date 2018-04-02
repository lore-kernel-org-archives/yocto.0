Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 013D5E00BFF; Mon,  2 Apr 2018 03:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 947 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Apr 2018 03:54:04 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0050.outbound.protection.outlook.com [104.47.101.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91732E009F4
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 03:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4ST/pL2vu02Y6sYEwvusRnN29yZrjNIWNVso0KBS1k4=;
	b=UUaRvy+ennqu6u7kUaOj7/S4+4mFhdAUEXm4E9mB8ZFB9kGAD5C0fWELiYE2hk/1g5Fx7X+EmJaYL9YVOoEEu/BSJx+K+LZtPc+hd587bVrDm4i9Uu1BtAXv5IitY3ZU5qeHFJJb551ZXjmBc7fl5DVql02P4txGSM+Kts+JtYU=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0171.INDPRD01.PROD.OUTLOOK.COM (10.164.149.137) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.631.10; Mon, 2 Apr 2018 10:38:13 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197%13]) with mapi id 15.20.0631.013;
	Mon, 2 Apr 2018 10:38:13 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with
	dropbear provided by dropbear-2017.75-r0.i586
Thread-Index: AQHTymcJ2wYEhDAgqUC51MDYFOel6Q==
Date: Mon, 2 Apr 2018 10:38:13 +0000
Message-ID: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0171;
	7:cuRMLaIG/GM5556fTwnI/EwqgDUBPGRVbljZulxEoadAzPeMcTw/WUeOP9IRzAi0NYa7DH18XKIU1SNYDPH7zSNpxIKcrAQ6Cm/BmvrvIJNQN56qT/RyDwDz2L+IHIk4naqYiw2nihm8fawYLiCBja8+kDXwE1fIXN84SoU3MFbYhB3PBcsUuDU4jqGc/S0lAkz9BDsSsSiWNSNLmDcUyVtcGwP32tkd1JSKlc5KwqjSMqsJjboIO7tgWkpGIwau
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8b1fded4-9d6a-432f-d758-08d59885d623
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:MAXPR01MB0171; 
x-ms-traffictypediagnostic: MAXPR01MB0171:
x-microsoft-antispam-prvs: <MAXPR01MB0171B21F647910A8FDADFD8291A60@MAXPR01MB0171.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040522)(2401047)(8121501046)(5005006)(3231221)(944501327)(52105095)(3002001)(93006095)(93001095)(10201501046)(6055026)(6041310)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123558120)(20161123564045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0171; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0171; 
x-forefront-prvs: 0630013541
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(39860400002)(39380400002)(366004)(189003)(199004)(5890100001)(3280700002)(105586002)(102836004)(81156014)(3660700001)(68736007)(2900100001)(478600001)(81166006)(26005)(8676002)(33656002)(7736002)(106356001)(86362001)(486005)(55236004)(5250100002)(2906002)(6606003)(54896002)(486005)(6506007)(7696005)(59450400001)(19627405001)(476003)(72206003)(99286004)(3846002)(186003)(6436002)(66066001)(6916009)(5660300001)(55016002)(9686003)(14454004)(25786009)(99936001)(74316002)(97736004)(8936002)(316002)(6116002)(53936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0171;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: raC2cAn9zYmnB8hAvz3cKAAjNxl0OyU6tr51yo5TuApXGdUsYA6RDP/4rZSCMniH667BBXlDf202Go8BqJR0vVSNYLAe9fjqrPXJRXnAKti/GcOzx2T827Azib2qQUBSIHAt+h+F275RAwZTs/H9l51mzLpPbC7viLFuuFAFzCY675gCGYt+Jv8kky51GrVl6UIH3KVtXbQ2d6AQ5Tm55VxF5Dfe7ngNQIPtm1rZHf8jMKxG/1VCxVlic+vry/xrF6Fm4kHT+v9m4GAT7CrQmbKa0wBYcHq/e3O9WL1ovo5rlw1dPqVcRkWInOx41/Wlb3Q4XHdpWmN7QjTxMSCItmV5WEayltmhKO7AXYOZrSz4wLwhxT9KM19nO3hAuNvmTbkCylm/ghlwOMB2NDphaxGPEh4dq8RrzUFkbPdkBY8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1fded4-9d6a-432f-d758-08d59885d623
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2018 10:38:13.2601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0171
X-Mailman-Approved-At: Wed, 04 Apr 2018 09:50:27 -0700
Subject: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with dropbear provided by dropbear-2017.75-r0.i586
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
X-List-Received-Date: Mon, 02 Apr 2018 10:54:07 -0000
X-Groupsio-MsgNum: 40571
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_"

--_004_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_"

--_000_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I trying to build core-image-sato using yocto 2.5 with new package openssh.


Added openssh entry in the local.conf file as follows:

IMAGE_INSTALL_append =3D "openssh"


But facing some conflicts error. Please refer attached log file for more in=
formation.


Could you please help to resolve the issue. I need to use use openssh for s=
sh rather than dropbear.



Regards,

Aditya Tayade

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I trying to build core-image-sat=
o using yocto 2.5 with new package openssh.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Added openssh entry in the local=
.conf file as follows:<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span>IMAGE_INSTALL_append =3D &=
quot;</span>openssh&quot;</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">But facing some conflicts error.=
 Please refer attached log file for more information.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Could you please help to resolve=
 the issue. I need to use use openssh for ssh rather than
<span>dropbear</span>.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade<br>
</p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_--

--_004_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_
Content-Type: text/plain; name="package_conflicts.txt"
Content-Description: package_conflicts.txt
Content-Disposition: attachment; filename="package_conflicts.txt"; size=2792;
	creation-date="Mon, 02 Apr 2018 10:37:16 GMT";
	modification-date="Mon, 02 Apr 2018 10:37:16 GMT"
Content-Transfer-Encoding: base64

RVJST1I6IGNvcmUtaW1hZ2Utc2F0by0xLjAtcjAgZG9fcm9vdGZzOiBDb3VsZCBub3QgaW52b2tl
IGRuZi4gQ29tbWFuZCAnL2hvbWUvYWRpdHlhL215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93
b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3JlY2lwZS1zeXNy
b290LW5hdGl2ZS91c3IvYmluL2RuZiAteSAtYyAvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVp
bGQtaGVsbG8vdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAt
cjAvcm9vdGZzL2V0Yy9kbmYvZG5mLmNvbmYgLS1zZXRvcHQ9cmVwb3NkaXI9L2hvbWUvYWRpdHlh
L215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3Jl
LWltYWdlLXNhdG8vMS4wLXIwL3Jvb3Rmcy9ldGMveXVtLnJlcG9zLmQgLS1yZXBvZnJvbXBhdGg9
b2UtcmVwbywvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvb2Utcm9vdGZzLXJlcG8gLS1p
bnN0YWxscm9vdD0vaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsv
cWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvcm9vdGZzIC0tc2V0b3B0
PWxvZ2Rpcj0vaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvdGVtcCAtLW5vZ3BnY2hlY2sg
aW5zdGFsbCBsb2NhbGUtYmFzZS1lbi11cyBsb2NhbGUtYmFzZS1lbi1nYiBvcy1yZWxlYXNlIGF1
dG9tYWtlIG1vc3F1aXR0byBnZGIgbGlic2FtcGxlcmF0ZTAgbGliZnJpYmlkaTAgbGlidXJjdSBs
dHJhY2UgbGliYXRvbWljLW9wcyBjbWFrZSBkZXZtZW0yIGxpYmdpZjcga3JiNSBycG0gbGlidGlu
eXhtbDItNSBweXRob24tZGJ1cyBiaXNvbiBsaWJ0b29sIGtiZCBrZXJuZWwtZGV2c3JjIHRjcGR1
bXAgb3BrZy1hcmNoLWNvbmZpZyBsaWJzcWxpdGUwIHN0cm9uZ3N3YW4gYXNpbyBoZHBhcm0gYWNw
aWQgdmxhbiBweXRob24tcHlnb2JqZWN0IGNvcmV1dGlscyBtbWMtdXRpbHMgZWdsaW5mby1mYiBn
bnUtY29uZmlnIGxpYmRuZXQgcnVuLXBvc3RpbnN0cyBmYnNldC1tb2RlcyBsaWJhY3BpMCBrZXhl
Yy10b29scyBwb2xraXQgZWJ0YWJsZXMgZ3BlcmZ0b29scyBuZnRhYmxlcyBkbmYgbGliYWlvMSBs
aWJ5YW1sLTAtMiBtZXNhIGxpYmljYWwgc21hcnRtb250b29scyBvcGVuc3NoIGljdSBsejQgbGli
anNvbi1jMyBvcGtnLXV0aWxzIGdpdCBib29zdCBpMmMtdG9vbHMgYnJpZGdlLXV0aWxzIGNjYWNo
ZSBwYWNrYWdlZ3JvdXAtYmFzZS1leHRlbmRlZCBsc29mIGF1dG9mcyBtdG9vbHMgbGludXgtZmly
bXdhcmUgcGVyZiBscnpzeiBwYWNrYWdlZ3JvdXAtY29yZS1ib290IGxpYnByb3RvYnVmMTUgZmlu
ZHV0aWxzIGN1cmwgcGFja2FnZWdyb3VwLWNvcmUtc3NoLWRyb3BiZWFyIHBhY2thZ2Vncm91cC1j
b3JlLXgxMS1zYXRvIGdjYy1zYW5pdGl6ZXJzIHBwcCBsaWJmdXNlMiBjYW51dGlscyBnZXR0ZXh0
IGxpYm5ld3QwLjUyIG1vempzIGxpYmF0YXNtYXJ0NCB1ZGlza3MyIHBzcGxhc2ggbGlicXJlbmNv
ZGU0IHBhY2thZ2Vncm91cC1jb3JlLXgxMS1iYXNlIG9wa2cgbGlieHNsdCBsaWdodHRwZCBsaWJk
YnVzLWdsaWItMS0yIGxpYmd1ZGV2LTEuMC0wIGxpYm5mdG5sNyBkYnVzLTEgbGlidXNiLTAuMS00
IGx1YSBsdHRuZy11c3QgbGlic29ja2V0Y2FuMiBuYW5vIGxpYmNncm91cCBsaWJzc2gyLTEgbGli
Y2hlY2sgaXcgbWFpbHggcHNldWRvIGhlbGxvJyByZXR1cm5lZCAxOgpBZGRlZCBvZS1yZXBvIHJl
cG8gZnJvbSAvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvb2Utcm9vdGZzLXJlcG8KTGFz
dCBtZXRhZGF0YSBleHBpcmF0aW9uIGNoZWNrOiAwOjAwOjAxIGFnbyBvbiBNb24gMDIgQXByIDIw
MTggMDk6MjA6MTIgQU0gVVRDLgpFcnJvcjogCiBQcm9ibGVtOiBwYWNrYWdlIHBhY2thZ2Vncm91
cC1jb3JlLXNzaC1kcm9wYmVhci0xLjAtcjEubm9hcmNoIHJlcXVpcmVzIGRyb3BiZWFyLCBidXQg
bm9uZSBvZiB0aGUgcHJvdmlkZXJzIGNhbiBiZSBpbnN0YWxsZWQKICAtIHBhY2thZ2Ugb3BlbnNz
aC03LjZwMS1yMC5pNTg2IGNvbmZsaWN0cyB3aXRoIGRyb3BiZWFyIHByb3ZpZGVkIGJ5IGRyb3Bi
ZWFyLTIwMTcuNzUtcjAuaTU4NgogIC0gY29uZmxpY3RpbmcgcmVxdWVzdHMKKHRyeSB0byBhZGQg
Jy0tYWxsb3dlcmFzaW5nJyB0byBjb21tYW5kIGxpbmUgdG8gcmVwbGFjZSBjb25mbGljdGluZyBw
YWNrYWdlcyBvciAnLS1za2lwLWJyb2tlbicgdG8gc2tpcCB1bmluc3RhbGxhYmxlIHBhY2thZ2Vz
KQoKRVJST1I6IGNvcmUtaW1hZ2Utc2F0by0xLjAtcjAgZG9fcm9vdGZzOiBGdW5jdGlvbiBmYWls
ZWQ6IGRvX3Jvb3RmcwpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUv
YWRpdHlhL215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51
eC9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rmcy40MDUwCkVSUk9SOiBU
YXNrICgvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvbWV0YS9yZWNpcGVzLXNhdG8vaW1hZ2VzL2Nv
cmUtaW1hZ2Utc2F0by5iYjpkb19yb290ZnMpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScKCgo=

--_004_MAXPR01MB0348308E57E30FA8D6824DCB91A60MAXPR01MB0348INDP_--
