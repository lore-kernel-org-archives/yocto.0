Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B34D5E01470
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 23:37:41 -0800 (PST)
Received: by mail-vb0-f45.google.com with SMTP id p1so7177391vbi.18
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 23:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=3tGU0HdwzLwcguhDD5c9cKLhNmA73K74UzlJHRy5oaI=;
	b=FK7iDt57RGDQjGR34zfUNSHBlBRZwmW0hh5hzuYpgTdI1ON4Mq5N7+s7Z71VYeA7Ha
	DYY0lcZhKKzcS74TC8XWXnpzdGPaMVW1zHqkBBUsztuR/R/92BF9zUR/oD0lhBUe/Npb
	O0mcD0dusUtgbOH8Grx6x8x0JpqTko1K1alUCCjKeGe1D3SltBbvzAigcWOyVV0lNYUd
	lNNHrtbPYesoTjX4+VRYs0GnOpxGqTm+O4usnLJ7JcKM9oV38wEkDOSNma8j2gFPF8yP
	UrgRk3PSAZfFXE0hhqRVXc/HWupWxKIJy18vANJzhO6bUmxuA8IUtNsDPXztzMaaoVF5
	HqVA==
MIME-Version: 1.0
Received: by 10.52.23.37 with SMTP id j5mr27647115vdf.56.1356334660901; Sun,
	23 Dec 2012 23:37:40 -0800 (PST)
Received: by 10.58.18.235 with HTTP; Sun, 23 Dec 2012 23:37:40 -0800 (PST)
In-Reply-To: <CADkTA4N3yAAgtsxtSy_Dg=h2-4sK=DJ5rpR71x1XFjkyq47Tqw@mail.gmail.com>
References: <-2529861647849882481@unknownmsgid>
	<CADkTA4N3yAAgtsxtSy_Dg=h2-4sK=DJ5rpR71x1XFjkyq47Tqw@mail.gmail.com>
Date: Mon, 24 Dec 2012 15:37:40 +0800
Message-ID: <CACrgoddTEdOQSeRwHf+vd9H6h_643TdmMpWCasi2HpWQ+G8YhA@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: no /tmp/work/../linux-standard-build source output
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
X-List-Received-Date: Mon, 24 Dec 2012 07:37:41 -0000
Content-Type: multipart/alternative; boundary=20cf30780a7ea8dd2504d19445e3

--20cf30780a7ea8dd2504d19445e3
Content-Type: text/plain; charset=ISO-8859-1

got errors during "bitbake core-image-minimal" on yacto 1.3 + jasperforest
BSP
how can I just clean everything then re-build all?
since I don't modify any kernel code before make the build, will this error
caused by build environment settings problem?
message from
"tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/temp/log.do_compile.28574"
like below:
-----------------------------------------------------------------------------------------------------------------
2067 execute.c:267:5: warning: passing argument 1 of
'posix_spawnattr_destroy' from incompatible pointer type [enabled by
default]
2068 /usr/include/spawn.h:94:12: note: expected 'struct posix_spawnattr_t
*' but argument is of type 'struct posix_spawnattr_t *'
2069 make[4]: *** [execute.lo] Error 1
2070 make[4]: *** Waiting for unfinished jobs....
2071 x86_64-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H
-DEXEEXT=\"\" -DEXEEXT=\"\" -DEXEEXT=\"\" -I. -I.. -I../intl -I../intl -I..
-I.. -DDEPENDS_ON_LIBICONV=1 -D     DEPENDS_ON_LIBINTL=1 -DLIBXML_STATIC
-I../intl -I./libcroco
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -c exitfail.c  -fPIC -DPIC -o .libs/exitfail.o
2072 x86_64-linux-libtool: compile:  gcc -std=gnu99 -DHAVE_CONFIG_H
-DEXEEXT=\"\" -DEXEEXT=\"\" -DEXEEXT=\"\" -I. -I.. -I../intl -I../intl -I..
-I.. -DDEPENDS_ON_LIBICONV=1 -D     DEPENDS_ON_LIBINTL=1 -DLIBXML_STATIC
-I../intl -I./libcroco
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-isystem/home/eddylai/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -c exitfail.c -o exitfail.o >/dev/null 2>&1
2073 make[4]: Leaving directory
`/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/gnulib-lib'
2074 make[3]: *** [all] Error 2
2075 make[3]: Leaving directory
`/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools/gnulib-lib'
2076 make[2]: *** [all-recursive] Error 1
2077 make[2]: Leaving directory
`/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools'
2078 make[1]: *** [all] Error 2
2079 make[1]: Leaving directory
`/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/gettext-0.18.1.1/gettext-tools'
2080 make: *** [all-recursive] Error 1
2081 ERROR: oe_runmake failed
2082 ERROR: Function failed: do_compile (see
/home/eddylai/poky-danny-8.0/build/tmp/work/x86_64-linux/gettext-native-0.18.1.1-r17/temp/log.do_compile.5711
for further information)

--20cf30780a7ea8dd2504d19445e3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>got errors during &quot;bitbake core-image-minimal&qu=
ot; on yacto 1.3 + jasperforest BSP<br></div><div>how can I just clean ever=
ything then re-build all?<br></div><div>since I don&#39;t modify any kernel=
 code before make the build, will this error caused by build environment se=
ttings problem?<br>
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
5711 for further information)<br><br></div></div>

--20cf30780a7ea8dd2504d19445e3--
