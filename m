Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 015BDE00F16; Thu, 30 Jun 2016 21:14:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.59.120.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 496 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jun 2016 21:14:15 PDT
Received: from nic.tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28EA5E00E77
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 21:14:15 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by nic.tritech.se (8.14.4/8.14.4/Debian-4) with ESMTP id u6145rTh005811;
	Fri, 1 Jul 2016 06:05:53 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.03.0279.002; Fri, 1 Jul 2016 06:05:47 +0200
From: Peter Bergin <peter.bergin@tritech.se>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ICECC build failures?
Thread-Index: AQHR0zQQ9w4VZhvuCkOEYF0Vkz5wtA==
Date: Fri, 1 Jul 2016 04:05:46 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280CACB052@post>
References: <CY1PR0101MB15945556E27A16104116E87FD7250@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.227.10.61]
MIME-Version: 1.0
Subject: Re: ICECC build failures?
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
X-List-Received-Date: Fri, 01 Jul 2016 04:14:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_43F0718C449F6A46B393DA2BEC8E01280CACB052post_"

--_000_43F0718C449F6A46B393DA2BEC8E01280CACB052post_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

On 07/01/2016 03:18 AM, Takashi Matsuzawa wrote:

Hello Yocto.

Recently I am trying icecc with bitbake and amd halfway satisfied.
Good to see batch of my compilation jobs consumed by my build machines on i=
cemon
is not bad.

However, I can see my builds fail in certain condition eveytime and
wonder if it is a known issue and a workaround exists?

Symptom is the follows.

1) Using x86_64 build host and build machies.  All of them are running
Ubutnu 16.04.
2) My image is based on Fido (18.0).
3) I am just doing INHERIT +=3D "icecc" and the jobs are shared with
build machines correctly.
4) x86 (genericx86) build is OK with and without icecee.
5) imx (sabre6qauto) build is OK without icecc, but NG (fails) with icecc.

The following is the failure log.
It says relocation record error during linkage.  I googled for a while
and learned similar error could be seen if there is binutils (libtool)
version mistmatch.

Maybe a) the host-provided native toolchain and b) yocto-provided
native/cross toolchain have version mismatch?  But I do not see this
error when I am not using icecc.  I just think if it is OK without
icecc, the same should be expected even if I use icecc (it just runs
the same toolchain on different PCs?)

