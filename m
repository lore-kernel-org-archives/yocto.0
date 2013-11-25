Return-Path: <soniaverma9727@gmail.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A107E0071E
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:23:43 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id hi5so3630384wib.14
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=u9ek0DFIE8L5XTh06AR+XtYp5xjjr9R6xtAM5LAzpEU=;
	b=zLdNjecprh8p5IAd7cMr45+IjWb2ukQdUeLnog9SxtBNjRvzmznY4EHsp+H5ttFTM2
	dCn416lTi9toVQD3uY3fOoes0n1Iqubcs/oDKVOlZbXO5WHCNJO2uPvx/jKFUnu066vp
	ieQxreXMnBfoYwxyvopiaw8xHA30F/H6HaTQJqfGzdIh4OaFNa7A3maC4I0raBrJUDGq
	kVZxofWHBoVk+ZoP98mtYkDl+SsegZ9jIoPg61Mwhijio9U/UmemUdKP/l5Q8JlR6dzT
	7y0eREH5ooDgbL/aPZYKYXNurlGM5JurztYMHG97DfTxM8Wfm0K+rDx5jc55cijuz9Ma
	1xoQ==
MIME-Version: 1.0
X-Received: by 10.180.107.193 with SMTP id he1mr13962910wib.50.1385389422631; 
	Mon, 25 Nov 2013 06:23:42 -0800 (PST)
Received: by 10.194.9.193 with HTTP; Mon, 25 Nov 2013 06:23:42 -0800 (PST)
Date: Mon, 25 Nov 2013 19:53:42 +0530
Message-ID: <CAJ7Vayh+052MR7EJ0PyoMke4o+9CzRegNweK5ot-LeLGG4JC-A@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Subject: JAVA Cross Compilation error
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
X-List-Received-Date: Mon, 25 Nov 2013 14:23:47 -0000
Content-Type: multipart/alternative; boundary=e89a8f234c0369623904ec011caa

--e89a8f234c0369623904ec011caa
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.

After setting the environment i am running "bitbake openjdok-7-jre" command
but i am getting following error message:

 echo ERROR patch ${all_patches_ok} FAILED! ; \
|       echo WARNING make clean-patch before retrying a fix ; \
|       exit 2; \
|     fi ; \
|     mv stamps/patch.stamp.tmp stamps/patch.stamp
| Checking patches/revert-7017193.patch
| 1 out of 1 hunk FAILED -- saving rejects to file
openjdk/hotspot/src/os/linux/vm/os_linux.cpp.rej
| 1 out of 1 hunk FAILED -- saving rejects to file
openjdk/hotspot/src/share/vm/runtime/os.cpp.rej
| 1 out of 1 hunk FAILED -- saving rejects to file
openjdk/hotspot/src/share/vm/runtime/os.hpp.rej
| ERROR patch patches/revert-7017193.patch FAILED!
| WARNING make clean-patch before retrying a fix
| make: *** [stamps/patch.stamp] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_configure (see
/home/vvdn/1.4_yocto/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_networking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.15849
for further information)
ERROR: Task 798
(/home/vvdn/1.4_yocto/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
openjdk-7_25b30-2.3.12.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4711 tasks of which 4663 didn't need to be
rerun and 1 failed.
No currently running tasks (4711 of 4721)

Summary: 1 task failed:

Please help regarding this..

Thanks..

--e89a8f234c0369623904ec011caa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br><div>I need to cross compile openjdk-7-jre =
in ppc64 platform using Yocto.</div><div><br></div><div>After setting the e=
nvironment i am running &quot;bitbake openjdok-7-jre&quot; command but i am=
 getting following error message:</div>


<div><br>=A0echo ERROR patch ${all_patches_ok} FAILED! ; \<br>| =A0=A0=A0 =
=A0 echo WARNING make clean-patch before retrying a fix ; \<br>| =A0=A0=A0 =
=A0 exit 2; \<br>| =A0=A0=A0 fi ; \<br>| =A0=A0=A0 mv stamps/patch.stamp.tm=
p stamps/patch.stamp<br>| Checking patches/revert-7017193.patch<br>
| 1 out of 1 hunk FAILED -- saving rejects to file openjdk/hotspot/src/os/l=
inux/vm/os_linux.cpp.rej<br>| 1 out of 1 hunk FAILED -- saving rejects to f=
ile openjdk/hotspot/src/share/vm/runtime/os.cpp.rej<br>| 1 out of 1 hunk FA=
ILED -- saving rejects to file openjdk/hotspot/src/share/vm/runtime/os.hpp.=
rej<br>
| ERROR patch patches/revert-7017193.patch FAILED!<br>| WARNING make clean-=
patch before retrying a fix<br>| make: *** [stamps/patch.stamp] Error 2<br>=
| ERROR: oe_runmake failed<br>| ERROR: Function failed: do_configure (see /=
home/vvdn/1.4_yocto/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tm=
p/work/ppce6500-fsl_networking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/l=
og.do_configure.15849 for further information)<br>
ERROR: Task 798 (/home/vvdn/1.4_yocto/QorIQ-SDK-V1.4-20130814-yocto/meta-ja=
va/recipes-core/openjdk/<a href=3D"http://openjdk-7_25b30-2.3.12.bb">openjd=
k-7_25b30-2.3.12.bb</a>, do_configure) failed with exit code &#39;1&#39;<br=
>
NOTE: Tasks Summary: Attempted 4711 tasks of which 4663 didn&#39;t need to =
be rerun and 1 failed.<br>No currently running tasks (4711 of 4721)<br><br>=
Summary: 1 task failed:<br><br></div><div>Please help regarding this..<br>
<br></div><div>Thanks..<br></div><div><br><br></div><br></div>

--e89a8f234c0369623904ec011caa--
