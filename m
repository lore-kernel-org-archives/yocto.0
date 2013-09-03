Return-Path: <andreas2025@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58424E0148D
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 04:38:36 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id c10so3165378wiw.11
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 04:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=08FILzGt8nMAdjvKYu6rBC6QbTFeSvQXHy8HsywdZkA=;
	b=FUwYhNjErOQMcmGABgVSJjL1TMB7bCyzyKkTcbZa2JiI51kQC/Xpi0MRLUlJ89k0ZU
	bKh0kkTXCn+lq/rBV1MuBG+Gq7RQ24Nw9+2m+zm5IIw2GNr4HrO4pG3bQvgP719cWs7B
	F9nJXY4p/0bg87IcwwVHuF8x7RsuNndGsZAlcXvp8akOARD/IpTuxMFeweAlXNVTGW5g
	BhPT3wEvQ/ZaX2ByMAH9V8gR3oDEExYJ4OSYHdkw/t3KNXY0qQi2owuGD6CkW773wkZm
	ugVoSeJgQxEmCovx7rJQ21L23+701co0g1ihVCTq/MZ1mdfGb/FvtMrDxrVGvBMNfWTN
	p4xQ==
MIME-Version: 1.0
X-Received: by 10.180.75.15 with SMTP id y15mr17773608wiv.12.1378208314801;
	Tue, 03 Sep 2013 04:38:34 -0700 (PDT)
Received: by 10.216.164.71 with HTTP; Tue, 3 Sep 2013 04:38:34 -0700 (PDT)
Date: Tue, 3 Sep 2013 12:38:34 +0100
Message-ID: <CAAVaN8x9a3avwfkaUSs72vCpoaxMEsynJqHht8sBUUFCuHrP2A@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto-9.0 Fails to produce lttng-modules package
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
X-List-Received-Date: Tue, 03 Sep 2013 11:38:38 -0000
Content-Type: multipart/alternative; boundary=f46d043c7b6207c4b004e57921fe

--f46d043c7b6207c4b004e57921fe
Content-Type: text/plain; charset=ISO-8859-1

Hello

I try to produce opkg packages for my system, and I have activated the
lttng-modules for tracing. After the build and I have the following error.
Does anyone have seen something similar?


ERROR: Error executing a python function in
/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
lttng-modules_2.1.1.bb:
OSError: [Errno 2] No such file or directory:
'/opt/projects/yocto/yocto-9.0/build-6qsabresdrt/tmp/work/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/2.1.1-r1/packages-split/lttng-modules-dbg'

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "do_package_ipk", line 194, in <module>
ERROR:
ERROR:   File "do_package_ipk", line 45, in do_package_ipk
ERROR:
ERROR: The code that was being executed was:
ERROR:      0190:        bb.utils.unlockfile(lf)
ERROR:      0191:
ERROR:      0192:
ERROR:      0193:
ERROR:  *** 0194:do_package_ipk(d)
ERROR:      0195:
ERROR: [From file: 'do_package_ipk', lineno: 194, function: <module>]
ERROR:      0041:        basedir = os.path.join(os.path.dirname(root))
ERROR:      0042:        arch = localdata.getVar('PACKAGE_ARCH', True)
ERROR:      0043:        pkgoutdir = "%s/%s" % (outdir, arch)
ERROR:      0044:        bb.mkdirhier(pkgoutdir)
ERROR:  *** 0045:        os.chdir(root)
ERROR:      0046:        from glob import glob
ERROR:      0047:        g = glob('*')
ERROR:      0048:        try:
ERROR:      0049:            del g[g.index('CONTROL')]
ERROR: [From file: 'do_package_ipk', lineno: 45, function: do_package_ipk]
ERROR: Function failed: do_package_ipk
ERROR: Logfile of failure stored in:
/opt/projects/yocto/yocto-9.0/build-imx6qsabresdrt/tmp/work/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/2.1.1-r1/temp/log.do_package_write_ipk.26873
ERROR: Task 13
(/opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/
lttng-modules_2.1.1.bb, do_package_write_ipk) failed with exit code '1'

Best regards,
Andreas

