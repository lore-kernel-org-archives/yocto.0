Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7BA6E01385
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 13:17:20 -0700 (PDT)
Received: by ggke5 with SMTP id e5so262602ggk.35
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 13:17:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type:x-gm-message-state;
	bh=NmPVEK5lRQA5JlFkwwoN9vDVYTWKG8StuOUWvIhKPYg=;
	b=Wqy7lX5ASXhNofhTP5I7tkRuASL9Rh+QYD+fg4JDpCtKrUH0OaC46qzwGTJFUWukzm
	ljnp3XoQmFcUGbMby5U4rMunAOy2m4iqvGa8PijP1f4Qa9CXriFGz3Cg0swtsR36vCxj
	K7e+l6vWDiqslR80RQZYRixp/P5YtKbNnyZSOweUW1c0KeTY/o9pFHYiI0ZFdWY2MKku
	YdZHpRQiMxVC7JRDMiJq6z8ZN/KJBOEPfcEb+pPjpCsNYAE8R7cTg82CvuXygt4jyTrQ
	h6h+mpSw7gOGCxswPm982rbFxz56vsX5o5l6wGhn8O7wxmcvsI++DWW52TDAaeAmcAJC
	dnSQ==
MIME-Version: 1.0
Received: by 10.50.15.133 with SMTP id x5mr14634978igc.26.1345580239506; Tue,
	21 Aug 2012 13:17:19 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.142.134 with HTTP; Tue, 21 Aug 2012 13:17:19 -0700 (PDT)
Date: Tue, 21 Aug 2012 13:17:19 -0700
X-Google-Sender-Auth: pp0IIqx47nANfxgkD9KayUuPy6A
Message-ID: <CA+gsK-pFJV-Lab1E8chP0KOcEs9hg=Oxe_5CNZaobKj0P5Xmaw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnmj4ObH8aJqYDudJ8nYfEMRgA5spRJZXDcRd3OJUJkMrBUFTTdpuxN+1nIGo2Pp47FzNMu
Subject: [ADT] Sysroot setup issue
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
X-List-Received-Date: Tue, 21 Aug 2012 20:17:20 -0000
Content-Type: multipart/alternative; boundary=14dae9340a35314ad604c7cc50ff

--14dae9340a35314ad604c7cc50ff
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to setup the ADT using an ADT installer. I have downloaded the
installer from
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.1/adt_installer/ as
well as created my own installer using a build environment with Denzil
7.0.1.

The adt_installer.conf contains these settings:

YOCTOADT_REPO="http://adtrepo.yoctoproject.org/1.2.1"
YOCTOADT_TARGETS="arm x86"
YOCTOADT_QEMU="Y"
YOCTOADT_NFS_UTIL="Y"

YOCTOADT_ROOTFS_arm="minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm"

YOCTOADT_ROOTFS_x86="minimal"
YOCTOADT_TARGET_SYSROOT_IMAGE_x86="minimal"
YOCTOADT_TARGET_SYSROOT_LOC_x86="$HOME/test-yocto/x86"

The installer downloads kernel and root fs images. After the installation
has finished

${HOME}/test-yocto/arm/boot does not contain any kernel images and

${HOME}/test-yocto/x86/boot only contains a empty link bzImage ->
bzImage-3.2.18-yocto-standard

I manually copied the x86 kernel image bzImage-qemux86.bin from the
download_image directory of the extracted installer tarball into the
directory, initialized the ADT environment and then ran

runqemu ${HOME}/test-yocto/x86/boot/bzImage-qemux86.bin ${HOME}/test-yocto/x86

The NFS user-space server initializes on the tap0 interface and the kernel
boots. However, it panics because it cannot locate the root fs. rpcbind is
started with the -i option on my system.

I also ran QEMU directly using:

/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/qemu -kernel
/home/rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cursor -usb
-usbdevice wacom-tablet -vga vmware -enable-gl -no-reboot -m 128 --append
"root=/dev/nfs nfsroot=192.168.100.199://home/rudi/test-yocto/x86 rw
ip=192.168.100.38::192.168.100.199:255.255.255.0 mem=128M oprofile.timer=1 "

with my dev system's NFS server running and exporting the file system (I
verified that I can mount the exported file system via NFS).

