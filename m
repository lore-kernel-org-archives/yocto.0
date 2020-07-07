Subject: meta-kirkwood layer #yocto
To: yocto@lists.yoctoproject.org
From: jjvazha@yahoo.com
X-Originating-Location: San Jose, California, US (96.68.159.213)
X-Originating-Platform: Mac Firefox 77
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jul 2020 10:25:18 -0700
Message-ID: <fn2D.1594142718853789763.EJrE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qiz2KVV8BmSFOch5JyPx"

--qiz2KVV8BmSFOch5JyPx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I saw this message thread ( https://lists.yoctoproject.org/g/yocto/topic/61=
257317 )=C2=A0 and wondering how can I get this yocto compatible=C2=A0 laye=
r=C2=A0 for marwell kirkwood ?
I want to build a linux ketnel for marwell kirk wood=C2=A0 ( using the she=
evaplug.conf for machine) using yocto 2.7.3
I down loaded this layer ( https://github.com/kelvinlawson/meta-kirkwood )=
=
=C2=A0=C2=A0 this is opnembedded based , however upon building in yocto=C2=
=
=A0 it failed with the following message

Entering directory `/home/jojan.vazhaeparampil/workspace/distro/build_zion=
/tmp/work-shared/sheevaplug/kernel-source'
|=C2=A0=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 /home/jojan.vazhaeparampil/works=
pace/distro/build_zion/tmp/work/sheevaplug-poky-linux-gnueabi/linux-kirkwoo=
d/2.6.35-rc1-r14/build/Makefile
| make[2]: *** No rule to make target `oldnoconfig'.=C2=A0 Stop.
| make[1]: *** [oldnoconfig] Error 2
| make: *** [sub-make] Error 2
| make: Leaving directory `/home/jojan.vazhaeparampil/workspace/distro/bui=
ld_zion/tmp/work-shared/sheevaplug/kernel-source'
| ERROR: oe_runmake failed

When I checked the "sheevaplug/kernel-source' directory it is empty ?

--qiz2KVV8BmSFOch5JyPx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I saw this message thread ( <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/topic/61257317" target=3D"_blank" rel=3D"noopener">https://lists.yoctopr=
oject.org/g/yocto/topic/61257317</a>)&nbsp; and wondering how can I get thi=
s yocto compatible&nbsp; layer&nbsp; for marwell kirkwood ?<br />I want to =
build a linux ketnel for marwell kirk wood&nbsp; ( using the sheevaplug.con=
f for machine) using yocto 2.7.3<br />I down loaded this layer (<a href=3D"=
https://github.com/kelvinlawson/meta-kirkwood" target=3D"_blank" rel=3D"noo=
pener">https://github.com/kelvinlawson/meta-kirkwood</a>)&nbsp;&nbsp; this =
is opnembedded based , however upon building in yocto&nbsp; it failed with =
the following message<br /><br />Entering directory `/home/jojan.vazhaepara=
mpil/workspace/distro/build_zion/tmp/work-shared/sheevaplug/kernel-source'<=
br />|&nbsp;&nbsp; GEN&nbsp;&nbsp;&nbsp;&nbsp; /home/jojan.vazhaeparampil/w=
orkspace/distro/build_zion/tmp/work/sheevaplug-poky-linux-gnueabi/linux-kir=
kwood/2.6.35-rc1-r14/build/Makefile<br />| make[2]: *** No rule to make tar=
get `oldnoconfig'.&nbsp; Stop.<br />| make[1]: *** [oldnoconfig] Error 2<br=
 />| make: *** [sub-make] Error 2<br />| make: Leaving directory `/home/joj=
an.vazhaeparampil/workspace/distro/build_zion/tmp/work-shared/sheevaplug/ke=
rnel-source'<br />| ERROR: oe_runmake failed<br /><br /><br />When I checke=
d the "sheevaplug/kernel-source' directory it is empty ?

--qiz2KVV8BmSFOch5JyPx--
