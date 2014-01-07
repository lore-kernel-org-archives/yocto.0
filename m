Return-Path: <perencia@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1DBE006CA
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 09:54:50 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id bz8so1049075wib.11
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 09:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=+JDr5gHMleGD8jSIstsxEW8MxjCRZGvKT4kc/B+neBk=;
	b=axwT9xnqYJxqdtzZVslIyJOQPGtrn+MczW/TPPXmUVAEBSs0Ndo+MaskHGZ12QMmRO
	lQbkm5onFRGOzNwPz1IJ6l3E+qG2vLMhaVVt+uaHA3IyZLXLVZWHLB9nEfhtsp5zK2gj
	vv3iwbl7tgLs7X82JLDjgrngdCywibl4cFAPs5/QB3LW71CWZGuH0jflRQlOJmv3V7wV
	PYLh8da2DTyk0PpQSarhI3CySDnGwObL8PC1Lk5cI7Shh2RtXmYC4POb1uz8kyXHxQPl
	FP8efprKWtEL95isTQbRSN8hZfEsdzXimy8M+u0ajWqecFAh5OBG4GDi9ZHxtMwd223F
	mM9A==
X-Received: by 10.180.94.7 with SMTP id cy7mr17739995wib.21.1389117288860;
	Tue, 07 Jan 2014 09:54:48 -0800 (PST)
Received: from [192.168.1.8] (81.184.215.121.dyn.user.ono.com.
	[81.184.215.121])
	by mx.google.com with ESMTPSA id e5sm31279032wja.15.2014.01.07.09.54.47
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 07 Jan 2014 09:54:47 -0800 (PST)
From: pedro <perencia@gmail.com>
Message-Id: <FEF787CD-9378-4BD0-A524-C3A17E9C663E@gmail.com>
Date: Tue, 7 Jan 2014 18:54:46 +0100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
X-Mailer: Apple Mail (2.1827)
Subject: Internal compilation errors with -Os
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
X-List-Received-Date: Tue, 07 Jan 2014 17:54:51 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DEE581E5-E9D8-473E-9AC3-3005E7D76663"

--Apple-Mail=_DEE581E5-E9D8-473E-9AC3-3005E7D76663
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

I=92m trying to build the qt4e-demo-image and i=92ve stumped into xgcc =
internal compiler error when trying to compile libgcc (danny)

The compilation line that gives the error is this:

=
/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.arm-poky-linux=
-gnueabi/./gcc/xgcc =
-B/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnu=
eabi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.arm-poky-lin=
ux-gnueabi/./gcc/ -march=3Darmv7-a     -mthumb-interwork =
-mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 =
-isystem/home/pedro/poky-last/poky/build/tmp/sysroots/igep00x0/usr/include=
 =
-B/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-=
linux-gnueabi/bin/ =
-B/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-=
linux-gnueabi/lib/ -isystem =
/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-li=
nux-gnueabi/include -isystem =
/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-li=
nux-gnueabi/sys-include =
--sysroot=3D/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky=
-linux-gnueabi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.ar=
m-poky-linux-gnueabi/tmpsysroot   -g -Os -O2  -g -Os -DIN_GCC =
-DCROSS_DIRECTORY_STRUCTURE  -W -Wall -Wno-narrowing -Wwrite-strings =
-Wcast-qual -Wstrict-prototypes -Wmissing-prototypes =
-Wold-style-definition  -isystem ./include   -fPIC -fno-inline -g =
-DIN_LIBGCC2 -fbuilding-libgcc -fno-stack-protector -Dinhibit_libc  =
-fPIC -fno-inline -I. -I. -I../.././gcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/. =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/../gcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/../include  -DHAVE_CC_TLS  -o _absvdi2.o -MT _absvdi2.o -MD -MP =
-MF _absvdi2.dep -DL_absvdi2 -c =
/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/l=
ibgcc/libgcc2.c -fvisibility=3Dhidden -DHIDE_EXPORTS


I=92ve noticed that it has  -g -Os -O2  -g -Os. If I change it to -g -O2 =
it compiles fine. Where do they come from ?  I=92ve been trying to find =
where they are defined but i cannot see them in the gcc or the libgcc =
bbs.  How could I get rid of the -Os ?



--Apple-Mail=_DEE581E5-E9D8-473E-9AC3-3005E7D76663
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><font =
size=3D"2" face=3D"Arial">I=92m trying to build the qt4e-demo-image and =
i=92ve stumped into xgcc internal compiler error when trying to compile =
libgcc (danny)</font><div><font size=3D"2" =
face=3D"Arial"><br></font></div><div><font size=3D"2" face=3D"Arial">The =
compilation line that gives the error is =
this:</font></div><div><br></div><div><div><font face=3D"Courier =
New">/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-=
gnueabi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.arm-poky-=
linux-gnueabi/./gcc/xgcc =
-B/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnu=
eabi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.arm-poky-lin=
ux-gnueabi/./gcc/ -march=3Darmv7-a &nbsp; &nbsp; -mthumb-interwork =
-mfloat-abi=3Dsoftfp -mfpu=3Dneon -mtune=3Dcortex-a8 =
-isystem/home/pedro/poky-last/poky/build/tmp/sysroots/igep00x0/usr/include=
 =
-B/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-=
linux-gnueabi/bin/ =
-B/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-=
linux-gnueabi/lib/ -isystem =
/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-li=
nux-gnueabi/include -isystem =
/home/pedro/poky-last/poky/build/tmp/sysroots/x86_64-linux/usr/arm-poky-li=
nux-gnueabi/sys-include =
--sysroot=3D/home/pedro/poky-last/poky/build/tmp/work/armv7a-vfp-neon-poky=
-linux-gnueabi/gcc-cross-initial-4.7.2-r13/gcc-4.7.2/build.x86_64-linux.ar=
m-poky-linux-gnueabi/tmpsysroot &nbsp; <b>-g -Os -O2 &nbsp;-g -Os =
</b>-DIN_GCC -DCROSS_DIRECTORY_STRUCTURE &nbsp;-W -Wall -Wno-narrowing =
-Wwrite-strings -Wcast-qual -Wstrict-prototypes -Wmissing-prototypes =
-Wold-style-definition &nbsp;-isystem ./include &nbsp; -fPIC -fno-inline =
-g -DIN_LIBGCC2 -fbuilding-libgcc -fno-stack-protector -Dinhibit_libc =
&nbsp;-fPIC -fno-inline -I. -I. -I../.././gcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/. =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/../gcc =
-I/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2=
/libgcc/../include &nbsp;-DHAVE_CC_TLS &nbsp;-o _absvdi2.o -MT =
_absvdi2.o -MD -MP -MF _absvdi2.dep -DL_absvdi2 -c =
/home/pedro/poky-last/poky/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/l=
ibgcc/libgcc2.c -fvisibility=3Dhidden =
-DHIDE_EXPORTS</font></div></div><div><br></div><div><br></div><div><font =
face=3D"Arial" size=3D"2">I=92ve noticed that it has &nbsp;</font><font =
face=3D"Courier New">-g -Os -O2 &nbsp;-g -Os</font>. <font face=3D"Arial" =
size=3D"2">If I change it to -g -O2 it compiles fine. Where do they come =
from ? &nbsp;I=92ve been trying to find where they are defined but i =
cannot see them in the gcc or the libgcc bbs. &nbsp;How could I get rid =
of the</font> <font face=3D"Courier New">-Os =
</font>?</div><div><br></div><div><br></div></body></html>=

--Apple-Mail=_DEE581E5-E9D8-473E-9AC3-3005E7D76663--
