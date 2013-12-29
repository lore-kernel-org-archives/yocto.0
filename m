Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 837F6E0079B
	for <yocto@yoctoproject.org>; Sun, 29 Dec 2013 08:29:11 -0800 (PST)
Received: by mail-qe0-f49.google.com with SMTP id w7so10597565qeb.36
	for <yocto@yoctoproject.org>; Sun, 29 Dec 2013 08:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0QgOuZHUMjYPtKYQ21Jmly+Wv206dS39sis5GsmkMcc=;
	b=JviyHxInRguA8dftkYyp5RXRM9dJFs6ggGv9pNogjN4xIMqdO7Kab7tLzylC5HGcFv
	qOYdX2DhdzF7paNZWIObjcAbIWxiHFfkb2h4z15oi4edCDS6/m46iT/PQJojHxWMkm+/
	oSQ73SpfQoAq5dy7SoPNyOlaVSBSIblUWODG+Bdv3AyRQPo8MUvZKpx0l+dLRvEMXCeB
	VRRY+sanZd8Fs/fI8oovab84y+OkVUZQbke1py0bNnPtA4woDpGpQA14c6CDFvokg+4r
	uaCBWITD5ekFw/yv2Fh69EVbh4duK/v8GiNetVDVw9xh9MwA9zYwoIDNXfr8is+TWVqj
	VsDw==
MIME-Version: 1.0
X-Received: by 10.224.46.8 with SMTP id h8mr100524758qaf.49.1388334549933;
	Sun, 29 Dec 2013 08:29:09 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Sun, 29 Dec 2013 08:29:09 -0800 (PST)
Date: Sun, 29 Dec 2013 09:29:09 -0700
Message-ID: <CANwz6nwVfpHWosH8jzeTftyMBjG7-V0kVoKBxPiJ9jcAd-_voQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: boot zedboard with dylan yocto
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
X-List-Received-Date: Sun, 29 Dec 2013 16:29:14 -0000
Content-Type: multipart/alternative; boundary=001a11c36122ada45004eeaed384

--001a11c36122ada45004eeaed384
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Has anyone booted with the following files built with bitbake.
custom-image-zedboard-20131223033354.rootfs.cpio
custom-image-zedboard-20131223033354.rootfs.ext2
custom-image-zedboard-20131223033354.rootfs.ext2.gz
custom-image-zedboard-20131223033354.rootfs.ext2.gz.u-boot
custom-image-zedboard.cpio
custom-image-zedboard.ext2
custom-image-zedboard.ext2.gz
custom-image-zedboard.ext2.gz.u-boot
modules--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131222234334.tgz
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
uImage
uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131222234334.bin
uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zynq-zed-20131222234334.dtb
uImage-zedboard.bin
uImage-zynq-zed.dtb
I have used the custom-image-zedboard-20131223033354.rootfs.ext2 with
linux-digilent kernel and u-boot-digilent.
In my dtb file I have set the following

model = "Xilinx Zynq ZC702";
compatible = "xlnx,zynq-zc702";
by editing my dts file.
The following is the error I am getting.

 Error: unrecognized/unsupported	machine	ID (r1 = 0x1fb694ec).

Available machine support:

ID (hex)        NAME
ffffffff        ARM-Versatile Express
000008e0        ARM-Versatile Express
00000d32        Xilinx Zynq Platform

Also does anyone have sound working on the zedboard.

Any and all help is appreciated.
Thanks

--001a11c36122ada45004eeaed384
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br></div>Has anyone booted with=
 the following files built with bitbake.<br>custom-image-zedboard-201312230=
33354.rootfs.cpio<br>custom-image-zedboard-20131223033354.rootfs.ext2<br>cu=
stom-image-zedboard-20131223033354.rootfs.ext2.gz<br>
custom-image-zedboard-20131223033354.rootfs.ext2.gz.u-boot<br>custom-image-=
zedboard.cpio<br>custom-image-zedboard.ext2<br>custom-image-zedboard.ext2.g=
z<br>custom-image-zedboard.ext2.gz.u-boot<br>modules--3.8-xilinx+git0+6a0be=
dad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131222234334.tgz<br>
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>uImage<br>uImage--3.8=
-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-201312222=
34334.bin<br>uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6=
d7-r1-zynq-zed-20131222234334.dtb<br>
uImage-zedboard.bin<br>uImage-zynq-zed.dtb<br></div>I have used the custom-=
image-zedboard-20131223033354.rootfs.ext2 with linux-digilent kernel and u-=
boot-digilent.<br></div><div>In my dtb file I have set the following<br>



=09
=09
=09
	<style type=3D"text/css">P { margin-bottom: 0.08in; direction: ltr; color:=
 rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roma=
n",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp";=
 font-size: 12pt; }P.ctl { font-family: "Lohit Devanagari"; font-size: 12pt=
; }</style>


<p class=3D"" style=3D"margin-bottom:0in"><a name=3D"lw_1388322562_0"></a>
model =3D &quot;Xilinx Zynq ZC702&quot;;<br>compatible =3D
&quot;xlnx,zynq-zc702&quot;;</p>

by editing my dts file.<br></div>The following is the error  I am getting.<=
br><br>


=09
=09
=09
	<style type=3D"text/css">PRE { direction: ltr; color: rgb(0, 0, 0); }PRE.w=
estern {  }PRE.cjk { font-family: "WenQuanYi Zen Hei Sharp",monospace; }PRE=
.ctl { font-family: "Lohit Devanagari",monospace; }P { margin-bottom: 0.08i=
n; direction: ltr; color: rgb(0, 0, 0); }P.western { font-family: "Liberati=
on Serif","Times New Roman",serif; font-size: 12pt; }P.cjk { font-family: "=
WenQuanYi Zen Hei Sharp"; font-size: 12pt; }P.ctl { font-family: "Lohit Dev=
anagari"; font-size: 12pt; }</style>


<pre class=3D"">Error: unrecognized/unsupported	machine	ID (r1 =3D 0x1fb694=
ec).

Available machine support:

ID (hex)        NAME
ffffffff        ARM-Versatile Express
000008e0        ARM-Versatile Express
00000d32        Xilinx Zynq Platform</pre>

Also does anyone have sound working on the zedboard.<br><br>Any and all hel=
p is appreciated.<br></div>Thanks<br></div>

--001a11c36122ada45004eeaed384--
