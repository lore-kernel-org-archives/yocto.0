Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDAA3E00F10; Tue, 12 Jul 2016 03:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947F0E00EAE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 03:46:01 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id 38so12598246iol.0
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 03:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=gWsh2WGZixI6IV5/JNWiyGjyASvttG+DWXICHKBXcBQ=;
	b=gUuEHyORiY8FxGnb9dYJY5HUnixt+g8JXKpATcCHII0x3owxzdHVI2GIYahYPj4pfd
	7B77mAvEqWm+Jl3bd/KdBtRyETuTIxjtSS/+UJiwPLBHfP8JWs0/ofXVB/vaa7Li1D8G
	WUS64i2kbNHXhviMOILZSWvU/TVSP6+Y9oXVfxODRMFOBSR9uGK/b+W/A7j5+9aUtM9I
	AgRTSMQnNGrCdhzieMK/Uk+G+Xtoq3Pd/OWlHtG7vd1LosxC02zdjrKrrTyJspYDjrkD
	GXhU4Z4hNrfjz7QIPxf6umVnAYE216kinF3y/IZPaxP4boEW93XLyRkT5zxGFmMheOWx
	B9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gWsh2WGZixI6IV5/JNWiyGjyASvttG+DWXICHKBXcBQ=;
	b=iZ95nDHzVqVwUXbizaZvOybOdhZirqbU7DBViCY7P0nWYogZBwxmu16sZtjkx3xeqr
	eQrQCTI62e4Vvk+nidhyHe+2UQe9W2UMq6Bgvlp4Ox4tmZpB2VpPh8UzIkaxRynIeo02
	VnHGeSV5/hxs7sqqCz4l3xXGW7qwNw01kjvOTh7VdiBldqoOQdN+5mr5D1O24knD+kxK
	6YkLtVW8WS/63fxu6GkmtulwQRHNDvoobqm+MEkzjmR1vUniPqSpLE9J1RJe2tiEdein
	sP7Lkv9kZHFqr11pTWI8BnvOU9N8WsGmZiw3CXniktplP+rcfZ5QXg5EmmW3nn5VeLpO
	mE6g==
X-Gm-Message-State: ALyK8tJPpAG41K+/IYeIZLSSzr078XoWTl8CpSNKsUU+b6cd/6W+gvs2qqftTXfY2KUdsPxtxtEvvbtkH6vWJw==
X-Received: by 10.107.1.20 with SMTP id 20mr708712iob.74.1468320360522; Tue,
	12 Jul 2016 03:46:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Tue, 12 Jul 2016 03:45:41 -0700 (PDT)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Tue, 12 Jul 2016 12:45:41 +0200
Message-ID: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [genericx86-jethro] core-image-sato HDDIMG 'install' - no hard drive selected - /etc/fstab no such file or directory
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
X-List-Received-Date: Tue, 12 Jul 2016 10:46:02 -0000
Content-Type: multipart/alternative; boundary=001a11397da88168a005376df9e7

--001a11397da88168a005376df9e7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello everyone!

I am trying to install genericx86 core-image-sato (jethro) HDDIMG to an
atom-pc.
For this 2GB USB stick is used.
When choosing 'install' option from boot menu I get the message:

"Searching for hard drives...
No hard drive selected. Installation aborted."

Installatiion stops and i get the console.
When I try to run fsck, it says: can't read '/etc/fstab': No such file or
directory

fdisk -l  shows only the partitions of USB stick.

After I choose 'boot' option to boot into live image, SDD drive is under
/dev/sdb and USB installation stick under /dev/sda,

What recipe/package is my installation missing? The SSD hard drive is not
recognized for some reason. With previous yocto releases this package list
DID work fine.
So there is something missing in the background.
Do you have any idea what this might be?

Below is my package list from local.conf.

thank you and kind regards
Simon :-)

EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
IMAGE_INSTALL_append =3D " make \
     initscripts \
     grub \
     initramfs-boot \
     syslinux \
     initramfs-live-install \
     initramfs-live-install-efi \
     initramfs-live-boot \
     xinit \
     xwininfo \
     openssh-sftp \
     openssh-sftp-server \
     qtbase-plugins \
     qtconnectivity \
     qtdeclarative \
     qtdeclarative-plugins \
     qtdeclarative-tools \
     qtdeclarative-qmlplugins \
     qtenginio \
     qtlocation \
     qtmultimedia \
     qtmultimedia-plugins \
     qtmultimedia-qmlplugins \
     qtsystems \
"

