Subject: perl5 do_install() fails (libperl.so: No such file or directory) #dunfell
To: yocto@lists.yoctoproject.org
From: frank.wolff@smile.fr
X-Originating-Location: Grenoble, Auvergne-Rhone-Alpes, FR (93.23.208.52)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Dec 2020 05:08:38 -0800
Message-ID: <PpJd.1607087318943513250.7TTi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Buby02sNixCrESRkgmW5"

--Buby02sNixCrESRkgmW5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've got a weird problem when trying to build perl5 (from perl_5.30.1.bb, =
"dunfell" branch): the do_install() fails :

>=20
> rm: cannot remove
> '/home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.=
1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so':
> No such file or directory'

The thing is, there IS a 'libperl.so', which is a symlink, in a "x86_64-li=
nux" subfolder :

>=20
> $ ls -la
> /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1=
-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>=20
>=20
>=20
> lrwxrwxrwx 1 frank frank 26 2020-12-04 12:23
> /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1=
-r0/image//usr/lib/perl5/5.30.1/x86_64-linux/CORE/libperl.so
> -> /usr/lib/libperl.so.5.30.0
>=20

And if I try to manually delete it using the same command it works :

>=20
> & rm
> /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1=
-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>=20
> & ls -la
> /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1=
-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>=20
>=20
>=20
> zsh: no matches found:
> /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1=
-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>=20
>=20

So... I'm kind of confused to tell the truth. My guess is it's related to =
my setup (or PEBCAK) or else everybody would have encountered this.

>=20
> $ uname -a
> Linux laptop-frwol 5.9.0-3-amd64 #1 SMP Debian 5.9.9-1 (2020-11-19) x86_=
64
> GNU/Linux
>=20

I've made absolutely no modification whatsoever. I've just cloned the "dun=
fell" branch from poky and launched a "bitbake perl".
Thanks in advance for your help.

Regards,

Frank.

--Buby02sNixCrESRkgmW5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I've got a weird problem when trying to build perl5 (from pe=
rl_5.30.1.bb, "dunfell" branch): the do_install() fails :<br /><br />
<blockquote>rm: cannot remove '/home/frwol/Sources/yocto/build/tmp/work/co=
re2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl=
.so': No such file or directory'</blockquote>
<div>The thing is, there IS a 'libperl.so', which is a symlink, in a "x86_=
64-linux" subfolder :<br /><br />
<blockquote>
<div>$ ls -la /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux=
/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so<br /><br /></=
div>
<div>lrwxrwxrwx 1 frank frank 26 2020-12-04 12:23 /home/frwol/Sources/yoct=
o/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.=
30.1/x86_64-linux/CORE/libperl.so -&gt; /usr/lib/libperl.so.5.30.0</div>
</blockquote>
<div>And if I try to manually delete it using the same command it works :<=
br /><br />
<blockquote>
<div>&amp; rm /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux=
/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so</div>
<div>&amp; ls -la /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-l=
inux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so<br /><br =
/></div>
<div>zsh: no matches found: /home/frwol/Sources/yocto/build/tmp/work/core2=
-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so=
</div>
</blockquote>
<div>So... I'm kind of confused to tell the truth. My guess is it's relate=
d to my setup (or PEBCAK) or else everybody would have encountered this.<br=
 /><br />
<blockquote>
<div>$ uname -a</div>
<div>Linux laptop-frwol 5.9.0-3-amd64 #1 SMP Debian 5.9.9-1 (2020-11-19) x=
86_64 GNU/Linux</div>
</blockquote>
I've made absolutely no modification whatsoever. I've just cloned the "dun=
fell" branch from poky and launched a "bitbake perl".<br />Thanks in advanc=
e for your help.<br /><br />Regards,<br /><br />Frank.</div>
</div>
</div>

--Buby02sNixCrESRkgmW5--
