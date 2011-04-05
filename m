Return-Path: <murilo.travaglia@phiinnovations.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 090454C80A46
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2011 16:00:53 -0500 (CDT)
Received: by ywo32 with SMTP id 32so435049ywo.35
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2011 14:00:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.151.17.2 with SMTP id u2mr1028990ybi.294.1302037253577; Tue,
	05 Apr 2011 14:00:53 -0700 (PDT)
Received: by 10.150.145.1 with HTTP; Tue, 5 Apr 2011 14:00:53 -0700 (PDT)
Date: Tue, 5 Apr 2011 18:00:53 -0300
Message-ID: <BANLkTi=aSGBWpYCPMNquWoUXNfH6zHD2SQ@mail.gmail.com>
From: Murilo Travaglia <murilo.travaglia@phiinnovations.com>
To: yocto@yoctoproject.org
Subject: Cross Compiled Project
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
X-List-Received-Date: Tue, 05 Apr 2011 21:00:54 -0000
Content-Type: multipart/alternative; boundary=000e0cd68da6fbde4604a0322bf5

--000e0cd68da6fbde4604a0322bf5
Content-Type: text/plain; charset=ISO-8859-1

Hi all,


I'm trying to use my own toolchain to develop and debug my application. I
made some changes in the file environment-setup-my-toolchain (file used in
SDK Mode to configure the environment) to link the compiler, gdb,etc to my
own toolchain. Making a "Reconfigure Project" or "Build Project" I can see
that my own toolchain is used.  =]

The problem is that I couldn't see where I have to make the modifications to
get the specific libraries for the target architecture, e.g: if I'LL develop
an application to ARM architecture, where I have to make modifications to
use the libs (/lib, usr/lib) of the target architecture (ARM). Is this
possible in the Yocto Project?

Thanks in advance!

Best regards!

-- 
Murilo Marques Travaglia
Phi Innovations

--000e0cd68da6fbde4604a0322bf5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br><br>I&#39;m trying to use my own toolchain to develop and de=
bug my application. I made some changes in the file environment-setup-my-to=
olchain (file used in SDK Mode to configure the environment) to link the co=
mpiler, gdb,etc to my own toolchain. Making a &quot;Reconfigure Project&quo=
t; or &quot;Build Project&quot; I can see that my own toolchain is used.=A0=
 =3D]<br>
<br>The problem is that I couldn&#39;t see where I have to make the modific=
ations to get the specific libraries for the target architecture, e.g: if I=
&#39;LL develop an application to ARM architecture, where I have to make mo=
difications to use the libs (/lib, usr/lib) of the target architecture (ARM=
). Is this possible in the Yocto Project?<br>
<br>Thanks in advance!<br><br>Best regards!=A0 <br clear=3D"all"><br>-- <br=
>Murilo Marques Travaglia<br>Phi Innovations<br><br><br><br>

--000e0cd68da6fbde4604a0322bf5--
