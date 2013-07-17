Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCCE3E01466
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 04:24:16 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id y10so4609143wgg.0
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 04:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=8VdyoIP2TaNejVQyWUAKC1mQDqq+VRN2c0SjDmdp5SE=;
	b=eBY5gBCqhyfnFnPbqNJNFItIN+sfK5rmMX+mw2SWqLFtYdN5YWalSBMaSce3sIOt6h
	WD7ZrNX76DKxiM2fDfNRMC+2vGB3575LHO/JG0FSKRnB4tCfJnF7/fMSk9xJfrzfyNH1
	6nndlt6cxjoMi+ifvgWGrp4f7VV0RvulFfkWoxJphCJ4kB+1F3KjlxA6w43zrXR2Y4vZ
	kO4bos59pqJLLRpQGTpKYQXXrI3lDzS/mIFW45JZr1VYzW/pScBEy3afIRhLeZjZFSID
	2pprjR18Gm7Fp/YV5+Ca9GHVIk+ZiLA29sjD8V2hY+Ay4Htqr/v4mE55QSwzBRjUM/rG
	1OqQ==
X-Received: by 10.194.179.33 with SMTP id dd1mr4477791wjc.51.1374060254954;
	Wed, 17 Jul 2013 04:24:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.241.233 with HTTP; Wed, 17 Jul 2013 04:23:54 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 17 Jul 2013 13:23:54 +0200
Message-ID: <CAAGt+t25rfwYgOhA3xqpSsGaEpoZNmk0m541CCmJbwB5haZ6KA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: OpenCV libraries missing after build is successful
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
X-List-Received-Date: Wed, 17 Jul 2013 11:24:17 -0000
Content-Type: multipart/alternative; boundary=089e013d0f80658ea604e1b35590

--089e013d0f80658ea604e1b35590
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

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

--089e013d0f80658ea604e1b35590
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-family:arial,sans-serif;font-size=
:13px">Hi all,</span></div><div><span style=3D"font-family:arial,sans-serif=
;font-size:13px"><br></span></div><div><span style=3D"font-family:arial,san=
s-serif;font-size:13px">I appended OpenCV and Gstreamer plugins to Image an=
d made a build. Build is successful without any errors but OpenCV libraries=
 are missing in rootfs.tar.bz2=A0</span><div style=3D"font-family:arial,san=
s-serif;font-size:13px">

<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">I sear=
ched for libs(=A0<span style=3D"color:rgb(68,68,68);line-height:16px">libop=
encv_core</span><span style=3D"color:rgb(68,68,68);line-height:16px">.so,=
=A0</span><span style=3D"color:rgb(68,68,68);line-height:16px">libhighgui</=
span><span style=3D"color:rgb(68,68,68);line-height:16px">.so,=A0</span><sp=
an style=3D"color:rgb(68,68,68);line-height:16px">libOpenCV</span><span sty=
le=3D"color:rgb(68,68,68);line-height:16px">.so=A0</span>) in /usr/bin, /us=
r/lib and the whole archive but unable to find any libraries.</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px"><div><br></div><=
div>In /yocto/build/downloads, I can see=A0OpenCV-2.4.3.tar.bz2,=A0OpenCV-2=
.4.3.tar.bz2.done files.</div><div><br></div><div>In /yocto/build/tmp/deplo=
y/licenses, I can see OpenCV folder.</div>

<div><br></div><div>In /yocto/build/tmp/deploy/rpm/armv7a_vfp_neon, I can s=
ee .rpm packages.</div><div><br></div><div>Log file after build says this:<=
/div><div>(Pasted only start and success logs)</div><div><br></div><div>

<div>NOTE: recipe opencv-2.4.3-r2: task do_compile: Succeeded</div><div>NOT=
E: recipe opencv-2.4.3-r2: task do_install: Started</div><div>NOTE: recipe =
opencv-2.4.3-r2: task do_install: Succeeded</div><div>NOTE: recipe opencv-2=
.4.3-r2: task do_package: Started</div>

<div>NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Started</div><=
div>NOTE: recipe opencv-2.4.3-r2: task do_populate_sysroot: Succeeded</div>=
<div>NOTE: recipe opencv-2.4.3-r2: task do_package: Succeeded</div><div>

NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Started</div><div>=
NOTE: recipe opencv-2.4.3-r2: task do_package_write_rpm: Succeeded</div><di=
v><div>NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Start=
ed</div>

<div>NOTE: recipe opencv-2.4.3-r2: task do_generate_toolchain_file: Succeed=
ed</div></div><div><div>NOTE: recipe opencv-2.4.3-r2: task do_populate_lic:=
 Started</div><div>NOTE: recipe opencv-2.4.3-r2: task do_populate_lic: Succ=
eeded</div>

</div><div><br></div><div>Any Idea/hints where these files are and why they=
 are missing?</div><div><br></div><div>Regards,</div><div>Zafrullah Syed.</=
div></div></div></div>
</div>

--089e013d0f80658ea604e1b35590--
