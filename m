Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1104FE00B53; Thu,  8 Jun 2017 14:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1932E00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 14:37:17 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id m31so25703313uam.1
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 14:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=m6b6oOdNV5yjoZvqhqJ7FHWejkZwO5lyP9yOL5/CIns=;
	b=R2hcWBAu0QVLi1MNL3uDUQALijr3uOCjft6IofyLbtvqww94Gngq3Q5/Knnba0xVsL
	bBq0PEzmWYJIy+qvXb/3VtK3ma3xUvaNvyUsBax2X8bazO83mZPaKhwqkxtS2l08bfKq
	5396iHIwj1yCwhbBxAc8p28t6P7K4N/Q6wdo7xXkCxcZEAz9bUSTDlmOAm8doZS25x0R
	13ms8gJ7cuduvfTtl7JMsph8cez8xz7FNaW3cAQNzVQS+RAKwyEhq+1la4Z9gQoMYnmW
	ucassAzqxmR+DgZbuMtHPHycRe+6QIVK3WVYebEa/AVY0WnytkIkEJr56MmR6Kz0KZuc
	Wqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=m6b6oOdNV5yjoZvqhqJ7FHWejkZwO5lyP9yOL5/CIns=;
	b=BIvkeGAa3isXlpMLWIFAmPTi4JzHZB/PHmnZH8Sdk4yBGczk832ooy0BXBSKuLvsuF
	8y0Z/N0JglcdoQ07qHq9rkpIYG17RaZjenuaIdcukq3bkayR/0Yboox1oI/MqPGSj3ix
	cqEFUUXsx4nY6P6bHvDLT+1jEgpc6/hBD2Bi+5l6qdUc8yAQdqdGtntsgoG70CNC9D08
	V4f9ohSB5Y3h9VheEI5dFwiTWfKw1I9dMceMZP++sNOWlPwWTDrWugzSkV2WVJ+eFf2s
	t4uBa7K/w03YgnYLPpJFTIo7Cc7c96ilPqVe2EEtMUUR4TaCEyG5ySG9qz5WdjSE3OjE
	nOSw==
X-Gm-Message-State: AODbwcDebcCrWAF6AIYMsg//X7b7cENdkQtr/ztOTcYtCF3SQ4PCLGur
	dO7z19Y9hzzz4GTYEQpRLQfAXqIYbQ==
X-Received: by 10.176.82.18 with SMTP id i18mr5351842uaa.57.1496957836535;
	Thu, 08 Jun 2017 14:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWG=m-UeJjFA2O3CEqHkjmNYOY2Gf2pHUfGJH4KU=YDFOHQ@mail.gmail.com>
	<CAMKF1sqUz+-FTn85nHmhqDorUf_xH-3WDLF+ZVsMZgygmemw1w@mail.gmail.com>
In-Reply-To: <CAMKF1sqUz+-FTn85nHmhqDorUf_xH-3WDLF+ZVsMZgygmemw1w@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 08 Jun 2017 21:37:05 +0000
Message-ID: <CAFzUWGkGyAUKkhknhFsHESdwvYPrSEM0LG1Y3wOAsqid+FjvMw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: LLVM linking for custom recipe
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
X-List-Received-Date: Thu, 08 Jun 2017 21:37:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c1904dc172eb9055179a81e"

--94eb2c1904dc172eb9055179a81e
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

Which recipe? My problem is that ROOT's CMake is unable to find the
cross-compiled LLVM, and I'm not sure how to get it to find it.

Giordon

