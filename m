Subject: Qtwebengine recipe in yocto zeus (latest version) #yocto #zeus #qt
To: yocto@lists.yoctoproject.org
From: anthony.marchand@navocap.com
X-Originating-Location: Suresnes, Île-de-France, FR (159.180.227.154)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Nov 2020 08:29:08 -0800
Message-ID: <OqRF.1605198548382378294.0Na5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7NwGgeMzAWOtjEH4JmGA"

--7NwGgeMzAWOtjEH4JmGA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello.
I hope you're going well in this period.
I'm working with yocto (zeus version) with a soc i.MX6 and kernel 4.19. Ac=
tually, I meet a weird issue about the recipe "qtwebengine" in all of my pr=
ojects that are using zeus version.
The compilation was working fine until there, but since approximatively tw=
o weeks, with no particular reason, whatever the project I want to compile,=
 I'm unable to compile qtwebengine and making a rootfs image with it inside=
.

So I have tested:

1) bitbake qtwebengine
2) bitbake myimage

PS: myimage contain the recipe qtwebengine.

But whatever the bitbake commands 1 or 2, Bitbake shows me the same error =
I don't understand and this error follows:

--------------------------------------------------------------------------=
---------
| In file included from /usr/include/bits/errno.h:26:0,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/errno.h:28,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/cerrno:42,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/ext/string_conversi=
ons.h:44,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/bits/basic_string.h=
:6361,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/string:52,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/stdexcept:39,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/array:39,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/tuple:39,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/bits/unique_ptr.h:3=
7,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /usr/include/c++/7/memory:80,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../../../../git/src/3rdparty/chromium/=
v8/src/torque/cfg.h:9,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ./../../../../git/src/3rdparty/chromiu=
m/v8/src/torque/cfg.cc:5,
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from v8_snapshot/gen/v8/torque_base_jumbo_1=
.cc:5:
| /usr/include/linux/errno.h:1:10: fatal error: asm/errno.h: No such file =
or directory
|=C2=A0 #include <asm/errno.h>
|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~=
~
| compilation terminated.
...
| Makefile.gn_run:340: recipe for target 'run_ninja' failed
| make[3]: *** [run_ninja] Error 1
| make[3]: Leaving directory '/home/yocto/Dev/build_zeus/tmp/work/cortexa9=
t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a=
0_8a28c0bb19-r0/build/src/core'
| Makefile:82: recipe for target 'sub-gn_run-pro-make_first' failed
| make[2]: *** [sub-gn_run-pro-make_first] Error 2
| make[2]: Leaving directory '/home/yocto/Dev/build_zeus/tmp/work/cortexa9=
t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a=
0_8a28c0bb19-r0/build/src/core'
| Makefile:76: recipe for target 'sub-core-make_first' failed
| make[1]: *** [sub-core-make_first] Error 2
| make[1]: Leaving directory '/home/yocto/Dev/build_zeus/tmp/work/cortexa9=
t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a=
0_8a28c0bb19-r0/build/src'
| Makefile:48: recipe for target 'sub-src-make_first' failed
| make: *** [sub-src-make_first] Error 2
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/yocto/Dev/build_zeus/../meta-qt5/recipes-qt/qt5/qtweben=
gine_git.bb:do_compile) failed with exit code '1'
--------------------------------------------------------------------------=
---------

I don't understand why bitbake don't find '<asm/errno.h>', because it is p=
resent in the kernel 4.19 and in my host system ubuntu 18. Furthermore, I d=
on't understand the problem with run_ninja.

I try to change my PC for compilation, but I have got the same error. The =
PC I use to compile with bitbake got 20 cores intel xeon and 32GB of ram. I=
 think the problem is not from here. :-)

Does someone already meet this problem?

Does someone know where could be the problem?

Thanks for all and best reguards: Anthony.

