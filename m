Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F31E0027F
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 06:14:14 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so6027238pbb.35
	for <yocto@yoctoproject.org>; Sat, 25 Aug 2012 06:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=qpcS/xuJOXOH2z/+6TlgvtxnOB1uBDF90a79mkNpWXM=;
	b=G8IgnsbEmKJhF3DUvevWLAVlOO+GTpj+6IO3yTVyJmYx4MZ9fKLp5SWVHkPivUaPqt
	IcI82/8TZwt/gDMQbQYcfOoINO4ZUzIV5whzaHf8+9OLuiBQof1K3fYTA2eoW64V/5SM
	S0XWQ1WjUyBcCmfU4KDpIwr1yUyj4tZ68cLB7ADuylgz3xsOw+c8hXkWWUGuFYBX7Kic
	czTc1oKsdzo33f4hF6xvry1KgT8DVw7psJy7hpaEZCVoQ36XobfDX32QIRrLFm0+6iPx
	ptJrKH+uJ4VXkptEcM4OUPgzTjI2uLF1V2VPblNOLNrDnqsJNn2ha9wU+uX46K/Op7OC
	k1vQ==
Received: by 10.66.78.9 with SMTP id x9mr17331632paw.84.1345900452300;
	Sat, 25 Aug 2012 06:14:12 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qb2sm9226549pbb.15.2012.08.25.06.14.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 25 Aug 2012 06:14:10 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 25 Aug 2012 17:14:05 +0400
Message-Id: <33FA7F6F-5C7B-40A0-AE08-18E0058A4C31@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires a shared library under exec_prefix (/usr)
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
X-List-Received-Date: Sat, 25 Aug 2012 13:14:14 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A592E3C6-B573-41DD-B218-486EB9F2FA8B"

--Apple-Mail=_A592E3C6-B573-41DD-B218-486EB9F2FA8B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I have added support for gcc-4.5 and eglibc-2.13, in the retired =
tool-chain layer, and ran the build, against the latest poky master =
branch, and get the following warnings:

Build Configuration:
BB_VERSION        =3D "1.15.3"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux"
MACHINE           =3D "virtex5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120825"
TUNE_FEATURES     =3D "m32 ppc440 fpu-soft"
TARGET_FPU        =3D "soft"
meta             =20
meta-yocto        =3D =
"master-xilinx-ml507-gcc-4.5:230631343fd1439fcf5c408e1d31870f5490d235"
toolchain-layer   =3D =
"master-xilinx-ml507-gcc-4.5:7086c388699be96873d57f1d4c72ceaabf67846b"
meta-xilinx       =3D =
"master-xilinx-ml507-gcc-4.5:4625488ffab40bf9eed6ce36906e433430f0155d"


WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the =
base_prefix, requires a shared library under exec_prefix (/usr): =
libgobject-2.0.so.0 =3D> /usr/lib/libgobject-2.0.so.0 (0xdead2000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the =
base_prefix, requires a shared library under exec_prefix (/usr): =
libgthread-2.0.so.0 =3D> /usr/lib/libgthread-2.0.so.0 (0xdead3000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the =
base_prefix, requires a shared library under exec_prefix (/usr): =
libffi.so.5 =3D> /usr/lib/libffi.so.5 (0xdead4000)
WARNING: QA Issue: udev: /lib/libgudev-1.0.so.0.0.1, installed in the =
base_prefix, requires a shared library under exec_prefix (/usr): =
libglib-2.0.so.0 =3D> /usr/lib/libglib-2.0.so.0 (0xdead5000)
WARNING: QA Issue: udev: /lib/udev/udev-acl, installed in the =
base_prefix, requires a shared library under exec_prefix (/usr): =
libglib-2.0.so.0 =3D> /usr/lib/libglib-2.0.so.0 (0xdead2000)

How can I fix this?=20

Best regards,

Elvis Dowson


--Apple-Mail=_A592E3C6-B573-41DD-B218-486EB9F2FA8B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; I have added support for =
gcc-4.5 and eglibc-2.13, in the retired tool-chain layer, and ran the =
build, against the latest poky master branch, and get the following =
warnings:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Build Configuration:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">BB_VERSION &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "1.15.3"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_ARCH &nbsp; =
&nbsp; &nbsp; =3D "powerpc"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_OS &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "linux"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">MACHINE &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "virtex5"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.2+snapshot-20120825"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_FEATURES =
&nbsp; &nbsp; =3D "m32 ppc440 fpu-soft"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_FPU &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "soft"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-yocto &nbsp; =
&nbsp; &nbsp; &nbsp;=3D =
"master-xilinx-ml507-gcc-4.5:230631343fd1439fcf5c408e1d31870f5490d235"</fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">toolchain-layer &nbsp; =3D =
"master-xilinx-ml507-gcc-4.5:7086c388699be96873d57f1d4c72ceaabf67846b"</fo=
nt></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">meta-xilinx &nbsp; &nbsp; &nbsp; =3D =
"master-xilinx-ml507-gcc-4.5:4625488ffab40bf9eed6ce36906e433430f0155d"</fo=
nt></div></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: QA Issue: =
udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires =
a shared library under exec_prefix (/usr): libgobject-2.0.so.0 =3D&gt; =
/usr/lib/libgobject-2.0.so.0 (0xdead2000)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: QA Issue: =
udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires =
a shared library under exec_prefix (/usr): libgthread-2.0.so.0 =3D&gt; =
/usr/lib/libgthread-2.0.so.0 (0xdead3000)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: QA Issue: =
udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires =
a shared library under exec_prefix (/usr): libffi.so.5 =3D&gt; =
/usr/lib/libffi.so.5 (0xdead4000)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: QA Issue: =
udev: /lib/libgudev-1.0.so.0.0.1, installed in the base_prefix, requires =
a shared library under exec_prefix (/usr): libglib-2.0.so.0 =3D&gt; =
/usr/lib/libglib-2.0.so.0 (0xdead5000)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: QA Issue: =
udev: /lib/udev/udev-acl, installed in the base_prefix, requires a =
shared library under exec_prefix (/usr): libglib-2.0.so.0 =3D&gt; =
/usr/lib/libglib-2.0.so.0 =
(0xdead2000)</font></div><div><br></div></div><div>How can I fix =
this?&nbsp;</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_A592E3C6-B573-41DD-B218-486EB9F2FA8B--
