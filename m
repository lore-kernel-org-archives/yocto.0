Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E1C2E00DC9; Sat, 17 Mar 2018 23:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 490 seconds by postgrey-1.32 at yocto-www;
	Sat, 17 Mar 2018 23:54:59 PDT
Received: from mail3.advaoptical.com (mail3.advaoptical.com [74.202.24.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CD0E007DA
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 23:54:59 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-am5eur03lp0118.outbound.protection.outlook.com
	[213.199.154.118])
	by atl-vs-fsmail.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w2I6kiY9017543
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Sun, 18 Mar 2018 02:46:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wyL+DKnbs/7Upoawn43xu88Idq2KUhfrNC6La3fAB4A=;
	b=lUATg68PH3sa3MuZiub4QBv39fn+l0NoLxjcTGhHA+OOYTwFjSZQ/DPzGyeQZxMtA/Zh5k1iayspJZ2CxswAtlAoUT7dbgHKEVVdXoIQMal/IYmrLk3yzFWMo0oGQP3JdhT39ntJXiH2688xDxkI6Sb0ptdI5+jgGD/diqxi61s=
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com (10.173.79.138) by
	VI1PR0202MB3358.eurprd02.prod.outlook.com (52.134.16.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Sun, 18 Mar 2018 06:46:42 +0000
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd]) by
	VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd%18]) with mapi id 15.20.0588.016;
	Sun, 18 Mar 2018 06:46:42 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Jackie Huang
	<jackie.huang@windriver.com>
