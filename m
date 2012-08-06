Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65AF9E002AB
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 06:59:41 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml214-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AMS84803; Mon, 06 Aug 2012 21:59:37 +0800 (CST)
Received: from SZXEML409-HUB.china.huawei.com (10.82.67.136) by
	szxeml214-edg.china.huawei.com (172.24.2.29) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Mon, 6 Aug 2012 21:58:40 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.243]) by
	szxeml409-hub.china.huawei.com ([10.82.67.136]) with mapi id
	14.01.0323.003; Mon, 6 Aug 2012 21:58:35 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Method to use same sstate_cache across 32&64bit machines
Thread-Index: AQHNc9uRJw472a2VMk6aj5oJxh6MSw==
Date: Mon, 6 Aug 2012 13:58:34 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711046A67E@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Subject: Method to use same sstate_cache across 32&64bit machines
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
X-List-Received-Date: Mon, 06 Aug 2012 13:59:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_36ED13F3654AE54CA763E6821D93A5711046A67Eszxeml534mbxchi_"

--_000_36ED13F3654AE54CA763E6821D93A5711046A67Eszxeml534mbxchi_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,



Is there any method exists to use same sstate_cache across 32&64bit machine=
s?

Like can we generate 32bit sstate_cache for native packages on 64bit machin=
e,

so that same sstate_cache can be used across 32bit & 64bit (with 32bit ib s=
upport) machines, without a need to rebuild the native packages.



Regards,

Ramana

--_000_36ED13F3654AE54CA763E6821D93A5711046A67Eszxeml534mbxchi_
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
<p>Hi All,</p>
<p>&nbsp;</p>
<p>Is there any method exists to use same sstate_cache across 32&amp;64bit =
machines?</p>
<p>Like&nbsp;can we generate 32bit sstate_cache for native packages on 64bi=
t machine,</p>
<p>so that same sstate_cache can be used across 32bit &amp; 64bit (with 32b=
it ib support) machines, without a need to rebuild the native packages.</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Ramana</p>
</div>
</body>
</html>

--_000_36ED13F3654AE54CA763E6821D93A5711046A67Eszxeml534mbxchi_--
