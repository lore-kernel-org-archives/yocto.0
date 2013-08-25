Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BBEEE003FB
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2013 08:03:29 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id t58so2009666wes.10
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2013 08:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qcR/Jg2aGLoGLaek6fSvwTqhWC2RcbJEQ6iRqVI0rNU=;
	b=TsKWknxHZ3p7zZuDTKul8E6bgZuR2V2hbqZY+f7uQjGaQ2UWUKtmXj0t3T3mNNwwhU
	q2dRfTCF9HLTTYLVvQAHg2EHEbwVC/pveECdXWuYAtUPKMQe/FFVFXAUG31iMs/Pgj7X
	vUkWHckXTw1RPUgbvDpVdhgZGc4r6YbtMILs7KlAvoF1giaLJx3CQtrqp2qZBpvqW5E9
	VnZKdEnrgR7c1Gpxd3BA0fIxqEjM8SXgqotBQ2YllXcS37jmzelkLdsBd3CetgwfNNI8
	pnLXi1lP6gsQBgG76TYmcv6fGlrXwCgenwg9zvW7GC+3AunjIeRuuvHQAdyiuYgB3be4
	Fjhw==
X-Received: by 10.180.80.229 with SMTP id u5mr4536702wix.59.1377443008063;
	Sun, 25 Aug 2013 08:03:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Sun, 25 Aug 2013 08:03:08 -0700 (PDT)
In-Reply-To: <52170AA1.4000602@herbrechtsmeier.net>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
	<52161E20.3010800@balister.org>
	<CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
	<52170AA1.4000602@herbrechtsmeier.net>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Sun, 25 Aug 2013 17:03:08 +0200
Message-ID: <CAAGt+t0Ff3VAeZGXZv3tqB1DNgmeeBa73uAfKHbQFGLOU8tqOg@mail.gmail.com>
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
X-List-Received-Date: Sun, 25 Aug 2013 15:03:34 -0000
Content-Type: multipart/alternative; boundary=f46d04428e4031af7b04e4c6f173

--f46d04428e4031af7b04e4c6f173
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

I updated my recipe:

DESCRIPTION =3D "cameracapture application"
SECTION =3D "examples"
LICENSE =3D "CLOSED"
PR =3D "r0"

DEPENDS =3D "opencv"

SRC_URI =3D "git://github.com/zafrullahsyed/cameracapture.git
;protocol=3Dhttps;tag=3Dv0.1"

S =3D "${WORKDIR}/git"
inherit pkgconfig cmake

I have my source file and CMakeLists.txt as tar on github. tar is not
getting downloaded.

--> If I remove tar and keep just source file and CMakeLists.txt, then also
it is not getting downloaded. I am getting

CMake Error: The source directory
"/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/came=
racapture-0.1-r0/cameracapture-0.1"
does not appear to contain CMakeLists.txt.

--> I copied my CMakeLists.txt file in ${WORKDIR}/git and tried the build,
got this following error:

ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/temp/log.do_configure.10784
for further information)
ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/temp/log.do_configure.10784
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| CMake Error at
/home/siguser/yocto/build/tmp/sysroots/x86_64-linux/usr/share/cmake-2.8/Mod=
ules/CMakeDetermineSystem.cmake:95
(MESSAGE):
|   Could not find toolchain file:
|
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/toolchain.cmake
| Call Stack (most recent call first):
|   CMakeLists.txt:2 (project)
|
|
| CMake Error: Error required internal CMake variable not set, cmake may be
not be built correctly.
| Missing variable is:
| CMAKE_C_COMPILER_ENV_VAR
| CMake Error: Error required internal CMake variable not set, cmake may be
not be built correctly.
| Missing variable is:
| CMAKE_C_COMPILER
| CMake Error: Could not find cmake module
file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/=
cameracapture-0.1-r0/git/CMakeFiles/CMakeCCompiler.cmake
| CMake Error: Error required internal CMake variable not set, cmake may be
not be built correctly.
| Missing variable is:
| CMAKE_CXX_COMPILER_ENV_VAR
| CMake Error: Error required internal CMake variable not set, cmake may be
not be built correctly.
| Missing variable is:
| CMAKE_CXX_COMPILER
| CMake Error: Could not find cmake module
file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/=
cameracapture-0.1-r0/git/CMakeFiles/CMakeCXXCompiler.cmake
| CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage
| CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage
| -- Configuring incomplete, errors occurred!
| ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/temp/log.do_configure.10784
for further information)
ERROR: Task 6
(/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/
cameracapture_0.1.bb, do_configure) failed with exit code '1'

