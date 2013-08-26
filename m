Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 558C1E00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:42:26 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id q56so2613482wes.7
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 05:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=m0rcb9oqCPkuiUNc5Z0PKakgiCaGywyOWaWtUmXPk0k=;
	b=P66WWYtU+wS3oW6ZTT+fpi9ibVIKJ3dYAOZtwodKTg0ZgZVq0jOHjIfQzGlXjmIbuM
	FVT8Sk2WOwYsqjkSp5+qTHrpbVhPr+G3BgHNH0db9BdTbRf9pt2tmBC51h/rf9jQOo6p
	u3XmTxMzzyMDZHvOwZISv7WSmzATGg7He4GqR3Oc3hd7Yqr+MN7qacfKjfa9nbTXpjgV
	nmwSCjtDy+EzvIOO24QBzlQTXdUfR+JnNsX9sqqHneNtE3FtqutDYnjV6SCjCh3D++JP
	OWbuPkDdVTtWSqQDtEnfhAIqBeENpAw0rUnwnCLHDMM4wb6S7ZgHn3z1nSTs7ydStVkq
	JHmw==
X-Received: by 10.194.75.165 with SMTP id d5mr9671922wjw.18.1377520944970;
	Mon, 26 Aug 2013 05:42:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Mon, 26 Aug 2013 05:42:04 -0700 (PDT)
In-Reply-To: <521A48AA.7060802@herbrechtsmeier.net>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
	<52161E20.3010800@balister.org>
	<CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
	<52170AA1.4000602@herbrechtsmeier.net>
	<CAAGt+t0Ff3VAeZGXZv3tqB1DNgmeeBa73uAfKHbQFGLOU8tqOg@mail.gmail.com>
	<521A48AA.7060802@herbrechtsmeier.net>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 26 Aug 2013 14:42:04 +0200
Message-ID: <CAAGt+t3bC3E=MvL-=2o3ctKf3jKt0H41_JAF605nTY0Ebt2Qiw@mail.gmail.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Mon, 26 Aug 2013 12:42:32 -0000
Content-Type: multipart/alternative; boundary=047d7bb04bc298843a04e4d9163d

--047d7bb04bc298843a04e4d9163d
Content-Type: text/plain; charset=ISO-8859-1

Hi Stefan, Hi all,

My build was successful with CMake. I made some changes to my recipe:

DESCRIPTION = "cameracapture application"
SECTION = "examples"
LICENSE = "CLOSED"
PR = "r0"

DEPENDS = "opencv"

SRC_URI = "git://github.com/zafrullahsyed/cameracapture.git
;protocol=https;tag=v0.1"

S = "${WORKDIR}/git"

inherit pkgconfig cmake

do_install() {
    install -d ${D}${bindir}
    install -m 0755 cameracapture ${D}${bindir}
}

I didn't specify do_install, which caused the errors.

Your inputs helped me very much. Thanks a ton.

Regards,
Zafrullah


On Sun, Aug 25, 2013 at 8:10 PM, Stefan Herbrechtsmeier <
stefan@herbrechtsmeier.net> wrote:

>  Am 25.08.2013 17:03, schrieb Zafrullah Syed:
>
> Hi Stefan,
>
>  I updated my recipe:
>
>  DESCRIPTION = "cameracapture application"
> SECTION = "examples"
> LICENSE = "CLOSED"
> PR = "r0"
>
>  DEPENDS = "opencv"
>
>  SRC_URI = "git://github.com/zafrullahsyed/cameracapture.git
> ;protocol=https;tag=v0.1"
>
>  S = "${WORKDIR}/git"
>  inherit pkgconfig cmake
>
>  I have my source file and CMakeLists.txt as tar on github. tar is not
> getting downloaded.
>
> The tar should be in the "${WORKDIR}/git" directory but it will not work
> as you don't tell bitbake to unpack it.
>
> You repository with tag "v0.1" contains only a README.md!
>
> The common use case is to put all sources into the git repository. Why you
> want to save a tar in a git repository?
>
>
>
>  --> If I remove tar and keep just source file and CMakeLists.txt, then
> also it is not getting downloaded.
>
> Have you check the content of the
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git
> directory?
>
>
>   I am getting
>
>  CMake Error: The source directory
> "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1"
> does not appear to contain CMakeLists.txt.
>
>         ^^^
> Are you sure you have change the S variable? The error still reference the
> common directory ("${WORKDIR}/${PN}-${PV}").
>
>
>  --> I copied my CMakeLists.txt file in ${WORKDIR}/git and tried the
> build, got this following error:
>
>   ERROR: Function failed: do_configure (see
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
> for further information)
> ERROR: Logfile of failure stored in:
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing shell function do_configure
> | CMake Error at
> /home/siguser/yocto/build/tmp/sysroots/x86_64-linux/usr/share/cmake-2.8/Modules/CMakeDetermineSystem.cmake:95
> (MESSAGE):
> |   Could not find toolchain file:
> |
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/toolchain.cmake
>
> It looks as something went wrong. Please clear the old package and try
> again or increment the PR number.
> bitbake -c cleansstate cameracapture && bitbake cameracapture
>
>
>   | Call Stack (most recent call first):
>  |   CMakeLists.txt:2 (project)
> |
> |
> | CMake Error: Error required internal CMake variable not set, cmake may
> be not be built correctly.
> | Missing variable is:
> | CMAKE_C_COMPILER_ENV_VAR
> | CMake Error: Error required internal CMake variable not set, cmake may
> be not be built correctly.
> | Missing variable is:
> | CMAKE_C_COMPILER
> | CMake Error: Could not find cmake module
> file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCCompiler.cmake
> | CMake Error: Error required internal CMake variable not set, cmake may
> be not be built correctly.
> | Missing variable is:
> | CMAKE_CXX_COMPILER_ENV_VAR
> | CMake Error: Error required internal CMake variable not set, cmake may
> be not be built correctly.
> | Missing variable is:
> | CMAKE_CXX_COMPILER
> | CMake Error: Could not find cmake module
> file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCXXCompiler.cmake
> | CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage
> | CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage
> | -- Configuring incomplete, errors occurred!
> | ERROR: Function failed: do_configure (see
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
> for further information)
> ERROR: Task 6
> (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/
> cameracapture_0.1.bb, do_configure) failed with exit code '1'
>
>  Do I need to set CXX Compiler in my CMakeLists.txt?
>
> No, this are subsequent errors of the missing toolchain.cmake.
>
>
>  My CmakeLists.txt file:
>
>  cmake_minimum_required(VERSION 2.8)
> project(cameracapture)
> find_package( OpenCV REQUIRED )
> add_executable( cameracapture cameracapture.cpp )
> target_link_libraries( cameracapture ${OpenCV_LIBS} )
>
> This looks okay.
>
>


