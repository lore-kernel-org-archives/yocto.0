Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 262F1E00571; Tue, 30 Dec 2014 17:49:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD233E002F9
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 17:48:57 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id l13so14149269iga.8
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 17:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=+GSvFhwigGXwLa9rGZn9zM4OaxwjwZL6HZKhxs2gSxI=;
	b=HM213N/261pzY5pSPHofmKhbOGIApeIZPqFvnbY3dqEXR7ZXLxSpc3LaKKzeAlxmb4
	GJcb5VN5m4Yq0e8xZgiDvYqPesbDAR7icDIKZ6nhOTg7t9Jb2HYB201m9qMA/BgVdyQG
	Dq0VedxV982HCwNI90zdV2Pl+fX5e7f6Tah1qQcCGXDyVgUbo42iz9IBW0CxXap8Ct8e
	dOPpQ5WZVXOvWCwDrOlbpVdW8NBbw7fLPT7IDqi6QllC0H3kjCOrhSfUWEGAtJjQmDht
	S35hAC8L8QhDiyf7076Rklr7qfKgUAc1j97oZtsUXUe7P9KfT3pUxkCNY1OuB/B3j2ji
	3TTQ==
MIME-Version: 1.0
X-Received: by 10.50.66.198 with SMTP id h6mr24427271igt.22.1419990535406;
	Tue, 30 Dec 2014 17:48:55 -0800 (PST)
Received: by 10.64.57.163 with HTTP; Tue, 30 Dec 2014 17:48:54 -0800 (PST)
Received: by 10.64.57.163 with HTTP; Tue, 30 Dec 2014 17:48:54 -0800 (PST)
In-Reply-To: <SIXPR03MB304909CFBAC30A54D4EF6EFEA5E0@SIXPR03MB304.apcprd03.prod.outlook.com>
References: <SIXPR03MB304909CFBAC30A54D4EF6EFEA5E0@SIXPR03MB304.apcprd03.prod.outlook.com>
Date: Wed, 31 Dec 2014 07:18:54 +0530
Message-ID: <CAH21_vGJcyktaxkW4e53fxUiH+04=2tTmhYdMwu6_9JTFfmEqQ@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC plugin missing
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
X-List-Received-Date: Wed, 31 Dec 2014 01:49:09 -0000
Content-Type: multipart/alternative; boundary=047d7bdc131a72db4d050b794fd7

--047d7bdc131a72db4d050b794fd7
Content-Type: text/plain; charset=UTF-8

Hi All,


I have built the toolchin using meta-toolchain.

But while building the kernel using the same toolchain,we are getting error
message as below:-



Makefile:635: *** Your gcc installation does not support plugins.  If the
necessary headers for plugin support are missing, they should be
installed.  On Debian, apt-get install gcc-<ver>-plugin-dev.  If you choose
to ignore this error and lessen the improvements provided by this patch,
re-run make with the DISABLE_PAX_PLUGINS=y argument..  Stop.



Please let me know what need to be added to have the missing headers for
GCC plugins.



Output of bash ./scripts/gcc-plugin.sh:

bash ./scripts/gcc-plugin.sh arm-pokymllibv5te-linux-gnueabi-gcc

./scripts/gcc-plugin.sh: line 3: -print-file-name=plugin: command not found



And our GCC is not configure with plugin support(--enable-plugin):
[atulk@localhost linux-3.2.65]$ arm-pokymllibv5te-linux-gnueabi-gcc -v



gcc-4.9.1/configure --build=x86_64-linux --host=i686-pokysdk-linux
--target=arm-pokymllibv5te-linux-gnueabi
--prefix=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr
--exec_prefix=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr
--bindir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi
--sbindir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi
--libexecdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/libexec/arm-pokymllibv5te-linux-gnueabi
--datadir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share
--sysconfdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/etc
--sharedstatedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/com
--localstatedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/var
--libdir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/lib/arm-pokymllibv5te-linux-gnueabi
--includedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/include
--oldincludedir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/include
--infodir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share/info
--mandir=/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/share/man
--disable-silent-rules --disable-dependency-tracking
--with-libtool-sysroot=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-gnu-ld --enable-shared --enable-languages=c,c++
--enable-threads=posix --enable-multilib --enable-c99 --enable-long-long
--enable-symvers=gnu --enable-libstdcxx-pch
--program-prefix=arm-pokymllibv5te-linux-gnueabi- --without-local-prefix
--enable-target-optspace --enable-lto --enable-libssp --disable-bootstrap
--disable-libmudflap --with-system-zlib --with-linker-hash-style=gnu
--enable-linker-build-id --with-ppl=no --with-cloog=no
--enable-checking=release --enable-cheaders=c_global
--with-gxx-include-dir=/usr/local/windriver/sysroots/armv5te-pokymllibv5te-linux-gnueabi/usr/include/c++/4.9.1
--with-build-time-tools=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/x86_64-linux/usr/arm-pokymllibv5te-linux-gnueabi/bin
--with-sysroot=/usr/local/windriver/sysroots/armv5te-pokymllibv5te-linux-gnueabi
--with-build-sysroot=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/libv5te-arm-sdk
--enable-poison-system-directories
--with-mpfr=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-mpc=/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux
--enable-nls



Regards,
Atul

