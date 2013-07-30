Return-Path: <anielsen@vitesse.com>
Received: from na3sys009aog122.obsmtp.com (na3sys009aog122.obsmtp.com
	[74.125.149.147])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4F98DE01431
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 02:54:47 -0700 (PDT)
Received: from smtp.vitesse.com ([67.78.86.101]) (using TLSv1) by
	na3sys009aob122.postini.com ([74.125.148.12]) with SMTP
	ID DSNKUfeNYuIeqNklphicerwk9Raeoo4n9IDp@postini.com;
	Tue, 30 Jul 2013 02:54:48 PDT
Received: from MBOX-TXA4.vitesse.com ([fe80::20c4:5fb8:c4c4:b418]) by
	cash-txa3.vitesse.com ([::1]) with mapi id 14.02.0309.002;
	Tue, 30 Jul 2013 04:54:41 -0500
From: Allan Nielsen <anielsen@vitesse.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build yocto debug images
Thread-Index: Ac6NCs8oHkEVAJ1MRWefQiyOIlfvrg==
Date: Tue, 30 Jul 2013 09:54:40 +0000
Message-ID: <63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEE@mbox-txa4.vitesse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.64.2]
MIME-Version: 1.0
Subject: Build yocto debug images
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
X-List-Received-Date: Tue, 30 Jul 2013 09:54:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEEmboxtxa4vitesse_"

--_000_63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEEmboxtxa4vitesse_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new to Yocto and I'm trying to build a debug image.

My image recipe looks like this:

IMAGE_INSTALL =3D "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} u-b=
oot webstax3 vtss-uio-mod"
IMAGE_LINGUAS =3D " "

LICENSE =3D "MIT"

inherit core-image

DEBUG_BUILD =3D "1"

DEBUG_FLAGS =3D "-ggdb3 -O0 -fno-omit-frame-pointer"
DEBUG_OPTIMIZATION =3D "-ggdb3 -O0 -fno-omit-frame-pointer"

IMAGE_ROOTFS_SIZE =3D "16384"
IMAGE_FEATURES =3D "debug-tweaks tools-debug dbg-pkgs"

# remove not needed ipkg informations
ROOTFS_POSTPROCESS_COMMAND +=3D "remove_packaging_data_files ; "

IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot"


But when I inspect the build logs of my packets I see that they have not be=
en build with "-ggdb3 -O0 -fno-omit-frame-pointer"

So, please advice me on how to do this.

Best regards
Allan W. Nielsen

--_000_63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEEmboxtxa4vitesse_
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
10pt;">Hi,<br>
<br>
I'm new to Yocto and I'm trying to build a debug image.<br>
<br>
My image recipe looks like this:<br>
<br>
IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP=
} u-boot webstax3 vtss-uio-mod&quot;<br>
IMAGE_LINGUAS =3D &quot; &quot;<br>
<br>
LICENSE =3D &quot;MIT&quot;<br>
<br>
inherit core-image<br>
<br>
DEBUG_BUILD =3D &quot;1&quot;<br>
<br>
DEBUG_FLAGS =3D &quot;-ggdb3 -O0 -fno-omit-frame-pointer&quot;<br>
DEBUG_OPTIMIZATION =3D &quot;-ggdb3 -O0 -fno-omit-frame-pointer&quot;<br>
<br>
IMAGE_ROOTFS_SIZE =3D &quot;16384&quot;<br>
IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug dbg-pkgs&quot;<br>
<br>
# remove not needed ipkg informations<br>
ROOTFS_POSTPROCESS_COMMAND &#43;=3D &quot;remove_packaging_data_files ; &qu=
ot;<br>
<br>
IMAGE_FSTYPES =3D &quot;tar.gz ext2.gz.u-boot&quot;<br>
<br>
<br>
But when I inspect the build logs of my packets I see that they have not be=
en build with &quot;-ggdb3 -O0 -fno-omit-frame-pointer&quot;<br>
<br>
So, please advice me on how to do this.<br>
<br>
Best regards<br>
Allan W. Nielsen<br>
</div>
</body>
</html>

--_000_63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEEmboxtxa4vitesse_--