Do I need to set CXX Compiler in my CMakeLists.txt?

My CmakeLists.txt file:

cmake_minimum_required(VERSION 2.8)
project(cameracapture)
find_package( OpenCV REQUIRED )
add_executable( cameracapture cameracapture.cpp )
target_link_libraries( cameracapture ${OpenCV_LIBS} )

Can you please give me some inputs?

Thanks & Regards,

Zafrullah
Universit=E4t Paderborn.


On Fri, Aug 23, 2013 at 9:09 AM, Stefan Herbrechtsmeier <
stefan@herbrechtsmeier.net> wrote:

>  Am 22.08.2013 20:13, schrieb Zafrullah Syed:
>
> Hi all,
>
>  I am newbie and I am learning stuff.
>
>  I have a c++ code and CMakeLists.txt on Github which needs to be run
> with Cmake. I am trying to get that code embed into my build using my own
> recipe. This is my first experience with Cmake. I have no clue what shoul=
d
> I write in my recipe.
>
>  My recipe is as follows:
>
>  DESCRIPTION =3D "cameracapture application"
> SECTION =3D "examples"
> LICENSE =3D "CLOSED"
> PR =3D "r0"
>
>  DEPENDS +=3D "opencv"
> inherit cmake pkgconfig
>
>  SRC_URI =3D "git://
> github.com/zafrullahsyed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1"
>
>  do_configure() {
>     ${BUILD_CXX} cameracapture.cpp -o cameracapture
>     }
>
> Why you want to compile something during configure? Remove this function.
>
>
>  EXTRA_OECMAKE=3D""
>
> You don't need this if you don't need to pass additional definitions to
> cmake.
>
>
>
>  I know this recipe is wrong, I looked up many other recipes that use
> Cmake
>
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connec=
tivity/gnuradio/gnuradio_git.bb
>
>  each of them have their own parameters and functions.
>
>  Everytime I build my system I get this error:
>
>  ERROR: Function failed: do_configure (see
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410
> for further information)
> ERROR: Logfile of failure stored in:
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing shell function do_configure
> | CMake Error: The source directory
> "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/ca=
meracapture-0.1-r0/cameracapture-0.1"
> does not appear to contain CMakeLists.txt.
>
> Are you sure this directory exists and contain the CMakeLists.txt file?
> Maybe you have to adjust the S variable to point to the directory of your
> source code.
>
>
>   | Specify --help for usage, or press the help button on the CMake GUI.
> | ERROR: Function failed: do_configure (see
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410
> for further information)
> ERROR: Task 579
> (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/
> cameracapture_0.1.bb, do_configure) failed with exit code '1'
>
>  I have no clue what I should write in my recipe file. Yocto doesn't have
> any tutorial for this.
>
>  Can anyone give some hints where I am doing wrong or what should be
> included in my recipe?
>
> You can take a look at one of my simple recipes:
>
> http://opensource.cit-ec.de/projects/meta-openrobotix/repository/revision=
s/master/entry/recipes-connectivity/rsb/rsb_git.bb
>
>


--=20
Regards,
Zafrullah Syed

--f46d04428e4031af7b04e4c6f173
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefan,<div><br></div><div>I updated my recipe:</div><d=
iv><br></div><div><div>DESCRIPTION =3D &quot;cameracapture application&quot=
;=A0</div><div>SECTION =3D &quot;examples&quot;=A0</div><div>LICENSE =3D &q=
uot;CLOSED&quot;=A0</div>



<div>PR =3D &quot;r0&quot;=A0</div><div><br></div><div>DEPENDS =3D &quot;op=
encv&quot;<br></div><div><br></div><div>SRC_URI =3D &quot;git://<a href=3D"=
http://github.com/zafrullahsyed/cameracapture.git" target=3D"_blank">github=
.com/zafrullahsyed/cameracapture.git</a>;protocol=3Dhttps;tag=3Dv0.1&quot;<=
br>



</div><div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;<br></div><div>in=
herit pkgconfig cmake<br></div></div><div><br></div><div>I have my source f=
ile and CMakeLists.txt as tar on github. tar is not getting downloaded.</di=
v>


<div><br></div><div>--&gt; If I remove tar and keep just source file and CM=
akeLists.txt, then also it is not getting downloaded. I am getting=A0</div>=
<div><br></div><div>CMake Error: The source directory &quot;/home/siguser/y=
octo/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0=
/cameracapture-0.1&quot; does not appear to contain CMakeLists.txt.</div>


