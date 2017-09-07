Return-Path: <paritosh_singh@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66719E00DB1; Thu,  7 Sep 2017 23:27:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (paritosh_singh[at]live.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.255.29 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18109 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Sep 2017 23:27:47 PDT
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255029.outbound.protection.outlook.com [40.92.255.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9334E00DAE
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 23:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+qrqmYQwQGgFgVqPZbedWZu/sPeYF+ykhEcL+bSstJw=;
	b=hJrjXR1C1qh3w1o3ksfLBuY0Bp55UqVGaNMFgFjqIeMwR5nMGy4iqUMLzxApqekzBmh0et54EbrORcKXo6mQR/uprK+5aQJBmVSlJOk49bpyCVwH3bJ9z9FPQT4LiLz+NHH6t11L8bXS+hNWNGy1FTKJuCmdqqDmj9V6z8GZ1ZdutC4TK8yUjCczg8647RpNNsdB2vqnL1QXf3ObmLIL+GJPbIntC8WG0zlNMvy7kMRsWWOhT6GJEHdTFgru2iHUJ4AviQ+sCsQi1Ka2lqgz9H56cdP4i9iwN3LINKXNOcnOdLzMsNqES7edFqHmFCvKrua+BQ35tKDyIxIeYf+/bw==
Received: from HK2APC01FT040.eop-APC01.prod.protection.outlook.com
	(10.152.248.51) by HK2APC01HT024.eop-APC01.prod.protection.outlook.com
	(10.152.249.165) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1385.11;
	Thu, 7 Sep 2017 11:53:20 +0000
Received: from SG2PR0601MB1342.apcprd06.prod.outlook.com (10.152.248.54) by
	HK2APC01FT040.mail.protection.outlook.com (10.152.249.42) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1385.11 via Frontend Transport; Thu, 7 Sep 2017 11:53:20 +0000
Received: from SG2PR0601MB1342.apcprd06.prod.outlook.com
	([fe80::e8cc:cc2c:8f01:faec]) by
	SG2PR0601MB1342.apcprd06.prod.outlook.com
	([fe80::e8cc:cc2c:8f01:faec%14]) with mapi id 15.20.0035.010;
	Thu, 7 Sep 2017 11:53:20 +0000
From: Paritosh Singh <paritosh_singh@live.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: ERROR: fsl-image-qt5: Recipe file does not have license file
	information (LIC_FILES_CHKSUM)
Thread-Index: AQHTJ8963hfeCVyCp0yVTjf6F9w+zw==
Date: Thu, 7 Sep 2017 11:53:20 +0000
Message-ID: <SG2PR0601MB134212C09C2126CAE4D1F0398D940@SG2PR0601MB1342.apcprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:045655FB1704562CAF29E7BBF92C898BAD018C3E559DF3F5D3B129ACB481246E;
	UpperCasedChecksum:0A93F20953AB47668704E5B2FDFF74E219FB878567067A6E46A9C1A83E472554;
	SizeAsReceived:7005; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LGUg5Zncv4HZkTIydSOctmJsaG2W4eymNmkbJM0JFlU=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2APC01HT024;
	6:9vVCXX5sJq5SUwUQEs44ByRkQzkMmvcDBh+lVXln+AZ9reHOPYNCnmIWY3Pg4i2BdJkkRxZntdBymVlPzh7CyZji6vGSCdAW1cZKyZEckuEY2YuSrOigOQ7+pDQ2b5kenlyaN/R1x1G+6xLaTVnsGAbLiIzQ/Uhh/KjLe3SpLLiiP9eLCASp8sAjC6FwSihW4oc9HpNGsBevnkqSI4JfQ3Lf8aa3tHedYMR36U5d9elJBeJnEj2P+Mr9IZ1UvOZDDyjtIbUybteQFygp90ur6V7BfOEfCdpUdZTtAy2/iEvSrF0fcrCAMkxWulEUuT8Ja994N6VKNGtRys84JN9vKg==;
	5:qUW0Jwhvql3RO9XWfpJWTHcqxzSVaqiRbqFW7Qg0leC+TUYz4AGi5gqOTCVgqt3HIMZwVBTcXyjxQzVOqspg+tGNA+PDQBo3dNBKBKjDCt9z2IB+vmWqAMt+s5KlnDjVMEQwSoZwlo+Ff80o8td5BQ==;
	24:lHUvm445dfqsq6msoERfotJlOOz7iqHoGTz/ajjY4vCdlRF/DDjsB9S7neJQjb2XDuS09Ysl4S60HPf4U/dwZRjtnOUEeKXMtlz5+sL6ThY=;
	7:/5bkXyNBwJQzW65Q7Piv382gqC6GlEyGLxnrTHbCJ0qV6xI5kyoTIJvoFrWEIA1RvkjHiEYuySKc9atktduntJ0f6mq4JhOuKdt8V2EkKJxlfgUFYKHLbwMXoYZ8lqXEbHU5yHr3V01oLkP4vW2B85b9MgKoupmYaqPxMHMrmV/7U8GwibYvsweZkcFnEwtY+X50A2t1JDEHHBYr+Um8jvy+cDBG0n/J3joa1SQp90g=
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c83e72ea-a027-4606-8c7e-08d4f5e70941
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HK2APC01HT024; 
x-ms-traffictypediagnostic: HK2APC01HT024:
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HK2APC01HT024; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2APC01HT024; 
x-forefront-prvs: 04238CD941
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:HK2APC01HT024;
	H:SG2PR0601MB1342.apcprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2017 11:53:20.7155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT024
Subject: ERROR: fsl-image-qt5: Recipe file does not have license file information (LIC_FILES_CHKSUM)
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
X-List-Received-Date: Fri, 08 Sep 2017 06:27:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0601MB134212C09C2126CAE4D1F0398D940SG2PR0601MB1342_"

--_000_SG2PR0601MB134212C09C2126CAE4D1F0398D940SG2PR0601MB1342_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Team,


I have successfully used yocto for fsl-image-qt5, but the rootfs generated =
from this is 1.1 Gb.

In order reduce the size of generated rootfs I have removed "require recipe=
s-fsl/images/fsl-image-gui.bb" line from fsl-image-qt5. After that I am get=
ting this error

ERROR: fsl-image-qt5: Recipe file does not have license file information (L=
IC_FILES_CHKSUM)
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
ERROR: Function failed: do_qa_configure
ERROR: Logfile of failure stored in: /fsl-release-bsp/build-imx7/tmp/work/c=
ortexa7hf-vfp-neon-poky-linux-gnueabi/fsl-image-qt5/1.0-r0/temp/log.do_conf=
igure.28946
ERROR: Task 5 (/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/r=
ecipes-fsl/images/fsl-image-qt5.bb, do_configure) failed with exit code '1'

Can someone help me out regarding this.

Regards,
Paritosh Singh


--_000_SG2PR0601MB134212C09C2126CAE4D1F0398D940SG2PR0601MB1342_
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
<p>Dear Team,</p>
<p><br>
</p>
<p>I have successfully used yocto for fsl-image-qt5, but the rootfs generat=
ed from this is 1.1 Gb.<br>
</p>
<p>In order reduce the size of generated rootfs I have removed &quot;<span>=
require recipes-fsl/images/fsl-image-gui.bb&quot; line from fsl-image-qt5. =
After that I am getting this error</span></p>
<p><span></p>
<div>ERROR: fsl-image-qt5: Recipe file does not have license file informati=
on (LIC_FILES_CHKSUM)<br>
ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix<br>
ERROR: Function failed: do_qa_configure<br>
ERROR: Logfile of failure stored in: /fsl-release-bsp/build-imx7/tmp/work/c=
ortexa7hf-vfp-neon-poky-linux-gnueabi/fsl-image-qt5/1.0-r0/temp/log.do_conf=
igure.28946<br>
ERROR: Task 5 (/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/r=
ecipes-fsl/images/fsl-image-qt5.bb, do_configure) failed with exit code '1'=
<br>
<br>
Can someone help me out regarding this.<br>
<br>
Regards,<br>
Paritosh Singh<br>
</div>
</span><br>
<p></p>
</div>
</body>
</html>

--_000_SG2PR0601MB134212C09C2126CAE4D1F0398D940SG2PR0601MB1342_--
