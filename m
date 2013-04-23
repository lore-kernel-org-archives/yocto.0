Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f194.google.com (mail-ie0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C8FE014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 06:49:13 -0700 (PDT)
Received: by mail-ie0-f194.google.com with SMTP id x14so258706ief.9
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 06:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=uWayfIwkFW+mobQOiiC18kwniHybCdTET87t/YtMato=;
	b=idO0KYClg15WEBh47jL0Wa3LLggGxaQ4UoCFBTG13B572Un6l5Y4EUWFoG2XW9AgJ2
	6ku7noc7iwyqYQkNXKOyCnA+w6gRN5tgh/uEXbU4g2UYsfUw3b3tBgNtvYUZ1ggmA3rW
	KQ1ih4KX51qTQ8o9fwDmXQrieRy3kCeZHZNp9chuawN2eGEb0Jw44x/8W7laJSok61IB
	pCl/5v5YwMt4DAd5v+lmTNybDCp4neKGT/A98CBX4LaDgKAFKol9C7tSiHxdPIPVF+UX
	IuIEf3KsQoWEW2jhzf1r+36DC2em7dzBxOYfnvUuopo//iPWgR9w3rlMbTD5uxe2hq9h
	4DHg==
MIME-Version: 1.0
X-Received: by 10.50.44.5 with SMTP id a5mr24219653igm.58.1366724952733; Tue,
	23 Apr 2013 06:49:12 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Tue, 23 Apr 2013 06:49:12 -0700 (PDT)
Date: Tue, 23 Apr 2013 14:49:12 +0100
Message-ID: <CAM1ZcoVHZJkEZxNEtr4-++39Ptfq1DSiYP-JUEZSSRiDmo=Emg@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: yocto@yoctoproject.org
Subject: ADT development with makefiles
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
X-List-Received-Date: Tue, 23 Apr 2013 13:49:13 -0000
Content-Type: multipart/alternative; boundary=e89a8f83970d503dcb04db0773b0

--e89a8f83970d503dcb04db0773b0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

new to Yocto, I want to develop a software that runs when you start an
overo gusmtix. I read the documentation but I still have many questions. If
you can answer any of them you will be helping me a lot.

I've built the gumstix-console-image<https://github.com/gumstix/Gumstix-Yoc=
toProject-Repo>,
extracted the sysroot (gumstix-sysroot) and I have adt-installer for arm
(arm-sysroot) at /opt/poky/1.3
(environment-setup-armv5te-poky-linux-gnueabi) and also using bitbake and
the build directory (environment-setup-armv7a-vfp-neon-poky-linux-gnueabi).
I've done a hello world example and cross debugged it with Eclipse and ADT
plugin and qemu.
for ADT-plugin, I'm using:
Built system derived toolchain > opt/poky/1.3/
sysroot Location > ~/test-yocto/arm-sysroot
QEMU > ~/adt-installer/downloaded-images/zImage-qemuarm.bin

and it works, but my code uses libraries like net-snmp and others not
included in the arm-sysroot. Shoul I..

a) Leave the same Eclipse ADT options and manually add the libraries that I
use like suggested here <https://wiki.yoctoproject.org/wiki/Training>. Then
build the software and install it manually to the gumstix-console-image.

b) Include the libraries and their -dev packages, build the gumstix image
again, extract sysroot, change Eclipse ADT options to be
Built system derived toolchain > ~/yocto/build/
sysroot Location > ~/yocto/qemu-extracted-sysroot-from-built-image
Can I use the same QEMU kernel in b? I don't think so. I tried to build the
image for qemuarm machine but it failed.


c) forget about Eclipse and manually source the toolchain and "make". I
added to the Makefile
     CC=3Darm-poky-linux-gnueabi-gcc
     LD=3Darm-poky-linux-gnueabi-ld
     CFLAGS=3D=94${CFLAGS} --sysroot=3D<sysroot-dir>=94
     CXXFLAGS=3D=94${CXXFLAGS} --sysroot=3D<sysroot-dir>=94
