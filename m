Subject: Perl populate sysroot fails (yocto 2.0.3)
To: yocto@lists.yoctoproject.org
From: "Varangu-Booth, Valen" <Valen.Varangu-Booth@christiedigital.com>
X-Originating-Location: US (216.94.43.6)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 06 Oct 2020 13:36:45 -0700
Message-ID: <80lf.1602016605600037019.YDxX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LRHmWys1Ro4IvlPu072y"

--LRHmWys1Ro4IvlPu072y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to re-create a build that was previously made by someone else (=
in an effort to reproduce an exact old build). This is based on Yocto 2.0.3=
.
I'm encountering an issue in do_populate_sysroot for Perl, where it fails =
because /usr/lib/perl5 already exists. (See details below:)

Exception: CalledProcessError: Command 'cd YOCTO_ROOT/build/tmp/work/corei=
7-64-poky-linux/perl/5.22.0-r0/sysroot-destdir; find . -type d -print | tar=
 -cf - -C YOCTO_ROOT/build/tmp/work/corei7-64-poky-linux/perl/5.22.0-r0/sys=
root-destdir -p --files-from - --no-recursion | tar -xf - -C YOCTO_ROOT/bui=
ld/tmp/sysroots/intel-corei7-64' returned non-zero exit status 2 with outpu=
t tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists
tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists
tar: ./usr/lib/perl5: Cannot create symlink to 'perl': File exists

The issue seems to always occur when the sstate-cache is present, so do_po=
pulate_sysroot_setscene fails first, then it tries to build from scratch an=
d do_populate_sysroot fails as well.
I have seen it in a completely fresh build as well, though this seems inte=
rmittent (or I haven't yet nailed down what changes when it does/doesn't ha=
ppen).

It seems like somehow some recipe ahead of Perl is putting something in /u=
sr/lib/perl5 and perhaps some kind of race condition caused this to be inte=
rmittent?

Any input would be greatly appreciated, eventually I will get this onto a =
newer version of Yocto but first I need to be able to reliably re-create th=
is exact build.

--LRHmWys1Ro4IvlPu072y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all, <br /><br />I'm trying to re-create a build that was previously mad=
e by someone else (in an effort to reproduce an exact old build). This is b=
ased on Yocto 2.0.3.<br />I'm encountering an issue in do_populate_sysroot =
for Perl, where it fails because /usr/lib/perl5 already exists. (See detail=
s below:) <br /><br />Exception: CalledProcessError: Command 'cd YOCTO_ROOT=
/build/tmp/work/corei7-64-poky-linux/perl/5.22.0-r0/sysroot-destdir; find .=
 -type d -print | tar -cf - -C YOCTO_ROOT/build/tmp/work/corei7-64-poky-lin=
ux/perl/5.22.0-r0/sysroot-destdir -p --files-from - --no-recursion | tar -x=
f - -C YOCTO_ROOT/build/tmp/sysroots/intel-corei7-64' returned non-zero exi=
t status 2 with output tar: ./usr/lib/perl5: Cannot create symlink to 'perl=
': File exists<br />tar: ./usr/lib/perl5: Cannot create symlink to 'perl': =
File exists<br />tar: ./usr/lib/perl5: Cannot create symlink to 'perl': Fil=
e exists<br /><br />The issue seems to always occur when the sstate-cache i=
s present, so do_populate_sysroot_setscene fails first, then it tries to bu=
ild from scratch and do_populate_sysroot fails as well.<br />I have seen it=
 in a completely fresh build as well, though this seems intermittent (or I =
haven't yet nailed down what changes when it does/doesn't happen).<br /><br=
 />It seems like somehow some recipe ahead of Perl is putting something in =
/usr/lib/perl5 and perhaps some kind of race condition caused this to be in=
termittent?<br /><br />Any input would be greatly appreciated, eventually I=
 will get this onto a newer version of Yocto but first I need to be able to=
 reliably re-create this exact build.

--LRHmWys1Ro4IvlPu072y--
