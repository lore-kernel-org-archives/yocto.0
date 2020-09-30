Subject: Kernel panic after failing to load libssl.so.1.0.0 #kernel
To: yocto@lists.yoctoproject.org
From: aravind.chittapur@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.193.174)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Sep 2020 00:00:33 -0700
Message-ID: <MKuL.1601449233670704784.ogc9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="663EnpXKSUQ07q0SfNxN"

--663EnpXKSUQ07q0SfNxN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have patched busybox httpd with open ssl APIs to support https. I have pa=
tched *Makefile.flags* to include opessl library as below.
-------------------------------------
--- busybox-1.23.2/Makefile.flags 2020-05-25 13:52:54.424147022 +0200
+++ busybox-1.23.2/Makefile_edit.flags 2020-05-25 14:18:23.328520511 +0200
@@ -126,6 +126,10 @@
LDLIBS +=3D m
endif

+# Openssl Library
+#LDLIBS +=3D openssl
+LDLIBS +=3D m ssl
+
ifeq ($(CONFIG_PAM),y)
# libpam uses libpthread, so for static builds busybox must be linked to
# libpthread. On some platforms that requires an explicit -lpthread, so
--------------------------------------------------------
I am able to rebake busybox without any errors. I tested the https functio=
nality by pushing the busybox binary using adb to the */data/* folder.
When I flash the firmware image to the board, while booting the kernel I g=
et the following error.
"/bin/sh: error while loading shared libraries: libssl.so.1.0.0: cannot op=
en shared object file: No such file or directory"
After this Kernel panic happens.
libssl.so.1.0.0 is present in /usr/lib. I don't why it fails to load. I ne=
ed help in resolving this problem.

Thanks,
Aravind

--663EnpXKSUQ07q0SfNxN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have patched busybox httpd with open ssl APIs to support https. I have pa=
tched<strong>&nbsp;Makefile.flags&nbsp;</strong>to include opessl library a=
s below.<br />-------------------------------------<br />
<div>--- busybox-1.23.2/Makefile.flags<span style=3D"white-space: pre;"> <=
/span>2020-05-25 13:52:54.424147022 +0200</div>
<div>+++ busybox-1.23.2/Makefile_edit.flags<span style=3D"white-space: pre=
;"> </span>2020-05-25 14:18:23.328520511 +0200</div>
<div>@@ -126,6 +126,10 @@</div>
<div>&nbsp;LDLIBS +=3D m</div>
<div>&nbsp;endif</div>
<div>&nbsp;</div>
<div>+# Openssl Library</div>
<div>+#LDLIBS +=3D openssl</div>
<div>+LDLIBS +=3D m ssl</div>
<div>+</div>
<div>&nbsp;ifeq ($(CONFIG_PAM),y)</div>
<div>&nbsp;# libpam uses libpthread, so for static builds busybox must be =
linked to</div>
<div>&nbsp;# libpthread. On some platforms that requires an explicit -lpth=
read, so<br />--------------------------------------------------------<br /=
>I am able to rebake busybox without any errors. I tested the https functio=
nality by pushing the busybox binary using adb to the <strong>/data/</stron=
g> folder.&nbsp;<br />When I flash the firmware image to the board, while b=
ooting the kernel I get the following error.<br />"/bin/sh: error while loa=
ding shared libraries: libssl.so.1.0.0: cannot open shared object file: No =
such file or directory"<br />After this Kernel panic happens.&nbsp;<br />li=
bssl.so.1.0.0 is present in /usr/lib. I don't why it fails to load. I need =
help in resolving this problem.<br /><br />Thanks,<br />Aravind<br /><br />=
<br /></div>

--663EnpXKSUQ07q0SfNxN--
