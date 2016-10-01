Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7233E00C7A; Sat,  1 Oct 2016 06:58:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.90.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC2S14.hotmail.com (snt004-omc2s14.hotmail.com
	[65.55.90.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 673B8E00712
	for <yocto@yoctoproject.org>; Sat,  1 Oct 2016 06:58:52 -0700 (PDT)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.90.73])
	by SNT004-OMC2S14.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 1 Oct 2016 06:58:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=BvXe9VfcolnVNhZVMiY0JlT6PEE1fr16G7R1Vfk1EXM=;
	b=d+xxCv48pAvCpHEUMpU22i03GpPZfdM+3yghwFQ9lVlWXpO8Q5HkrmX8wkmAwWmbfqqEc/uIDUlhdWE/RMccuq9g0znJCQOuVA7WEbcdfr/+ehg6CjmmamNH/cOf0g+I36mKEHzWYqNAAWFf/S8vAYfIdPjqJ7ibHwToAajrd0LuZ3q35aJTm7Q1CdLiOQXr/bomU4wSDKDzv8rWinbmcrGMTN3ThavQMXoI3fkYazzneXheha0+27opYbwHIGZ5H420Pzf7MUaqBTpgOh37S03B8D0HY7G4edZTYPgiaOM27m/If/FQ/vPdEEnJ62igCQYFScLy7tkwSofTzdDMPQ==
Received: from HE1EUR02FT041.eop-EUR02.prod.protection.outlook.com
	(10.152.10.51) by HE1EUR02HT039.eop-EUR02.prod.protection.outlook.com
	(10.152.10.183) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Sat, 1 Oct 2016 13:58:50 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.10.57) by
	HE1EUR02FT041.mail.protection.outlook.com (10.152.11.146) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Sat, 1 Oct 2016 13:58:50 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.021; Sat, 1 Oct 2016 13:58:49 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] failed to copy the final ***rootfs.rpi-sdimg image file
Thread-Index: AQHSG+uArsaiYzMDWE+tF1HZonrULg==
Date: Sat, 1 Oct 2016 13:58:49 +0000
Message-ID: <HE1PR01MB1883689936BC3BB3FEECED4092C00@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.10.57)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.10.57 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [xx+IbCq9HXak8EYdYv+rEj71J2illu4t]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT039;
	6:Nz1pFyT8x3bMIZFC/yFGfvRoUKA11EcNmeZpfpi0MuxyPezQBLlgD9Yy4mk5BERQ7cyoimqN9ttKKKn/Eia3xzuLWXtQNk9HzQfWrriyYs45TT02lrtc4CnV/HQXoJBNYHQeFIjlJXQvgEkvG8hZIVa4Np+DDWdSwlXrPcN/dVawhVHgXhO0ulB1QPKg6Dnj/WA9Y54W5pR6y2tFbxsMpaTIsDISXJuhiVh7QoJiY+tfORKdwdevc1FJ4FHaZt2KuHw4QgQLf6gEeLxK4kSIPDeRXQAb6vh1oURZWSl5HoM=;
	5:wrGLhbcdXDWBBYqODBMUP4m3873w8uUaxTuSxYrxcob4x3IxdP7xbBCOnqFh2irUV8M/ZPndR0Rj23f/5BOUY1QqAATkL78gexrdw9/Nweg4i4+UnrYKLz52UctiJC/wRe/sJOrQxiy/NUSKxA0MpA==;
	24:Y/T0L6/4+jGy2IwouhoolQxJRld+nqwqoyip7PmAZk7E2PThZcyIFF7zICOSjjLxP0LIC+8pLgQu0R6IawBkiOmvDjzgzjnh8sJni8SUfe8=;
	7:4QGW3W7j9cSytY6FWvAhNQaDkWuAhaFJQYMKIVp4lDonBrISTeuS2toOh7Moznj+DTZSPNL3W1URkIwPrBbA6K2hiGy5VtSZcZ1eV9VdMNoNO7dzoqnIv11gl76VWwFpmTnQe3QLnsyiosuDYlOlsAos77tugwAzqDviuht5CCcJosqVOvOs4CyejlAWKMuIiUGBuEDXQsKuj+36qjURa4gk8pffKw8pYDeeNlV3lTZ+ptLjoZ6bxEGUQt+flLebNo6CICpTfpgMrYxst1bqcn349LmwVRJKDOAQiXY4kQUQOMrs/r9P380hMJEAnmZK
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR02HT039;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 21726e2c-ddac-49fe-d940-08d3ea03120a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:HE1EUR02HT039;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:HE1EUR02HT039; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR02HT039; 
x-forefront-prvs: 00826B6158
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2016 13:58:49.6262 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT039
X-OriginalArrivalTime: 01 Oct 2016 13:58:52.0589 (UTC)
	FILETIME=[F13F55D0:01D21BEB]
