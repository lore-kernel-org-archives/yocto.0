Return-Path: <mvalleavila@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64978E01564
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 00:23:29 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id e14so13507248iej.29
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 00:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=6sskVpL6BOQdhI3/Hqj/BAX/oAOTX0i++gxC8if5hXw=;
	b=XmNRglOTcD2IvkxD0OCwZDYMMozEQa2l7INZW1nJtCF4h4K3iGu9zqgVVI59RXOAYQ
	ZB2tNf+rWCFDsZplM47WsICJRTCtjXOKL/sN7gPvEud1vEYbv483q2Gru6+gL1x3vjjM
	T7uH2zxubEPMLyZf+FDvNFcJUX8LMcI8C4tr6Tm6O5GW0w5vW0OZEYvy31rQZY/lx0Q3
	pD/e1JoOkcLfjgehwHMAdv540twk8VC0BD2YXHVmBRbM+n2WiF/HAJPh7W4Heb752ta/
	uB1vFCxXyw0/sj5bPSmIV6T7bGdOznXVMF0us0LS54eRuWgkoLVoFX2JFJ179miXeIJF
	kztg==
MIME-Version: 1.0
X-Received: by 10.50.106.114 with SMTP id gt18mr66753igb.7.1370330608879; Tue,
	04 Jun 2013 00:23:28 -0700 (PDT)
Received: by 10.50.183.198 with HTTP; Tue, 4 Jun 2013 00:23:28 -0700 (PDT)
Date: Tue, 4 Jun 2013 09:23:28 +0200
Message-ID: <CAD71xELCfzMBvjHYfD+s-m4AQyWREDZWrUjMCWfn-9SYViOycw@mail.gmail.com>
From: Marcelo Valle <mvalleavila@gmail.com>
To: yocto@yoctoproject.org
Subject: Including meta-oracle-java in a custom image.
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
X-List-Received-Date: Tue, 04 Jun 2013 07:23:29 -0000
Content-Type: multipart/alternative; boundary=047d7bd763fc2ad14204de4ef5c6

--047d7bd763fc2ad14204de4ef5c6
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I'm triying to include oracle java in my custom image and i'm having some
troubles to accomplish it.

After include oracle-jse-jre-x86-64_1.7.0.bb recipe in IMAGE_INSTALL var
and build the image the following errors appears:

1.
Fetcher failure for URL: '
http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz'.
Checksum mismatch!

If this change is expected (e.g. you have upgraded to a new version without
updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] = "
81ee08846975d4b8d46acf3b6eddf103"
SRC_URI[sha256sum] =
"80212f7748c2671b89b6085000717c747851db004409dce3bb97f3a2aeb91cdd"



--------------------------------------------

Function failed: Unpack failure for URL: '
http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz
'

Unpacking
/home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-linux-x64.tar.gz
gzip: stdin: not in gzip format


---------------------------------------------

ERROR: objcopy failed with exit code 1 (cmd was 'x86_64-poky-linux-objcopy'
--add-gnu-debuglink='/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/.debug/libjsig.so'
'/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/libjsig.so')
ERROR: Function failed: split_and_strip_files

INHIBIT_PACKAGE_STRIP = "1"

----------------------------------------------

bitbake oracle-jse-jre-x86-64 -> Compile without errors!

-----------------------------------------------

bitbake core-image-abacus

Function failed: do_rootfs

| Computing transaction...error: Can't install
oracle-jse-jre-x86-64-1.7.0-r0@x86_64: no package provides
libXi.so.6()(64bit)

--047d7bd763fc2ad14204de4ef5c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br></div>I&#39;m triying to include o=
racle java in my custom image and i&#39;m having some troubles to accomplis=
h it.<br><br></div><div>After include <a href=3D"http://oracle-jse-jre-x86-=
64_1.7.0.bb">oracle-jse-jre-x86-64_1.7.0.bb</a> recipe in IMAGE_INSTALL var=
 and build the image the following errors appears:<br>
<br>1.<br></div>Fetcher failure for URL: &#39;<a href=3D"http://download.or=
acle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz" target=3D"_blan=
k">http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.ta=
r.gz</a>&#39;. Checksum mismatch!<br>

<br>If this change is expected (e.g. you have upgraded to a new version=20
without updating the checksums) then you can use these lines within the=20
recipe:<br>SRC_URI[md5sum] =3D &quot;<div dir=3D"ltr">81ee08846975d4b8d46ac=
f3b6eddf103&quot;<br>
SRC_URI[sha256sum] =3D &quot;80212f7748c2671b89b6085000717c747851db004409dc=
e3bb97f3a2aeb91cdd&quot;<br><br><br><br>-----------------------------------=
---------<br><br>Function failed: Unpack failure for URL: &#39;<a href=3D"h=
ttp://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz=
" target=3D"_blank">http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre=
-7u2-linux-x64.tar.gz</a>&#39;<br>

<br>Unpacking /home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-=
linux-x64.tar.gz<br>gzip: stdin: not in gzip format<br><br><br>------------=
---------------------------------<br><br>ERROR: objcopy failed with exit co=
de 1 (cmd was &#39;x86_64-poky-linux-objcopy&#39; --add-gnu-debuglink=3D&#3=
9;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/ora=
cle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/.debug/libjsi=
g.so&#39; &#39;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-p=
oky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/=
libjsig.so&#39;)<br>

ERROR: Function failed: split_and_strip_files<br><br>INHIBIT_PACKAGE_STRIP =
=3D &quot;1&quot;<br><br>----------------------------------------------<br>=
<br>bitbake oracle-jse-jre-x86-64 -&gt; Compile without errors!<br><br>----=
-------------------------------------------<br>

<br>bitbake core-image-abacus <br><br>Function failed: do_rootfs<br><br>| C=
omputing transaction...error: Can&#39;t install oracle-jse-jre-x86-64-1.7.0=
-r0@x86_64: no package provides libXi.so.6()(64bit)</div><br></div>

--047d7bd763fc2ad14204de4ef5c6--
