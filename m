Return-Path: <graycells@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42D5AE00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 21:48:10 -0700 (PDT)
Received: by lboj14 with SMTP id j14so8671104lbo.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 21:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hf12qmjgRo0jtUV2Q6EoQs0ZzqDJVU3go/hKX5DQ5SA=;
	b=Xe5wE2BPlBFsUQKpMTw1OACOPEs2YnGnA/MeNi456W8vxlYgMU8AKU3+FNMt+D9CNk
	bkqnC9yATGc1sbYLejw09fJjvxNGOX9F7Uu6vvCvGfv3bF7KvMl243FMH2j3CYXPyahx
	n+8bRpElVuPoAIDzom14tJrc+FCe1v4BYPjniD5H8bU+5FEDXhuXTWDY2sPCrz5/L940
	Ek+O7ELh0eBpYDLPxxvGdOfqi2z13C5CoBkLT//k7PyuTSM7NOaNEq0Kf/ZYt4Vc5id9
	+rQMlAEP8L9OKTKQcOfQBAZ99CcmhE+MgfkRR5FtqXjf+Rn7gja+CLqynxIevAoWif3J
	bfEA==
MIME-Version: 1.0
Received: by 10.152.148.1 with SMTP id to1mr14544011lab.34.1340686088718; Mon,
	25 Jun 2012 21:48:08 -0700 (PDT)
Received: by 10.112.6.35 with HTTP; Mon, 25 Jun 2012 21:48:08 -0700 (PDT)
Date: Tue, 26 Jun 2012 13:48:08 +0900
Message-ID: <CAKPsnf3YG1uRHgD9uE0NMP39hQJ4CsXZZAHffPdzBcTXWHMBdQ@mail.gmail.com>
From: Bongseo Jang <graycells@gmail.com>
To: yocto@yoctoproject.org
Subject: possible to replace octeon mips64 SDK with yocto mips64 SDK?
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
X-List-Received-Date: Tue, 26 Jun 2012 04:48:10 -0000
Content-Type: multipart/alternative; boundary=e89a8f22c34f12c8b704c358cee7

--e89a8f22c34f12c8b704c358cee7
Content-Type: text/plain; charset=UTF-8

Hi, All.

I've built several yocto meta-toolchain's so far and now working on
replacing Cavium's official octeon mips64 SDK with yocto/oe mips64 SDK.
I really want to replace the Cavium-provided one because that is old and
drags product's development.

It seems possible because I think
  1) mips64 ISA is well-defined(and assuming Cavium never added extension)
  2) mips64-linux ABI is well-defined(and assuming Cavium never tweaked it)
  3) kernel will deal with everything about hardware, and we have the
kernel which Cavium provided to us

I started with copying qemumips.conf to qemumips64.conf, changed it like
below
and... 'bitbake meta-toolchain' has just finished.

 require conf/machine/include/qemu.inc
-require conf/machine/include/tune-mips32.inc
+require conf/machine/include/tune-mips64.inc

Do you think I've got a right SDK which replace the official SDK? And how
can I assure it?
(I have no idea about what the company like Cavium or other embedded
product companys do to their SDK)
I fear that my assumptions are questinable and misleading.

Thaks

-- 
Regards,
Jang.

 a sound mind in a sound body

--e89a8f22c34f12c8b704c358cee7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Hi, All.</div><div>=C2=A0</div><div>I&#39;ve=C2=A0built several yocto =
meta-toolchain&#39;s so far and now working on replacing Cavium&#39;s offic=
ial octeon mips64=C2=A0SDK with yocto/oe mips64 SDK.</div><div><div>I reall=
y want to replace=C2=A0the Cavium-provided one because that is old and drag=
s product&#39;s development.</div>
<div>=C2=A0</div></div><div>It seems possible because I think </div><div>=
=C2=A0 1) mips64 ISA is well-defined(and assuming=C2=A0Cavium never added e=
xtension)</div><div>=C2=A0 2) mips64-linux ABI is well-defined(and assuming=
 Cavium never tweaked it)</div>
<div>=C2=A0 3) kernel will deal with everything about hardware, and we have=
 the kernel which Cavium provided to us</div><div>=C2=A0</div><div>I starte=
d with copying qemumips.conf to qemumips64.conf, changed it like below </di=
v><div>
and... &#39;bitbake meta-toolchain&#39; has just=C2=A0finished.</div><div>=
=C2=A0</div><div>=C2=A0require conf/machine/include/qemu.inc</div><div>-req=
uire conf/machine/include/tune-mips32.inc<br>+require conf/machine/include/=
tune-mips64.inc</div>
<div>=C2=A0</div><div>Do=C2=A0you think I&#39;ve got a=C2=A0right=C2=A0SDK =
which replace the official SDK?=C2=A0And how can I=C2=A0assure it?</div><di=
v>(I have no idea about what the company like Cavium or=C2=A0other embedded=
 product companys do to their SDK)</div>
<div>I fear that my assumptions=C2=A0are questinable and misleading.</div><=
div>=C2=A0</div><div>Thaks</div><div><br>-- <br>Regards, <br>Jang.<br><br>=
=C2=A0a sound mind in a sound body<br>
</div>

--e89a8f22c34f12c8b704c358cee7--