Subject: failed to copy the final ***rootfs.rpi-sdimg image file
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
X-List-Received-Date: Sat, 01 Oct 2016 13:58:56 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883689936BC3BB3FEECED4092C00HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883689936BC3BB3FEECED4092C00HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hi,


I'm building a custom core-image-x11 for my raspberrypi3 board, with poky k=
rogoth.

In the very last steps:


ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Function failed: do_image_=
rpi_sdimg (log file is located at /home/kai/yocto/build-rpi3/tmp/work/raspb=
errypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdim=
g.16110)

ERROR: Logfile of failure stored in: /home/kai/yocto/build-rpi3/tmp/work/ra=
spberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_s=
dimg.16110

Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_rpi_sdimg
| Creating filesystem with Boot partition 40960 KiB and RootFS 430080 KiB

| dd: failed to open '/core-image-x11-raspberrypi3-20161001194728.rootfs.rp=
i-sdimg': Permission denied

| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_rpi_sdimg (log file is located at /home/=
kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x1=
1/1.0-r0/temp/log.do_image_rpi_sdimg.16110)
ERROR: Task 16 (/home/kai/yocto/poky-krogoth/meta/recipes-graphics/images/c=
ore-image-x11.bb, do_image_rpi_sdimg) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4771 tasks of which 4770 didn't need to be r=
erun and 1 failed.
No currently running tasks (4367 of 4773)



It looks like it tries to create the image in the path:     /core-image-x11=
-raspberrypi3-20161001194728.rootfs.rpi-sdimg': Permission denied


I looked into the bbclass, and at first glance I'd say that the respective =
path is "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"


So ${IMGDEPLOYDIR} seems to be empty.


I haven't found any reference to IMGDEPLOYDIR elsewhere.


Weird.


Karim



--_000_HE1PR01MB1883689936BC3BB3FEECED4092C00HE1PR01MB1883eurp_
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
<p>hi,</p>
<p><br>
</p>
<p>I'm building a custom&nbsp;core-image-x11 for my raspberrypi3 board, wit=
h poky krogoth.</p>
<p>In the very last steps:</p>
<p><br>
</p>
<p></p>
<div>ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Function failed: do_i=
mage_rpi_sdimg (log file is located at /home/kai/yocto/build-rpi3/tmp/work/=
raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi=
_sdimg.16110)</div>
<p></p>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<p></p>
<div>ERROR: Logfile of failure stored in: /home/kai/yocto/build-rpi3/tmp/wo=
rk/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_=
rpi_sdimg.16110</div>
<p></p>
</blockquote>
<p></p>
<div>Log data follows:</div>
<div>| DEBUG: Executing python function set_image_size</div>
<div>| DEBUG: Python function set_image_size finished</div>
<div>| DEBUG: Executing shell function do_image_rpi_sdimg</div>
<div>| Creating filesystem with Boot partition 40960 KiB and RootFS 430080 =
KiB</div>
<div><br>
</div>
<div>| dd: failed to open '/core-image-x11-raspberrypi3-20161001194728.root=
fs.rpi-sdimg': Permission denied</div>
<div><br>
</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div><span style=3D"font-size: 12pt;">| ERROR: Function failed: do_image_rp=
i_sdimg (log file is located at /home/kai/yocto/build-rpi3/tmp/work/raspber=
rypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.=
16110)</span><br>
</div>
<div>ERROR: Task 16 (/home/kai/yocto/poky-krogoth/meta/recipes-graphics/ima=
ges/core-image-x11.bb, do_image_rpi_sdimg) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 4771 tasks of which 4770 didn't need to=
 be rerun and 1 failed.</div>
<div>No currently running tasks (4367 of 4773)</div>
<div><br>
</div>
<br>
<p></p>
<p>It looks like it tries to create the image in the path: &nbsp; &nbsp;&nb=
sp;<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">/core-image-x11-raspberrypi3-20161001194728.rootfs.rpi-sdimg':
 Permission denied</span></p>
<p><br>
</p>
<p>I looked into the bbclass, and at first glance I'd say that the respecti=
ve&nbsp;path is&nbsp;<span>&quot;${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-s=
dimg&quot;</span></p>
<p><span><br>
</span></p>
<p><span>So ${IMGDEPLOYDIR} seems to be empty.</span></p>
<p><span><br>
</span></p>
<p><span>I haven't found any reference to IMGDEPLOYDIR elsewhere.</span></p=
>
<p><span><br>
</span></p>
<p><span>Weird.</span></p>
<p><span><br>
</span></p>
<p><span>Karim</span></p>
<p><span><br>
</span></p>
<p><br>
</p>
</div>
</body>
</html>

--_000_HE1PR01MB1883689936BC3BB3FEECED4092C00HE1PR01MB1883eurp_--