--047d7bdc131a72db4d050b794fd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>=C2=A0<br>
I have built the toolchin using meta-toolchain.</p>
<p>But while building the kernel using the same toolchain,we are getting er=
ror message as below:-</p>
<p>=C2=A0</p>
<p>Makefile:635: *** Your gcc installation does not support plugins.=C2=A0 =
If the necessary headers for plugin support are missing, they should be ins=
talled.=C2=A0 On Debian, apt-get install gcc-&lt;ver&gt;-plugin-dev.=C2=A0 =
If you choose to ignore this error and lessen the improvements provided by =
this patch, re-run make with the DISABLE_PAX_PLUGINS=3Dy argument..=C2=A0 S=
top.</p>
<p>=C2=A0</p>
<p>Please let me know what need to be added to have the missing headers for=
 GCC plugins.</p>
<p>=C2=A0</p>
<p>Output of bash ./scripts/gcc-plugin.sh:</p>
<p>bash ./scripts/gcc-plugin.sh arm-pokymllibv5te-linux-gnueabi-gcc</p>
<p>./scripts/gcc-plugin.sh: line 3: -print-file-name=3Dplugin: command not =
found</p>
<p>=C2=A0</p>
<p>And our GCC is not configure with plugin support(--enable-plugin):<br>
[atulk@localhost linux-3.2.65]$ arm-pokymllibv5te-linux-gnueabi-gcc -v</p>
<p>=C2=A0</p>
<p>gcc-4.9.1/configure --build=3Dx86_64-linux --host=3Di686-pokysdk-linux -=
-target=3Darm-pokymllibv5te-linux-gnueabi --prefix=3D/usr/local/windriver/s=
ysroots/i686-pokysdk-linux/usr --exec_prefix=3D/usr/local/windriver/sysroot=
s/i686-pokysdk-linux/usr --bindir=3D/usr/local/windriver/sysroots/i686-poky=
sdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi --sbindir=3D/usr/local/wi=
ndriver/sysroots/i686-pokysdk-linux/usr/bin/arm-pokymllibv5te-linux-gnueabi=
 --libexecdir=3D/usr/local/windriver/sysroots/i686-pokysdk-linux/usr/libexe=
c/arm-pokymllibv5te-linux-gnueabi --datadir=3D/usr/local/windriver/sysroots=
/i686-pokysdk-linux/usr/share --sysconfdir=3D/usr/local/windriver/sysroots/=
i686-pokysdk-linux/etc --sharedstatedir=3D/usr/local/windriver/sysroots/i68=
6-pokysdk-linux/com --localstatedir=3D/usr/local/windriver/sysroots/i686-po=
kysdk-linux/var --libdir=3D/usr/local/windriver/sysroots/i686-pokysdk-linux=
/usr/lib/arm-pokymllibv5te-linux-gnueabi --includedir=3D/usr/local/windrive=
r/sysroots/i686-pokysdk-linux/usr/include --oldincludedir=3D/usr/local/wind=
river/sysroots/i686-pokysdk-linux/usr/include --infodir=3D/usr/local/windri=
ver/sysroots/i686-pokysdk-linux/usr/share/info --mandir=3D/usr/local/windri=
ver/sysroots/i686-pokysdk-linux/usr/share/man --disable-silent-rules --disa=
ble-dependency-tracking --with-libtool-sysroot=3D/data/home/ppurohit/Fresh_=
Build/poky/build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux --with-gnu-l=
d --enable-shared --enable-languages=3Dc,c++ --enable-threads=3Dposix --ena=
ble-multilib --enable-c99 --enable-long-long --enable-symvers=3Dgnu --enabl=
e-libstdcxx-pch --program-prefix=3Darm-pokymllibv5te-linux-gnueabi- --witho=
ut-local-prefix --enable-target-optspace --enable-lto --enable-libssp --dis=
able-bootstrap --disable-libmudflap --with-system-zlib --with-linker-hash-s=
tyle=3Dgnu --enable-linker-build-id --with-ppl=3Dno --with-cloog=3Dno --ena=
ble-checking=3Drelease --enable-cheaders=3Dc_global --with-gxx-include-dir=
=3D/usr/local/windriver/sysroots/armv5te-pokymllibv5te-linux-gnueabi/usr/in=
clude/c++/4.9.1 --with-build-time-tools=3D/data/home/ppurohit/Fresh_Build/p=
oky/build_arm/tmp/sysroots/x86_64-linux/usr/arm-pokymllibv5te-linux-gnueabi=
/bin --with-sysroot=3D/usr/local/windriver/sysroots/armv5te-pokymllibv5te-l=
inux-gnueabi --with-build-sysroot=3D/data/home/ppurohit/Fresh_Build/poky/bu=
ild_arm/tmp/sysroots/libv5te-arm-sdk --enable-poison-system-directories --w=
ith-mpfr=3D/data/home/ppurohit/Fresh_Build/poky/build_arm/tmp/sysroots/i686=
-nativesdk-pokysdk-linux --with-mpc=3D/data/home/ppurohit/Fresh_Build/poky/=
build_arm/tmp/sysroots/i686-nativesdk-pokysdk-linux --enable-nls</p>
<p>=C2=A0</p>
<p>Regards,<br>
Atul</p>

--047d7bdc131a72db4d050b794fd7--
