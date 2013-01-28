Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC3C5E01458
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 01:13:12 -0800 (PST)
Received: by mail-oa0-f43.google.com with SMTP id k7so908146oag.16
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 01:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=DEw9bUUF6wTrvqjO9hKjorX9UG5PSQm1WCGTHKBcZvo=;
	b=HnvZUHRitvRbVmLisQHcc/uz//gPc+96mi0HU3dhb4UKS726Zs+DUp5PkSs9Zb/een
	601vwLnnPzGVdGVTiMS94hBpX5/z1HEvxmYgEKiLMHaaD9fehXvZdvSxCUcTN5h3N1SF
	hcHQWTePdcfA1qCfFqXVfRLXOnzpL21BTgnuAP6VLM3He9C2TDiFKQ1NQrVFWWGMlAz9
	NPDDn3+NQaKJyVsLGDXSSoxm+WUtVfoYjKwq0HrXgzNxeg/ybahto8y2TtnjFtl9qiiY
	Ojw2W4Yh9rZhE05nk6VvvhGyOdFEK8FQgw//QjT+M6cGKIYTVuumZ0QxyYLSwHivyZNA
	mQlg==
MIME-Version: 1.0
X-Received: by 10.60.169.140 with SMTP id ae12mr10518109oec.52.1359364392122; 
	Mon, 28 Jan 2013 01:13:12 -0800 (PST)
Received: by 10.76.27.170 with HTTP; Mon, 28 Jan 2013 01:13:12 -0800 (PST)
Date: Mon, 28 Jan 2013 17:13:12 +0800
Message-ID: <CACrgodcR0cmeukJ2qG=CiK=KBxT2V-VT-RYrJKy+71RoUy_yEA@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: yocto@yoctoproject.org
Subject: problem build gpxe.usb to boot Yocto target image from NFS
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
X-List-Received-Date: Mon, 28 Jan 2013 09:13:13 -0000
Content-Type: multipart/alternative; boundary=bcaec54c5268b67a6704d455afc9

--bcaec54c5268b67a6704d455afc9
Content-Type: text/plain; charset=Big5
Content-Transfer-Encoding: quoted-printable

follow the Yocto wiki "Poky NFS Root"
https://wiki.yoctoproject.org/wiki/Poky_NFS_Root
I tried to build the usb image with "EMBEDDED_IMAGE=3D../chainload.gpxe mak=
e
bin/gpxe.usb" but got following error.
my build environment is Yocto 13 + jasperforest BSP on Ubuntu 12.04 x86_64
how can I fix this problem?

  [BUILD] bin/cpio.o
  [BUILD] bin/ctype.o
  [BUILD] bin/cwuri.o
  [BUILD] bin/debug.o
  [BUILD] bin/device.o
  [BUILD] bin/downloader.o
core/downloader.c: In function =A1ucreate_downloader=A1v:
core/downloader.c:267:2: Error=A1G the comparison will always evaluate as
=A1ufalse=A1v for the address of =A1udownloader_free=A1v will never be NULL
[-Werror=3Daddress]
cc1: all warnings being treated as errors
make: *** [bin/downloader.o] Error 1

--bcaec54c5268b67a6704d455afc9
Content-Type: text/html; charset=Big5
Content-Transfer-Encoding: quoted-printable

<div>follow the Yocto wiki &quot;Poky NFS Root&quot;</div><div><a href=3D"h=
ttps://wiki.yoctoproject.org/wiki/Poky_NFS_Root">https://wiki.yoctoproject.=
org/wiki/Poky_NFS_Root</a></div><div>I tried to build the usb image with &q=
uot;<span style=3D"background-color:rgb(249,249,249);line-height:1.1em">EMB=
EDDED_IMAGE=3D../chainload.gpxe make bin/gpxe.usb&quot; but got following e=
rror.</span></div>
<div><span style=3D"background-color:rgb(249,249,249);line-height:1.1em">my=
 build environment is Yocto 13 + jasperforest BSP on Ubuntu 12.04 x86_64</s=
pan></div><div><span style=3D"background-color:rgb(249,249,249);line-height=
:1.1em">how can I fix this problem?&nbsp;</span></div>
<div><br></div><div>&nbsp; [BUILD] bin/cpio.o</div><div>&nbsp; [BUILD] bin/=
ctype.o</div><div>&nbsp; [BUILD] bin/cwuri.o</div><div>&nbsp; [BUILD] bin/d=
ebug.o</div><div>&nbsp; [BUILD] bin/device.o</div><div>&nbsp; [BUILD] bin/d=
ownloader.o</div><div>core/downloader.c: In function =A1ucreate_downloader=
=A1v:</div>
<div>core/downloader.c:267:2: Error=A1G the comparison will always evaluate=
 as =A1ufalse=A1v for the address of =A1udownloader_free=A1v will never be =
NULL [-Werror=3Daddress]</div><div>cc1: all warnings being treated as error=
s</div><div>make: *** [bin/downloader.o] Error 1</div>

--bcaec54c5268b67a6704d455afc9--
