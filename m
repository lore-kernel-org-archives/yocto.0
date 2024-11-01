Return-Path: <rania.taabouri@pixiimotors.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F268DE674BB
	for <webhook@archiver.kernel.org>; Fri,  1 Nov 2024 08:32:53 +0000 (UTC)
Subject: Yocto Project Build Failure at do_rootfs Task
To: yocto@lists.yoctoproject.org
From: rania.taabouri@pixiimotors.com
X-Originating-Location: TN (41.231.42.18)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 01:32:48 -0700
Message-ID: <irzl.1730449968781024214.F2I7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="drdt9qKBbh0m80PTVhf7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Nov 2024 08:32:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64201

--drdt9qKBbh0m80PTVhf7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

*Description* : I'm working on a Yocto Project ( kirkistone) build for a To=
radex Apalis i.MX8 target, creating a custom multimedia image. During the f=
inal build stage, specifically at the do_rootfs task, the process fails whe=
n trying to install several packages (such as alsa-utils , bluealsa , ffmpe=
g , etc.).

The error shows repeated instances of a configuration problem with unknown =
items SYSLOG_SU_ENAB and SYSLOG_SG_ENAB. Additionally, warnings indicate a =
missing or non-executable shell ( /bin/false ) when running useradd and gro=
upadd commands for certain services (e.g., dbus , rpcbind , systemd ).

>=20
> ERROR: Unable to install packages. Command
> '/home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-r=
eference-multimedia-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg
> --volatile-cache -f
> /home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-re=
ference-multimedia-image/1.0-r0/opkg.conf
> -t
> /home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-re=
ference-multimedia-image/1.0-r0/temp/ipktemp/
> -o
> /home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-re=
ference-multimedia-image/1.0-r0/rootfs
> --force_postinstall --prefer-arch-to-version =C2=A0 install alsa-utils ba=
sh
> bluealsa connman connman-client connman-plugin-ethernet
> connman-plugin-loopback connman-plugin-wifi coreutils curl ffmpeg gpicvie=
w
> less makedevs media-files mime-support net-tools opkg
> packagegroup-base-extended packagegroup-base-tdx-cli packagegroup-basic
> packagegroup-boot packagegroup-core-boot packagegroup-core-weston
> packagegroup-fsl-isp packagegroup-machine-tdx-cli packagegroup-tdx-cli
> packagegroup-tdx-graphical packagegroup-tdx-qt5
> packagegroup-wifi-fw-tdx-cli packagegroup-wifi-tdx-cli python3-openai
> python3-pip python3-pyaudio python3-pydub python3-pyttsx3
> python3-websockets rsync run-postinsts scooter-dash systemd-analyze
> timestamp-service udev-extraconf util-linux v4l-utils
> wayland-qtdemo-launch-cinematicexperience weston-xwayland xterm' returned
> 255:
> Installing media-files (1.2) on root
>=20
>=20

configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
useradd: Warning: missing or non-executable shell '/bin/false'
Running useradd commands...
NOTE: dbus: Performing useradd with [--root /home/rania/pixii_os/pixii_os/b=
uild/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r0/r=
ootfs --system --home /var/lib/dbus =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--no-crea=
te-home --shell /bin/false =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--user-group messag=
ebus]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
useradd: Warning: missing or non-executable shell '/bin/false'
Running useradd commands...
NOTE: rpcbind: Performing useradd with [--root /home/rania/pixii_os/pixii_o=
s/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r=
0/rootfs --system --no-create-home --home-dir / =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--shell /bin/false =
--user-group rpc]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
useradd: Warning: missing or non-executable shell '/bin/false'
Running useradd commands...
NOTE: systemd: Performing useradd with [--root /home/rania/pixii_os/pixii_o=
s/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r=
0/rootfs --system -d / -M --shell /sbin/nologin systemd-bus-proxy]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
Running groupadd commands...
NOTE: systemd: Performing groupadd with [--root /home/rania/pixii_os/pixii_=
os/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-=
r0/rootfs -r render]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
NOTE: systemd: Performing groupadd with [--root /home/rania/pixii_os/pixii_=
os/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-=
r0/rootfs -r sgx]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)

--drdt9qKBbh0m80PTVhf7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p><strong>Description</strong>: I'm working on a Yocto Project ( kirkiston=
e) build for a Toradex Apalis i.MX8 target, creating a custom multimedia im=
age. During the final build stage, specifically at the <code>do_rootfs</cod=
e> task, the process fails when trying to install several packages (such as=
 <code>alsa-utils</code>, <code>bluealsa</code>, <code>ffmpeg</code>, etc.)=