--f46d043c7b6207c4b004e57921fe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello<br><br>I try to produce opkg packages for my sy=
stem, and I have activated the=A0 lttng-modules for tracing. After the buil=
d and I have the following error.<br></div>Does anyone have seen something =
similar? <br>
<div><div><div><div><div><br><br>ERROR: Error executing a python function i=
n /opt/projects/yocto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/<a h=
ref=3D"http://lttng-modules_2.1.1.bb">lttng-modules_2.1.1.bb</a>:<br>OSErro=
r: [Errno 2] No such file or directory: &#39;/opt/projects/yocto/yocto-9.0/=
build-6qsabresdrt/tmp/work/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/=
2.1.1-r1/packages-split/lttng-modules-dbg&#39;<br>
<br>ERROR: The stack trace of python calls that resulted in this exception/=
failure was:<br>ERROR:=A0=A0 File &quot;do_package_ipk&quot;, line 194, in =
&lt;module&gt;<br>ERROR: <br>ERROR:=A0=A0 File &quot;do_package_ipk&quot;, =
line 45, in do_package_ipk<br>
ERROR: <br>ERROR: The code that was being executed was:<br>ERROR:=A0=A0=A0=
=A0=A0 0190:=A0=A0=A0=A0=A0=A0=A0 bb.utils.unlockfile(lf)<br>ERROR:=A0=A0=
=A0=A0=A0 0191:<br>ERROR:=A0=A0=A0=A0=A0 0192:<br>ERROR:=A0=A0=A0=A0=A0 019=
3:<br>ERROR:=A0 *** 0194:do_package_ipk(d)<br>ERROR:=A0=A0=A0=A0=A0 0195:<b=
r>
ERROR: [From file: &#39;do_package_ipk&#39;, lineno: 194, function: &lt;mod=
ule&gt;]<br>ERROR:=A0=A0=A0=A0=A0 0041:=A0=A0=A0=A0=A0=A0=A0 basedir =3D os=
.path.join(os.path.dirname(root))<br>ERROR:=A0=A0=A0=A0=A0 0042:=A0=A0=A0=
=A0=A0=A0=A0 arch =3D localdata.getVar(&#39;PACKAGE_ARCH&#39;, True)<br>
ERROR:=A0=A0=A0=A0=A0 0043:=A0=A0=A0=A0=A0=A0=A0 pkgoutdir =3D &quot;%s/%s&=
quot; % (outdir, arch)<br>ERROR:=A0=A0=A0=A0=A0 0044:=A0=A0=A0=A0=A0=A0=A0 =
bb.mkdirhier(pkgoutdir)<br>ERROR:=A0 *** 0045:=A0=A0=A0=A0=A0=A0=A0 os.chdi=
r(root)<br>ERROR:=A0=A0=A0=A0=A0 0046:=A0=A0=A0=A0=A0=A0=A0 from glob impor=
t glob<br>ERROR:=A0=A0=A0=A0=A0 0047:=A0=A0=A0=A0=A0=A0=A0 g =3D glob(&#39;=
*&#39;)<br>
ERROR:=A0=A0=A0=A0=A0 0048:=A0=A0=A0=A0=A0=A0=A0 try:<br>ERROR:=A0=A0=A0=A0=
=A0 0049:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 del g[g.index(&#39;CONTROL&#39;)=
]<br>ERROR: [From file: &#39;do_package_ipk&#39;, lineno: 45, function: do_=
package_ipk]<br>ERROR: Function failed: do_package_ipk<br>
ERROR: Logfile of failure stored in: /opt/projects/yocto/yocto-9.0/build-im=
x6qsabresdrt/tmp/work/imx6qsabresdrt-poky-linux-gnueabi/lttng-modules/2.1.1=
-r1/temp/log.do_package_write_ipk.26873<br>ERROR: Task 13 (/opt/projects/yo=
cto/yocto-9.0/sources/poky/meta/recipes-kernel/lttng/<a href=3D"http://lttn=
g-modules_2.1.1.bb">lttng-modules_2.1.1.bb</a>, do_package_write_ipk) faile=
d with exit code &#39;1&#39;<br>
<br></div><div>Best regards,<br>Andreas<br></div></div></div></div></div></=
div>

--f46d043c7b6207c4b004e57921fe--