Thread-Topic: Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgQ==
Date: Sun, 18 Mar 2018 06:46:42 +0000
Message-ID: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0202MB3358;
	6:c4VM0U5Nq+lLaF2YomE/BxaP247slVAMsyexNjXvotNvDc5QxT6qRFZB6tFQwuwDxgCpeQ9wL43VrAVDC4cRw5CHuOi5tjKrVBX1LwxNrD8MxOWWilgXTZ/ajJ6QswDRydHcdxBSvXpxH+QVhgRGjL8BlE4hL/qQSlOZfhpX1VByE3K+L2NaTKve/18+nX+Yp2PYSUrkejhtpwqqSezIZAOPSSyx+cb4T1VAJ9u9gqm9NU0grVJIDsbVNAzXIq37/eM7/9tpSEKzr0W/gEKZDa7dlD8HHfcQFlPEuPXniruygxNWZNU62GoJCiYJH+9CeDQkGUV4hunmmLp7x69nSzJdcsPEzkpYMSnpnncf/Y/606dta6JrA2i6C+i68xoH;
	5:9U555AwUQiPi5YXaXNiOpCCXqg8/PB8YgbniEKrxs8/y+eY8MEBPPnGoX2T94ZnBU0FLZ36TmaaB1DYkjrG+laQvJm9bLrBTCI6B+zBsldcjOaCWwx4M5aKInZtq3DwXRNqpqqBQf6fswJqknlgfz8+BX2xuGaMXYC+95Y4M8wY=;
	24:4f21qlWG8GBJpnfwDRbcIk9aDM+V93X5bthzkSuglp8wPpoxKdr7PS31ZxuvpBW8Ood7e8QZsja0C8d94u9mY4ryOmtYdh0yfmhVSVSvnE0=;
	7:KCLZl1daG8jdsaUq3+0CqniAcFZ7DyXY+AQzfUzt9KJuJ32q2j3MF+a9x06ccnwgC9/xTGRrQA0/Sju/K74Mgxdegq02/3o0Y3+gSYDFT+C5DXzIWHeIPv5Q/gHhW2LVXl+2LgOcst7bxHc9HrRe3/SHWzeJAIALdxW4ZvHJh1u0Bw83ke3GgL6GoFrtTagV2RqCx+1bswF/WwoG7YaCrymQWnSscuerK5DSVUa6c7RVcQvdbpaOeK0etsyj7pji
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: cbdc9f20-dbb3-46ce-5ea6-08d58c9c0240
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:VI1PR0202MB3358; 
x-ms-traffictypediagnostic: VI1PR0202MB3358:
x-microsoft-antispam-prvs: <VI1PR0202MB3358A67D0D48685DAA8DF825CDD50@VI1PR0202MB3358.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231221)(944501244)(52105095)(3002001)(93006095)(93001095)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:VI1PR0202MB3358; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0202MB3358; 
x-forefront-prvs: 06157D541C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39380400002)(376002)(366004)(396003)(39830400003)(346002)(189003)(199004)(5250100002)(99936001)(8936002)(81166006)(81156014)(6436002)(2906002)(5890100001)(8676002)(97736004)(102836004)(54896002)(86362001)(2501003)(316002)(33656002)(6116002)(3846002)(7696005)(478600001)(110136005)(66066001)(4326008)(6506007)(7736002)(9686003)(3280700002)(68736007)(53936002)(5660300001)(106356001)(19627405001)(6606003)(80792005)(105586002)(2900100001)(54906003)(26005)(25786009)(99286004)(3660700001)(55016002)(186003)(74316002)(72206003)(14454004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0202MB3358;
	H:VI1PR0202MB2559.eurprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: +OjGuiJJekUZpiOGjk2crXuw1uaEvw6YurHUV5scAbd2jKeC/9FffOXTPEVoWw32tl7GHQOusHMF7e4Dp1CB3Q+1AtFb5AxyGDNdqxwQf7w7fSPqhlnhnlmRtdzfRr460qnQmIaC87VTOIXU0EaP0iBj0/wlEulE8bHufcuLxl7/iTpJkcWnPKIaOwbFoCY5HVfN527lHZp19cytmt0VbcH9cKydcpI+/uSh8wmajo0Lnd4jvCZ+QdUwfi03WoLSMAoJb3oUCAv8dqF5FaC9aJ6E0iBtSbJMQJgaSuZ7F0YdfPga6LnPtdcAReRvIMa7O3vASNfmbcTG7K9PBo90Ig==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbdc9f20-dbb3-46ce-5ea6-08d58c9c0240
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2018 06:46:42.1946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0202MB3358
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-03-18_04:, , signatures=0
Cc: Catalin Enache <catalin.enache@windriver.com>,
	Li Zhou <li.zhou@windriver.com>
Subject: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Sun, 18 Mar 2018 06:55:01 -0000
X-Groupsio-MsgNum: 40302
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_"

--_004_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_"

--_000_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi guys,


As for now (master branch) 'PACKAGES' variable in net-snmp equals to:

```

$ bitbake -e net-snmp | grep "^PACKAGES=3D"

PACKAGES=3D"net-snmp-dbg net-snmp-staticdev net-snmp-dev net-snmp-doc net-s=
nmp-locale  net-snmp net-snmp-libs net-snmp-mibs net-snmp-server net-snmp-c=
lient net-snmp-server-snmpd net-snmp-server-snmptrapd "
```


This seems to be wrong as many built packages from 'packages-split' directo=
ry of net-snmp are empty:

```
$ du -a --max-depth=3D1 . | sort -n
4    ./net-snmp
4    ./net-snmp-client.shlibdeps
4    ./net-snmp-doc
4    ./net-snmp-libs.shlibdeps
4    ./net-snmp-locale
4    ./net-snmp-server
4    ./net-snmp-server-snmpd.shlibdeps
4    ./net-snmp-server-snmptrapd.shlibdeps
4    ./net-snmp-staticdev
48    ./net-snmp-server-snmptrapd
72    ./net-snmp-server-snmpd
1208    ./net-snmp-dev
1480    ./net-snmp-client
1812    ./net-snmp-mibs
2872    ./net-snmp-libs
15308    ./net-snmp-dbg
```

Well, the culprit commit is 5eec0615e548f58ecdfadfc45af5805eeb58f69c where =
the below change has happened:
```
-PACKAGES =3D "${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-static $=
{PN}-libs \
-            ${PN}-mibs ${PN}-server ${PN}-client ${PN}-server-snmpd ${PN}-=
server-snmptrapd"
+PACKAGES +=3D "${PN}-libs ${PN}-mibs ${PN}-server ${PN}-client ${PN}-serve=
r-snmpd ${PN}-server-snmptrapd"
```

This new 'PACKAGES' variable is wrong IMHO, because it contains
the 'net-snmp' package and other empty packages.


Please review (and apply if ok) the attached commit that fixes it.


Thanks,

--- Kosta Z.

--_000_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi guys,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">As for now (master branch) 'PACKA=
GES' variable in net-snmp equals to:</p>
<p style=3D"margin-top:0;margin-bottom:0">```<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">$ bitbake -e net-snmp | grep &quo=
t;^PACKAGES=3D&quot;</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>PACKAGES=3D&quot;net-snmp-dbg net-snmp-staticdev net-snmp-dev net-snmp=
-doc net-snmp-locale&nbsp; net-snmp net-snmp-libs net-snmp-mibs net-snmp-se=
rver net-snmp-client net-snmp-server-snmpd net-snmp-server-snmptrapd &quot;=
<br>
```<br>
<br>
</div>
<p style=3D"margin-top:0;margin-bottom:0">This seems to be wrong as many bu=
ilt packages from 'packages-split' directory of net-snmp are empty:<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>```<br>
$ du -a --max-depth=3D1 . | sort -n<br>
4&nbsp;&nbsp; &nbsp;./net-snmp<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-client.shlibdeps<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-doc<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-libs.shlibdeps<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-locale<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-server<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-server-snmpd.shlibdeps<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-server-snmptrapd.shlibdeps<br>
4&nbsp;&nbsp; &nbsp;./net-snmp-staticdev<br>
48&nbsp;&nbsp; &nbsp;./net-snmp-server-snmptrapd<br>
72&nbsp;&nbsp; &nbsp;./net-snmp-server-snmpd<br>
1208&nbsp;&nbsp; &nbsp;./net-snmp-dev<br>
1480&nbsp;&nbsp; &nbsp;./net-snmp-client<br>
1812&nbsp;&nbsp; &nbsp;./net-snmp-mibs<br>
2872&nbsp;&nbsp; &nbsp;./net-snmp-libs<br>
15308&nbsp;&nbsp; &nbsp;./net-snmp-dbg<br>
```<br>
</div>
<br>
Well, the culprit commit is <span>5eec0615e548f58ecdfadfc45af5805eeb58f69c<=
/span> where the below change has happened:<br>
```<br>
<div>-PACKAGES =3D &quot;${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN=
}-static ${PN}-libs \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${PN}-m=
ibs ${PN}-server ${PN}-client ${PN}-server-snmpd ${PN}-server-snmptrapd&quo=
t;<br>
&#43;PACKAGES &#43;=3D &quot;${PN}-libs ${PN}-mibs ${PN}-server ${PN}-clien=
t ${PN}-server-snmpd ${PN}-server-snmptrapd&quot;<br>
```<br>
<br>
This new 'PACKAGES' variable is wrong IMHO, because it contains<br>
the 'net-snmp' package and other empty packages.<br>
</div>
<p></p>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Please review (and apply if ok) t=
he attached commit that fixes it.<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">--- Kosta Z.</p>
</div>
</body>
</html>

--_000_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_--

--_004_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_
Content-Type: text/x-patch;
	name="0001-Fix-PACKAGES-for-net-snmp-to-create-only-the-correct.patch"
Content-Description: 0001-Fix-PACKAGES-for-net-snmp-to-create-only-the-correct.patch
Content-Disposition: attachment;
	filename="0001-Fix-PACKAGES-for-net-snmp-to-create-only-the-correct.patch";
	size=2596; creation-date="Sun, 18 Mar 2018 06:45:55 GMT";
	modification-date="Sun, 18 Mar 2018 06:45:55 GMT"
Content-Transfer-Encoding: base64

RnJvbSBkNTcxMWUyNzlkOTUzMDdhYThiYjJiYmRkMGJiMzExMjA3Mjg3ZTYyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBLb3N0YSBaZXJ0c2VrZWwgPGt6ZXJ0c2VrZWxAYWR2YW9wdGlj
YWwuY29tPgpEYXRlOiBTdW4sIDE4IE1hciAyMDE4IDA4OjQzOjExICswMjAwClN1YmplY3Q6IFtQ
QVRDSF0gRml4IFBBQ0tBR0VTIGZvciBuZXQtc25tcCB0byBjcmVhdGUgb25seSB0aGUgY29ycmVj
dCBuZXQtc25tcAogcGFja2FnZXMKCkFzIGZvciBub3cgKG1hc3RlciBicmFuY2gpICdQQUNLQUdF
UycgdmFyaWFibGUgaW4gbmV0LXNubXAgZXF1YWxzIHRvOgpgYGAKJCBiaXRiYWtlIC1lIG5ldC1z
bm1wIHwgZ3JlcCAiXlBBQ0tBR0VTPSIKUEFDS0FHRVM9Im5ldC1zbm1wLWRiZyBuZXQtc25tcC1z
dGF0aWNkZXYgbmV0LXNubXAtZGV2IG5ldC1zbm1wLWRvYyBcCiAgICAgICAgICBuZXQtc25tcC1s
b2NhbGUgIG5ldC1zbm1wIG5ldC1zbm1wLWxpYnMgbmV0LXNubXAtbWlicyAgICAgXAogICAgICAg
ICAgbmV0LXNubXAtc2VydmVyIG5ldC1zbm1wLWNsaWVudCBuZXQtc25tcC1zZXJ2ZXItc25tcGQg
ICAgIFwKICAgICAgICAgIG5ldC1zbm1wLXNlcnZlci1zbm1wdHJhcGQiCmBgYAoKVGhpcyBzZWVt
cyB0byBiZSB3cm9uZyBhcyBtYW55IGJ1aWx0IHBhY2thZ2VzIGZyb20KJ3BhY2thZ2VzLXNwbGl0
JyBkaXJlY3Rvcnkgb2YgbmV0LXNubXAgYXJlIGVtcHR5OgpgYGAKJCBkdSAtYSAtLW1heC1kZXB0
aD0xIC4gfCBzb3J0IC1uCjQgICAgLi9uZXQtc25tcAo0ICAgIC4vbmV0LXNubXAtY2xpZW50LnNo
bGliZGVwcwo0ICAgIC4vbmV0LXNubXAtZG9jCjQgICAgLi9uZXQtc25tcC1saWJzLnNobGliZGVw
cwo0ICAgIC4vbmV0LXNubXAtbG9jYWxlCjQgICAgLi9uZXQtc25tcC1zZXJ2ZXIKNCAgICAuL25l
dC1zbm1wLXNlcnZlci1zbm1wZC5zaGxpYmRlcHMKNCAgICAuL25ldC1zbm1wLXNlcnZlci1zbm1w
dHJhcGQuc2hsaWJkZXBzCjQgICAgLi9uZXQtc25tcC1zdGF0aWNkZXYKNDggICAgLi9uZXQtc25t
cC1zZXJ2ZXItc25tcHRyYXBkCjcyICAgIC4vbmV0LXNubXAtc2VydmVyLXNubXBkCjEyMDggICAg
Li9uZXQtc25tcC1kZXYKMTQ4MCAgICAuL25ldC1zbm1wLWNsaWVudAoxODEyICAgIC4vbmV0LXNu
bXAtbWlicwoyODcyICAgIC4vbmV0LXNubXAtbGlicwoxNTMwOCAgICAuL25ldC1zbm1wLWRiZwpg
YGAKCldlbGwsIHRoZSBjdWxwcml0IGNvbW1pdCBpcyA1ZWVjMDYxNWU1NDhmNThlY2RmYWRmYzQ1
YWY1ODA1ZWViNThmNjljCndoZXJlIHRoZSBiZWxvdyBjaGFuZ2UgaGFzIGhhcHBlbmVkOgpgYGAK
LVBBQ0tBR0VTID0gIiR7UE59LWRiZyAke1BOfS1kb2MgJHtQTn0tZGV2ICR7UE59LXN0YXRpY2Rl
diAke1BOfS1zdGF0aWMgJHtQTn0tbGlicyBcCi0gICAgICAgICAgICAke1BOfS1taWJzICR7UE59
LXNlcnZlciAke1BOfS1jbGllbnQgJHtQTn0tc2VydmVyLXNubXBkICR7UE59LXNlcnZlci1zbm1w
dHJhcGQiCitQQUNLQUdFUyArPSAiJHtQTn0tbGlicyAke1BOfS1taWJzICR7UE59LXNlcnZlciAk
e1BOfS1jbGllbnQgJHtQTn0tc2VydmVyLXNubXBkICR7UE59LXNlcnZlci1zbm1wdHJhcGQiCmBg
YAoKVGhpcyBuZXcgJ1BBQ0tBR0VTJyB2YXJpYWJsZSBpcyB3cm9uZyBJTUhPLCBiZWNhdXNlIGl0
IGNvbnRhaW5zCnRoZSAnbmV0LXNubXAnIHBhY2thZ2UgYW5kIG90aGVyIGVtcHR5IHBhY2thZ2Vz
LgoKU2lnbmVkLW9mZi1ieTogS29zdGEgWmVydHNla2VsIDxremVydHNla2VsQGFkdmFvcHRpY2Fs
LmNvbT4KLS0tCiBtZXRhLW5ldHdvcmtpbmcvcmVjaXBlcy1wcm90b2NvbHMvbmV0LXNubXAvbmV0
LXNubXBfNS43LjMuYmIgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tZXRhLW5ldHdvcmtpbmcvcmVjaXBlcy1wcm90b2Nv
bHMvbmV0LXNubXAvbmV0LXNubXBfNS43LjMuYmIgYi9tZXRhLW5ldHdvcmtpbmcvcmVjaXBlcy1w
cm90b2NvbHMvbmV0LXNubXAvbmV0LXNubXBfNS43LjMuYmIKaW5kZXggM2MwNTg3NC4uYmIxMTNh
OCAxMDA2NDQKLS0tIGEvbWV0YS1uZXR3b3JraW5nL3JlY2lwZXMtcHJvdG9jb2xzL25ldC1zbm1w
L25ldC1zbm1wXzUuNy4zLmJiCisrKyBiL21ldGEtbmV0d29ya2luZy9yZWNpcGVzLXByb3RvY29s
cy9uZXQtc25tcC9uZXQtc25tcF81LjcuMy5iYgpAQCAtMTY1LDcgKzE2NSw3IEBAIG5ldF9zbm1w
X3N5c3Jvb3RfcHJlcHJvY2VzcyAoKSB7CiAgICAgZmkKIH0KIAotUEFDS0FHRVMgKz0gIiR7UE59
LWxpYnMgJHtQTn0tbWlicyAke1BOfS1zZXJ2ZXIgJHtQTn0tY2xpZW50ICR7UE59LXNlcnZlci1z
bm1wZCAke1BOfS1zZXJ2ZXItc25tcHRyYXBkIgorUEFDS0FHRVMgPSAiJHtQTn0tZGJnICR7UE59
LWRldiAke1BOfS1saWJzICR7UE59LW1pYnMgJHtQTn0tY2xpZW50ICR7UE59LXNlcnZlci1zbm1w
ZCAke1BOfS1zZXJ2ZXItc25tcHRyYXBkIgogCiAjIHBlcmwgbW9kdWxlCiBQQUNLQUdFUyArPSAi
JHtAYmIudXRpbHMuY29udGFpbnMoJ1BBQ0tBR0VDT05GSUcnLCAncGVybCcsICcke1BOfS1wZXJs
LW1vZHVsZXMnLCAnJywgZCl9IgotLSAKMi43LjQKCg==

--_004_VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50VI1PR0202MB2559_--