Viele Gr=C3=BCsse
Simon Bolek :-)

mit freundlichem Gruss / kind regards / pozdrawiam
Simon P. Bolek
------------------------------------------------------
Dipl. Inf. Simon P. Bolek
SAP Integration Architect
Business Mobile and IVI Solutions
mailto: simon.bolek@arcom-ivi.de
http://www.arcom-ivi.de/
XING: https://www.xing.com/profile/SimonP_Bolek

--001a11397da88168a005376df9e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hello everyone! <b=
r><br></div>I am trying to install genericx86 core-image-sato (jethro) HDDI=
MG to an atom-pc. <br></div>For this 2GB USB stick is used. <br></div>When =
choosing &#39;install&#39; option from boot menu I get the message:<br><br>=
</div><div>&quot;Searching for hard drives...<br></div>No hard drive select=
ed. Installation aborted.&quot;<br><br></div><div>Installatiion stops and i=
 get the console. <br></div><div>When I try to run fsck, it says: can&#39;t=
 read &#39;/etc/fstab&#39;: No such file or directory<br><br></div><div>fdi=
sk -l=C2=A0 shows only the partitions of USB stick.<br><br></div><div>After=
 I choose &#39;boot&#39; option to boot into live image, SDD drive is under=
 /dev/sdb and USB installation stick under /dev/sda, <br></div><div><br></d=
iv><div>What recipe/package is my installation missing? The SSD hard drive =
is not recognized for some reason. With previous yocto releases this packag=
e list DID work fine.<br></div><div>So there is something missing in the ba=
ckground. <br></div><div>Do you have any idea what this might be?<br></div>=
</div><br>Below is my package list from local.conf.<br><br></div>thank you =
and kind regards<br></div>Simon :-)<br><div><div><div><div><br>EXTRA_IMAGE_=
FEATURES =3D &quot;debug-tweaks ssh-server-openssh&quot;<br>IMAGE_INSTALL_a=
ppend =3D &quot; make \<br>=C2=A0=C2=A0=C2=A0=C2=A0 initscripts \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0 grub \<br>=C2=A0=C2=A0=C2=A0=C2=A0 initramfs-boot \<br>=
=C2=A0=C2=A0=C2=A0=C2=A0 syslinux \=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=
=A0=C2=A0=C2=A0 initramfs-live-install \<br>=C2=A0=C2=A0=C2=A0=C2=A0 initra=
mfs-live-install-efi \<br>=C2=A0=C2=A0=C2=A0=C2=A0 initramfs-live-boot \<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 xinit \<br>=C2=A0=C2=A0=C2=A0=C2=A0 xwininfo \<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 openssh-sftp \<br>=C2=A0=C2=A0=C2=A0=C2=A0 openss=
h-sftp-server \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtbase-plugins \<br>=C2=A0=C2=
=A0=C2=A0=C2=A0 qtconnectivity \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtdeclarative =
\<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtdeclarative-plugins \<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 qtdeclarative-tools \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtdeclarative-qmlp=
lugins \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtenginio \<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 qtlocation \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtmultimedia \<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 qtmultimedia-plugins \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtmultimedi=
a-qmlplugins \<br>=C2=A0=C2=A0=C2=A0=C2=A0 qtsystems \<br>&quot;<br><div><d=
iv><div><div><div><div><div><br clear=3D"all"><div><div><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div>Viele Gr=C3=BCsse<br>Simon Bolek :-)<br><br>mit freundliche=
m Gruss / kind regards / pozdrawiam<br>Simon P. Bolek<br>------------------=
------------------------------------<br>Dipl. Inf. Simon P. Bolek<br>SAP In=
tegration Architect<br><div>Business=C2=A0<span style=3D"font-family:arial,=
sans-serif;font-size:13px;border-collapse:collapse">Mobile and IVI Solution=
s</span><div>mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"=
_blank">simon.bolek@arcom-ivi.de</a><div><a href=3D"http://www.arcom-ivi.de=
/" target=3D"_blank">http://www.arcom-ivi.de/</a><br>XING: <a href=3D"https=
://www.xing.com/profile/SimonP_Bolek" target=3D"_blank">https://www.xing.co=
m/profile/SimonP_Bolek</a><br></div></div></div></div></div></div></div></d=
iv></div>
</div></div></div></div></div></div></div></div></div></div></div></div></d=
iv>

--001a11397da88168a005376df9e7--
