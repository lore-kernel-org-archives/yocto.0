Return-Path: <amansh.sharma5@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B11E01661
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 21:34:42 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tp5so11458596ieb.0
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 21:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/Uv0SY4GFwiCqW0NEKfzcYxEbxE2jXca+/GOE73yD5M=;
	b=XCDyYMGnnoQdeOZhhyhT96QlIUjrMdIMST5zrHSiUy0Z1XLSBbdp+I/vycjLSp9ySg
	rjmm8slCLEx+ePH/D+oPJ2vFX0FNG2E71SZG7/AsPxv/koHhkGJwiUgF4h22hZOhEkMU
	5wbCF9ftYEnZLu7umeXUh0SO/uJmM/Tj+Ibpia/ziXRGzRlTl/JL1fmtwYXIlvcyfl21
	vlde96bmLFMAJW+ieWQwEPtIbvxYpHnTq19tBHPGv5VHM1DztYMOmYhfcO2DNaaC75xV
	3NRp4ixcD3gyaNyhvhly8+cUMIGYT9b6b1Js/Ze4Irl6yr/rePUiqYEaewCBLhogjb2i
	eDkA==
MIME-Version: 1.0
X-Received: by 10.43.10.198 with SMTP id pb6mr149029icb.40.1380947681579; Fri,
	04 Oct 2013 21:34:41 -0700 (PDT)
Received: by 10.64.129.33 with HTTP; Fri, 4 Oct 2013 21:34:41 -0700 (PDT)
Date: Sat, 5 Oct 2013 10:04:41 +0530
Message-ID: <CAPMH7-8xAYe1T=xsF4WGxbnWLYy6tejzTbVuxrgqvQXmYcWEAg@mail.gmail.com>
From: Aman Sharma <amansh.sharma5@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Error In java cross compilation using Yocto
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
X-List-Received-Date: Sat, 05 Oct 2013 04:34:45 -0000
Content-Type: multipart/alternative; boundary=bcaec50e5ce70399ff04e7f6f0e2

--bcaec50e5ce70399ff04e7f6f0e2
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.

After setting the environment i am running "bitbake openjdok-7-jre" command
but i am getting following error message:

| Checking patches/icedtea-zero-hotspotfix.patch
| Applying patches/icedtea-zero-hotspotfix.patch
| patching file openjdk/hotspot/make/linux/makefiles/zeroshark.make
*| Checking patches/icedtea-jdk-nio-use-host-cc.patch*
*| 3 out of 6 hunks FAILED -- saving rejects to file
openjdk/jdk/make/java/nio/Makefile.rej*
*| 2 out of 2 hunks FAILED -- saving rejects to file
openjdk/jdk/make/sun/Makefile.rej*
*| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!*
*| WARNING make clean-patch before retrying a fix*
*| make: *** [stamps/patch.stamp] Error 2*
*| ERROR: oe_runmake failed*
*| ERROR: Function failed: do_configure (see
/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_networking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910
for further information)*
ERROR: Task 6
(/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
openjdk-7_25b30-2.3.12.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn't need to be
rerun and 1 failed.
No currently running tasks (2674 of 2684)

Summary: 1 task failed:

/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
openjdk-7_25b30-2.3.12.bb, do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Please help me on fixing this issue.

Thanks
Aman Sharma

--bcaec50e5ce70399ff04e7f6f0e2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I need to cross compile openjdk=
-7-jre in ppc64 platform using Yocto.</div><div><br></div><div>After settin=
g the environment i am running &quot;bitbake openjdok-7-jre&quot; command b=
ut i am getting following error message:</div>
<div><br></div><div><div>| Checking patches/icedtea-zero-hotspotfix.patch</=
div><div>| Applying patches/icedtea-zero-hotspotfix.patch</div><div>| patch=
ing file openjdk/hotspot/make/linux/makefiles/zeroshark.make</div><div>
<b>| Checking patches/icedtea-jdk-nio-use-host-cc.patch</b></div><div><b>| =
3 out of 6 hunks FAILED -- saving rejects to file openjdk/jdk/make/java/nio=
/Makefile.rej</b></div><div><b>| 2 out of 2 hunks FAILED -- saving rejects =
to file openjdk/jdk/make/sun/Makefile.rej</b></div>
<div><b>| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!</b>=
</div><div><b>| WARNING make clean-patch before retrying a fix</b></div><di=
v><b>| make: *** [stamps/patch.stamp] Error 2</b></div><div><b>| ERROR: oe_=
runmake failed</b></div>
<div><b>| ERROR: Function failed: do_configure (see /home/vvdn/yocto_1.4/Qo=
rIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_ne=
tworking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910 =
for further information)</b></div>
<div>ERROR: Task 6 (/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta=
-java/recipes-core/openjdk/<a href=3D"http://openjdk-7_25b30-2.3.12.bb">ope=
njdk-7_25b30-2.3.12.bb</a>, do_configure) failed with exit code &#39;1&#39;=
</div>
<div>NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn&#39;t nee=
d to be rerun and 1 failed.</div><div>No currently running tasks (2674 of 2=
684)</div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 /home/v=
vdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/=
<a href=3D"http://openjdk-7_25b30-2.3.12.bb">openjdk-7_25b30-2.3.12.bb</a>,=
 do_configure</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div><br></div><div>Please help me on fixing =
this issue.</div><div><br></div><div>Thanks</div><div>Aman Sharma</div>
<div><br></div></div>

--bcaec50e5ce70399ff04e7f6f0e2--
