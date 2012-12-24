Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B68E0148B
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:47:28 -0800 (PST)
Received: by mail-vc0-f174.google.com with SMTP id d16so7312436vcd.5
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=u16mWKyJwL0aoXu4wjErT4WVLKwjOTVxxpnkOW8MQRE=;
	b=h1pmnzoERpZcg4hXDyT4ts4J7FYTPQgqdqCKhHDlBXk0bA0m2rJROI+3G/hgCt7BIO
	ay1+luT5kcd5XJdFWMFrC0etAoY47QtE4hH34EX0rExixfxw0MCKyx01D2+3OwtWbYT8
	GETLt3yj6ikdix+cBzr5p6gzQpHg2qp34LkgHNlrltb9QtloUkCUtj5XnMuB1tqRb3qt
	GJgKA6dGspV785gNZFNqTmg4dyOd6uSX9Td+c6dMB+V7uawufgxkzYX+dUZkKLZ/Vtew
	Dslm0eXxhdAnY9oLZgdiGCncW5J07vQeE9uRoGVPQSV/9HvEsZI7Nu7gQ7pLdlSuDHuk
	CgMQ==
MIME-Version: 1.0
Received: by 10.52.32.106 with SMTP id h10mr28629730vdi.1.1356353247939; Mon,
	24 Dec 2012 04:47:27 -0800 (PST)
Received: by 10.58.18.235 with HTTP; Mon, 24 Dec 2012 04:47:27 -0800 (PST)
Date: Mon, 24 Dec 2012 20:47:27 +0800
Message-ID: <CACrgodd2-pnQR_Bq8oeRHxGfOb4Beysp97wFq8GaW2f+jj8tGA@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gettext build error
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
X-List-Received-Date: Mon, 24 Dec 2012 12:47:29 -0000
Content-Type: multipart/alternative; boundary=bcaec51d26b8888cf804d1989967

--bcaec51d26b8888cf804d1989967
Content-Type: text/plain; charset=ISO-8859-1

> got errors during "bitbake core-image-minimal" on yacto 1.3 + jasperforest
> BSP
> how can I just clean everything then re-build all?
> since I don't modify any kernel code before make the build, will this
> error caused by build environment settings problem?
> message from
> "tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/temp/log.do_compile.28574"
> like below:
>
> -----------------------------------------------------------------------------------------------------------------
> 2067 execute.c:267:5: warning: passing argument 1 of
> 'posix_spawnattr_destroy' from incompatible pointer type [enabled by
> default]
> 2068 /usr/include/spawn.h:94:12: note: expected 'struct posix_spawnattr_t
> *' but argument is of type 'struct posix_spawnattr_t *'
> 2069 make[4]: *** [execute.lo] Error 1
> 2070 make[4]: *** Waiting for unfinished jobs....
> 2071 x86_64-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H
> -DEXEEXT=\"\" -DEXEEXT=\"\" -DEXEEXT=\"\" -I. -I.. -I../intl -I../intl -I..
> -I.. -DDEPENDS_ON_LIBICONV=1 -D     DEPENDS_ON_LIBINTL=1 -DLIBXML_STATIC
> -I../intl -I./libcroco
> -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
> -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
> -O2 -pipe -c exitfail.c  -fPIC -DPIC -o .libs/exitfail.o
> 2072 x86_64-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H
> -DEXEEXT=\"\" -DEXEEXT=\"\" -DEXEEXT=\"\" -I. -I.. -I../intl -I../intl -I..
> -I.. -DDEPENDS_ON_LIBICONV=1 -D     DEPENDS_ON_LIBINTL=1 -DLIBXML_STATIC
> -I../intl -I./libcroco
> -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
> -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
> -O2 -pipe -c exitfail.c -o exitfail.o >/dev/null 2>&1
> 2073 make[4]: Leaving directory
> `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/gnulib-lib'
> 2074 make[3]: *** [all] Error 2
> 2075 make[3]: Leaving directory
> `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/gnulib-lib'
> 2076 make[2]: *** [all-recursive] Error 1
> 2077 make[2]: Leaving directory
> `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools'
> 2078 make[1]: *** [all] Error 2
> 2079 make[1]: Leaving directory
> `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools'
> 2080 make: *** [all-recursive] Error 1
> 2081 ERROR: oe_runmake failed
> 2082 ERROR: Function failed: do_compile (see
> /home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/temp/log.do_compile.5711
> for further information)
>
> ----------------------------------------------------------------------------------------------
>

errors in the log:
===========
x86_64-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H
-DEXEEXT=\"\" -DEXEEXT=\"\" -DEXEEXT=\"\" -I. -I.. -I../intl -I../intl -I..
-I.. -DDEPENDS_ON_LIBICONV=1 -DDEPENDS_ON_LIBINTL=1 -DLIBXML_STATIC
-I../intl -I./libcroco
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -c findprog.c  -fPIC -DPIC -o .libs/findprog.o
In file included from execute.c:47:0:
./spawn.h:406:3: error: conflicting types for 'posix_spawnattr_t'
/usr/include/spawn.h:39:3: note: previous declaration of
'posix_spawnattr_t' was here
./spawn.h:422:3: error: conflicting types for 'posix_spawn_file_actions_t'

