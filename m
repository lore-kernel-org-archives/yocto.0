Subject: #devtool #toolchain #yocto #warning
To: yocto@lists.yoctoproject.org
From: yuvaraj.velumani@denso-ten.com
X-Originating-Location: Novi, Michigan, US (206.181.20.218)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Nov 2020 13:20:03 -0800
Message-ID: <D5Fk.1604956803346533189.RJ8L@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PFo1obC12tzGW5sVJpcc"

--PFo1obC12tzGW5sVJpcc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to use meta-flutter to my Renesas R-Car build environment.
I get the below error, can anyone help me. I am not sure if it is network =
issue or I need to do add/remove additional configurations.

* Error: Command 'cipd ensure -log-level error -root /home /yvelumani/code=
/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git=
 ( http://mio.ten.fujitsu.com/yvelumani/harmony/code/H3/new10202020/build/t=
mp/work/aarch64-poky-linux/flutter-engine/git-r0/git ) -ensure-file /tmp/tm=
pHyUQvg.ensure' returned non-zero exit status 2
* wget: --user-agent: Invalid value =E2=80=98depot_tools/HEAD\n???=E2=80=
=99.
* Error: Command 'cipd ensure -log-level error -root /home/ yvelumani/code=
/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git=
 ( http://mio.ten.fujitsu.com/yvelumani/harmony/code/H3/new10202020/build/t=
mp/work/aarch64-poky-linux/flutter-engine/git-r0/git ) -ensure-file /tmp/tm=
pjHd8PA.ensure' returned non-zero exit status 2
* CalledProcessError: Command 'git -c core.deltaBaseCacheLimit=3D2g clone =
--no-checkout --progress git@github.com :flutter/engine.git /home /yveluman=
i/code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-=
r0/git/src/_gclient_flutter_JwGg9o ( http://mio.ten.fujitsu.com/yvelumani/h=
armony/code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine=
/git-r0/git/src/_gclient_flutter_JwGg9o ) '
* OSError: [Errno 2] No such file or directory: '/home /yvelumani/code/H3/=
new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git/src=
/_gclient_flutter_JwGg9o ( http://mio.ten.fujitsu.com/yvelumani/harmony/cod=
e/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/gi=
t/src/_gclient_flutter_JwGg9o ) '
* ERROR: Function failed: do_patch 'exit 1 from 'gclient.py sync --nohooks=
 --no-history --revision 678b96d4e3af62b1218775bcd5ccbcaaf6e9835a -j 12 -v'

Thanks in advance

--PFo1obC12tzGW5sVJpcc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am trying to use meta-flutter to my Renesas R-Car build en=
vironment.<br />I get the below error, can anyone help me. I am not sure if=
 it is network issue or I need to do add/remove additional configurations.<=
br /><br />
<ul style=3D"margin: 10px 0px 0px; padding-left: 22px; list-style-type: sq=
uare; color: #172b4d; font-family: -apple-system, BlinkMacSystemFont, 'Sego=
e UI', Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'Helvetica Neue',=
 sans-serif;">
<li>Error: Command 'cipd ensure -log-level error -root /home<a class=3D"ex=
ternal-link" style=3D"color: #0052cc;" href=3D"http://mio.ten.fujitsu.com/y=
velumani/harmony/code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flut=
ter-engine/git-r0/git" rel=3D"nofollow">/yvelumani/code/H3/new10202020/buil=
d/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git</a>&nbsp;-ensure-fi=
le /tmp/tmpHyUQvg.ensure' returned non-zero exit status 2</li>
<li>wget: --user-agent: Invalid value &lsquo;depot_tools/HEAD\n???&rsquo;.=
</li>
<li>Error: Command 'cipd ensure -log-level error -root /home/<a class=3D"e=
xternal-link" style=3D"color: #0052cc;" href=3D"http://mio.ten.fujitsu.com/=
yvelumani/harmony/code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flu=
tter-engine/git-r0/git" rel=3D"nofollow">yvelumani/code/H3/new10202020/buil=
d/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git</a>&nbsp;-ensure-fi=
le /tmp/tmpjHd8PA.ensure' returned non-zero exit status 2</li>
<li>CalledProcessError: Command 'git -c core.deltaBaseCacheLimit=3D2g clon=
e --no-checkout --progress&nbsp;<a class=3D"external-link" style=3D"color: =
#0052cc;" href=3D"mailto:git@github.com" rel=3D"nofollow">git@github.com</a=
>:flutter/engine.git /home<a class=3D"external-link" style=3D"color: #0052c=
c;" href=3D"http://mio.ten.fujitsu.com/yvelumani/harmony/code/H3/new1020202=
0/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0/git/src/_gclient_=
flutter_JwGg9o" rel=3D"nofollow">/yvelumani/code/H3/new10202020/build/tmp/w=
ork/aarch64-poky-linux/flutter-engine/git-r0/git/src/_gclient_flutter_JwGg9=
o</a>'</li>
<li>OSError: [Errno 2] No such file or directory: '/home<a class=3D"extern=
al-link" style=3D"color: #0052cc;" href=3D"http://mio.ten.fujitsu.com/yvelu=
mani/harmony/code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-=
engine/git-r0/git/src/_gclient_flutter_JwGg9o" rel=3D"nofollow">/yvelumani/=
code/H3/new10202020/build/tmp/work/aarch64-poky-linux/flutter-engine/git-r0=
/git/src/_gclient_flutter_JwGg9o</a>'</li>
<li>ERROR: Function failed: do_patch 'exit 1 from 'gclient.py sync --nohoo=
ks --no-history --revision 678b96d4e3af62b1218775bcd5ccbcaaf6e9835a -j 12 -=
v'</li>
</ul>
&nbsp;<br /><br />Thanks in advance

--PFo1obC12tzGW5sVJpcc--
