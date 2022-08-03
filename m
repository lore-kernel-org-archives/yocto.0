Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05FE9C19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 10:53:03 +0000 (UTC)
Subject: Add docker to yocto 
To: yocto@lists.yoctoproject.org
From: poornesh.g@mindteck.com
X-Originating-Location: Kolkata, West Bengal, IN (182.71.223.114)
X-Originating-Platform: Linux Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 Aug 2022 03:53:02 -0700
Message-ID: <K0yO.1659523982406336915.mg7H@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dg2yLZ3cEhWlz4RfhSZA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 10:53:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57761

--dg2yLZ3cEhWlz4RfhSZA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I have compiled yocto for i.MX6UL (Zeus) . Can anyone help me out with the=
=C2=A0 exact procedure to add Docker along with its required dependency pac=
kages to Yocto build.

I tried cloning meta-virtualization layer and added the below packages thro=
ugh local.conf file . But after flashing docker.service is failing to run (=
error log is mentioned below).

---------------------------------------------------------------------------=
-------
DISTRO_FEATURES_append =3D " virtualization"
IMAGE_INSTALL_append +=3D "aufs-util docker-ce cgroup-lite python3-docker p=
ython3-docker-pycreds python3-dockerpty runc-docker python3-docker-compose =
fuse-overlayfs oci-runtime-tools containerd-opencontainers git"
---------------------------------------------------------------------------=
-------