--7NwGgeMzAWOtjEH4JmGA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello.<br />I hope you're going well in this period.<br />I'm working with =
yocto (zeus version) with a soc i.MX6 and kernel 4.19. Actually, I meet a w=
eird issue about the recipe "qtwebengine" in all of my projects that are us=
ing zeus version.<br />The compilation was working fine until there, but si=
nce approximatively two weeks, with no particular reason, whatever the proj=
ect I want to compile, I'm unable to compile qtwebengine and making a rootf=
s image with it inside.<br /><br />So I have tested:<br /><br />1) bitbake =
qtwebengine<br />2) bitbake myimage<br /><br />PS: myimage contain the reci=
pe qtwebengine.<br /><br />But whatever the bitbake commands 1 or 2, Bitbak=
e shows me the same error I don't understand and this error follows:<br /><=
br />----------------------------------------------------------------------=
-------------<br />| In file included from /usr/include/bits/errno.h:26:0,<=
br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /usr/include/errno.h:28,<br />|&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/cerrno:42,<br />|&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; from /usr/include/c++/7/ext/string_conversions.h:44,<br />=
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/bits/basic_string.h:63=
61,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/string:52,<br=
 />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/stdexcept:39,<br />=
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/array:39,<br />|&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/tuple:39,<br />|&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; from /usr/include/c++/7/bits/unique_ptr.h:37,<br />|&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; from /usr/include/c++/7/memory:80,<br />|&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; from ../../../../git/src/3rdparty/chromium/v8/src/torque/cfg.=
h:9,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ./../../../../git/src/3rdparty/=
chromium/v8/src/torque/cfg.cc:5,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from v8_=
snapshot/gen/v8/torque_base_jumbo_1.cc:5:<br />| /usr/include/linux/errno.h=
:1:10: fatal error: asm/errno.h: No such file or directory<br />|&nbsp; #in=
clude &lt;asm/errno.h&gt;<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; ^~~~~~~~~~~~~<br />| compilation terminated.<br />...<br =
/>| Makefile.gn_run:340: recipe for target 'run_ninja' failed<br />| make[3=
]: *** [run_ninja] Error 1<br />| make[3]: Leaving directory '/home/yocto/D=
ev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi/qtwebeng=
ine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src/core'<br />| Makef=
ile:82: recipe for target 'sub-gn_run-pro-make_first' failed<br />| make[2]=
: *** [sub-gn_run-pro-make_first] Error 2<br />| make[2]: Leaving directory=
 '/home/yocto/Dev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-g=
nueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src/cor=
e'<br />| Makefile:76: recipe for target 'sub-core-make_first' failed<br />=
| make[1]: *** [sub-core-make_first] Error 2<br />| make[1]: Leaving direct=
ory '/home/yocto/Dev/build_zeus/tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linu=
x-gnueabi/qtwebengine/5.13.0+gitAUTOINC+5d4bac57a0_8a28c0bb19-r0/build/src'=
<br />| Makefile:48: recipe for target 'sub-src-make_first' failed<br />| m=
ake: *** [sub-src-make_first] Error 2<br />| WARNING: exit code 1 from a sh=
ell command.<br />| <br />ERROR: Task (/home/yocto/Dev/build_zeus/../meta-q=
t5/recipes-qt/qt5/qtwebengine_git.bb:do_compile) failed with exit code '1'<=
br />----------------------------------------------------------------------=
-------------<br /><br />I don't understand why bitbake don't find '&lt;asm=
/errno.h&gt;', because it is present in the kernel 4.19 and in my host syst=
em ubuntu 18. Furthermore, I don't understand the problem with run_ninja.<b=
r /><br />I try to change my PC for compilation, but I have got the same er=
ror. The PC I use to compile with bitbake got 20 cores intel xeon and 32GB =
of ram. I think the problem is not from here. :-)<br /><br />Does someone a=
lready meet this problem?<br /><br />Does someone know where could be the p=
roblem?<br /><br />Thanks for all and best reguards: Anthony.

--7NwGgeMzAWOtjEH4JmGA--
