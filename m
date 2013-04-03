Return-Path: <vidal.develone@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10037E01423
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 07:01:55 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ib11so1470078vcb.21
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 07:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=9Uc7ot4CvkZ41mYHnBL0I/n/sQROwUMd2ol/TSQIVns=;
	b=mAlew0woausotoMACYfxwLn/0rSymjFCTePIVY113ZRV5vpOey5VVHx2Q0oiIcxviF
	uk+Hhy0ozZwoMAbaBJRBKpUMdl3SnNqHFnpE7/HFi63LD/q27CHRvEBQNJy4tV9E99M4
	nR0flqigL2I01BnTbm/L9HBO74EaL2MCqDFtxOEdKAW0Rv5Ki2giYFXoy84ZzDe2ugdZ
	+BqyiE0FaGHwz9SaIaJX4ZkiHwU14+7DOgUXANOqwgbZQALTa6YsqtNNU2goWHy1r31s
	ju24OO2M/uxVr3e8xn2F7fkzybIS0rnH+ozSyOw9zTqZ+r+SvyMQRtCmGtSDx89kJLtZ
	xRlA==
MIME-Version: 1.0
X-Received: by 10.220.153.69 with SMTP id j5mr1275072vcw.35.1364997715497;
	Wed, 03 Apr 2013 07:01:55 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Wed, 3 Apr 2013 07:01:55 -0700 (PDT)
Date: Wed, 3 Apr 2013 08:01:55 -0600
Message-ID: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: boost & qt-mobility-x11 added to core-image-sato
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
X-List-Received-Date: Wed, 03 Apr 2013 14:01:56 -0000
Content-Type: multipart/alternative; boundary=f46d043c7ca6f39a0904d9754b57

--f46d043c7ca6f39a0904d9754b57
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I have been using the bitbake core-image-sato with

EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk" which adds the sdk to the
image.

I since have done bitbake boost (added about 14 RPMs) and bitbake
qt-mobility-x11 (81 RPMs).

After creating the boost libs I installed the 14 RPMs on the target
with the script
rpm -Uh  \
boost-1.53.0-r1.armv7a_vfp_neon.rpm \
boost-dbg-1.53.0-r1.armv7a_vfp_neon.rpm \
boost-dev-1.53.0-r1.armv7a_vfp_neon.rpm \
boost-staticdev-1.53.0-r1.armv7a_vfp_neon.rpm \
boost-test-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-date-time1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-filesystem1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-graph1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-iostreams1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-program-options1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-regex1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-signals1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-system1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \
libboost-thread1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm

The qt-mobility-x11 RPMs were installed with rpm -Uh *.rpm.
The difficult part was determining what are the needed dependencies.  This
was done by running the rpm -Uh --test *.rpm many times and adding
additional RPMs to set of RPMs.

What is the correct procedure to add bitbake results to the target?
How does one know what packages are included in the image? What should be
the order first bitbake boost, bitbake qt-mobility, and then bitbake
core-image-sato?  This order did not work I still needed to install the new
RPMs after the target was running.


Any and all help will be appreciated!

Thanks

--f46d043c7ca6f39a0904d9754b57
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello,<br>I have been using the bitbake core-image-sat=
o with<br><br>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-sdk&quot; w=
hich adds the sdk to the image.<br><br>I since have done bitbake boost (add=
ed about 14 RPMs) and bitbake<br>
qt-mobility-x11 (81 RPMs).<br><br>After creating the boost libs I installed=
 the 14 RPMs on the target<br>with the script<br>rpm -Uh=A0 \<br>boost-1.53=
.0-r1.armv7a_vfp_neon.rpm \<br>boost-dbg-1.53.0-r1.armv7a_vfp_neon.rpm \<br=
>
boost-dev-1.53.0-r1.armv7a_vfp_neon.rpm \<br>boost-staticdev-1.53.0-r1.armv=
7a_vfp_neon.rpm \<br>boost-test-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost=
-date-time1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost-filesystem1.53=
.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>
libboost-graph1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost-iostreams1=
.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost-program-options1.53.0-1.5=
3.0-r1.armv7a_vfp_neon.rpm \<br>libboost-regex1.53.0-1.53.0-r1.armv7a_vfp_n=
eon.rpm \<br>
libboost-signals1.53.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost-system1.=
53.0-1.53.0-r1.armv7a_vfp_neon.rpm \<br>libboost-thread1.53.0-1.53.0-r1.arm=
v7a_vfp_neon.rpm<br><br>The qt-mobility-x11 RPMs were installed with rpm -U=
h *.rpm.<br>
The difficult part was determining what are the needed dependencies.=A0 Thi=
s was done by running the rpm -Uh --test *.rpm many times and adding additi=
onal RPMs to set of RPMs. =A0<br><br>What is the correct procedure to add b=
itbake results to the target?<br>
How does one know what packages are included in the image? What should be t=
he order first bitbake boost, bitbake qt-mobility, and then bitbake core-im=
age-sato?=A0 This order did not work I still needed to install the new RPMs=
 after the target was running.<br>
<br><br>Any and all help will be appreciated!<br><br>Thanks</div>

--f46d043c7ca6f39a0904d9754b57--
