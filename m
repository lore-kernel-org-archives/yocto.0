Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FB9E014E2
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 08:22:00 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id f11so8235006wgh.15
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 08:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=dTftXf35wSHWikJy0sMgkO+ZTdstprl0C8FDPjJ9J6I=;
	b=vijrQoCFmvYup3joVGIZoqdlBKjvzExUsNNn4/6+TCql6DAPtomUBth6JEk1jVweVW
	1EwUGSxWueL4ywi8HeYf4PPCTtxF7MyL5ssSVSFKkRDCSuM+oy5dSwRSVuVI9qoKMy+X
	4nfSjpjGiFdtd5X6TGmMwhLl+LlW8jxrRo+7eAkV0R2/ri7ZGLvFy1XMrRTfcm7Q07NU
	cjdlgKYQLZGvCgGgy8LMtyREhMtPMw4g7qr9eN8ob0+NIU1NH1xF1Tdw6hdMuWxrenFg
	uvqqx02LKvViQPiDQCCyhDPfjzbz9DRmLCTAiD2BvWt4J9WlRw1OKXXgV3VP9OIGRsvQ
	k8VA==
X-Received: by 10.180.9.134 with SMTP id z6mr2045367wia.2.1373642519085; Fri,
	12 Jul 2013 08:21:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.241.233 with HTTP; Fri, 12 Jul 2013 08:21:39 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Fri, 12 Jul 2013 17:21:39 +0200
Message-ID: <CAAGt+t1GaWBqsZAXR9xq0bTeYry_W_xOX38Qz=ZMxzM1=ivkbQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Libraries missing after build is successful
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
X-List-Received-Date: Fri, 12 Jul 2013 15:22:01 -0000
Content-Type: multipart/alternative; boundary=001a11c2b1be660afc04e15212c5

--001a11c2b1be660afc04e15212c5
Content-Type: text/plain; charset=ISO-8859-1

I appended OpenCV and Gstreamer plugins to Image and made a build. Build is
successful without any errors but OpenCV libraries are missing in
rootfs.tar.bz2

I searched for libs( libopencv_core.so, libhighgui.so, libOpenCV.so ) in
/usr/bin, /usr/lib and the whole archive but unable to find any libraries.

In /yocto/build/downloads, I can
see OpenCV-2.4.3.tar.bz2, OpenCV-2.4.3.tar.bz2.done files.

In /yocto/build/tmp/deploy/licenses, I can see OpenCV folder.

In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm packages.

Log file after build says this:
(Pasted only start and success logs)

NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_install: Started
NOTE: recipe opencv-2.4.3-r2: task do_install: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_package: Started
NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started
NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started
NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Started
NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeeded
NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started
NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded

Any Idea/hints where these files are and why they are missing?

Regards,
Zafrullah Syed.

--001a11c2b1be660afc04e15212c5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I appended OpenCV and Gstreamer plugins to Image and made =
a build. Build is successful without any errors but OpenCV libraries are mi=
ssing in rootfs.tar.bz2=A0<div><br></div><div>I searched for libs(=A0<span =
style=3D"color:rgb(68,68,68);font-family:arial,sans-serif;line-height:16px"=
>libopencv_core</span><span style=3D"color:rgb(68,68,68);font-family:arial,=
sans-serif;line-height:16px">.so,=A0</span><span style=3D"color:rgb(68,68,6=
8);font-family:arial,sans-serif;line-height:16px">libhighgui</span><span st=
yle=3D"color:rgb(68,68,68);font-family:arial,sans-serif;line-height:16px">.=
so,=A0</span><span style=3D"color:rgb(68,68,68);font-family:arial,sans-seri=
f;line-height:16px">libOpenCV</span><span style=3D"color:rgb(68,68,68);font=
-family:arial,sans-serif;line-height:16px">.so=A0</span>) in /usr/bin, /usr=
/lib and the whole archive but unable to find any libraries.</div>

<div><div><br></div><div>In /yocto/build/downloads, I can see=A0OpenCV-2.4.=
3.tar.bz2,=A0OpenCV-2.4.3.tar.bz2.done files.</div><div><br></div><div>In /=
yocto/build/tmp/deploy/licenses, I can see OpenCV folder.</div><div><br></d=
iv>

<div>In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can see .rpm package=
s.</div><div><br></div><div>Log file after build says this:</div><div>(Past=
ed only start and success logs)</div><div><br></div><div><div>NOTE: recipe =
opencv-2.4.3-r2: task do_compile: Succeeded</div>

<div>NOTE: recipe opencv-2.4.3-r2: task do_install: Started</div><div>NOTE:=
 recipe opencv-2.4.3-r2: task do_install: Succeeded</div><div>NOTE: recipe =
opencv-2.4.3-r2: task do_package: Started</div><div>NOTE: recipe opencv-2.4=
.3-r2: task do_populate_sysroot: Started</div>

<div>NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded</div=
><div>NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded</div><div>NO=
TE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started</div><div>

NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded</div><di=
v><div>NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Start=
ed</div><div>NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file:=
 Succeeded</div>

</div><div><div>NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Started=
</div><div>NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succeeded</d=
iv></div><div><br></div><div>Any Idea/hints where these files are and why t=
hey are missing?</div>

<div><br></div><div>Regards,</div><div>Zafrullah Syed.</div>
</div></div></div>

--001a11c2b1be660afc04e15212c5--