<div><br></div><div>--&gt; I copied my CMakeLists.txt file in ${WORKDIR}/gi=
t and tried the build, got this following error:</div><div><br></div><div><=
div><div>ERROR: Function failed: do_configure (see /home/siguser/yocto/buil=
d/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log=
.do_configure.10784 for further information)</div>


<div>ERROR: Logfile of failure stored in: /home/siguser/yocto/build/tmp/wor=
k/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_confi=
gure.10784</div><div>Log data follows:</div><div>| DEBUG: Executing python =
function sysroot_cleansstate</div>


<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#=
39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &=
#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</div>


<div>| DEBUG: Executing shell function autotools_preconfigure</div><div>| D=
EBUG: Shell function autotools_preconfigure finished</div><div>| DEBUG: Exe=
cuting shell function do_configure</div><div>| CMake Error at /home/siguser=
/yocto/build/tmp/sysroots/x86_64-linux/usr/share/cmake-2.8/Modules/CMakeDet=
ermineSystem.cmake:95 (MESSAGE):</div>


<div>| =A0 Could not find toolchain file:</div><div>| =A0 /home/siguser/yoc=
to/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/t=
oolchain.cmake</div><div>| Call Stack (most recent call first):</div><div>

| =A0 CMakeLists.txt:2 (project)</div>
<div>|=A0</div><div>|=A0</div><div>| CMake Error: Error required internal C=
Make variable not set, cmake may be not be built correctly.</div><div>| Mis=
sing variable is:</div><div>| CMAKE_C_COMPILER_ENV_VAR</div><div>| CMake Er=
ror: Error required internal CMake variable not set, cmake may be not be bu=
ilt correctly.</div>


<div>| Missing variable is:</div><div>| CMAKE_C_COMPILER</div><div>| CMake =
Error: Could not find cmake module file:/home/siguser/yocto/build/tmp/work/=
armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMak=
eCCompiler.cmake</div>


<div>| CMake Error: Error required internal CMake variable not set, cmake m=
ay be not be built correctly.</div><div>| Missing variable is:</div><div>| =
CMAKE_CXX_COMPILER_ENV_VAR</div><div>| CMake Error: Error required internal=
 CMake variable not set, cmake may be not be built correctly.</div>


<div>| Missing variable is:</div><div>| CMAKE_CXX_COMPILER</div><div>| CMak=
e Error: Could not find cmake module file:/home/siguser/yocto/build/tmp/wor=
k/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CM=
akeCXXCompiler.cmake</div>


<div>| CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage</div><di=
v>| CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage</div><div=
>| -- Configuring incomplete, errors occurred!</div><div>| ERROR: Function =
failed: do_configure (see /home/siguser/yocto/build/tmp/work/armv7a-vfp-neo=
n-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784 for f=
urther information)</div>


<div>ERROR: Task 6 (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/camer=
acapture/<a href=3D"http://cameracapture_0.1.bb" target=3D"_blank">cameraca=
pture_0.1.bb</a>, do_configure) failed with exit code &#39;1&#39;</div></di=
v>

</div><div><br>
</div><div>Do I need to set CXX Compiler in my CMakeLists.txt?=A0</div>
<div><br></div><div>My CmakeLists.txt file:</div><div><br></div><div><div>c=
make_minimum_required(VERSION 2.8)</div><div>project(cameracapture)</div><d=
iv>find_package( OpenCV REQUIRED )</div><div>add_executable( cameracapture =
cameracapture.cpp )</div>


<div>target_link_libraries( cameracapture ${OpenCV_LIBS} )</div></div><div>=
<br></div><div>Can you please give me some inputs?</div><div><br></div><div=
>Thanks &amp; Regards,</div><div><br></div><div>Zafrullah</div><div>Univers=
it=E4t Paderborn.</div>

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Aug 2=
3, 2013 at 9:09 AM, Stefan Herbrechtsmeier <span dir=3D"ltr">&lt;<a href=3D=
"mailto:stefan@herbrechtsmeier.net" target=3D"_blank">stefan@herbrechtsmeie=
r.net</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Am 22.08.2013 20:13, schrieb Zafrullah
      Syed:<br>
    </div><div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi all,
        <div><br>
        </div>
        <div>I am newbie and I am learning stuff.</div>
        <div><br>
        </div>
        <div>I have a c++ code and CMakeLists.txt on Github which needs
          to be run with Cmake. I am trying to get that code embed into
          my build using my own recipe. This is my first experience with
          Cmake. I have no clue what should I write in my recipe.</div>
        <div><br>
        </div>
        <div>My recipe is as follows:</div>
        <div><br>
        </div>
        <div>DESCRIPTION =3D &quot;cameracapture application&quot;=A0</div>
        <div>SECTION =3D &quot;examples&quot;=A0</div>
        <div>LICENSE =3D &quot;CLOSED&quot;=A0</div>
        <div>PR =3D &quot;r0&quot;=A0</div>
        <div><br>
        </div>
        <div>DEPENDS +=3D &quot;opencv&quot;</div>
        <div>inherit cmake pkgconfig</div>
        <div><br>
        </div>
        <div>SRC_URI =3D &quot;git://<a href=3D"http://github.com/zafrullah=
