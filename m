Return-Path: <alex@redfish.com.au>
Received: from mail.redfish.com.au (unknown [203.206.170.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90459E0059A
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2012 02:08:29 -0700 (PDT)
Received: from EXCHANGE.redfish.local ([fe80::a5d8:d572:ea9a:cac7]) by
	exchange.redfish.local ([fe80::a5d8:d572:ea9a:cac7%10]) with mapi;
	Sat, 14 Apr 2012 19:08:15 +1000
From: Alex Robenko <alex@redfish.com.au>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Library objects and headers are not installed in sysroots
	directory
Thread-Index: Ac0aHh+flWe/RpzgTH+myuTDeN8GeQ==
Date: Sat, 14 Apr 2012 09:08:14 +0000
Message-ID: <9305BFBA7387494D9AF3CAFF867C24D345F9DF98@exchange.redfish.local>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Library objects and headers are not installed in sysroots directory
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
X-List-Received-Date: Sat, 14 Apr 2012 09:08:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9305BFBA7387494D9AF3CAFF867C24D345F9DF98exchangeredfish_"

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9DF98exchangeredfish_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi all,
I'm trying to use "poky-edison-6.0.1" to build an image for freescale mx28e=
vk based platform using "core-image-minimal" as a basis with several additi=
onal libraries such as "boost" and "openssl" (IMAGE_INSTALL +=3D "openssl b=
oost"). The image itself and the root file system with shared libraries are=
 built correctly. However it seems that "do_populate_sysroot" is not execut=
ed for these libraries when the command "bitbake <image>" is used. As a res=
ult "build/tmp/sysroots/mx28evk" doesn't contain headers and static/shared =
objects of the libraries.
When I try to build the libraries directly using "bitbake boost" or "bitbak=
e openssl" everything works as expected (headers, static and shared objects=
 are installed in the directory mentioned above).
Does anyone have any idea why it happens? Do I forget to put something esse=
ntial in the image recipe? Is there any way to make the headers and objects=
 of the libraries to be installed in "sysroots" when the whole image is bui=
lt?

Thanks,
Alex

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9DF98exchangeredfish_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
13px;">
<div style=3D"">&nbsp;</div>
Hi all,<br>
I'm trying to use &quot;poky-edison-6.0.1&quot; to build an image for frees=
cale mx28evk based platform using &quot;core-image-minimal&quot; as a basis=
 with several additional libraries such as &quot;boost&quot; and &quot;open=
ssl&quot; (IMAGE_INSTALL &#43;=3D &quot;openssl boost&quot;). The image its=
elf and the root
 file system with shared libraries are built correctly. However it seems th=
at &quot;do_populate_sysroot&quot; is not executed for these libraries when=
 the command &quot;bitbake &lt;image&gt;&quot; is used. As a result &quot;b=
uild/tmp/sysroots/mx28evk&quot; doesn't contain headers and static/shared
 objects of the libraries.<br>
When I try to build the libraries directly using &quot;bitbake boost&quot; =
or &quot;bitbake openssl&quot; everything works as expected (headers, stati=
c and shared objects are installed in the directory mentioned above).<br>
Does anyone have any idea why it happens? Do I forget to put something esse=
ntial in the image recipe? Is there any way to make the headers and objects=
 of the libraries to be installed in &quot;sysroots&quot; when the whole im=
age is built?<br>
<br>
Thanks,<br>
Alex</div>
</body>
</html>

--_000_9305BFBA7387494D9AF3CAFF867C24D345F9DF98exchangeredfish_--