--bcaec51d26b8888cf804d1989967
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div>got errors during &quot;bitbake core-image-minimal&quot; on yacto =
1.3 + jasperforest BSP<br>
</div><div>how can I just clean everything then re-build all?<br></div><div=
>since I don&#39;t modify any kernel code before make the build, will this =
error caused by build environment settings problem?<br>
</div>message from &quot;tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/=
temp/log.do_compile.28574&quot; like below:<br><div>-----------------------=
---------------------------------------------------------------------------=
---------------<br>

2067 execute.c:267:5: warning: passing argument 1 of &#39;posix_spawnattr_d=
estroy&#39; from incompatible pointer type [enabled by default]<br>2068 /us=
r/include/spawn.h:94:12: note: expected &#39;struct posix_spawnattr_t *&#39=
; but argument is of type &#39;struct posix_spawnattr_t *&#39;<br>

2069 make[4]: *** [execute.lo] Error 1<br>2070 make[4]: *** Waiting for unf=
inished jobs....<br>2071 x86_64-linux-libtool: compile:=A0 gcc -std=3Dgnu99=
 -DHAVE_CONFIG_H -DEXEEXT=3D\&quot;\&quot; -DEXEEXT=3D\&quot;\&quot; -DEXEE=
XT=3D\&quot;\&quot; -I. -I.. -I../intl -I../intl -I.. -I.. -DDEPENDS_ON_LIB=
ICONV=3D1 -D=A0=A0=A0=A0 DEPENDS_ON_LIBINTL=3D1 -DLIBXML_STATIC -I../intl -=
I./libcroco -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-=
linux/usr/include -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x=
86_64-linux/usr/include -O2 -pipe -c exitfail.c=A0 -fPIC -DPIC -o .libs/exi=
tfail.o<br>

2072 x86_64-linux-libtool: compile:=A0 gcc -std=3Dgnu99 -DHAVE_CONFIG_H -DE=
XEEXT=3D\&quot;\&quot; -DEXEEXT=3D\&quot;\&quot; -DEXEEXT=3D\&quot;\&quot; =
-I. -I.. -I../intl -I../intl -I.. -I.. -DDEPENDS_ON_LIBICONV=3D1 -D=A0=A0=
=A0=A0 DEPENDS_ON_LIBINTL=3D1 -DLIBXML_STATIC -I../intl -I./libcroco -isyst=
em/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include =
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -pipe -c exitfail.c -o exitfail.o &gt;/dev/null 2&gt;&amp;1<br>

2073 make[4]: Leaving directory `/home/eddylai/poky-danny-8.0/build/tmp/wor=
k/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/g=
nulib-lib&#39;<br>2074 make[3]: *** [all] Error 2<br>2075 make[3]: Leaving =
directory `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext=
-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/gnulib-lib&#39;<br>

2076 make[2]: *** [all-recursive] Error 1<br>2077 make[2]: Leaving director=
y `/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-=
0.18.1.1-r17/gettext-0.18.1.1/gettext-tools&#39;<br>2078 make[1]: *** [all]=
 Error 2<br>

2079 make[1]: Leaving directory `/home/eddylai/poky-danny-8.0/build/tmp/wor=
k/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools&#=
39;<br>2080 make: *** [all-recursive] Error 1<br>2081 ERROR: oe_runmake fai=
led<br>

2082 ERROR: Function failed: do_compile (see /home/eddylai/poky-danny-8.0/b=
uild/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/temp/log.do_compile.=
5711 for further information)<br>------------------------------------------=
----------------------------------------------------</div>
</div></blockquote><div><br></div><div>errors in the log:</div><div>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div><div>x86_64-linux-libtool: compile: =
=A0gcc -std=3Dgnu99 -DHAVE_CONFIG_H -DEXEEXT=3D\&quot;\&quot; -DEXEEXT=3D\&=
quot;\&quot; -DEXEEXT=3D\&quot;\&quot; -I. -I.. -I../intl -I../intl -I.. -I=
.. -DDEPENDS_ON_LIBICONV=3D1 -DDEPENDS_ON_LIBINTL=3D1 -DLIBXML_STATIC -I../=
intl -I./libcroco -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x=
86_64-linux/usr/include -isystem/home/eddylai/poky-danny-8.0/build/tmp/sysr=
oots/x86_64-linux/usr/include -O2 -pipe -c findprog.c =A0-fPIC -DPIC -o .li=
bs/findprog.o</div>
<div>In file included from execute.c:47:0:</div><div>./spawn.h:406:3: error=
: conflicting types for &#39;posix_spawnattr_t&#39;</div><div>/usr/include/=
spawn.h:39:3: note: previous declaration of &#39;posix_spawnattr_t&#39; was=
 here</div>
<div>./spawn.h:422:3: error: conflicting types for &#39;posix_spawn_file_ac=
tions_t&#39;</div><div><br></div>

--bcaec51d26b8888cf804d1989967--