with sysroot-dir to the gumstix-sysroot. This gave me "Recursive variable
`CFLAGS' references itself (eventually). Stop." and using +=3D didn't work
either. Any tutorial (other than the gnu
make<http://www.gnu.org/software/make/manual/make.html>)
of how to create Makefiles for this situation? Should I change to autotools=
?

d) A better way to do this?

Thanks a lot

--e89a8f83970d503dcb04db0773b0
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>new to Yocto, I want to devel=
op a software that runs when you start an overo gusmtix. I read the documen=
tation but I still have many questions. If you can answer any of them you w=
ill be helping me a lot.=A0</div>
<div style><br></div><div style>I&#39;ve built the <a href=3D"https://githu=
b.com/gumstix/Gumstix-YoctoProject-Repo">gumstix-console-image</a>, extract=
ed the sysroot (gumstix-sysroot) and I have adt-installer for arm (arm-sysr=
oot) at /opt/poky/1.3 (environment-setup-armv5te-poky-linux-gnueabi) and al=
so using bitbake and the build directory (environment-setup-armv7a-vfp-neon=
-poky-linux-gnueabi).=A0</div>
<div style>I&#39;ve done a hello world example and cross debugged it with E=
clipse and ADT plugin and qemu.<br></div><div style>for ADT-plugin, I&#39;m=
 using:</div><div style><div>Built system derived toolchain &gt; opt/poky/1=
.3/</div>
<div>sysroot Location &gt; ~/test-yocto/arm-sysroot</div><div>QEMU &gt; ~/a=
dt-installer/downloaded-images/zImage-qemuarm.bin<br></div><div><br></div><=
div style>and it works, but my code uses libraries like net-snmp and others=
 not included in the arm-sysroot. Shoul I..</div>
<div style><br></div><div style>a) Leave the same Eclipse ADT options and m=
anually add the libraries that I use like suggested <a href=3D"https://wiki=
.yoctoproject.org/wiki/Training">here</a>. Then build the software and inst=
all it manually to the gumstix-console-image.</div>
<div style><br></div><div style>b) Include the libraries and their -dev pac=
kages, build the gumstix image again, extract sysroot, change Eclipse ADT o=
ptions to be</div></div><div style>Built system derived toolchain &gt; ~/yo=
cto/build/</div>
<div style>sysroot Location &gt; ~/yocto/qemu-extracted-sysroot-from-built-=
image</div><div style>Can I use the same QEMU kernel in b? I don&#39;t thin=
k so. I tried to build the image for qemuarm machine but it failed.<br>
</div><div style><br></div><div style><br></div><div style>c) forget about =
Eclipse and manually source the toolchain and &quot;make&quot;. I added to =
the Makefile</div><div style>=A0 =A0 =A0CC=3Darm-poky-linux-gnueabi-gcc<br>=
</div>
<div style><div>=A0 =A0 =A0LD=3Darm-poky-linux-gnueabi-ld</div><div>=A0 =A0=
 =A0CFLAGS=3D=94${CFLAGS} --sysroot=3D&lt;sysroot-dir&gt;=94</div><div>=A0 =
=A0 =A0CXXFLAGS=3D=94${CXXFLAGS} --sysroot=3D&lt;sysroot-dir&gt;=94</div><d=
iv style>with sysroot-dir to the gumstix-sysroot. This gave me &quot;Recurs=
ive variable `CFLAGS&#39; references itself (eventually). Stop.&quot; and u=
sing +=3D didn&#39;t work either. Any tutorial (other than the <a href=3D"h=
ttp://www.gnu.org/software/make/manual/make.html">gnu make</a>) of how to c=
reate Makefiles for this situation? Should I change to autotools?</div>
<div style><br></div></div><div style>d) A better way to do this?</div><div=
 style><br></div><div style>Thanks a lot</div><div style><br></div><div sty=
le><br></div></div>

--e89a8f83970d503dcb04db0773b0--
