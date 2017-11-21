Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82F59E00CEF; Tue, 21 Nov 2017 04:46:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.217.199.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 872 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Nov 2017 04:46:14 PST
Received: from mail.advaoptical.com (mail.advaoptical.com [91.217.199.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B45E00AF2
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 04:46:14 -0800 (PST)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur03lp0081.outbound.protection.outlook.com [94.245.120.81])
	by muc-vsrv-fsmail.advaoptical.com (8.16.0.21/8.16.0.21) with ESMTPS id
	vALCVeZl019110
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 13:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=I9PX2/GZIa+MynXnp9EqmPgov7awoHSWX5aw8fZNVSw=;
	b=D/CctI/TK1dDsooyC8bq6/ILILTYysblqv1xjfvX5UvFUMIQyTz4igrQzLTgv9aKDw0QUa5pRw7bjfcgfi0A8/iiCAvIRRBOSZAosyxz1KBb+u9CZnmh9zw2BlPQ4gKZMs3piRCUeKiemJvTyR0nX3KW8TOAYoJVAM45VGhv33s=
Received: from AM2PR02MB289.eurprd02.prod.outlook.com (10.160.30.18) by
	HE1PR0202MB2875.eurprd02.prod.outlook.com (10.171.93.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Tue, 21 Nov 2017 12:31:38 +0000
Received: from AM2PR02MB289.eurprd02.prod.outlook.com
	([fe80::7530:7059:43ac:e40d]) by AM2PR02MB289.eurprd02.prod.outlook.com
	([fe80::7530:7059:43ac:e40d%14]) with mapi id 15.20.0239.009;
	Tue, 21 Nov 2017 12:31:37 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building safplus 6.1 with Yocto 2.4 Rocko
Thread-Index: AQHTYsOtKAyIUg7fa0KlovHr34Uf6g==
Date: Tue, 21 Nov 2017 12:31:37 +0000
Message-ID: <AM2PR02MB2898EC1241A133410CAF00ECD230@AM2PR02MB289.eurprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0202MB2875;
	6:gLYqpiJ32XRW8Qj/sxpHxt2yorXq0sAV7DuIkfUpmABFI6jjkdQA/uJS/W93p/fZWZSPn9Rbk0YqfAit0535rQbTUYPs9jpyzG4HogCzLFNHOwmqUYXMgNbQWK2s4SaZjr2PkVvsM/xleQHSHalpe94NyQ6qz2E1If/m+VwHK3PtpbBYoU15etJdKSwQA0N8uhvgiAWdEcaMSYu0LqaGiIw1UgcypSfVsGDsngJ5NuLtmj674KslQJdqbMLzVbN19Aa9P7RNYbjaUY0F3yDTys/Jnvpufpdk16T0DFpNG2Bryh2hMj2LcLrCwcrWwEcADGCqLvZZl0QvD7IaAqaAfhzi4I1vOuHPskTr+sjpHxs=;
	5:WZn9r0TVvYLO064e/UArubJvLvfsZFOHWRVZBfPQ8+O2Thfu9B1j22/AMyvdle8AWyMMthJyNjl9mkk5gsZTbquj1P3PMBdVtkjVWwOTgEBdHRFjqT8dVS1RamkkWE7CArwzMgo/g5323SVqfd++6VyV8q5/54Ay/Ng1ciRIg+w=;
	24:YzlyueSGJraKnU//ckDbzaQDoiF/ByMiKZnE+r2+4GP1zYAtAYDWFqcipS1ZhgiSDMBWcgdiQ3n60rQfOR147e0EiU9+AEjSBl+VjvZg7WI=;
	7:CMjBFgwr77d1fEL0jO7yLdqByqmvYj0GOpZK6QfX5aH3Q2RVvsl6OTiXAHf0OgLkVq4vb/c+e/XttmKcb0veaMhcKf9BVAfoETKATv5scJ6Y/WfxvOhcQ+jcmVLO8rEgi5RMzSUsRm68Mi8Ib1hwtG/VwHrinCKtT6sZsIp4jN5lv1ROCZguM+x1wco5Rhz7e3Eh1UXg3pWoyH0Xu0ROL3vUFSw04jsa3ricinKfj8tmKuenxGh1wWiblid5W4F2
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(346002)(199003)(189002)(8936002)(2900100001)(6436002)(6506006)(4326008)(6606003)(5640700003)(6116002)(6916009)(55016002)(102836003)(3846002)(50986999)(54356999)(14454004)(316002)(99286004)(86362001)(66066001)(54906003)(189998001)(8676002)(68736007)(101416001)(105586002)(81156014)(19627405001)(2351001)(1730700003)(80792005)(72206003)(25786009)(97736004)(81166006)(478600001)(5250100002)(2906002)(74316002)(7736002)(5660300001)(7696004)(3280700002)(107886003)(53936002)(9686003)(3660700001)(54896002)(33656002)(106356001)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0202MB2875;
	H:AM2PR02MB289.eurprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: d961f7bd-a42b-4efa-1907-08d530dbcf42
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:HE1PR0202MB2875; 
x-ms-traffictypediagnostic: HE1PR0202MB2875:
x-microsoft-antispam-prvs: <HE1PR0202MB2875C999F36FCFB195F63F7FCD230@HE1PR0202MB2875.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(3231022)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(6041248)(20161123558100)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123560025)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0202MB2875; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0202MB2875; 
x-forefront-prvs: 049897979A
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d961f7bd-a42b-4efa-1907-08d530dbcf42
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2017 12:31:37.4729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0202MB2875
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-11-21_04:, , signatures=0
X-Mailman-Approved-At: Tue, 21 Nov 2017 08:05:58 -0800
Cc: Barak Adam <BAdam@advaoptical.com>,
	Ilja Tabachnik <ITabachnik@advaoptical.com>,
	Dan Dovolsky <DDovolsky@advaoptical.com>
Subject: Building safplus 6.1 with Yocto 2.4 Rocko
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
X-List-Received-Date: Tue, 21 Nov 2017 12:46:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM2PR02MB2898EC1241A133410CAF00ECD230AM2PR02MB289eurprd_"

--_000_AM2PR02MB2898EC1241A133410CAF00ECD230AM2PR02MB289eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi guys,


I'm trying to build safplus 6.1 with Yocto 2.4 Rocko branch.

But after running "bitbake safplus" (right after git clone is finished) it =
fails...


My `conf/bblayers.conf` file is as below:


```
# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-poky \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-yocto-bsp \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/meta-python \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/meta-networki=
ng \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/meta-oe \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openclovis \
  /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-intel \
```


Then I do "bitbake safplus" and get the below error:


```
'...build/tmp/work/core2-32-poky-linux/safplus/6.1-r0/safplus-6.1/src/SAFpl=
us/COPYING'
ERROR: safplus-6.1-r0 do_populate_lic: QA Issue: safplus:
LIC_FILES_CHKSUM points to an invalid file: .../build/tmp/work/core2-32-pok=
y-linux/safplus/6.1-r0/safplus-6.1/src/SAFplus/COPYING [license-checksum]
```


But, then I check the content of "tmp/work/core2-32-poky-linux/safplus/6.1-=
r0/safplus-6.1" directory and ... it is **empty**!


Did anyone see that problem?

Do you have any clues?


Thanks,

--- Kosta Z.

--_000_AM2PR02MB2898EC1241A133410CAF00ECD230AM2PR02MB289eurprd_
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
<p>Hi guys,</p>
<p><br>
</p>
<p>I'm trying to build safplus&nbsp;6.1 with Yocto 2.4 Rocko branch.</p>
<p>But after running &quot;bitbake safplus&quot; (right after git clone is =
finished) it fails...</p>
<p><br>
</p>
<p>My `<span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFon=
t, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoj=
i, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fo=
nt-size: 16px;">conf/bblayers.conf` file is as below:</span></p>
<p><br>
</p>
<p></p>
<div>```</div>
<div># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayer=
s.conf</div>
<div># changes incompatibly</div>
<div>POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;</div>
<div><br>
</div>
<div>BBPATH =3D &quot;${TOPDIR}&quot;</div>
<div>BBFILES ?=3D &quot;&quot;</div>
<div><br>
</div>
<div>BBLAYERS ?=3D &quot; \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-poky \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-yocto-bsp \</div=
>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/met=
a-python \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/met=
a-networking \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openembedded/met=
a-oe \</div>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-openclovis \</di=
v>
<div>&nbsp; /home/mrv/My/MRV/yocto_all/rocko_all/poky/meta-intel \</div>
<div>```</div>
<p><br>
</p>
Then I do &quot;bitbake safplus&quot; and get the below error:
<p></p>
<p><br>
</p>
<p></p>
<div>```</div>
<div>'...build/tmp/work/core2-32-poky-linux/safplus/6.1-r0/safplus-6.1/src/=
SAFplus/COPYING'</div>
<div>ERROR: safplus-6.1-r0 do_populate_lic: QA Issue: safplus:</div>
<div>LIC_FILES_CHKSUM points to an invalid file: .../build/tmp/work/core2-3=
2-poky-linux/safplus/6.1-r0/safplus-6.1/src/SAFplus/COPYING [license-checks=
um]</div>
<div>```</div>
<p></p>
<p><br>
</p>
<p>But, then I check the content of &quot;tmp/work/core2-32-poky-linux/safp=
lus/6.1-r0/safplus-6.1&quot; directory and ... it is **empty**!</p>
<p><br>
</p>
<p>Did anyone see that problem?</p>
<p>Do you have any clues?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- Kosta Z.</p>
</div>
</body>
</html>

--_000_AM2PR02MB2898EC1241A133410CAF00ECD230AM2PR02MB289eurprd_--
