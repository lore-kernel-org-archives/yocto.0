Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68A87E00890; Sat, 11 Mar 2017 16:54:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
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
X-Greylist: delayed 3659 seconds by postgrey-1.32 at yocto-www;
	Sat, 11 Mar 2017 16:54:47 PST
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255025.outbound.protection.outlook.com [40.92.255.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB32E0074B
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 16:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=QpnZqpCVifj++KexxD6gqnFP5acrifWxegPX0x7A9ts=;
	b=nzleuDNn93y7O7DX41RRdNzljTsYVVwyOuYI34I8Pqfq/c8qH98NF+YodWp1eFdI1U3EL3Qylr09m+qTPSrf2MZTck3PP32FewkbXTVP2CEYEyy7bVUr2YIIqhaqSkslHk9skYqT7wwS7mrZFFbQ8SetAHYv6VT6d1zCZl3yEX4849BYrL/e9c0T6pMHTTS8KbuUQ6t/RqrylkIZtg2oCDmKuajOq3vw07lLyvElRAWGDzP07th2rtLbumNkDsO02OAiqDJfgn+gyqsLjUA7LC4Czw1doX2aiEJBZeN5Fmz5Tt9+X3E5diaJuF7wl7DEMgpUA6G2o52k/mlw8nIklQ==
Received: from HK2APC01FT037.eop-APC01.prod.protection.outlook.com
	(10.152.248.59) by HK2APC01HT071.eop-APC01.prod.protection.outlook.com
	(10.152.248.229) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7;
	Sat, 11 Mar 2017 13:19:44 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com (10.152.248.51) by
	HK2APC01FT037.mail.protection.outlook.com (10.152.248.223) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.947.7 via
	Frontend Transport; Sat, 11 Mar 2017 13:19:44 +0000
Received: from SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) by
	SG2PR0301MB2016.apcprd03.prod.outlook.com ([10.167.80.14]) with mapi id
	15.01.0961.018; Sat, 11 Mar 2017 13:19:43 +0000
From: Steve Plant <steove@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Raspberry pi build with gstreamer1.0 error - No recipes avalible.
Thread-Index: AQHSmmojYGvXsxY1tEO1Gyh7ZEU3ig==
Date: Sat, 11 Mar 2017 13:19:42 +0000
Message-ID: <SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230@SG2PR0301MB2016.apcprd03.prod.outlook.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:81D87DF71173FDE25EDF986FECCE51D76E6609EBEB9D140A97F05F6E7A5DA97D;
	UpperCasedChecksum:BFE7BE5579595EB76E64CB85856031C426FE3A8CA298DD92CEC0542DA7E1F071;
	SizeAsReceived:7672; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [p7XeFHjG8vRIotkcYZFVc62ooqVl2MZc]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HK2APC01HT071;
	5:wKeT+gCFeWbvGS8vxbHHXS0W/eP6v930si8Q4AaPsR42NAAb4vUTYXc2r+sTdwfAB7YgD3wftKoeyq2y6g3JSL4BcaSV7bPX7dlxxz8Eavznm+Qb31pLKzd+5q0yDpcoIFyXdf02gaSq/aM7KLfY9g==;
	24:9EFmtuiHXtX0W3KyjyVQfFba+Rol/+0O+cqwehuQQObaQgtVXbnNs1OCloXAswCDAAECM2U6jPuA0WKNrGkT2d40G632kYmGLr61Vix5Om4=;
	7:GndmRz0v3hixCGB4C+/qq6Gf8mkGgjh8WSqM0Ia80QXaMzrXa2AG7aCBxYObWG0lXTJ/I4H5HB8BNOX8rbJwsh8dgm/YPpXxngFCIW/6Qv/pa5XRA5kGe521X0QCNN7DNIH0edNUcBFDnYM93aWYRcw6pvMKcEO1cQE+lvsujL1dPyhKwdfqNSPru8vtPkDOluCcAK+/XSz+bA6gvy3W+2WCGPGLUnuJ059OvkzdWL4rWfZRYLgxOj7SPspBbTKrCPprViRbMns9t8zZbFC/q0EYccUEC3KjCPHUY8QOU2o7cos09maFuvkty6nMOQZQ
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98900016);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HK2APC01HT071;
	H:SG2PR0301MB2016.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 0b2c790a-6bb8-491d-f962-08d4688147f6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1603101448)(1601125254)(1701031045);
	SRVR:HK2APC01HT071; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:HK2APC01HT071; BCL:0; PCL:0; RULEID:; SRVR:HK2APC01HT071; 
x-forefront-prvs: 0243E5FD68
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2017 13:19:42.9277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT071
Subject: Raspberry pi build with gstreamer1.0 error - No recipes avalible.
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
X-List-Received-Date: Sun, 12 Mar 2017 00:54:52 -0000
Content-Language: en-NZ
Content-Type: multipart/alternative;
	boundary="_000_SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230SG2PR0301MB2016_"

--_000_SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230SG2PR0301MB2016_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

Starting a brand new project for the rasberry pi2, on the master branch, us=
ing toaster to start/monitor the build.

Everything set up for the most basic build, however when I build "rpi-basic=
-image" it fails with this error:

No recipes available for:
  /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_meta-r=
aspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbapp=
end
  /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_meta-r=
aspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappen=
d


Looking through some of the recent changes on this mailing list, the gstrea=
mer1.0 package got a change recently. has anybody else come across this err=
or?



Regards, Steve.

--_000_SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230SG2PR0301MB2016_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<pre>Hi all,<br><br>Starting a brand new project for the rasberry pi2, on t=
he master branch, using toaster to start/monitor the build.<br><br>Everythi=
ng set up for the most basic build, however when I build &quot;rpi-basic-im=
age&quot; it fails with this error:<br><br>No recipes available for:=0A=
  /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_meta-r=
aspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbapp=
end=0A=
  /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_meta-r=
aspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappen=
d</pre>
<br>
<p></p>
<p>Looking through some of the recent changes on this mailing list, the gst=
reamer1.0 package got a change recently. has anybody else come across this =
error?<br>
</p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature">Regards, Steve. </div>
</div>
</body>
</html>

--_000_SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230SG2PR0301MB2016_--