On Thu, Jun 8, 2017 at 3:47 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Jun 8, 2017 at 1:42 PM, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi,
> >
> > I have the following error message when trying to get LLVM linked up. The
> > problem is that I'm using a widely used science software called ROOT
> > (https://root.cern.ch/) with the following minimal recipe at the moment
> > (
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
> )
> > however I get the following error...
> >
> > Any ideas?
>
> Look into meta-clang there are patches for cross compiling clang/llvm
> https://github.com/kraj/meta-clang
>
> >
> > Giordon
> >
> > | CMake Error at cmake/modules/SearchInstalledSoftware.cmake:662
> > (find_package):
> > |   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project
> has
> > |   asked CMake to find a package configuration file provided by "LLVM",
> but
> > |   CMake did not find one.
> > |
> > |   Could not find a package configuration file provided by "LLVM" with
> any
> > of
> > |   the following names:
> > |
> > |     LLVMConfig.cmake
> > |     llvm-config.cmake
> > |
> > |   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
> > |   "LLVM_DIR" to a directory containing one of the above files.  If
> "LLVM"
> > |   provides a separate development package or SDK, be sure it has been
> > |   installed.
> > | Call Stack (most recent call first):
> > |   CMakeLists.txt:58 (include)
> > |
> > |
> > | -- Configuring incomplete, errors occurred!
> > | See also
> >
> "/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeOutput.log".
> > | See also
> >
> "/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeError.log".
> > | WARNING:
> >
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/run.do_configure.16761:1
> > exit 1 from 'cmake ${OECMAKE_SITEFILE}
> >
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/root-6.04.12
> > -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=bin
> > -DCMAKE_INSTALL_SBINDIR:PATH=sbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=libexec
> > -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc
> > -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=../com
> > -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var -DCMAKE_INSTALL_LIBDIR:PATH=lib
> > -DCMAKE_INSTALL_INCLUDEDIR:PATH=include
> > -DCMAKE_INSTALL_DATAROOTDIR:PATH=share -DCMAKE_INSTALL_SO_NO_EXE=0
> >
> -DCMAKE_TOOLCHAIN_FILE=/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/toolchain.cmake
> > -DCMAKE_VERBOSE_MAKEFILE=1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=1 -Drootfit=ON
> > -Dminuit2=ON -Dpython=ON -Dssl=ON -Dxrootd=ON -Dbuiltin_freetype=ON
> > -Dbuiltin_llvm=OFF ${PACKAGECONFIG_CONFARGS} -Wno-dev'
> > | ERROR: Function failed: do_configure (log file is located at
> >
> /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/log.do_configure.16761)
> > ERROR: Task
> > (/local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1027 tasks of which 1024 didn't need to be
> > rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c1904dc172eb9055179a81e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>Which recipe? My problem is th=
at ROOT&#39;s CMake is unable to find the cross-compiled LLVM, and I&#39;m =
not sure how to get it to find it.</div><div><br></div><div>Giordon</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jun 8, 2017 at =
3:47 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, Jun 8, 20=
17 at 1:42 PM, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail.com" target=
=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have the following error message when trying to get LLVM linked up. =
The<br>
&gt; problem is that I&#39;m using a widely used science software called RO=
OT<br>
&gt; (<a href=3D"https://root.cern.ch/" rel=3D"noreferrer" target=3D"_blank=
">https://root.cern.ch/</a>) with the following minimal recipe at the momen=
t<br>
&gt; (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-=
core/root/root_6.04.12.bb" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb</a=
>)<br>
&gt; however I get the following error...<br>
&gt;<br>
&gt; Any ideas?<br>
<br>
Look into meta-clang there are patches for cross compiling clang/llvm<br>
<a href=3D"https://github.com/kraj/meta-clang" rel=3D"noreferrer" target=3D=
"_blank">https://github.com/kraj/meta-clang</a><br>
<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; | CMake Error at cmake/modules/SearchInstalledSoftware.cmake:662<br>
&gt; (find_package):<br>
&gt; |=C2=A0 =C2=A0By not providing &quot;FindLLVM.cmake&quot; in CMAKE_MOD=
ULE_PATH this project has<br>
&gt; |=C2=A0 =C2=A0asked CMake to find a package configuration file provide=
d by &quot;LLVM&quot;, but<br>
&gt; |=C2=A0 =C2=A0CMake did not find one.<br>
&gt; |<br>
&gt; |=C2=A0 =C2=A0Could not find a package configuration file provided by =
&quot;LLVM&quot; with any<br>
&gt; of<br>
&gt; |=C2=A0 =C2=A0the following names:<br>
&gt; |<br>
&gt; |=C2=A0 =C2=A0 =C2=A0LLVMConfig.cmake<br>
&gt; |=C2=A0 =C2=A0 =C2=A0llvm-config.cmake<br>
&gt; |<br>
&gt; |=C2=A0 =C2=A0Add the installation prefix of &quot;LLVM&quot; to CMAKE=
_PREFIX_PATH or set<br>
&gt; |=C2=A0 =C2=A0&quot;LLVM_DIR&quot; to a directory containing one of th=
e above files.=C2=A0 If &quot;LLVM&quot;<br>
&gt; |=C2=A0 =C2=A0provides a separate development package or SDK, be sure =
it has been<br>
&gt; |=C2=A0 =C2=A0installed.<br>
&gt; | Call Stack (most recent call first):<br>
&gt; |=C2=A0 =C2=A0CMakeLists.txt:58 (include)<br>
&gt; |<br>
&gt; |<br>
&gt; | -- Configuring incomplete, errors occurred!<br>
&gt; | See also<br>
&gt; &quot;/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0=
/build/CMakeFiles/CMakeOutput.log&quot;.<br>
&gt; | See also<br>
&gt; &quot;/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0=
/build/CMakeFiles/CMakeError.log&quot;.<br>
&gt; | WARNING:<br>
&gt; /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/=
run.do_configure.16761:1<br>
&gt; exit 1 from &#39;cmake ${OECMAKE_SITEFILE}<br>
&gt; /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/root-=
6.04.12<br>
&gt; -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin<b=
r>
&gt; -DCMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3D=
libexec<br>
&gt; -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc<br>
&gt; -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D../com<br>
&gt; -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=
=3Dlib<br>
&gt; -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude<br>
&gt; -DCMAKE_INSTALL_DATAROOTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0=
<br>
&gt; -DCMAKE_TOOLCHAIN_FILE=3D/local/d4/poky/build/tmp/work/aarch64-poky-li=
nux/root/6.04.12-r0/toolchain.cmake<br>
&gt; -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Droo=
tfit=3DON<br>
&gt; -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_freety=
pe=3DON<br>
&gt; -Dbuiltin_llvm=3DOFF ${PACKAGECONFIG_CONFARGS} -Wno-dev&#39;<br>
&gt; | ERROR: Function failed: do_configure (log file is located at<br>
&gt; /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/=
log.do_configure.16761)<br>
&gt; ERROR: Task<br>
&gt; (/local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure)=
<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 1027 tasks of which 1024 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do=
_configure<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--94eb2c1904dc172eb9055179a81e--
