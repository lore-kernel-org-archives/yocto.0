Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (unknown [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC282E00597
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 01:49:46 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml207-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id BAH88750; Tue, 09 Apr 2013 16:49:33 +0800 (CST)
Received: from SZXEML401-HUB.china.huawei.com (10.82.67.31) by
	szxeml207-edg.china.huawei.com (172.24.2.56) with Microsoft SMTP Server
	(TLS) id 14.1.323.7; Tue, 9 Apr 2013 16:49:09 +0800
Received: from SZXEML534-MBS.china.huawei.com ([169.254.6.8]) by
	szxeml401-hub.china.huawei.com ([::1]) with mapi id 14.01.0323.007;
	Tue, 9 Apr 2013 16:49:01 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>, Trevor Woerner
	<twoerner@gmail.com>
Thread-Topic: [yocto] RFC: Post build configuration
Thread-Index: AQHONJeJmmw1T9PB9kqcNQcdPJjxs5jMVpuAgAABAgCAABVrgIABIWyk
Date: Tue, 9 Apr 2013 08:49:00 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A57122D7FD5E@szxeml534-mbs.china.huawei.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
	<000301ce3185$ab049a20$010dce60$@annabooks.com>
	<CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
	<000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
	<CAHUNapQkneoLF7_7DBFxd+Cm23iTBkJezDsy4NEq9v06GiSybw@mail.gmail.com>,
	<CA+gsK-p1AradoFSPrwE-oiWF2NQtaEjiq4GQUqK47cEi4fXQpA@mail.gmail.com>
In-Reply-To: <CA+gsK-p1AradoFSPrwE-oiWF2NQtaEjiq4GQUqK47cEi4fXQpA@mail.gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Tue, 09 Apr 2013 08:49:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36ED13F3654AE54CA763E6821D93A57122D7FD5Eszxeml534mbschi_"

--_000_36ED13F3654AE54CA763E6821D93A57122D7FD5Eszxeml534mbschi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I agree that each product might have different connectivity and different c=
onfiguration needs on the rootfs.

However current thoughts are based on
1) Some of the common configurations of YP are currently at build time in y=
octo project, but appying them doesnot require a rebuild. Such configuratio=
n can be allowed(or moved) at post build, So that they are applied before f=
lashing or installing the image on different devices, without rebuilding.

2) YP can provide a configuration platform, so that various new configurati=
on options/methods ranging from OS to applications can be added easily, inl=
ining with package addition/modification in various OE layers. It can be a =
place holder of various configurations.

It can strengthen YP post build stage, saving rebuild effort, allowing it e=
asily configurable and usable.



Regards,

Ramana



--_000_36ED13F3654AE54CA763E6821D93A57122D7FD5Eszxeml534mbschi_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle">P {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
</head>
<body fPStyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<p><font face=3D"Arial">I agree that each product might have different conn=
ectivity and different configuration needs on the rootfs.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">However current thoughts are based on =
</font><br>
<font size=3D"2" face=3D"sans-serif">1) Some of the common configurations o=
f YP are currently at build time in yocto project, but appying them doesnot=
 require a rebuild. Such configuration can be allowed(or moved) at
</font><font size=3D"2" face=3D"sans-serif">post build, So that they are ap=
plied before flashing or installing the image on different devices, without=
 rebuilding.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">2) YP can provide a configuration plat=
form, so that various new configuration options/methods ranging from OS to =
applications can be added easily, inlining with package
</font><font size=3D"2" face=3D"sans-serif">addition/modification in variou=
s OE layers.&nbsp;It can be a place holder of various configurations.</font=
><br>
<br>
<font size=3D"2" face=3D"sans-serif">It can&nbsp;strengthen&nbsp;YP&nbsp;po=
st build stage, saving rebuild effort,&nbsp;allowing it easily configurable=
 and usable.</font></p>
<p><font face=3D"Arial"></font>&nbsp;</p>
<p><font face=3D"Arial">Regards,</font></p>
<p><font face=3D"Arial">Ramana</font></p>
<div style=3D"FONT-FAMILY: Times New Roman; COLOR: #000000; FONT-SIZE: 16px=
">
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra">&nbsp;</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_36ED13F3654AE54CA763E6821D93A57122D7FD5Eszxeml534mbschi_--