syed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1" target=3D"_blank">githu=
b.com/zafrullahsyed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1</a>&quot;=
</div>
        <div><br>
        </div>
        <div>do_configure() {</div>
        <div>=A0 =A0 ${BUILD_CXX} cameracapture.cpp -o cameracapture</div>
        <div>=A0 =A0 }</div>
      </div>
    </blockquote></div>
    Why you want to compile something during configure? Remove this
    function.<br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>EXTRA_OECMAKE=3D&quot;&quot; <br>
        </div>
      </div>
    </blockquote>
    You don&#39;t need this if you don&#39;t need to pass additional defini=
tions
    to cmake.<div><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I know this recipe is wrong, I looked up many other recipes
          that use Cmake</div>
        <div><a href=3D"http://git.openembedded.org/meta-openembedded/tree/=
meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb" target=3D"_blank">ht=
tp://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivi=
ty/gnuradio/gnuradio_git.bb</a><br>



        </div>
        <div><br>
        </div>
        <div>each of them have their own parameters and functions.<br>
        </div>
        <div><br>
        </div>
        <div>Everytime I build my system I get this error:<br>
        </div>
        <div><br>
        </div>
        <div>
          <div>ERROR: Function failed: do_configure (see
            /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-g=
nueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
            for further information)</div>
          <div>ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer=
acapture-0.1-r0/temp/log.do_configure.1410</div>
          <div>Log data follows:</div>
          <div>| DEBUG: Executing python function sysroot_cleansstate</div>
          <div>| DEBUG: Python function sysroot_cleansstate finished</div>
          <div>| DEBUG: SITE files [&#39;endian-little&#39;, &#39;bit-32&#3=
9;,
            &#39;arm-common&#39;, &#39;common-linux&#39;, &#39;common-glibc=
&#39;, &#39;arm-linux&#39;,
            &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</div>
          <div>| DEBUG: Executing shell function autotools_preconfigure</di=
v>
          <div>| DEBUG: Shell function autotools_preconfigure finished</div=
>
          <div>| DEBUG: Executing shell function do_configure</div>
          <div>| CMake Error: The source directory
            &quot;/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-l=
inux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1&quot;
            does not appear to contain CMakeLists.txt.</div>
        </div>
      </div>
    </blockquote></div>
    Are you sure this directory exists and contain the CMakeLists.txt
    file? Maybe you have to adjust the S variable to point to the
    directory of your source code.<div><br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>| Specify --help for usage, or press the help button on
            the CMake GUI.</div>
          <div>| ERROR: Function failed: do_configure (see
            /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-g=
nueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
            for further information)</div>
          <div>ERROR: Task 579
            (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracaptur=
e/<a href=3D"http://cameracapture_0.1.bb" target=3D"_blank">cameracapture_0=
.1.bb</a>,
            do_configure) failed with exit code &#39;1&#39;</div>
        </div>
        <div><br>
        </div>
        <div>I have no clue what I should write in my recipe file. Yocto
          doesn&#39;t have any tutorial for this.</div>
        <div><br>
        </div>
        <div>Can anyone give some hints where I am doing wrong or what
          should be included in my recipe?</div>
      </div>
    </blockquote></div>
    You can take a look at one of my simple recipes:<br>
<a href=3D"http://opensource.cit-ec.de/projects/meta-openrobotix/repository=
/revisions/master/entry/recipes-connectivity/rsb/rsb_git.bb" target=3D"_bla=
nk">http://opensource.cit-ec.de/projects/meta-openrobotix/repository/revisi=
ons/master/entry/recipes-connectivity/rsb/rsb_git.bb</a><br>



    <br>
  </div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>


</span></font></div>
</div></div>

--f46d04428e4031af7b04e4c6f173--
