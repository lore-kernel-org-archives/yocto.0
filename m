Return-Path: <taylor.winning@fundamentals-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CFBC433F5
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 01:26:36 +0000 (UTC)
Subject: Bad ownership of directory in WIC generated partition
To: yocto@lists.yoctoproject.org
From: taylor.winning@fundamentals-group.com
X-Originating-Location: Perth, Western Australia, AU (110.145.30.150)
X-Originating-Platform: Windows Firefox 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 30 Nov 2021 17:26:35 -0800
Message-ID: <WUiG.1638321995855637689.3ilH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sVwLy7MUMTmP1axIie4q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 01:26:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55451

--sVwLy7MUMTmP1axIie4q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm using dunfell branch 3.1.11. My wks file is generating a 4th partition =
which is being mounted to /data via the --rootfs-dir argument. All director=
ies within the mounted /data are owned 1000:1000 which I believe is a conta=
mination via my host user running the build.

I've looked around online and haven't been able to ascertain the cause, alt=
hough there are a few others which seem to be the same problem:
https://www.yoctoproject.org/pipermail/yocto/2019-August/046378.html

I've seen some patches addressing similar behavior in the wks files:
[v7,02/10] wic: Fix multi images .wks with bitbake ( https://patchwork.open=
embedded.org/patch/172025/ )
[v2,1/2] wic: Fix permissions when using exclude or include path ( https://=
patchwork.openembedded.org/patch/170778/ )

I've also found this post from a user that says "Just saw that the issue is=
 that you can't use rootfs-dir with a subfolder" ( https://www.mail-archive=
.com/yocto@lists.yoctoproject.org/msg05717.html ). I am at a complete loss =
for where they have seen that information... perhaps I can't see the forest=
 for the trees.

So I'm wondering if this is a bug, or if I have done something drastically =
incorrect? I have thrown a fair chunk of time at the issue, and in the end =
all I could do is write a script that runs on first boot to chown the direc=
tories and set permissions as we need. Could someone weigh in please? I'd l=
ove to assist in writing a patch but looking at some of the code, I literal=
ly have no idea where to start...

My wks file:

part /boot --source bootimg-partition --fstype=3Dvfat --label boot --active=
 --align 1024=C2=A0 --use-uuid
part / --source rootfs --fstype=3Dext4 --label A --align 1024 --use-uuid
part --source rootfs --fstype=3Dext4 --label B --align 1024 --use-uuid
part /data --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/data --fstype=3De=
xt4 --label data --align 1024=C2=A0 --use-uuid --size 10

Image recipe excerpt, I realize this shouldn't go in a ROOTFS_POSTPROCESS_C=
OMMAND necessarily, this is just an artifact of my testing:

ROOTFS_POSTPROCESS_COMMAND +=3D " chmod_dirs;"

chmod_dirs() {
mkdir -p ${IMAGE_ROOTFS}/data/firmware
chown 0:421 ${IMAGE_ROOTFS}/data/firmware
chmod 0770=C2=A0 ${IMAGE_ROOTFS}/data/firmware
lnr ${IMAGE_ROOTFS}/data/firmware ${IMAGE_ROOTFS}/opt/Firmware
}

Resulting folder in image:
root@sgc30cube:~# ls -la /data
drwxr-xr-x=C2=A0=C2=A0=C2=A0 4 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1024 Nov 30 09:00 .
drwxr-xr-x=C2=A0=C2=A0 21 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1024 Nov 30 09:00 ..
drwxr-x---=C2=A0=C2=A0=C2=A0 2 1000=C2=A0=C2=A0=C2=A0=C2=A0 1000=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1024 Mar=C2=A0 9=C2=A0 2018 f=
irmware
drwx------=C2=A0=C2=A0=C2=A0 2 root=C2=A0=C2=A0=C2=A0=C2=A0 root=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12288 Nov 30 09:00 lost+found

Is there a more elegant way to work around this issue, rather than scripted=
 chmod/chown on the target?

Please let me know if I could provide more useful information.

Thank you,

