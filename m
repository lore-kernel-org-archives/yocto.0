Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29626C3A59D
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:59 +0000 (UTC)
Subject: System is booting to "emergency/rescue mode"
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.249.119)
X-Originating-Platform: Windows Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Apr 2022 15:43:46 -0700
Message-ID: <TfGa.1649457826573815420.0meH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Tq8Z6dZcSr43JsgS2bqg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56700

--Tq8Z6dZcSr43JsgS2bqg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

This may not be the issue with Yocto itself but rather related to properly =
booting up Linux on Avenger96(STM32MP1) board. I am currently working on Av=
enger96 with Yocto(Dunfell). Aim is to implement SWUpdate OTA update system=
. For this I am using A/B strategy. Also I am using "systemd" instead of sy=
sVinit. In my conf/local.conf I have set:

DISTRO_FEATURES_append =3D " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

My .wks file looks like:

part fsbl1 --source rawcopy --sourceparams=3D"file=3Du-boot-spl.stm32" --pa=
rt-name "fsbl1" --ondisk mmcblk --align 1 --size 256k
part fsbl2 --source rawcopy --sourceparams=3D"file=3Du-boot-spl.stm32" --pa=
rt-name "fsbl2" --ondisk mmcblk --align 1 --size 256k
part ssbl --source rawcopy --sourceparams=3D"file=3Du-boot.itb" --part-name=
 "ssbl" --ondisk mmcblk --align 1 --size 2M
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root_A --pa=
rt-name "rootfs_A" --align 4096=C2=A0--use-uuid --active --size 3G
part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root_B --pa=
rt-name "rootfs_B" --align 4096=C2=A0--use-uuid --size 3G

bootloader --ptable gpt

I am able to create the image and could copy it to SD card. But while booti=
ng I am getting below issue/errors:

[=C2=A0 OK=C2=A0 ] Started D-Bus System Message Bus.
Starting Load/Save RF Kill Switch Status...
*You are in rescue mode.* After logging in, type "journalctl -xb" to view
system logs, "systemctl reboot" to reboot, "systemctl default" or "exit"
to boot into default mode.
Press Enter for maintenance
(or press Control-D to continue):

On pressing "Ctrl+D", I get :

Reloading system manager configuration
[ 1306.916497] systemd-fstab-generator[202]: Mount point fsbl1 is not a val=
id path, ignoring.
[ 1306.940236] systemd-fstab-generator[202]: Mount point fsbl2 is not a val=
id path, ignoring.
[ 1306.947455] systemd-fstab-generator[202]: Mount point ssbl is not a vali=
d path, ignoring.
Starting default target
.
.
Then it asks for login and I could login as "root".

I don't understand why it's going to emergency or resume mode. On googling =
I found that it is usually related to /etc/fstab. Below is /etc/fstab/ cont=
ent (copied from board):

# stock fstab - you probably want to override this with a machine specific =
one
/dev/root=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 auto=C2=A0 =C2=A0 =C2=A0 =
=C2=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1=C2=A0 1
proc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /proc=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 proc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 0
devpts=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /dev/pts=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0devpts=C2=A0 =C2=A0 mode=3D0620,ptmxmode=3D0666,gid=
=3D5=C2=A0 =C2=A0 =C2=A0 0=C2=A0 0
tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /run=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmpfs=C2=A0 =C2=A0 =C2=A0 mode=
=3D0755,nodev,nosuid,strictatime 0=C2=A0 0
tmpfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/var/volatile=
=C2=A0 =C2=A0 tmpfs=C2=A0 =C2=A0 =C2=A0 defaults=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 0

# uncomment this if your device has a SD/MMC/Transflash slot
#/dev/mmcblk0p1=C2=A0 =C2=A0 =C2=A0 =C2=A0/media/card=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 auto=C2=A0 =C2=A0 =C2=A0 =C2=A0defaults,sync,noauto=C2=A0 0=
=C2=A0 0

