Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DAAC433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 19:04:35 +0000 (UTC)
Subject: Logical Volumes not present at boot time with sysvinit,
 mountall.sh #honister
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: New York, New York, US (165.225.38.76)
X-Originating-Platform: Windows Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 Apr 2022 11:56:40 -0700
Message-ID: <Bj8p.1649098600600068734.uLtm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="djhNm0N5wYApxw5m9ag8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 19:04:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56660

--djhNm0N5wYApxw5m9ag8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am seeing that logical volumes in /etc/fstab are not present at boot time=
 when mountall.sh is being run
on my image based off Poky/Honister, with lvm2 recipe

After boot, once I log in, lsblk shows the mount points and "mount -a" work=
s as expected.=C2=A0 At boot, alas no dice.

Any suggestions on how to get the logical volumes in place so that they can=
 be mounted from /etc/fstab during boot when mountall.sh is being run?

*During boot:*
At Beginning of mountall.sh
NAME MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
sda 8:0 0 55.9G 0 disk
|-sda1 8:1 0 101.9M 0 part
`-sda2 8:2 0 55.8G 0 part
Mon Apr 4 17:33:05 UTC 2022
After mounting file systems

*Post Boot:*
root@intel-corei7-64:/tmp# lsblk
NAME MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
sda 8:0 0 55.9G 0 disk
|-sda1 8:1 0 101.9M 0 part
`-sda2 8:2 0 55.8G 0 part
|-mount-pt-a 252:0 0 1000M 0 lvm
|-mount-pt-b 252:1 0 100M 0 lvm
|-mount-pt-c 252:2 0 6.3G 0 lvm

Thanks,

Bruce

--djhNm0N5wYApxw5m9ag8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am seeing that logical volumes in /etc/fstab are not present at boot time=
 when mountall.sh is being run<br />on my image based off Poky/Honister, wi=
th lvm2 recipe<br /><br />After boot, once I log in, lsblk shows the mount =
points and "mount -a" works as expected.&nbsp; At boot, alas no dice.<br />=
<br />Any suggestions on how to get the logical volumes in place so that th=
ey can be mounted from /etc/fstab during boot when mountall.sh is being run=
?<br /><br /><span style=3D"text-decoration: underline;"><strong><span styl=
e=3D"background-color: #ffffff;">During boot:</span></strong></span><br /><=
span style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Co=
lor Emoji', 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">At Be=
ginning of mountall.sh</span><br style=3D"-webkit-font-smoothing: antialias=
ed; color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji'=
, 'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;" /><span style=
=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji'=
, 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">NAME MAJ:MIN RM=
 SIZE RO TYPE MOUNTPOINTS</span><br style=3D"-webkit-font-smoothing: antial=
iased; color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emo=
ji', 'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span =
style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color E=
moji', 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">sda 8:0 0 =
55.9G 0 disk</span></em><br style=3D"-webkit-font-smoothing: antialiased; c=
olor: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Se=
goe UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=3D=
"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', '=
Segoe UI Emoji', sans-serif; background-color: #ffffff;">|-sda1 8:1 0 101.9=
M 0 part</span></em><br style=3D"-webkit-font-smoothing: antialiased; color=
: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe =
UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=3D"col=
or: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Sego=
e UI Emoji', sans-serif; background-color: #ffffff;">`-sda2 8:2 0 55.8G 0 p=
art</span></em><br style=3D"-webkit-font-smoothing: antialiased; color: #24=
2424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI Em=
oji', sans-serif; background-color: #e8ebfa;" /><span style=3D"color: #2424=
24; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI Emoj=
i', sans-serif; background-color: #ffffff;">Mon Apr 4 17:33:05 UTC 2022</sp=
an><br style=3D"-webkit-font-smoothing: antialiased; color: #242424; font-f=
amily: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI Emoji', sans-s=
erif; background-color: #e8ebfa;" /><span style=3D"background-color: #fffff=
f;"><span style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'App=
le Color Emoji', 'Segoe UI Emoji', sans-serif;">After mounting file systems=
<br /><br /><span style=3D"text-decoration: underline;"><strong>Post Boot:<=
/strong></span><br /></span><span style=3D"color: #242424; font-family: 'Se=
goe UI', system-ui, 'Apple Color Emoji', 'Segoe UI Emoji', sans-serif;">roo=
t@intel-corei7-64:/tmp# lsblk</span></span><br style=3D"-webkit-font-smooth=
ing: antialiased; color: #242424; font-family: 'Segoe UI', system-ui, 'Appl=
e Color Emoji', 'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;" /=
><span style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple =
Color Emoji', 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">NAM=
E MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS</span><br style=3D"-webkit-font-smoot=
hing: antialiased; color: #242424; font-family: 'Segoe UI', system-ui, 'App=
le Color Emoji', 'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;" =
/><span style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple=
 Color Emoji', 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">sd=
a 8:0 0 55.9G 0 disk</span><br style=3D"-webkit-font-smoothing: antialiased=
; color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', =
'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=
=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji'=
, 'Segoe UI Emoji', sans-serif; background-color: #ffffff;">|-sda1 8:1 0 10=
1.9M 0 part</span></em><br style=3D"-webkit-font-smoothing: antialiased; co=
lor: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Seg=
oe UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=3D"=
color: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'S=
egoe UI Emoji', sans-serif; background-color: #ffffff;">`-sda2 8:2 0 55.8G =
0 part</span></em><br style=3D"-webkit-font-smoothing: antialiased; color: =
#242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI=
 Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=3D"color=
: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe =
UI Emoji', sans-serif; background-color: #ffffff;">|-mount-pt-a 252:0 0 100=
0M 0 lvm</span></em><br style=3D"-webkit-font-smoothing: antialiased; color=
: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe =
UI Emoji', sans-serif; background-color: #e8ebfa;" /><em><span style=3D"col=
or: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Sego=
e UI Emoji', sans-serif; background-color: #ffffff;">|-mount-pt-b 252:1 0 1=
00M 0 lvm</span></em><br style=3D"-webkit-font-smoothing: antialiased; colo=
r: #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe=
 UI Emoji', sans-serif; background-color: #e8ebfa;" /><span style=3D"color:=
 #242424; font-family: 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe U=
I Emoji', sans-serif; background-color: #e8ebfa;"><em><span style=3D"backgr=
ound-color: #ffffff;">|-mount-pt-c 252:2 0 6.3G 0 lvm</span></em><br /></sp=
an><span style=3D"color: #242424; font-family: 'Segoe UI', system-ui, 'Appl=
e Color Emoji', 'Segoe UI Emoji', sans-serif; background-color: #e8ebfa;"><=
br /><span style=3D"background-color: #ffffff;">Thanks,</span><br /><br /><=
span style=3D"background-color: #ffffff;">Bruce</span><br /><br /><br /></s=
pan>

--djhNm0N5wYApxw5m9ag8--