Log of docker.service
--------------------------------
root@imx6ul-pds:~# journalctl -u docker -f -n 100
-- Logs begin at Wed 2022-06-08 12:42:25 UTC. --
Aug 03 09:16:08 imx6ul-pds systemd[1]: docker.service: Start request repeat=
ed too quickly.
Aug 03 09:16:08 imx6ul-pds systemd[1]: docker.service: Failed with result '=
exit-code'.
Aug 03 09:16:08 imx6ul-pds systemd[1]: Failed to start Docker Application C=
ontainer Engine.
Aug 03 09:19:48 imx6ul-pds systemd[1]: Starting Docker Application Containe=
r Engine...
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.78670=
1342Z" level=3Dinfo msg=3D"Starting up"
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.84362=
8097Z" level=3Dinfo msg=3D"parsed scheme: \"unix\"" module=3Dgrpc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.84557=
2964Z" level=3Dinfo msg=3D"scheme \"unix\" not registered, fallback to defc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.84769=
7913Z" level=3Dinfo msg=3D"ccResolverWrapper: sending update to cc: {[{unic
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.84974=
5196Z" level=3Dinfo msg=3D"ClientConn switching balancer to \"pick_first\"c
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.85317=
5348Z" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0xc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.87128=
0853Z" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0xc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.91019=
0269Z" level=3Dinfo msg=3D"parsed scheme: \"unix\"" module=3Dgrpc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.91492=
1207Z" level=3Dinfo msg=3D"scheme \"unix\" not registered, fallback to defc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.91695=
0282Z" level=3Dinfo msg=3D"ccResolverWrapper: sending update to cc: {[{unic
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.91923=
0397Z" level=3Dinfo msg=3D"ClientConn switching balancer to \"pick_first\"c
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.92591=
2993Z" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0xc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.93749=
9818Z" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0xc
Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.96457=
4077Z" level=3Derror msg=3D"Failed to built-in GetDriver graph btrfs /var/"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.07123=
0952Z" level=3Derror msg=3D"'overlay' not found as a supported filesystem 2
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.19291=
6138Z" level=3Derror msg=3D"AUFS was not found in /proc/filesystems" storas
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.25271=
3256Z" level=3Derror msg=3D"'overlay' not found as a supported filesystem y
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.25804=
4858Z" level=3Derror msg=3D"Failed to built-in GetDriver graph devicemappe"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.37178=
1036Z" level=3Dwarning msg=3D"Your kernel does not support cgroup memory l"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.38384=
5818Z" level=3Dwarning msg=3D"Unable to find cpu cgroup in mounts"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.38718=
0637Z" level=3Dwarning msg=3D"Unable to find blkio cgroup in mounts"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.39075=
5371Z" level=3Dwarning msg=3D"Unable to find cpuset cgroup in mounts"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.39348=
4318Z" level=3Dwarning msg=3D"mountpoint for pids not found"
Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:50.43462=
1308Z" level=3Dinfo msg=3D"stopping event stream following graceful shutdoy
*Aug 03 09:19:50 imx6ul-pds dockerd[1070]: failed to start daemon: Devices =
cgroup isn't mounted*
Aug 03 09:19:50 imx6ul-pds systemd[1]: docker.service: Main process exited,=
 code=3Dexited, status=3D1/FAILURE
Aug 03 09:19:50 imx6ul-pds systemd[1]: docker.service: Failed with result '=
exit-code'.
Aug 03 09:19:50 imx6ul-pds systemd[1]: Failed to start Docker Application C=
ontainer Engine.
---------------------------------------------------------------------------=
---------------------------------------------------

Thanks

--dg2yLZ3cEhWlz4RfhSZA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !<br /><br />I have compiled yocto for i.MX6UL (Zeus) . Can anyon=
e help me out with the&nbsp; exact procedure to add Docker along with its r=
equired dependency packages to Yocto build.<br /><br />I tried cloning meta=
-virtualization layer and added the below packages through local.conf file =
. But after flashing docker.service is failing to run (error log is mention=
ed below).<br /><br />-----------------------------------------------------=
-----------------------------<br />DISTRO_FEATURES_append =3D " virtualizat=
ion"<br />IMAGE_INSTALL_append +=3D "aufs-util docker-ce cgroup-lite python=
3-docker python3-docker-pycreds python3-dockerpty runc-docker python3-docke=
r-compose fuse-overlayfs oci-runtime-tools containerd-opencontainers git"<b=
r />-----------------------------------------------------------------------=
-----------<br /><br /><br />Log of docker.service<br />-------------------=
-------------<br />root@imx6ul-pds:~# journalctl -u docker -f -n 100&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br=
 />-- Logs begin at Wed 2022-06-08 12:42:25 UTC. --<br />Aug 03 09:16:08 im=
x6ul-pds systemd[1]: docker.service: Start request repeated too quickly.<br=
 />Aug 03 09:16:08 imx6ul-pds systemd[1]: docker.service: Failed with resul=
t 'exit-code'.<br />Aug 03 09:16:08 imx6ul-pds systemd[1]: Failed to start =
Docker Application Container Engine.<br />Aug 03 09:19:48 imx6ul-pds system=
d[1]: Starting Docker Application Container Engine...<br />Aug 03 09:19:49 =
imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.786701342Z" level=3Di=
nfo msg=3D"Starting up"<br />Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=
=3D"2022-08-03T09:19:49.843628097Z" level=3Dinfo msg=3D"parsed scheme: \"un=
ix\"" module=3Dgrpc<br />Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"=
2022-08-03T09:19:49.845572964Z" level=3Dinfo msg=3D"scheme \"unix\" not reg=
istered, fallback to defc<br />Aug 03 09:19:49 imx6ul-pds dockerd[1070]: ti=
me=3D"2022-08-03T09:19:49.847697913Z" level=3Dinfo msg=3D"ccResolverWrapper=
: sending update to cc: {[{unic<br />Aug 03 09:19:49 imx6ul-pds dockerd[107=
0]: time=3D"2022-08-03T09:19:49.849745196Z" level=3Dinfo msg=3D"ClientConn =
switching balancer to \"pick_first\"c<br />Aug 03 09:19:49 imx6ul-pds docke=
rd[1070]: time=3D"2022-08-03T09:19:49.853175348Z" level=3Dinfo msg=3D"pickf=
irstBalancer: HandleSubConnStateChange: 0xc<br />Aug 03 09:19:49 imx6ul-pds=
 dockerd[1070]: time=3D"2022-08-03T09:19:49.871280853Z" level=3Dinfo msg=3D=
"pickfirstBalancer: HandleSubConnStateChange: 0xc<br />Aug 03 09:19:49 imx6=
ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.910190269Z" level=3Dinfo =
msg=3D"parsed scheme: \"unix\"" module=3Dgrpc<br />Aug 03 09:19:49 imx6ul-p=
ds dockerd[1070]: time=3D"2022-08-03T09:19:49.914921207Z" level=3Dinfo msg=
=3D"scheme \"unix\" not registered, fallback to defc<br />Aug 03 09:19:49 i=
mx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.916950282Z" level=3Din=
fo msg=3D"ccResolverWrapper: sending update to cc: {[{unic<br />Aug 03 09:1=
9:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.919230397Z" leve=
l=3Dinfo msg=3D"ClientConn switching balancer to \"pick_first\"c<br />Aug 0=
3 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.925912993Z=
" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0xc<br /=
>Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:49.9374=
99818Z" level=3Dinfo msg=3D"pickfirstBalancer: HandleSubConnStateChange: 0x=
c<br />Aug 03 09:19:49 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T09:19:4=
9.964574077Z" level=3Derror msg=3D"Failed to built-in GetDriver graph btrfs=
 /var/"<br />Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-08-03T0=
9:19:50.071230952Z" level=3Derror msg=3D"'overlay' not found as a supported=
 filesystem 2<br />Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"2022-0=
8-03T09:19:50.192916138Z" level=3Derror msg=3D"AUFS was not found in /proc/=
filesystems" storas<br />Aug 03 09:19:50 imx6ul-pds dockerd[1070]: time=3D"=
2022-08-03T09:19:50.252713256Z" level=3Derror msg=3D"'overlay' not found as=
 a supported filesystem y<br />Aug 03 09:19:50 imx6ul-pds dockerd[1070]: ti=
me=3D"2022-08-03T09:19:50.258044858Z" level=3Derror msg=3D"Failed to built-=
in GetDriver graph devicemappe"<br />Aug 03 09:19:50 imx6ul-pds dockerd[107=
0]: time=3D"2022-08-03T09:19:50.371781036Z" level=3Dwarning msg=3D"Your ker=
nel does not support cgroup memory l"<br />Aug 03 09:19:50 imx6ul-pds docke=
rd[1070]: time=3D"2022-08-03T09:19:50.383845818Z" level=3Dwarning msg=3D"Un=
able to find cpu cgroup in mounts"<br />Aug 03 09:19:50 imx6ul-pds dockerd[=
1070]: time=3D"2022-08-03T09:19:50.387180637Z" level=3Dwarning msg=3D"Unabl=
e to find blkio cgroup in mounts"<br />Aug 03 09:19:50 imx6ul-pds dockerd[1=
070]: time=3D"2022-08-03T09:19:50.390755371Z" level=3Dwarning msg=3D"Unable=
 to find cpuset cgroup in mounts"<br />Aug 03 09:19:50 imx6ul-pds dockerd[1=
070]: time=3D"2022-08-03T09:19:50.393484318Z" level=3Dwarning msg=3D"mountp=
oint for pids not found"<br />Aug 03 09:19:50 imx6ul-pds dockerd[1070]: tim=
e=3D"2022-08-03T09:19:50.434621308Z" level=3Dinfo msg=3D"stopping event str=
eam following graceful shutdoy<br /><strong>Aug 03 09:19:50 imx6ul-pds dock=
erd[1070]: failed to start daemon: Devices cgroup isn't mounted</strong><br=
 />Aug 03 09:19:50 imx6ul-pds systemd[1]: docker.service: Main process exit=
ed, code=3Dexited, status=3D1/FAILURE<br />Aug 03 09:19:50 imx6ul-pds syste=
md[1]: docker.service: Failed with result 'exit-code'.<br />Aug 03 09:19:50=
 imx6ul-pds systemd[1]: Failed to start Docker Application Container Engine=
.<br />--------------------------------------------------------------------=
----------------------------------------------------------<br /><br />Thank=
s

--dg2yLZ3cEhWlz4RfhSZA--

