Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F747E014EF
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 05:41:39 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id b57so207126eek.32
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 05:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=OjfxDnEUrlVsHudOgkP15K7niGzIfibGuUR/m2+KgU4=;
	b=Ui26Ax84IdpsSq/AD0RzIJgg5vh/JIDlI8prL2UWo90nXjH8l2nBlsfYX4su3L+xru
	hRrFuPUYwW9+B+/SqayJWhdgFUgaCWz6An5+REfI7asW1aO2FhG/E12gJj8jlNa83BH8
	xdZ+2hGUN6M6bFz3LinBflbeIXRCG62D+IZ+r1yvvb3CYOzV+DOomiY9cldE/cgdwhbR
	2TDdAXNBEXTdusRNOeUofWGm72GOPCpUxv5sIj9pnx9Aex/4tS3/M/FJMa7w8Qz0iFSa
	9MVn4dMMpSz4wRwhqrhcNU+qnQHQv8xeECVz/pUG5YxCbZ1+E8Sel6hoK4LROz3rru99
	wEDg==
MIME-Version: 1.0
X-Received: by 10.15.43.132 with SMTP id x4mr48862489eev.31.1364906497957;
	Tue, 02 Apr 2013 05:41:37 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 2 Apr 2013 05:41:37 -0700 (PDT)
Date: Tue, 2 Apr 2013 06:41:37 -0600
Message-ID: <CANwz6nyj7hJK8e1h8db-qVumBwTroDCgKUrxFTy41a5Dirp=BA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-sato
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
X-List-Received-Date: Tue, 02 Apr 2013 12:41:39 -0000
Content-Type: multipart/alternative; boundary=089e0160c21cf698e404d9600e28

--089e0160c21cf698e404d9600e28
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I have been using the bitbake core-image-sato with

EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk" which adds the sdk to the image.

I since have done bitbake boost (added about 14 RPMs) and bitbake
qt-mobility-x11 (which appears to have added many RPMs).

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
Now with the many RPMs created with bitbake qt-mobility-x11 what is
the correct procedure to add this to the target?
How does one know what is included in the image? What should be the
order first bitbake boost, bitbake qt-mobility, and then bitbake
core-image-sato?

Any and all help will be appreciated!

Thanks

--089e0160c21cf698e404d9600e28
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div>I have been using the bitbake core-im=
age-sato with=20


=09
=09
=09
	<style type=3D"text/css">PRE { direction: ltr; color: rgb(0, 0, 0); }PRE.w=
estern {  }PRE.cjk { font-family: "WenQuanYi Zen Hei Sharp",monospace; }PRE=
.ctl {  }P { margin-bottom: 0.08in; direction: ltr; color: rgb(0, 0, 0); }P=
.western { font-family: "Liberation Serif","Times New Roman",serif; font-si=
ze: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp"; font-size: 12pt;=
 }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }A:link {  }</style>


<pre class=3D"" style=3D"margin-bottom:0.2in">EXTRA_IMAGE_FEATURES =3D &quo=
t;debug-tweaks tools-sdk&quot; which adds the sdk to the image.<br></pre><p=
re class=3D"" style=3D"margin-bottom:0.2in">I since have done bitbake boost=
 (added about 14 RPMs) and bitbake qt-mobility-x11 (which appears to have a=
dded many RPMs).<br>
</pre><pre class=3D"" style=3D"margin-bottom:0.2in">After creating the boos=
t libs I installed the 14 RPMs on the target with the script<br>rpm -Uh  \<=
br>boost-1.53.0-r1.armv7a_vfp_neon.rpm \<br>boost-dbg-1.53.0-r1.armv7a_vfp_=
neon.rpm \<br>
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
v7a_vfp_neon.rpm<br>Now with the many RPMs created with bitbake qt-mobility=
-x11 what is the correct procedure to add this to the target?<br>
How does one know what is included in the image? What should be the order f=
irst bitbake boost, bitbake qt-mobility, and then bitbake core-image-sato?<=
br></pre><pre class=3D"" style=3D"margin-bottom:0.2in">Any and all help wil=
l be appreciated!<br>
</pre><pre class=3D"" style=3D"margin-bottom:0.2in">Thanks<br></pre>

</div>

--089e0160c21cf698e404d9600e28--
