Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2DD46E0146A
	for <yocto@yoctoproject.org>; Sat, 30 Jun 2012 11:16:19 -0700 (PDT)
Received: from SESTOEX05.enea.se ([fe80::41cb:8d2e:2e90:a183]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.02.0298.004; Sat, 30 Jun 2012 20:16:17 +0200
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "caterwaul@163.com"
	<caterwaul@163.com>
Thread-Topic: [yocto]  kernel-modules problem
Thread-Index: AQHNVr5oFjnoliXCBUmtu5YUx6PpeJcTK2RN
Date: Sat, 30 Jun 2012 18:16:15 +0000
Message-ID: <88701C38B5D07249817D428430999C910EAC2C9B@sestoex05.enea.se>
References: <51b83d22.14984.1383d6d6ee9.Coremail.caterwaul@163.com>
In-Reply-To: <51b83d22.14984.1383d6d6ee9.Coremail.caterwaul@163.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: kernel-modules problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Jun 2012 18:16:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_88701C38B5D07249817D428430999C910EAC2C9Bsestoex05enease_"

--_000_88701C38B5D07249817D428430999C910EAC2C9Bsestoex05enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Adding "kernel-modules" to IMAGE_INSTALL +=3D "" should solve this issue .

.br.
David

Sent from my Android phone using TouchDown (www.nitrodesk.com)


-----Original Message-----
From: caterwaul [caterwaul@163.com]
Received: Saturday, 30 Jun 2012, 14:46
To: yocto [yocto@yoctoproject.org]
Subject: [yocto]  kernel-modules problem




Hi friends,

I wanted to include mtd_tests modules into my rootfs. To do this, I confige=
d the kernel and added kernel-modules in IMAGE_INSTALL in my image bb file.=
 After build I could find all ko files I wanted at tmp/work/myboard-linux/l=
inux-qoriq-sdk-3.0.6-r2/git/drivers/mtd/tests/. But I could NOT find ko fil=
es in the tmp/deploy/images/myboard.rootfs.tar.gz and modules-3.0.6-r2-mybo=
ard.tgz. Why? Could anyone help me? Thank you.



--_000_88701C38B5D07249817D428430999C910EAC2C9Bsestoex05enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<pre style=3D"word-wrap:break-word; font-size:10.0pt; font-family:Tahoma; c=
olor:black">Adding &quot;kernel-modules&quot; to IMAGE_INSTALL &#43;=3D &qu=
ot;&quot; should solve this issue .

.br.
David=20

Sent from my Android phone using TouchDown (www.nitrodesk.com)


-----Original Message-----
From: caterwaul [caterwaul@163.com]
Received: Saturday, 30 Jun 2012, 14:46
To: yocto [yocto@yoctoproject.org]
Subject: [yocto]  kernel-modules problem


</pre>
<div>
<div style=3D"line-height:1.7; color:#000000; font-size:14px; font-family:a=
rial">Hi friends,
<div><br>
</div>
<div>I wanted to include mtd_tests modules into my rootfs. To do this, I co=
nfiged the kernel and added kernel-modules in IMAGE_INSTALL in my image bb =
file. After build I could find all ko files I wanted at&nbsp;<i>tmp/work/my=
board-linux/linux-qoriq-sdk-3.0.6-r2/git/drivers/mtd/tests/</i>.
 But I could NOT find ko files in the<i>&nbsp;tmp/deploy/images/myboard.roo=
tfs.tar.gz</i>&nbsp;and&nbsp;<i>modules-3.0.6-r2-myboard.tgz</i>. Why? Coul=
d anyone help me? Thank you.</div>
</div>
<br>
<br>
<span title=3D"neteasefooter"><span id=3D"netease_mail_footer"></span></spa=
n></div>
</body>
</html>

--_000_88701C38B5D07249817D428430999C910EAC2C9Bsestoex05enease_--
