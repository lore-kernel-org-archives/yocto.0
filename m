Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9AD4E01426
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 06:10:53 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml213-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA FastPath queued)
	with ESMTP id AKO20826; Fri, 22 Jun 2012 21:06:39 +0800 (CST)
Received: from SZXEML406-HUB.china.huawei.com (10.82.67.93) by
	szxeml213-edg.china.huawei.com (172.24.2.30) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Fri, 22 Jun 2012 21:03:46 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.36]) by
	szxeml406-hub.china.huawei.com ([10.82.67.93]) with mapi id
	14.01.0323.003; Fri, 22 Jun 2012 21:03:40 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: "Liu, Song" <song.liu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: Problem in downloading linux-yocto source behind proxy 
Thread-Index: AQHNUHYbWO41FZ8Ss0GbETNSeByFAJcGS18I
Date: Fri, 22 Jun 2012 13:03:39 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711045A318@szxeml534-mbx.china.huawei.com>
References: <OFDE9D2D78.BF935E29-ON65257A25.00448DED-65257A25.0046DCF2@notesmail.huawei.com.cn>
In-Reply-To: <OFDE9D2D78.BF935E29-ON65257A25.00448DED-65257A25.0046DCF2@notesmail.huawei.com.cn>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sanil kumar <sanil.kumar@huawei.com>
Subject: Problem in downloading linux-yocto source behind proxy
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
X-List-Received-Date: Fri, 22 Jun 2012 13:10:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36ED13F3654AE54CA763E6821D93A5711045A318szxeml534mbxchi_"

--_000_36ED13F3654AE54CA763E6821D93A5711045A318szxeml534mbxchi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

        We tried to build yocto release downloaded from autobuilder
                http://autobuilder.yoctoproject.org/pub/nightly/20120621-3/=
yocto.tar.bz2

        We work behind a http proxy and firewall setup from office network.

        Previously we used to build by setting PREMIRRORS to
                git://.*/.*   http://downloads.yoctoproject.org/mirror/sour=
ces/ \n \
        as all the source is available in the above mentioned mirror path f=
or every RC release.

        1) But now we couldnot find linux-yocto source at (for 1.3M1RC1 or =
RC2 release)
                i.e http://downloads.yoctoproject.org/mirror/sources/git2_g=
it.yoctoproject.org.linux-yocto-3.4.git.tar.gz

        2) I remember that there was a discussion to enable readonly way of=
 accessing git through http.
                Is it currently available?

        Please suggest some alternative mechanism.

Regards,
Ramana


--_000_36ED13F3654AE54CA763E6821D93A5711045A318szxeml534mbxchi_
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
<p><font size=3D"2" face=3D"sans-serif">Hi,</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; We tried t=
o build yocto release downloaded from autobuilder
</font><br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; http://autobuilder.yoctoproject.org/pub/nightly/20120621-=
3/yocto.tar.bz2</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; We work be=
hind a http proxy and firewall setup from office network.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; Previously=
 we used to build by setting PREMIRRORS to
</font><br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; git://.*/.* &nbsp; http://downloads.yoctoproject.org/mirr=
or/sources/ \n \</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; as all the=
 source is available in the above mentioned mirror path for every RC releas=
e.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; 1) But now=
 we couldnot find linux-yocto source at (for 1.3M1RC1 or RC2 release)</font=
>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; i.e http://downloads.yoctoproject.org/mirror/sources/git2=
_git.yoctoproject.org.linux-yocto-3.4.git.tar.gz &nbsp; &nbsp; &nbsp; &nbsp=
;</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; 2) I remem=
ber that there was a discussion to enable readonly way of accessing git thr=
ough http. &nbsp; &nbsp; &nbsp; &nbsp;</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; Is it currently available? &nbsp; &nbsp; &nbsp; &nbsp;</f=
ont>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; Please sug=
gest some alternative mechanism. &nbsp; &nbsp; &nbsp; &nbsp;</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Regards,</font> <br>
<font size=3D"2" face=3D"sans-serif">Ramana</font> <br>
<br>
</p>
</div>
</body>
</html>

--_000_36ED13F3654AE54CA763E6821D93A5711045A318szxeml534mbxchi_--
