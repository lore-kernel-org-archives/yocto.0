Return-Path: <shubham.kumar4@wipro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1415FE00C31; Wed,  3 Feb 2016 06:00:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [203.91.208.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from wipro-chn-out01.wipro.com (wipro-chn-out01.wipro.com
	[203.91.208.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE508E00C2E
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 06:00:37 -0800 (PST)
X-AuditID: cb5bdd88-f79ee6d000001534-74-56b2080462a4
X-Invalid-Recipients: 
Received: from BLR-OUT-EDG03.wipro.com ( [203.91.201.88])
	by wipro-chn-out01.wipro.com (Symantec Mail Security) with SMTP id
	7D.1F.05428.40802B65; Wed,  3 Feb 2016 19:30:36 +0530 (IST)
Received: from BLR-EC-MBX6.wipro.com (10.208.51.116) by
	BLR-OUT-EDG03.wipro.com (203.91.193.33) with Microsoft SMTP Server
	(TLS) id 14.3.266.1; Wed, 3 Feb 2016 19:30:29 +0530
Received: from wipro-blr-tls01.wipro.com (203.91.193.100) by
	BLR-EC-MBX6.wipro.com (10.208.51.116) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Wed, 3 Feb 2016 19:30:33 +0530
Received: from APC01-PU1-obe.outbound.protection.outlook.com (65.55.88.16) by
	wipro-blr-tls01.wipro.com (203.91.193.100) with Microsoft SMTP
	Server (TLS) id 14.3.266.1; Wed, 3 Feb 2016 19:30:28 +0530
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com (10.160.238.142) by
	SIXPR03MB0670.apcprd03.prod.outlook.com (10.160.238.140) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Wed, 3 Feb 2016 14:00:30 +0000
Received: from SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) by
	SIXPR03MB0672.apcprd03.prod.outlook.com ([10.160.238.142]) with mapi id
	15.01.0396.020; Wed, 3 Feb 2016 14:00:30 +0000
From: <shubham.kumar4@wipro.com>
To: <yocto@yoctoproject.org>
Thread-Topic: [meta-intel]:Quark not accepting "root" username at login prompt
Thread-Index: AQHRXne6BvZjGpKKWUqs+vIN6ugpkp8aVidl
Date: Wed, 3 Feb 2016 14:00:30 +0000
Message-ID: <SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
References: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
In-Reply-To: <SIXPR03MB0672F01139FBB3CB521AAB45D4D00@SIXPR03MB0672.apcprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=wipro.com; 
x-originating-ip: [198.175.68.39]
x-microsoft-exchange-diagnostics: 1; SIXPR03MB0670;
	5:UtHnq/luzwoy91mHtL3DNti03YYyquqZJTCBPsDZe3WWA5tu2GpNR5HHJ5ubKm5svw4c1XFszbDDl71JHmthy4LLTOFaWkfibT54DeA8/6iV3+gu2CLDHxexU9jrgijImMvdRQ34it0OB1dOMfKI/g==;
	24:BOowcY3EBRVziEELi8Y+KR8cGbCnbgE0KbEjJeRsF+wu5xyw4GffWIB/p8pgF4DYnqKYzfqrtD2wJAVwkQVq2OaMzwCWi3aV41/J5011mq4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR03MB0670;
x-ms-office365-filtering-correlation-id: 31d5172f-bb58-4f41-44b6-08d32ca26086
x-microsoft-antispam-prvs: <SIXPR03MB06706A8A5E9122DF388FCB1CD4D00@SIXPR03MB0670.apcprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(61425038)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(61426038)(61427038);
	SRVR:SIXPR03MB0670; BCL:0; PCL:0; RULEID:; SRVR:SIXPR03MB0670; 
x-forefront-prvs: 08417837C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(164054003)(377454003)(53754006)(6116002)(102836003)(77096005)(1096002)(76176999)(5004730100002)(1220700001)(50986999)(10400500002)(19627405001)(54356999)(5008740100001)(11100500001)(5003600100002)(586003)(2351001)(19625215002)(40100003)(16236675004)(66066001)(106116001)(86362001)(5002640100001)(450100001)(33656002)(551544002)(87936001)(2900100001)(19580405001)(2501003)(19580395003)(122556002)(2950100001)(2906002)(1730700002)(5001960100002)(107886002)(74316001)(92566002)(189998001)(3900700001)(76576001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SIXPR03MB0670;
	H:SIXPR03MB0672.apcprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2016 14:00:30.3545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 258ac4e4-146a-411e-9dc8-79a9e12fd6da
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR03MB0670
X-OrganizationHeadersPreserved: SIXPR03MB0670.apcprd03.prod.outlook.com
X-CrossPremisesHeadersPromoted: BLR-HES-EDG04.wipro.com
X-CrossPremisesHeadersFiltered: BLR-HES-EDG04.wipro.com
X-CFilter-Loop: Reflected
Subject: Re: [meta-intel]:Quark not accepting "root" username at login prompt
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
X-List-Received-Date: Wed, 03 Feb 2016 14:00:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00SIXPR03MB0672apcp_"

--_000_SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00SIXPR03MB0672apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi all,


I would additionally like to mention that the same problem persists when tr=
ying to boot the Galileo with core-image-sato.

The steps which I followed are as follows:-

Inside the poky directory,


1.  source oe-init-build-env final_build/

Now ,Inside the final_build/ directory


2. bitbake core-image-sato


3. wic create mkgalileodisk -e core-image-sato -o /<directory_path>/


Now, in <directory_path>/build ,


4. sudo dd if=3Dmkgalileodisk-201602031847-mmcblk0.direct of=3D/dev/sdb


Now when I tried to boot the Galileo with this SD card , it booted but at t=
he login prompt doesn't accept the "root". It says  "Login incorrect ".


The observation is similar wit core-image-minimal as well.


I'm definitely missing something. I would appreciate any help in this direc=
tion.



Thanks,

Shubham_K

________________________________
From: Shubham Kumar (Product Engineering Service)
Sent: Wednesday, February 3, 2016 5:11 PM
To: yocto@yoctoproject.org
Subject: [meta-intel]:Quark not accepting "root" username at login prompt


Hi all,


I built a core-image-minimal with additions of a few packages like tools-sd=
k and tools-debug. With WIK tool and the kickstart file "mkgalileodisk", I =
created the image. Then I dd'd the image to the SD card. The Galileo booted=
 with the image, but it's not accepting "root" as the username at the login=
 terminal. It shows the message "Invalid username". I don't have any idea o=
f why this happened. I even looked at the etc/passwd file, but didn't get a=
ny idea.

Please note that I have cloned the latest jethro meta-intel layer from the =
Yocto git repository.


Did I miss anything in the build process? Any help in this direction will b=
e appreciated.


Thanks,

Shubham_K

The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should not disseminate, distribute or copy t=
his e-mail. Please notify the sender immediately and destroy all copies of =
this message and any attachments. WARNING: Computer viruses can be transmit=
ted via email. The recipient should check this email and any attachments fo=
r the presence of viruses. The company accepts no liability for any damage =
caused by any virus transmitted by this email. www.wipro.com

--_000_SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00SIXPR03MB0672apcp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><br>
</p>
<p>Hi all,</p>
<p><br>
</p>
<p>I would additionally like to mention that the same problem persists when=
 trying to boot the Galileo with core-image-sato.
<br>
</p>
<p>The steps which I followed are as follows:-</p>
<p>Inside the poky directory,<br>
</p>
<p><br>
</p>
<p>1. &nbsp;source oe-init-build-env final_build/&nbsp;<br>
</p>
<p>Now ,Inside the final_build/ directory</p>
<p><br>
</p>
<p>2. bitbake core-image-sato</p>
<p><br>
</p>
<p>3. wic create mkgalileodisk -e core-image-sato -o /&lt;directory_path&gt=
;/</p>
<p><br>
</p>
<p>Now, in &lt;directory_path&gt;/build ,</p>
<p><br>
</p>
<p>4. sudo dd if=3Dmkgalileodisk-201602031847-mmcblk0.direct of=3D/dev/sdb<=
br>
</p>
<p><br>
</p>
<p>Now when I tried to boot the Galileo with this SD card , it booted but a=
t the login prompt doesn't accept the &quot;root&quot;. It says&nbsp; &quot=
;Login incorrect&nbsp;&quot;.</p>
<p><br>
</p>
<p>The observation is similar wit core-image-minimal as well.</p>
<p><br>
</p>
<p>I'm definitely missing something. I would appreciate any help in this di=
rection.</p>
<p><br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Shubham_K<br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Shubham Kumar (Prod=
uct Engineering Service)<br>
<b>Sent:</b> Wednesday, February 3, 2016 5:11 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [meta-intel]:Quark not accepting &quot;root&quot; username =
at login prompt</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi all,</p>
<p><br>
</p>
<p>I built a core-image-minimal with additions of a few packages like <i>to=
ols-sdk</i> and
<i>tools-debug</i>. With WIK tool and the kickstart file &quot;mkgalileodis=
k&quot;, I created the image. Then I dd'd the image to the SD card. The Gal=
ileo booted with the image, but it's not accepting &quot;root&quot; as the =
username at the login terminal. It shows the message
 &quot;Invalid username&quot;. I don't have any idea of why this happened. =
I even looked at the etc/passwd file, but didn't get any idea.</p>
<p>Please note that I have cloned the latest jethro <i>meta-intel</i> layer=
 from the Yocto git repository.<br>
</p>
<p><br>
</p>
<p>Did I miss anything in the build process? Any help in this direction wil=
l be appreciated.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Shubham_K<br>
</p>
</div>
</div>
</div>
</div>
The information contained in this electronic message and any attachments to=
 this message are intended for the exclusive use of the addressee(s) and ma=
y contain proprietary, confidential or privileged information. If you are n=
ot the intended recipient, you should
 not disseminate, distribute or copy this e-mail. Please notify the sender =
immediately and destroy all copies of this message and any attachments. WAR=
NING: Computer viruses can be transmitted via email. The recipient should c=
heck this email and any attachments
 for the presence of viruses. The company accepts no liability for any dama=
ge caused by any virus transmitted by this email. www.wipro.com
</body>
</html>

--_000_SIXPR03MB06727E3A2C2ACCB4528A26A9D4D00SIXPR03MB0672apcp_--
