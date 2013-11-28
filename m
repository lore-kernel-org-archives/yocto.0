Return-Path: <stuart.weaver@port.ac.uk>
Received: from mail-qe0-f44.google.com (mail-qe0-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C12E00797
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 06:22:07 -0800 (PST)
Received: by mail-qe0-f44.google.com with SMTP id nd7so8609940qeb.31
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 06:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=port.ac.uk; s=google-20130730;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=oOTwGTn0sIplZKRy9JsTALH4Ksf7LKP0GIBnNZZB5P8=;
	b=gOQLFXgJLDWXVoKK/i+QMf5tJtghu8fVzUQs24rWqhlW+jw99P+aBVj3fWEy+415jD
	jifVc+Fy9MIl6gJQWrcT4jzRNwGN+YBHu6oKrwgOeJsQmOSiyJh88E1c/XnAHHRAJwu3
	MELTKKX7dqF4dED+YdJXgmlfFEONGYKFou3GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=oOTwGTn0sIplZKRy9JsTALH4Ksf7LKP0GIBnNZZB5P8=;
	b=PtPb9QNwMYNBnxiJ1vlfettfi8ZgdWMCCCU5Ot9Bv8p3rD3szooh+uiF0KgXErqxWW
	n7T/iE7aUl+o/TABVQK6fKN27Au+vpQScbDYGQ9vY/KfVBH8SH7H2AI/MtM/e21n/WGv
	yWeayeo4BJWcWMeWcq68Y0TpGgcifzVABQhag2hwx1BKCp4gkBAVccPok0QURt2lropk
	FbGMEN6GaYCTz1FFN7lhQRtfxyeS2kdgpZpoXVgstffHMWIoR8DXCANjGvv6n+1Oivgd
	3HE5Oq+DWfqjvaA8IGDYj9XrxsEhMaBNv2qatHYiAOWOEYC0sCsNKfaFhBU42y1s5r6A
	kIgA==
X-Gm-Message-State: ALoCoQn8KvDlV3K9cRZbPklY3H6dyjumTRk3HiA9ewtUWmaOXRazSHV9cQM6FUV3l+A4Jx7YDqwS
X-Received: by 10.49.131.69 with SMTP id ok5mr53800873qeb.77.1385648526548;
	Thu, 28 Nov 2013 06:22:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.167.144 with HTTP; Thu, 28 Nov 2013 06:21:46 -0800 (PST)
From: Stuart Weaver <stuart.weaver@port.ac.uk>
Date: Thu, 28 Nov 2013 14:21:46 +0000
Message-ID: <CAETVZgojZvcU+cffeaUnPyQoAhP37E7HCmLY1d1Wa6HT81mZ2w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Tracker failing to compile
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
X-List-Received-Date: Thu, 28 Nov 2013 14:22:08 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0b96356ca504ec3d701e

--047d7bdc0b96356ca504ec3d701e
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
I'm trying to include a recipe that depends on tracker_0.14.2. When I build
the image it is failing to do_compile tracker with the following output:

*| make[3]: Leaving directory
`/home/stuart/yocto/fsl-community-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/tracker/0.14.2-r7/tracker-0.14.2/src/tracker-utils'*
*| Making all in tracker-extract*
*| make[3]: Entering directory
`/home/stuart/yocto/fsl-community-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/tracker/0.14.2-r7/tracker-0.14.2/src/tracker-extract'*
*| make  all-am*
*| make[4]: Entering directory
`/home/stuart/yocto/fsl-community-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/tracker/0.14.2-r7/tracker-0.14.2/src/tracker-extract'*
*| ../../arm-poky-linux-gnueabi-libtool  --tag=CXX   --mode=link
arm-poky-linux-gnueabi-g++  -march=armv7-a -mthumb-interwork
-mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
--sysroot=/home/stuart/yocto/fsl-community-bsp/build/tmp/sysroots/imx6qsabresd
 -O2 -pipe -g -feliminate-unused-debug-types -fpermissive
-fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
-o tracker-extract tracker_extract-tracker-marshal.o
tracker_extract-tracker-config.o tracker_extract-tracker-controller.o
tracker_extract-tracker-extract.o tracker_extract-tracker-media-art.o
tracker_extract-tracker-read.o tracker_extract-tracker-main.o
tracker_extract-tracker-media-art-pixbuf.o
../../src/libtracker-extract/libtracker-extract-0.14.la
<http://libtracker-extract-0.14.la>
../../src/libtracker-sparql-backend/libtracker-sparql-0.14.la
<http://libtracker-sparql-0.14.la>
../../src/libtracker-miner/libtracker-miner-0.14.la
<http://libtracker-miner-0.14.la>
../../src/libtracker-data/libtracker-data.la <http://libtracker-data.la>
../../src/libtracker-common/libtracker-common.la
<http://libtracker-common.la>  -lgio-2.0 -lgobject-2.0 -Wl,--export-dynamic
-lgmodule-2.0 -pthread -lglib-2.0  -lQtGui -lQtCore  -lgdk_pixbuf-2.0
-lgobject-2.0 -lglib-2.0*
*| arm-poky-linux-gnueabi-libtool: link: cannot find the library `' or
unhandled argument `-DLINUX=1'*
*| make[4]: *** [tracker-extract] Error 1*

I'm guessing that the issue is with the '-DLINUX=1' since no library is
written? I've tried looking into it more for an answer but haven't found
one so far!

Any help is much appreciated!!

Best Regards,
Stuart

--047d7bdc0b96356ca504ec3d701e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>I&#39;m trying to include a recipe that depend=
s on tracker_0.14.2. When I build the image it is failing to do_compile tra=
cker with the following output:<br></div><div><div><br></div><div><div><i>|=
 make[3]: Leaving directory `/home/stuart/yocto/fsl-community-bsp/build/tmp=
/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/tracker/0.14.2-r7/tracker-0.14=
.2/src/tracker-utils&#39;</i></div>

<div><i>| Making all in tracker-extract</i></div><div><i>| make[3]: Enterin=
g directory `/home/stuart/yocto/fsl-community-bsp/build/tmp/work/cortexa9hf=
-vfp-neon-poky-linux-gnueabi/tracker/0.14.2-r7/tracker-0.14.2/src/tracker-e=
xtract&#39;</i></div>

<div><i>| make =A0all-am</i></div><div><i>| make[4]: Entering directory `/h=
ome/stuart/yocto/fsl-community-bsp/build/tmp/work/cortexa9hf-vfp-neon-poky-=
linux-gnueabi/tracker/0.14.2-r7/tracker-0.14.2/src/tracker-extract&#39;</i>=
</div>

<div><i>| ../../arm-poky-linux-gnueabi-libtool =A0--tag=3DCXX =A0 --mode=3D=
link arm-poky-linux-gnueabi-g++ =A0-march=3Darmv7-a -mthumb-interwork -mflo=
at-abi=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a9 --sysroot=3D/home/stuart/yoct=
o/fsl-community-bsp/build/tmp/sysroots/imx6qsabresd =A0-O2 -pipe -g -felimi=
nate-unused-debug-types -fpermissive -fvisibility-inlines-hidden =A0-Wl,-O1=
 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o tracker-extract tracker_extract-=
tracker-marshal.o tracker_extract-tracker-config.o tracker_extract-tracker-=
controller.o tracker_extract-tracker-extract.o tracker_extract-tracker-medi=
a-art.o tracker_extract-tracker-read.o tracker_extract-tracker-main.o =A0 t=
racker_extract-tracker-media-art-pixbuf.o =A0 ../../src/libtracker-extract/=
<a href=3D"http://libtracker-extract-0.14.la">libtracker-extract-0.14.la</a=
> ../../src/libtracker-sparql-backend/<a href=3D"http://libtracker-sparql-0=
.14.la">libtracker-sparql-0.14.la</a> ../../src/libtracker-miner/<a href=3D=
"http://libtracker-miner-0.14.la">libtracker-miner-0.14.la</a> ../../src/li=
btracker-data/<a href=3D"http://libtracker-data.la">libtracker-data.la</a> =
../../src/libtracker-common/<a href=3D"http://libtracker-common.la">libtrac=
ker-common.la</a> =A0-lgio-2.0 -lgobject-2.0 -Wl,--export-dynamic -lgmodule=
-2.0 -pthread -lglib-2.0 =A0-lQtGui -lQtCore =A0-lgdk_pixbuf-2.0 -lgobject-=
2.0 -lglib-2.0</i></div>

<div><i><b>| arm-poky-linux-gnueabi-libtool: link: cannot find the library =
`&#39; or unhandled argument `-DLINUX=3D1&#39;</b></i></div><div><i>| make[=
4]: *** [tracker-extract] Error 1</i></div></div><div><br></div><div>I&#39;=
m guessing that the issue is with the &#39;-DLINUX=3D1&#39; since no librar=
y is written? I&#39;ve tried looking into it more for an answer but haven&#=
39;t found one so far!</div>

<div><br></div><div>Any help is much appreciated!!</div><div><br></div><div=
>Best Regards,</div><div>Stuart</div></div></div>

--047d7bdc0b96356ca504ec3d701e--