-- 
Regards,
Zafrullah Syed

--047d7bb04bc298843a04e4d9163d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefan, Hi all,<div><br></div><div>My build was success=
ful with CMake. I made some changes to my recipe:</div><div><br></div><div>=
<div>DESCRIPTION =3D &quot;cameracapture application&quot;=A0</div><div>SEC=
TION =3D &quot;examples&quot;=A0</div>

<div>LICENSE =3D &quot;CLOSED&quot;=A0</div><div>PR =3D &quot;r0&quot;=A0</=
div><div><br></div><div>DEPENDS =3D &quot;opencv&quot;</div><div><br></div>=
<div>SRC_URI =3D &quot;git://<a href=3D"http://github.com/zafrullahsyed/cam=
eracapture.git">github.com/zafrullahsyed/cameracapture.git</a>;protocol=3Dh=
ttps;tag=3Dv0.1&quot;</div>

<div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;</div><div><br></div><d=
iv>inherit pkgconfig cmake<br></div><div><br></div><div>do_install() {</div=
><div>=A0 =A0 install -d ${D}${bindir}</div><div>=A0 =A0 install -m 0755 ca=
meracapture ${D}${bindir}</div>

<div>}</div></div><div><br></div><div>I didn&#39;t specify do_install, whic=
h caused the errors.</div><div><br></div><div>Your inputs helped me very mu=
ch. Thanks a ton.</div><div><br></div><div>Regards,<br></div><div>Zafrullah=
</div>

</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun,=
 Aug 25, 2013 at 8:10 PM, Stefan Herbrechtsmeier <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:stefan@herbrechtsmeier.net" target=3D"_blank">stefan@herbrech=
tsmeier.net</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Am 25.08.2013 17:03, schrieb Zafrullah
      Syed:<br>
    </div><div class=3D"im">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Stefan,
        <div><br>
        </div>
        <div>I updated my recipe:</div>
        <div><br>
        </div>
        <div>
          <div>DESCRIPTION =3D &quot;cameracapture application&quot;=A0</di=
v>
          <div>SECTION =3D &quot;examples&quot;=A0</div>
          <div>LICENSE =3D &quot;CLOSED&quot;=A0</div>
          <div>PR =3D &quot;r0&quot;=A0</div>
          <div><br>
          </div>
          <div>DEPENDS =3D &quot;opencv&quot;<br>
          </div>
          <div><br>
          </div>
          <div>SRC_URI =3D &quot;git://<a href=3D"http://github.com/zafrull=
ahsyed/cameracapture.git" target=3D"_blank">github.com/zafrullahsyed/camera=
capture.git</a>;protocol=3Dhttps;tag=3Dv0.1&quot;<br>
          </div>
          <div><br>
          </div>
          <div>S =3D &quot;${WORKDIR}/git&quot;<br>
          </div>
          <div>inherit pkgconfig cmake<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>I have my source file and CMakeLists.txt as tar on github.
          tar is not getting downloaded.</div>
      </div>
    </blockquote></div>
    The tar should be in the &quot;${WORKDIR}/git&quot; directory but it wi=
