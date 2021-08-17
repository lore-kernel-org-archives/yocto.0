Subject: Getting bitbake error after 54% recipes are baked. #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: vishal.rana118@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (106.51.234.10)
X-Originating-Platform: Windows Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Aug 2021 08:38:11 -0700
Message-ID: <YBth.1629214691621384185.kqQR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="n9blXK9m209ik3lOIuOc"

--n9blXK9m209ik3lOIuOc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using *ubuntu 16.04* (host) in VirtualBox.

Memory allocated to VM machine is 100+ GB.

Poky *dunfell*.

While trying to build the project fo *r x86_64.*

Steps followed as per yocto quick guide for "dunfell"

////////////////////////////// ////////////////////////////// ////////////

after baking 54% of recipe I am getting error.

////////////////////////////// ////////////////////////////// /////////////=
///////////

| /home/vrana/Desktop/yocto_ Practice/build/tmp/work/core2- 64-poky-linux/g=
cc/9.3.0-r0/ recipe-sysroot-native/usr/bin/ x86_64-poky-linux/../../ libexe=
c/x86_64-poky-linux/gcc/ x86_64-poky-linux/9.3.0/as: out of memory allocati=
ng 4064 bytes after a total of 452272128 bytes

| Makefile:1117: recipe for target 'insn-emit.o' failed

| make[1]: *** [insn-emit.o] Error 2

| make[1]: *** Waiting for unfinished jobs....

| rm gcc.pod

| make[1]: Leaving directory '/home/vrana/Desktop/yocto_ Practice/build/tmp=
/work/core2- 64-poky-linux/gcc/9.3.0-r0/ gcc-9.3.0/build.x86_64-poky- linux=
.x86_64-poky-linux/gcc'

| Makefile:4328: recipe for target 'all-gcc' failed

| make: *** [all-gcc] Error 2

| WARNING: exit code 1 from a shell command.

|

ERROR: Task (/home/vrana/Desktop/yocto_ Practice/source/poky/meta/ recipes-=
devtools/gcc/gcc_9.3. bb:do_compile) failed with exit code '1'

NOTE: Tasks Summary: Attempted 1832 tasks of which 0 didn't need to be reru=
n and 1 failed.

Summary: 1 task failed:

/home/vrana/Desktop/yocto_ Practice/source/poky/meta/ recipes-devtools/gcc/=
gcc_9.3. bb:do_compile

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

////////////////////////////// //////////////////////////////

looking for guidance.

Regards,

--n9blXK9m209ik3lOIuOc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"font-size: 13px; margin-bottom: 0px; padding: 0px; max-width: 6=
0rem; color: #1c1d1f; font-family: 'sf pro text', -apple-system, BlinkMacSy=
stemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-serif, 'apple color em=
oji', 'segoe ui emoji', 'segoe ui symbol';">Hi,</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">I am using<=
strong> ubuntu 16.04</strong> (host) in VirtualBox.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Memory allo=
cated to VM machine is 100+ GB.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Poky<strong=
> dunfell</strong>.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">While tryin=
g to build the project fo<strong>r x86_64.</strong></p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Steps follo=
wed as per yocto quick guide for "dunfell"</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">///////////=
///////////////////<wbr />//////////////////////////////<wbr />////////////=
</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">after bakin=
g 54% of recipe I am getting error.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">///////////=
///////////////////<wbr />//////////////////////////////<wbr />////////////=
////////////</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| /home/vra=
na/Desktop/yocto_<wbr />Practice/build/tmp/work/core2-<wbr />64-poky-linux/=
gcc/9.3.0-r0/<wbr />recipe-sysroot-native/usr/bin/<wbr />x86_64-poky-linux/=
../../<wbr />libexec/x86_64-poky-linux/gcc/<wbr />x86_64-poky-linux/9.3.0/a=
s: out of memory allocating 4064 bytes after a total of 452272128 bytes</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| Makefile:=
1117: recipe for target 'insn-emit.o' failed</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| make[1]: =
*** [insn-emit.o] Error 2</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| make[1]: =
*** Waiting for unfinished jobs....</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| rm gcc.po=
d</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| make[1]: =
Leaving directory '/home/vrana/Desktop/yocto_<wbr />Practice/build/tmp/work=
/core2-<wbr />64-poky-linux/gcc/9.3.0-r0/<wbr />gcc-9.3.0/build.x86_64-poky=
-<wbr />linux.x86_64-poky-linux/gcc'</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| Makefile:=
4328: recipe for target 'all-gcc' failed</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| make: ***=
 [all-gcc] Error 2</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">| WARNING: =
exit code 1 from a shell command.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">|</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">ERROR: Task=
 (/home/vrana/Desktop/yocto_<wbr />Practice/source/poky/meta/<wbr />recipes=
-devtools/gcc/gcc_9.3.<wbr />bb:do_compile) failed with exit code '1'</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">NOTE: Tasks=
 Summary: Attempted 1832 tasks of which 0 didn't need to be rerun and 1 fai=
led.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Summary: 1 =
task failed:</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">&nbsp; /hom=
e/vrana/Desktop/yocto_<wbr />Practice/source/poky/meta/<wbr />recipes-devto=
ols/gcc/gcc_9.3.<wbr />bb:do_compile</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Summary: Th=
ere were 2 ERROR messages shown, returning a non-zero exit code.&nbsp;</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">&nbsp;</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">///////////=
///////////////////<wbr />//////////////////////////////</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">looking for=
 guidance.</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">&nbsp;</p>
<p style=3D"font-size: 13px; margin-top: 0.8rem; margin-bottom: 0px; paddin=
g: 0px; max-width: 60rem; color: #1c1d1f; font-family: 'sf pro text', -appl=
e-system, BlinkMacSystemFont, Roboto, 'segoe ui', Helvetica, Arial, sans-se=
rif, 'apple color emoji', 'segoe ui emoji', 'segoe ui symbol';">Regards,</p=
>

--n9blXK9m209ik3lOIuOc--