Questions:

   1. Why do the sysroot boot directory not contain any kernel images? I
   don't think that is what it is supposed to be.
   2. Is there anything broken with the sysroot causing the boot process to
   fail when the kernel tries to access the root fs?
   3. Any hints on how to fix it?

Thanks,
Rudi

--14dae9340a35314ad604c7cc50ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
<div><br></div><div>I am trying to setup the ADT using an ADT installer. I =
have downloaded the installer from=A0<a href=3D"http://downloads.yoctoproje=
ct.org/releases/yocto/yocto-1.2.1/adt_installer/">http://downloads.yoctopro=
ject.org/releases/yocto/yocto-1.2.1/adt_installer/</a>=A0as well as created=
 my own installer using a build environment with Denzil 7.0.1.</div>
<div><br></div><div>The adt_installer.conf contains these settings:</div><d=
iv><br></div><div><div>YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo.yoct=
oproject.org/1.2.1">http://adtrepo.yoctoproject.org/1.2.1</a>&quot;</div><d=
iv>
YOCTOADT_TARGETS=3D&quot;arm x86&quot;</div><div>YOCTOADT_QEMU=3D&quot;Y&qu=
ot;</div><div>YOCTOADT_NFS_UTIL=3D&quot;Y&quot;</div><div><br></div><div>YO=
CTOADT_ROOTFS_arm=3D&quot;minimal&quot;</div><div>YOCTOADT_TARGET_SYSROOT_I=
MAGE_arm=3D&quot;minimal&quot;</div>
<div>YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-yocto/arm&quot;</di=
v><div><br></div><div>YOCTOADT_ROOTFS_x86=3D&quot;minimal&quot;</div><div>Y=
OCTOADT_TARGET_SYSROOT_IMAGE_x86=3D&quot;minimal&quot;</div><div>YOCTOADT_T=
ARGET_SYSROOT_LOC_x86=3D&quot;$HOME/test-yocto/x86&quot;</div>
</div><div><br></div><div>The installer downloads kernel and root fs images=
. After the installation has finished</div><div><br></div><div>${HOME}/test=
-yocto/arm/boot does not contain any kernel images and</div><div><br></div>
<div><div>${HOME}/test-yocto/x86/boot only contains a empty link=A0bzImage =
-&gt; bzImage-3.2.18-yocto-standard</div></div><div><br></div><div>I manual=
ly copied the x86 kernel image bzImage-qemux86.bin from the download_image =
directory of the extracted installer tarball into the directory, initialize=
d the ADT environment and then ran</div>
<div><br></div><div>runqemu=A0${HOME}/test-yocto/x86/boot/bzImage-qemux86.b=
in=A0${HOME}/test-yocto/x86</div><div><br></div><div>The NFS user-space ser=
ver initializes on the tap0 interface and the kernel boots. However, it pan=
ics because it cannot locate the root fs. rpcbind is started with the -i op=
tion on my system.</div>
<div><br></div><div>I also ran QEMU directly using:</div><div><br></div><di=
v>/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/qemu -kernel /home/=
rudi/test-yocto/x86/boot/bzImage-qemux86.bin -show-cursor -usb -usbdevice w=
acom-tablet -vga vmware -enable-gl -no-reboot -m 128 --append &quot;root=3D=
/dev/nfs nfsroot=3D<a href=3D"http://192.168.100.199">192.168.100.199</a>:/=
/home/rudi/test-yocto/x86 rw ip=3D192.168.100.38::192.168.100.199:255.255.2=
55.0 mem=3D128M oprofile.timer=3D1 &quot;</div>
<div><br></div><div>with my dev system&#39;s NFS server running and exporti=
ng the file system (I verified that I can mount the exported file system vi=
a NFS).</div><div><br></div><div>Questions:</div><div><ol><li>Why do the sy=
sroot boot directory not contain any kernel images? I don&#39;t think that =
is what it is supposed to be.</li>
<li>Is there anything broken with the sysroot causing the boot process to f=
ail when the kernel tries to access the root fs?</li><li>Any hints on how t=
o fix it?</li></ol><div>Thanks,</div></div><div>Rudi</div><div><br></div>

--14dae9340a35314ad604c7cc50ff--