ll not
    work as you don&#39;t tell bitbake to unpack it.<br>
    <br>
    You repository with tag &quot;v0.1&quot; contains only a README.md!<br>
    <br>
    The common use case is to put all sources into the git repository.
    Why you want to save a tar in a git repository?<div class=3D"im"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>--&gt; If I remove tar and keep just source file and
          CMakeLists.txt, then also it is not getting downloaded.</div>
      </div>
    </blockquote></div>
    Have you check the content of the
    /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/c=
ameracapture-0.1-r0/git
    directory?<div class=3D"im"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div> I am getting=A0</div>
        <div><br>
        </div>
        <div>CMake Error: The source directory
          &quot;/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1&quot;
          does not appear to contain CMakeLists.txt.</div>
      </div>
    </blockquote></div>
    =A0=A0=A0=A0=A0=A0=A0 ^^^<br>
    Are you sure you have change the S variable? The error still
    reference the common directory (&quot;${WORKDIR}/${PN}-${PV}&quot;).
    <div class=3D"im"><blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>--&gt; I copied my CMakeLists.txt file in ${WORKDIR}/git
          and tried the build, got this following error:</div>
        <div><br>
        </div>
        <div>
          <div>
            <div>ERROR: Function failed: do_configure (see
              /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux=
-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
              for further information)</div>
            <div>ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/temp/log.do_configure.10784</div>
            <div>Log data follows:</div>
            <div>| DEBUG: Executing python function sysroot_cleansstate</di=
v>
            <div>| DEBUG: Python function sysroot_cleansstate finished</div=
>
            <div>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&=
#39;,
              &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-gli=
bc&#39;, &#39;arm-linux&#39;,
              &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</div>
            <div>| DEBUG: Executing shell function
              autotools_preconfigure</div>
            <div>| DEBUG: Shell function autotools_preconfigure finished</d=
iv>
            <div>| DEBUG: Executing shell function do_configure</div>
            <div>| CMake Error at
              /home/siguser/yocto/build/tmp/sysroots/x86_64-linux/usr/share=
/cmake-2.8/Modules/CMakeDetermineSystem.cmake:95
              (MESSAGE):</div>
            <div>| =A0 Could not find toolchain file:</div>
            <div>| =A0
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/toolchain.cmake</div>
          </div>
        </div>
      </div>
    </blockquote></div>
    It looks as something went wrong. Please clear the old package and
    try again or increment the PR number.<br>
    bitbake -c cleansstate cameracapture &amp;&amp; bitbake
    cameracapture<div class=3D"im"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>| Call Stack (most recent call first):</div>
            <div>
              | =A0 CMakeLists.txt:2 (project)</div>
            <div>|=A0</div>
            <div>|=A0</div>
            <div>| CMake Error: Error required internal CMake variable
              not set, cmake may be not be built correctly.</div>
            <div>| Missing variable is:</div>
            <div>| CMAKE_C_COMPILER_ENV_VAR</div>
            <div>| CMake Error: Error required internal CMake variable
              not set, cmake may be not be built correctly.</div>
            <div>| Missing variable is:</div>
            <div>| CMAKE_C_COMPILER</div>
            <div>| CMake Error: Could not find cmake module
<a>file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCCompiler.cmake</a></div>
            <div>| CMake Error: Error required internal CMake variable
              not set, cmake may be not be built correctly.</div>
            <div>| Missing variable is:</div>
            <div>| CMAKE_CXX_COMPILER_ENV_VAR</div>
            <div>| CMake Error: Error required internal CMake variable
              not set, cmake may be not be built correctly.</div>
            <div>| Missing variable is:</div>
            <div>| CMAKE_CXX_COMPILER</div>
            <div>| CMake Error: Could not find cmake module
<a>file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCXXCompiler.cmake</a></div>
            <div>| CMake Error: CMAKE_C_COMPILER not set, after
              EnableLanguage</div>
            <div>| CMake Error: CMAKE_CXX_COMPILER not set, after
              EnableLanguage</div>
            <div>| -- Configuring incomplete, errors occurred!</div>
            <div>| ERROR: Function failed: do_configure (see
              /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux=
-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
              for further information)</div>
            <div>ERROR: Task 6
              (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapt=
ure/<a href=3D"http://cameracapture_0.1.bb" target=3D"_blank">cameracapture=
_0.1.bb</a>,
              do_configure) failed with exit code &#39;1&#39;</div>
          </div>
        </div>
        <div><br>
        </div>
        <div>Do I need to set CXX Compiler in my CMakeLists.txt?</div>
      </div>
    </blockquote></div>
    No, this are subsequent errors of the missing toolchain.cmake.<div clas=
s=3D"im"><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">My CmakeLists.txt file:
        <div><br>
        </div>
        <div>
          <div>cmake_minimum_required(VERSION 2.8)</div>
          <div>project(cameracapture)</div>
          <div>find_package( OpenCV REQUIRED )</div>
          <div>add_executable( cameracapture cameracapture.cpp )</div>
          <div>target_link_libraries( cameracapture ${OpenCV_LIBS} )</div>
        </div>
      </div>
    </blockquote></div>
    This looks okay.<br>
    <br>
  </div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div>

--047d7bb04bc298843a04e4d9163d--
