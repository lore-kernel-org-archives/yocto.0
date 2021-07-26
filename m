Subject: Re: Recipe dependent on Debian package - How should I approach? #debian #yocto
To: yocto@lists.yoctoproject.org
From: "Mitch Gaines" <gainesmitch2@gmail.com>
X-Originating-Location: Billerica, Massachusetts, US (71.174.61.89)
X-Originating-Platform: Linux Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Jul 2021 07:07:17 -0700
References: <CADa-vC0G7_-YqCpEm_UQZLDX3Gwz-mffZG9OuZhRz1J_UEQp1w@mail.gmail.com>
In-Reply-To: <CADa-vC0G7_-YqCpEm_UQZLDX3Gwz-mffZG9OuZhRz1J_UEQp1w@mail.gmail.com>
Message-ID: <24004.1627308437391399679@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AdcvMMiWNdofum4GhKVM"

--AdcvMMiWNdofum4GhKVM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So, that is something I already have. What I really need are the systemd he=
ader files in order to build my recipe. Looks like the log output didn't fo=
rmat well. Let me re-post that below with some better formatting and you'll=
 see what I'm referring to. How can I get those header files to build with =
my project? I thought just adding it as a DEPENDS would do it, but that doe=
sn't seem to be the case.

NOTE: Executing Tasks
ERROR: <recipe-name> do_compile: oe_runmake failed
ERROR: <recipe-name> do_compile: Execution of '/home/mitch/bin/yocto/proje=
ct-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+=
gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1:
make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/=
work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/=
git/src/core'
CC file-name.c
../file-name.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
   6 | #include <systemd/sd-daemon.h>
     |          ^~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [Makefile:93: build/file-name.o] Error 1
make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp/w=
ork/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/g=
it/src/core'
make: *** [Makefile:72: some-recipe] Error 2
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/mitch/bin/yocto/project-name/bu=
ild/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC=
+...-r0/temp/log.do_compile.13271
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 24 my-project
| make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
| CC my-file.c
| ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
|     6 | #include <systemd/sd-daemon.h>
|       |          ^~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:93: build/my-file.o] Error 1
| make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0=
/git/src/core'
| make: *** [Makefile:72: my-project] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/mitch/bin/yocto/project-name/build/tmp/work/a=
rmv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/r=
un.do_compile.13271' failed with exit code 1:
| make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
| CC my-file.c
| ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
|     6 | #include <systemd/sd-daemon.h>
|       |          ^~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:93: build/my-file.o] Error 1
| make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0=
/git/src/core'
| make: *** [Makefile:72: my-recipe] Error 2
| WARNING: exit code 1 from a shell command.
|=20
ERROR: Task (/home/mitch/bin/yocto/project-name/layers/meta-project/recipe=
s-main/my-recipe/my-recipe_git.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2166 tasks of which 2163 didn't need to be =
rerun and 1 failed.

--AdcvMMiWNdofum4GhKVM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"caret-color: #000000; color: #000000; font-family: arial, he=
lvetica, sans-serif; font-size: 10pt; -webkit-tap-highlight-color: rgba(0, =
0, 0, 0.4);">So, that is something I already have. What I really need are t=
he systemd header files in order to build my recipe. Looks like the log out=
put didn't format well. Let me re-post that below with some better formatti=
ng and you'll see what I'm referring to. How can I get those header files t=
o build with my project? I thought just adding it as a DEPENDS would do it,=
 but that doesn't seem to be the case.<br /></span><br style=3D"caret-color=
: #000000; color: #000000; font-family: -webkit-standard; -webkit-tap-highl=
ight-color: rgba(0, 0, 0, 0.4);" />
<pre style=3D"caret-color: #000000; color: var(--highlight-color); -webkit=
-tap-highlight-color: rgba(0, 0, 0, 0.4); margin-bottom: calc(var(--s-prose=
-spacing) + 0.4em); padding: 12px; font-variant-numeric: inherit; font-vari=
ant-east-asian: inherit; font-stretch: inherit; line-height: 1.30769; font-=
family: var(--ff-mono); vertical-align: baseline; box-sizing: inherit; widt=
h: auto; max-height: 600px; background-color: var(--highlight-bg); border-r=
adius: 5px; overflow-wrap: normal;"><code style=3D"margin: 0px; border: 0px=
; font-style: inherit; font-variant-ligatures: inherit; font-variant-positi=
on: inherit; font-variant-caps: inherit; font-variant-numeric: inherit; fon=
t-variant-alternates: inherit; font-variant-east-asian: inherit; font-weigh=
t: inherit; font-stretch: inherit; line-height: inherit; font-family: var(-=
-ff-mono); font-size: 13px; vertical-align: baseline; box-sizing: inherit; =
white-space: inherit;">NOTE: Executing Tasks
ERROR: &lt;recipe-name&gt; do_compile: oe_runmake failed
ERROR: &lt;recipe-name&gt; do_compile: Execution of '/home/mitch/bin/yocto=
/project-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-nam=
e/1.0+gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1:
make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/=
work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/=
git/src/core'
CC file-name.c
../file-name.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
    6 | #include &lt;systemd/sd-daemon.h&gt;
      |          ^~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [Makefile:93: build/file-name.o] Error 1
make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp/w=
ork/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/g=
it/src/core'
make: *** [Makefile:72: some-recipe] Error 2
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/mitch/bin/yocto/project-name/bu=
ild/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC=
+...-r0/temp/log.do_compile.13271
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 24 my-project
| make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
| CC my-file.c
| ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
|     6 | #include &lt;systemd/sd-daemon.h&gt;
|       |          ^~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:93: build/my-file.o] Error 1
| make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0=
/git/src/core'
| make: *** [Makefile:72: my-project] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/mitch/bin/yocto/project-name/build/tmp/work/a=
rmv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/r=
un.do_compile.13271' failed with exit code 1:
| make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
| CC my-file.c
| ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or dir=
ectory
|     6 | #include &lt;systemd/sd-daemon.h&gt;
|       |          ^~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| make[1]: *** [Makefile:93: build/my-file.o] Error 1
| make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0=
/git/src/core'
| make: *** [Makefile:72: my-recipe] Error 2
| WARNING: exit code 1 from a shell command.
|=20
ERROR: Task (/home/mitch/bin/yocto/project-name/layers/meta-project/recipe=
s-main/my-recipe/my-recipe_git.bb:do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2166 tasks of which 2163 didn't need to be =
rerun and 1 failed.</code></pre>

--AdcvMMiWNdofum4GhKVM--
