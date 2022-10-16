Return-Path: <umut@ediz.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D391C4332F
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 19:13:08 +0000 (UTC)
Subject: Fixing [host-user-contaminated] warning
To: yocto@lists.yoctoproject.org
From: umut@ediz.dev
X-Originating-Location: Istanbul, TR (31.223.36.187)
X-Originating-Platform: Mac Safari 16
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 16 Oct 2022 12:13:06 -0700
Message-ID: <HKHR.1665947586154153068.khQf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NnJSUjtUETceyHvADvaZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 19:13:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58342

--NnJSUjtUETceyHvADvaZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am working on a project that uses some proprietary layers from a 3rd part=
y. These layers provide tar archives that include prebuilt binaries of some=
 packages and these archives cause host-user-contaminated warnings. Since I=
 only have the root user in my target system, and since I changed the UID/G=
ID of my build user I assume it is not a false-positive. So, I dug a bit to=
 find and resolve the issue and find the function that installs binaries. T=
he function only extracts a tar archive to the ${D} directory with the comm=
and below, nothing else. No fakeroot, no management of ownership/permission=
s.

>=20
> tar -xjvf $prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${D}

I tried various options of tar to extract these files with different UID an=
d GID with no success.
How can I solve this issue? I think it would be better if I patch the scrip=
t to use the install command but I am not sure how can I integrate that kin=
d of workflow with lots of tar archives that includes lots of subdirectorie=
s.

P.S. : I use an LXC-based non-privileged ubuntu container in Proxmox VE as =
the build host. I don't know if it may affect something but wanted to menti=
on it just in case.

Best regards,
Umut Ediz

--NnJSUjtUETceyHvADvaZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I am working on a project that uses some proprietary layers from a=
 3rd party. These layers provide tar archives that include prebuilt binarie=
s of some packages and these archives cause host-user-contaminated warnings=
. Since I only have the root user in my target system, and since I changed =
the UID/GID of my build user I assume it is not a false-positive. So, I dug=
 a bit to find and resolve the issue and find the function that installs bi=
naries. The function only extracts a tar archive to the ${D} directory with=
 the command below, nothing else. No fakeroot, no management of ownership/p=
ermissions.<br />
<blockquote>tar -xjvf $prebuiltdir/${TARGET}/${PN}/${PN}-binaries.tar -C ${=
D}</blockquote>
I tried various options of tar to extract these files with different UID an=
d GID with no success.<br />How can I solve this issue? I think it would be=
 better if I patch the script to use the install command but I am not sure =
how can I integrate that kind of workflow with lots of tar archives that in=
cludes lots of subdirectories.<br /><br />P.S. : I use an LXC-based non-pri=
vileged ubuntu container in Proxmox VE as the build host. I don't know if i=
t may affect something but wanted to mention it just in case.<br /><br />Be=
st regards,<br />Umut Ediz

--NnJSUjtUETceyHvADvaZ--