--sVwLy7MUMTmP1axIie4q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I'm using dunfell branch 3.1.11. My wks file is generating a 4th partiti=
on which is being mounted to /data via the --rootfs-dir argument. All direc=
tories within the mounted /data are owned 1000:1000 which I believe is a co=
ntamination via my host user running the build.<br /><br />I've looked arou=
nd online and haven't been able to ascertain the cause, although there are =
a few others which seem to be the same problem:<br /><a href=3D"https://www=
.yoctoproject.org/pipermail/yocto/2019-August/046378.html" target=3D"_blank=
" rel=3D"noopener">https://www.yoctoproject.org/pipermail/yocto/2019-August=
/046378.html</a><br /><br />I've seen some patches addressing similar behav=
ior in the wks files:<br /><a href=3D"https://patchwork.openembedded.org/pa=
tch/172025/" target=3D"_blank" rel=3D"noopener">[v7,02/10] wic: Fix multi i=
mages .wks with bitbake</a><br /><a href=3D"https://patchwork.openembedded.=
org/patch/170778/" target=3D"_blank" rel=3D"noopener">[v2,1/2] wic: Fix per=
missions when using exclude or include path</a><br /><br />I've also found =
this post from a user that says <a href=3D"https://www.mail-archive.com/yoc=
to@lists.yoctoproject.org/msg05717.html" target=3D"_blank" rel=3D"noopener"=
>"Just saw that the issue is that you can't use rootfs-dir with a subfolder=
"</a>. I am at a complete loss for where they have seen that information...=
 perhaps I can't see the forest for the trees.</p>
<p><br />So I'm wondering if this is a bug, or if I have done something dra=
stically incorrect? I have thrown a fair chunk of time at the issue, and in=
 the end all I could do is write a script that runs on first boot to chown =
the directories and set permissions as we need. Could someone weigh in plea=
se? I'd love to assist in writing a patch but looking at some of the code, =
I literally have no idea where to start...<br /><br />My wks file:</p>
<p><span style=3D"font-family: courier_newregular, courier;">part /boot --s=
ource bootimg-partition --fstype=3Dvfat --label boot --active --align 1024&=
nbsp; --use-uuid</span><br /><span style=3D"font-family: courier_newregular=
, courier;">part / --source rootfs --fstype=3Dext4 --label A --align 1024 -=
-use-uuid </span><br /><span style=3D"font-family: courier_newregular, cour=
ier;">part --source rootfs --fstype=3Dext4 --label B --align 1024 --use-uui=
d </span><br /><span style=3D"font-family: courier_newregular, courier;">pa=
rt /data --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/data --fstype=3Dext=
4 --label data --align 1024&nbsp; --use-uuid --size 10<br /><br /></span>Im=
age recipe excerpt, I realize this shouldn't go in a <span style=3D"font-fa=
mily: courier_newregular, courier;">ROOTFS_POSTPROCESS_COMMAND</span> neces=
sarily, this is just an artifact of my testing:<br /><br /><span style=3D"f=
ont-family: courier_newregular, courier;">ROOTFS_POSTPROCESS_COMMAND +=3D "=
 chmod_dirs;"</span><br /><br /><span style=3D"font-family: courier_newregu=
lar, courier;">chmod_dirs() {</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">&nbsp;&nbsp; &nbsp;mkdir -p ${IMAGE_ROOTFS}/data/f=
irmware</span><br /><span style=3D"font-family: courier_newregular, courier=
;">&nbsp;&nbsp; &nbsp;chown 0:421 ${IMAGE_ROOTFS}/data/firmware</span><br /=
><span style=3D"font-family: courier_newregular, courier;">&nbsp;&nbsp; &nb=
sp;chmod 0770&nbsp; ${IMAGE_ROOTFS}/data/firmware</span><br /><span style=
=3D"font-family: courier_newregular, courier;">&nbsp;&nbsp; &nbsp;lnr ${IMA=
GE_ROOTFS}/data/firmware ${IMAGE_ROOTFS}/opt/Firmware</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">}</span></p>
<p>Resulting folder in image:<br /><span style=3D"font-family: courier_newr=
egular, courier;">root@sgc30cube:~# ls -la /data</span><br /><span style=3D=
"font-family: courier_newregular, courier;">drwxr-xr-x&nbsp;&nbsp;&nbsp; 4 =
root&nbsp;&nbsp;&nbsp;&nbsp; root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 1024 Nov 30 09:00 .</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">drwxr-xr-x&nbsp;&nbsp; 21 root&nbsp;&nbsp;&nbsp=
;&nbsp; root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1024 Nov=
 30 09:00 ..</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">drwxr-x---&nbsp;&nbsp;&nbsp; 2 1000&nbsp;&nbsp;&nbsp;&nbsp; 1000&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1024 Mar&nbsp; 9&nbsp; =
2018 firmware</span><br /><span style=3D"font-family: courier_newregular, c=
ourier;">drwx------&nbsp;&nbsp;&nbsp; 2 root&nbsp;&nbsp;&nbsp;&nbsp; root&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12288 Nov 30 09:00 lost+foun=
d<br /><br /></span>Is there a more elegant way to work around this issue, =
rather than scripted chmod/chown on the target?</p>
<p>Please let me know if I could provide more useful information.</p>
<p>&nbsp;</p>
<p>Thank you,</p>

--sVwLy7MUMTmP1axIie4q--