/dev/mmcblkp1=C2=A0 =C2=A0fsbl1=C2=A0 =C2=A0vfat=C2=A0 =C2=A0 defaults=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0
/dev/mmcblkp2=C2=A0 =C2=A0fsbl2=C2=A0 =C2=A0vfat=C2=A0 =C2=A0 defaults=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0
/dev/mmcblkp3=C2=A0 =C2=A0ssbl=C2=A0 =C2=A0 vfat=C2=A0 =C2=A0 defaults=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0

Also one more doubt: what happens when we do software updates from emergenc=
y/rescue mode? In my case, I could install updates (using SWUpdate) but aft=
er reboot system is again booting from old partition. But I could manually =
switch to updated partition from u-boot env and verify that new image is in=
stalled. So I am assuming this behavior is again related to some issue with=
 u-boot(probably, newly set environment is wiped on next startup). And also=
 I can do other stuffs like accessing fw_printenv/fw_setenv, set bootlimit =
and change partition from u-boot env..

I found that a "boot.scr" is being used and I have set below in the script.=
 And "rootfspart" in u-boot header file as=C2=A0"rootfspart=3D4\0" \

setenv bootargs "${bootargs} root=3D/dev/mmcblk0p${rootfspart} rdinit=3D/bi=
n/kinit rw rootwait single"

Can anyone please let me know what could be the potential issue here? Any a=
dvice on which direction to look into would be helpful.

Your help will be much appreciated.

Thanks in advance.

P.S: Please let me know if any info is missing. Also when I checked with "j=
ournalctl -xb" after logging in I could only find "Alternate GPT is invalid=
, using primary GPT." and "GPT: Use GNU Parted to correct GPT errors.". But=
 may be I missed something here.

Kind Regards,
Sourabh

--Tq8Z6dZcSr43JsgS2bqg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />This may not be the issue with Yocto itself but rathe=
r related to properly booting up Linux on Avenger96(STM32MP1) board. I am c=
urrently working on Avenger96 with Yocto(Dunfell). Aim is to implement SWUp=
date OTA update system. For this I am using A/B strategy. Also I am using "=
systemd" instead of sysVinit. In my conf/local.conf I have set:<br /><br />
<div>DISTRO_FEATURES_append =3D " systemd"</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"</div>
<div>VIRTUAL-RUNTIME_init_manager =3D "systemd"</div>
<div>VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"<br /><br />My .=
wks file looks like:<br /><br />
<div>part fsbl1 --source rawcopy --sourceparams=3D"file=3Du-boot-spl.stm32"=
 --part-name "fsbl1" --ondisk mmcblk --align 1 --size 256k</div>
<div>part fsbl2 --source rawcopy --sourceparams=3D"file=3Du-boot-spl.stm32"=
 --part-name "fsbl2" --ondisk mmcblk --align 1 --size 256k</div>
<div>part ssbl --source rawcopy --sourceparams=3D"file=3Du-boot.itb" --part=
-name "ssbl" --ondisk mmcblk --align 1 --size 2M</div>
<div>part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root_A=
 --part-name "rootfs_A" --align 4096&nbsp;--use-uuid --active --size 3G</di=
v>
<div>part / --source rootfs --ondisk mmcblk0 --fstype=3Dext4 --label root_B=
 --part-name "rootfs_B" --align 4096&nbsp;--use-uuid --size 3G</div>
<div>&nbsp;</div>
<div>bootloader --ptable gpt</div>
<br />I am able to create the image and could copy it to SD card. But while=
 booting I am getting below issue/errors:<br /><br />
<div>[&nbsp; OK&nbsp; ] Started D-Bus System Message Bus.</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Starting Load/Save RF Kill Switch St=
atus...</div>
<div><strong>You are in rescue mode.</strong> After logging in, type "journ=
alctl -xb" to view</div>
<div>system logs, "systemctl reboot" to reboot, "systemctl default" or "exi=
t"</div>
<div>to boot into default mode.</div>
<div>Press Enter for maintenance</div>
<div>(or press Control-D to continue):<br /><br />On pressing "Ctrl+D", I g=
et :<br /><br />
<div>Reloading system manager configuration</div>
<div>[ 1306.916497] systemd-fstab-generator[202]: Mount point fsbl1 is not =
a valid path, ignoring.</div>
<div>[ 1306.940236] systemd-fstab-generator[202]: Mount point fsbl2 is not =
a valid path, ignoring.</div>
<div>[ 1306.947455] systemd-fstab-generator[202]: Mount point ssbl is not a=
 valid path, ignoring.</div>