=3D=3D=3D=3D
| x86_64-pokysdk-linux-libtool: link: x86_64-pokysdk-linux-gcc
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-shared   .libs/conf.o .libs/confmisc.o .libs/input.o .libs/output.o
.libs/async.o .libs/error.o .libs/dlmisc.o .libs/socket.o
.libs/shmarea.o .libs/userfile.o .libs/names.o   -Wl,--whole-archive
control/.libs/libcontrol.a mixer/.libs/libmixer.a pcm/.libs/libpcm.a
timer/.libs/libtimer.a rawmidi/.libs/librawmidi.a
hwdep/.libs/libhwdep.a seq/.libs/libseq.a ucm/.libs/libucm.a
alisp/.libs/libalisp.a -Wl,--no-whole-archive
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-lm -ldl -lpthread -lrt
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-O2 -Wl,--version-script=3DVersions -Wl,--no-undefined -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr=
/lib
-Wl,-O1 -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-O1   -Wl,-soname -Wl,libasound.so.2 -o .libs/libasound.so.2.0.0
| /mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-linux/usr/libexec/x86_64-=
pokysdk-linux/gcc/x86_64-pokysdk-linux/4.9.2/ld:
.libs/conf.o: relocation R_X86_64_32 against `.rodata.str1.1' can not
be used when making a shared object; recompile with -fPIC
| .libs/conf.o: error adding symbols: Bad value
| collect2: error: ld returned 1 exit status
| Makefile:484: recipe for target 'libasound.la' failed
| make[2]: *** [libasound.la] Error 1
| make[2]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:538: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:399: recipe for target 'all-recursive' failed
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-alsa-lib/1.0.28-r0/temp/log.do_compile.31561)
=3D=3D=3D=3D





Some packages does not work with ICECC in a similar way some package do not=
 work with PARALLEL_MAKE. You can work with the variable ICECC_USER_PACKAGE=
_BL to disable ICECC compilation for the failing packages.


Best regards,
/Peter<http://www.yoctoproject.org/docs/2.0.2/mega-manual/mega-manual.html#=
var-ICECC_USER_PACKAGE_BL>

--_000_43F0718C449F6A46B393DA2BEC8E01280CACB052post_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 07/01/2016 03:18 AM, Takashi Matsuzawa wrote:<br>
</div>
<blockquote cite=3D"mid:CY1PR0101MB15945556E27A16104116E87FD7250@CY1PR0101M=
B1594.prod.exchangelabs.com" type=3D"cite">
<pre wrap=3D"">Hello Yocto.=0A=
=0A=
Recently I am trying icecc with bitbake and amd halfway satisfied.=0A=
Good to see batch of my compilation jobs consumed by my build machines on i=
cemon=0A=
is not bad.=0A=
=0A=
However, I can see my builds fail in certain condition eveytime and=0A=
wonder if it is a known issue and a workaround exists?=0A=
=0A=
Symptom is the follows.=0A=
=0A=
1) Using x86_64 build host and build machies.&nbsp; All of them are running=
=0A=
Ubutnu 16.04.=0A=
2) My image is based on Fido (18.0).=0A=
3) I am just doing INHERIT &#43;=3D &quot;icecc&quot; and the jobs are shar=
ed with=0A=
build machines correctly.=0A=
4) x86 (genericx86) build is OK with and without icecee.=0A=
5) imx (sabre6qauto) build is OK without icecc, but NG (fails) with icecc.=
=0A=
=0A=
The following is the failure log.=0A=
It says relocation record error during linkage.&nbsp; I googled for a while=
=0A=
and learned similar error could be seen if there is binutils (libtool)=0A=
version mistmatch.=0A=
=0A=
Maybe a) the host-provided native toolchain and b) yocto-provided=0A=
native/cross toolchain have version mismatch?&nbsp; But I do not see this=
=0A=
error when I am not using icecc.&nbsp; I just think if it is OK without=0A=
icecc, the same should be expected even if I use icecc (it just runs=0A=
the same toolchain on different PCs?)=0A=
=0A=
=3D=3D=3D=3D=0A=
| x86_64-pokysdk-linux-libtool: link: x86_64-pokysdk-linux-gcc=0A=
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux=0A=
-shared&nbsp; &nbsp;.libs/conf.o .libs/confmisc.o .libs/input.o .libs/outpu=
t.o=0A=
.libs/async.o .libs/error.o .libs/dlmisc.o .libs/socket.o=0A=
.libs/shmarea.o .libs/userfile.o .libs/names.o&nbsp; &nbsp;-Wl,--whole-arch=
ive=0A=
control/.libs/libcontrol.a mixer/.libs/libmixer.a pcm/.libs/libpcm.a=0A=
timer/.libs/libtimer.a rawmidi/.libs/librawmidi.a=0A=
hwdep/.libs/libhwdep.a seq/.libs/libseq.a ucm/.libs/libucm.a=0A=
alisp/.libs/libalisp.a -Wl,--no-whole-archive=0A=
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib=0A=
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=0A=
-lm -ldl -lpthread -lrt=0A=
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux=0A=
-O2 -Wl,--version-script=3DVersions -Wl,--no-undefined -Wl,-rpath-link=0A=
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib=0A=
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr=
/lib=0A=
-Wl,-O1 -Wl,-rpath-link=0A=
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=0A=
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=
=0A=
-Wl,-O1&nbsp; &nbsp;-Wl,-soname -Wl,libasound.so.2 -o .libs/libasound.so.2.=
0.0=0A=
| /mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-linux/usr/libexec/x86_64-=
pokysdk-linux/gcc/x86_64-pokysdk-linux/4.9.2/ld:=0A=
.libs/conf.o: relocation R_X86_64_32 against `.rodata.str1.1' can not=0A=
be used when making a shared object; recompile with -fPIC=0A=
| .libs/conf.o: error adding symbols: Bad value=0A=
| collect2: error: ld returned 1 exit status=0A=
| Makefile:484: recipe for target 'libasound.la' failed=0A=
| make[2]: *** [libasound.la] Error 1=0A=
| make[2]: Leaving directory=0A=
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'=0A=
| Makefile:538: recipe for target 'all-recursive' failed=0A=
| make[1]: *** [all-recursive] Error 1=0A=
| make[1]: Leaving directory=0A=
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'=0A=
| Makefile:399: recipe for target 'all-recursive' failed=0A=
| make: *** [all-recursive] Error 1=0A=
| ERROR: oe_runmake failed=0A=
| WARNING: exit code 1 from a shell command.=0A=
| ERROR: Function failed: do_compile (log file is located at=0A=
/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-alsa-lib/1.0.28-r0/temp/log.do_compile.31561)=0A=
=3D=3D=3D=3D=0A=
=0A=
=0A=
=0A=
</pre>
</blockquote>
<br>
Some packages does not work with ICECC in a similar way some package do not=
 work with PARALLEL_MAKE. You can work with the variable<code> ICECC_USER_P=
ACKAGE_BL to disable ICECC compilation for the failing packages.<br>
<br>
<br>
Best regards,<br>
/Peter</code><a class=3D"link" href=3D"http://www.yoctoproject.org/docs/2.0=
.2/mega-manual/mega-manual.html#var-ICECC_USER_PACKAGE_BL" title=3D"ICECC_U=
SER_PACKAGE_BL" style=3D"text-decoration: underline;=0A=
      color: rgb(68, 68, 68); font-family: Verdana, Sans, sans-serif;=0A=
      font-size: medium; font-style: normal; font-variant: normal;=0A=
      font-weight: normal; letter-spacing: normal; line-height: 24px;=0A=
      orphans: auto; text-align: start; text-indent: 0px;=0A=
      text-transform: none; white-space: normal; widows: 1;=0A=
      word-spacing: 0px; -webkit-text-stroke-width: 0px; background:=0A=
      rgb(255, 255, 255);"><code class=3D"filename" style=3D"font-size:=0A=
        medium; font-family: Courier, monospace;"></code></a>
</body>
</html>

--_000_43F0718C449F6A46B393DA2BEC8E01280CACB052post_--