.</p>
<p>The error shows repeated instances of a configuration problem with unkno=
wn items <code>SYSLOG_SU_ENAB</code> and <code>SYSLOG_SG_ENAB</code>. Addit=
ionally, warnings indicate a missing or non-executable shell (<code>/bin/fa=
lse</code>) when running <code>useradd</code> and <code>groupadd</code> com=
mands for certain services (e.g., <code>dbus</code>, <code>rpcbind</code>, =
<code>systemd</code>).</p>
</div>
<div>&nbsp;</div>
<blockquote>
<div>ERROR: Unable to install packages. Command '/home/rania/pixii_os/pixii=
_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0=
-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /home/rania/pixi=
i_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia=
-image/1.0-r0/opkg.conf -t /home/rania/pixii_os/pixii_os/build/tmp/work/apa=
lis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r0/temp/ipktemp/ -o /=
home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-refer=
ence-multimedia-image/1.0-r0/rootfs &nbsp;--force_postinstall --prefer-arch=
-to-version &nbsp; install alsa-utils bash bluealsa connman connman-client =
connman-plugin-ethernet connman-plugin-loopback connman-plugin-wifi coreuti=
ls curl ffmpeg gpicview less makedevs media-files mime-support net-tools op=
kg packagegroup-base-extended packagegroup-base-tdx-cli packagegroup-basic =
packagegroup-boot packagegroup-core-boot packagegroup-core-weston packagegr=
oup-fsl-isp packagegroup-machine-tdx-cli packagegroup-tdx-cli packagegroup-=
tdx-graphical packagegroup-tdx-qt5 packagegroup-wifi-fw-tdx-cli packagegrou=
p-wifi-tdx-cli python3-openai python3-pip python3-pyaudio python3-pydub pyt=
hon3-pyttsx3 python3-websockets rsync run-postinsts scooter-dash systemd-an=
alyze timestamp-service udev-extraconf util-linux v4l-utils wayland-qtdemo-=
launch-cinematicexperience weston-xwayland xterm' returned 255:<br />Instal=
ling media-files (1.2) on root</div>
<div>&nbsp;</div>
</blockquote>
<div>configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administra=
tor)<br />configuration error - unknown item 'SYSLOG_SG_ENAB' (notify admin=
istrator)<br />useradd: Warning: missing or non-executable shell '/bin/fals=
e'<br />Running useradd commands...<br />NOTE: dbus: Performing useradd wit=
h [--root /home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linu=
x/tdx-reference-multimedia-image/1.0-r0/rootfs --system --home /var/lib/dbu=
s &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;--no-create-home --shell /bin/false &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;--user-group messagebus]<br />configuration error - un=
known item 'SYSLOG_SU_ENAB' (notify administrator)<br />configuration error=
 - unknown item 'SYSLOG_SG_ENAB' (notify administrator)<br />useradd: Warni=
ng: missing or non-executable shell '/bin/false'<br />Running useradd comma=
nds...<br />NOTE: rpcbind: Performing useradd with [--root /home/rania/pixi=
i_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia=
-image/1.0-r0/rootfs --system --no-create-home --home-dir / &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;--shell=
 /bin/false --user-group rpc]<br />configuration error - unknown item 'SYSL=
OG_SU_ENAB' (notify administrator)<br />configuration error - unknown item =
'SYSLOG_SG_ENAB' (notify administrator)<br />useradd: Warning: missing or n=
on-executable shell '/bin/false'<br />Running useradd commands...<br />NOTE=
: systemd: Performing useradd with [--root /home/rania/pixii_os/pixii_os/bu=
ild/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r0/ro=
otfs --system -d / -M --shell /sbin/nologin systemd-bus-proxy]<br />configu=
ration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)<br />co=
nfiguration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)<br=
 />Running groupadd commands...<br />NOTE: systemd: Performing groupadd wit=
h [--root /home/rania/pixii_os/pixii_os/build/tmp/work/apalis_imx8-tdx-linu=
x/tdx-reference-multimedia-image/1.0-r0/rootfs -r render]<br />configuratio=
n error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)<br />configu=
ration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)<br />NO=
TE: systemd: Performing groupadd with [--root /home/rania/pixii_os/pixii_os=
/build/tmp/work/apalis_imx8-tdx-linux/tdx-reference-multimedia-image/1.0-r0=
/rootfs -r sgx]<br />configuration error - unknown item 'SYSLOG_SU_ENAB' (n=
otify administrator)<br />configuration error - unknown item 'SYSLOG_SG_ENA=
B' (notify administrator)</div>
<div>
<div>&nbsp;</div>
</div>

--drdt9qKBbh0m80PTVhf7--