<div>Starting default target<br />.<br />.<br />Then it asks for login and =
I could login as "root".<br /><br />I don't understand why it's going to em=
ergency or resume mode. On googling I found that it is usually related to /=
etc/fstab. Below is /etc/fstab/ content (copied from board):<br /><br />
<div>
<div># stock fstab - you probably want to override this with a machine spec=
ific one</div>
</div>
<div>/dev/root&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; auto&nbsp; &nbsp; &nbsp=
; &nbsp;defaults&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1&nbsp; 1<=
/div>
<div>proc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /pr=
oc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; proc&nbsp; &nbsp; &nbsp;=
 &nbsp;defaults&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp; 0</=
div>
<div>devpts&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /dev/pts&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;devpts&nbsp; &nbsp; mode=3D0620,ptmxmode=3D0666,=
gid=3D5&nbsp; &nbsp; &nbsp; 0&nbsp; 0</div>
<div>tmpfs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /run&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tmpfs&nbsp; &nbsp; &nbsp;=
 mode=3D0755,nodev,nosuid,strictatime 0&nbsp; 0</div>
<div>tmpfs&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/var/volat=
ile&nbsp; &nbsp; tmpfs&nbsp; &nbsp; &nbsp; defaults&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; 0&nbsp; 0</div>
<div>&nbsp;</div>
<div># uncomment this if your device has a SD/MMC/Transflash slot</div>
<div>#/dev/mmcblk0p1&nbsp; &nbsp; &nbsp; &nbsp;/media/card&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; auto&nbsp; &nbsp; &nbsp; &nbsp;defaults,sync,noauto&nbsp;=
 0&nbsp; 0</div>
<div>&nbsp;</div>
<div>/dev/mmcblkp1&nbsp; &nbsp;fsbl1&nbsp; &nbsp;vfat&nbsp; &nbsp; defaults=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0</div>
<div>/dev/mmcblkp2&nbsp; &nbsp;fsbl2&nbsp; &nbsp;vfat&nbsp; &nbsp; defaults=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0</div>
<div>/dev/mmcblkp3&nbsp; &nbsp;ssbl&nbsp; &nbsp; vfat&nbsp; &nbsp; defaults=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; 0</div>
<br />Also one more doubt: what happens when we do software updates from em=
ergency/rescue mode? In my case, I could install updates (using SWUpdate) b=
ut after reboot system is again booting from old partition. But I could man=
ually switch to updated partition from u-boot env and verify that new image=
 is installed. So I am assuming this behavior is again related to some issu=
e with u-boot(probably, newly set environment is wiped on next startup). An=
d also I can do other stuffs like accessing fw_printenv/fw_setenv, set boot=
limit and change partition from u-boot env..<br /><br />I found that a "boo=
t.scr" is being used and I have set below in the script. And "rootfspart" i=
n u-boot header file as&nbsp;"rootfspart=3D4\0" \<br /><br />setenv bootarg=
s "${bootargs} root=3D/dev/mmcblk0p${rootfspart} rdinit=3D/bin/kinit rw roo=
twait single"<br /><br />Can anyone please let me know what could be the po=
tential issue here? Any advice on which direction to look into would be hel=
pful.<br /><br />Your help will be much appreciated.<br /><br />Thanks in a=
dvance.<br /><br />P.S: Please let me know if any info is missing. Also whe=
n I checked with "journalctl -xb" after logging in I could only find "Alter=
nate GPT is invalid, using primary GPT." and "GPT: Use GNU Parted to correc=
t GPT errors.". But may be I missed something here.<br /><br /></div>
</div>
Kind Regards,<br />Sourabh</div>

--Tq8Z6dZcSr43JsgS2bqg--

