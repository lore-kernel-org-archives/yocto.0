Return-Path: <mvalleavila@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76F5E01564
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 00:41:51 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id s9so13269891iec.30
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 00:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=KmmCF7rmwlODizzkMdaCRVOgfjnp1jB32R/a9LELCcs=;
	b=OAGsMCdUBoIFUtL0Lf/Cn0ZOXu+c0LvgTl5979glKnDnRL5gikzkdn7WaoYOHWo8YR
	lb2FXTF5iUP7GMjB18dKLmwVo/rePFyYbN6FPnh+AniC2SKx/eVHP/Ci/Fvoo1KWCJgX
	iYJVzr9/WhkzVnFHrX1jlz8zIOcgSUDAl1mUq3TyeGo3PXArw4/04Sbw+oWsnjQIUOql
	T9ivrICcMMicB3gq0JvrTJIMSvJD+jSTFPBwku3nEMtinOcLzqvoUVztuQr2nNXbcaDb
	px71vUHBhR34eoCF+PwJN0cIQfnU8BEsKLxHqwgcNqVyZC8RkxPsk7nOvENv3xhdNGTn
	I5Cg==
MIME-Version: 1.0
X-Received: by 10.50.110.4 with SMTP id hw4mr106899igb.2.1370331711376; Tue,
	04 Jun 2013 00:41:51 -0700 (PDT)
Received: by 10.50.183.198 with HTTP; Tue, 4 Jun 2013 00:41:51 -0700 (PDT)
Date: Tue, 4 Jun 2013 09:41:51 +0200
Message-ID: <CAD71xELiPm0A46qyJBkfx+r4nFBZsXUcFDz6XZLvpQVgoSc0+Q@mail.gmail.com>
From: Marcelo Valle <mvalleavila@gmail.com>
To: yocto@yoctoproject.org
Subject: Error including meta-oracle-java in custom image
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
X-List-Received-Date: Tue, 04 Jun 2013 07:41:51 -0000
Content-Type: multipart/alternative; boundary=089e013cb812e1927a04de4f364a

--089e013cb812e1927a04de4f364a
Content-Type: text/plain; charset=ISO-8859-1

Hello,

Sorry for last message, i send it incomplete by mistake!

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

To fix it i've update oracle-jse-jre-x86-64_1.7.0.bb with these checksum.
I build the image again and new error appears

--------------------------------------------

2.
Function failed: Unpack failure for URL: '
http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz
'

Unpacking
/home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-linux-x64.tar.gz
gzip: stdin: not in gzip format

So i decide to download the file directly from oracle page and copy in
build/downloads directory.
After that i have new error:

---------------------------------------------

3.
ERROR: objcopy failed with exit code 1 (cmd was 'x86_64-poky-linux-objcopy'
--add-gnu-debuglink='/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/.debug/libjsig.so'
'/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/libjsig.so')
ERROR: Function failed: split_and_strip_files

To fix it I include INHIBIT_PACKAGE_STRIP = "1"  in
oracle-jse-jre-x86-64_1.7.0.bb file

----------------------------------------------

After that the execution "bitbake oracle-jse-jre-x86-64" -> Compile without
errors!

-----------------------------------------------
But if I try to build my custom image and the build fails with these error:

Function failed: do_rootfs

| Computing transaction...error: Can't install
oracle-jse-jre-x86-64-1.7.0-r0@x86_64: no package provides
libXi.so.6()(64bit)


Am I doing the correct steps to fix the errors? Can you please give me some
help to include jre in my custom image?

Thanks a lot for your help!
Marcelo.

--089e013cb812e1927a04de4f364a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div>Hell=
o,<br><br></div><div>Sorry for last message, i send it incomplete by mistak=
e!<br></div><div><br></div>I&#39;m triying to include oracle java in my cus=
tom image and i&#39;m having some troubles to accomplish it.<br>
<br></div><div>After include <a href=3D"http://oracle-jse-jre-x86-64_1.7.0.=
bb">oracle-jse-jre-x86-64_1.7.0.bb</a> recipe in IMAGE_INSTALL var and buil=
d the image the following errors appears:<br>
<br>1.<br></div>Fetcher failure for URL: &#39;<a href=3D"http://download.or=
acle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz" target=3D"_blan=
k">http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.ta=
r.gz</a>&#39;. Checksum mismatch!<br>


<br>If this change is expected (e.g. you have upgraded to a new version=20
without updating the checksums) then you can use these lines within the=20
recipe:<br>SRC_URI[md5sum] =3D &quot;<div dir=3D"ltr">81ee08846975d4b8d46ac=
f3b6eddf103&quot;<br>
SRC_URI[sha256sum] =3D &quot;80212f7748c2671b89b6085000717c747851db004409dc=
e3bb97f3a2aeb91cdd&quot;<br><br></div><div>To fix it i&#39;ve update <a hre=
f=3D"http://oracle-jse-jre-x86-64_1.7.0.bb">oracle-jse-jre-x86-64_1.7.0.bb<=
/a> with these checksum.<br>
</div><div>I build the image again and new error appears<br></div><div dir=
=3D"ltr"><br>--------------------------------------------<br><br>2. <br>Fun=
ction failed: Unpack failure for URL: &#39;<a href=3D"http://download.oracl=
e.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz" target=3D"_blank">=
http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.g=
z</a>&#39;<br>


<br>Unpacking /home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-=
linux-x64.tar.gz<br>gzip: stdin: not in gzip format<br><br></div><div>So i =
decide to download the file directly from oracle page and copy in build/dow=
nloads directory.<br>
</div><div>After that i have new error:<br></div><div dir=3D"ltr"><br>-----=
----------------------------------------<br><br>3.<br>ERROR: objcopy failed=
 with exit code 1 (cmd was &#39;x86_64-poky-linux-objcopy&#39; --add-gnu-de=
buglink=3D&#39;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-p=
oky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/=
.debug/libjsig.so&#39; &#39;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/=
work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_=
02/lib/amd64/libjsig.so&#39;)<br>


ERROR: Function failed: split_and_strip_files<br><br>To fix it I include IN=
HIBIT_PACKAGE_STRIP =3D &quot;1&quot;=A0 in <a href=3D"http://oracle-jse-jr=
e-x86-64_1.7.0.bb">oracle-jse-jre-x86-64_1.7.0.bb</a> file<br><br>---------=
-------------------------------------<br>
<br>After that the execution &quot;bitbake oracle-jse-jre-x86-64&quot; -&gt=
; Compile without errors!<br><br>------------------------------------------=
-----<br>

</div><div>But if I try to build my custom image and the build fails with t=
hese error:<br></div><div dir=3D"ltr"><br>Function failed: do_rootfs<br><br=
>| Computing transaction...error: Can&#39;t install oracle-jse-jre-x86-64-1=
.7.0-r0@x86_64: no package provides libXi.so.6()(64bit)<br>
<br><br></div><div>Am I doing the correct steps to fix the errors? Can you =
please give me some help to include jre in my custom image?<br><br></div><d=
iv>Thanks a lot for your help!<br></div><div>Marcelo.<br></div><br><br>
</div>
</div></div>

--089e013cb812e1927a04de4f364a--
