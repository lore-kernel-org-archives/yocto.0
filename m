Return-Path: <howard.egan@avid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5004CC433F5
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 19:03:45 +0000 (UTC)
Subject: Possible to ignore a missing file in recipe without error?
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Feb 2022 11:03:44 -0800
Message-ID: <ZwA0.1644606224818205423.3XEH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VkNEpRorP2mbDXzsy6CS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 19:03:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56161

--VkNEpRorP2mbDXzsy6CS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:

I have a simple recipe that installs a few miscellaneous files, one of the =
files may or may not be present and in reality that's ok for the moment, bu=
t I don't see a way to do things in a recipe based on the presence or absen=
ce of a file.

For example:

LICENSE=3D"CLOSED"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

# always present file
SRC_URI +=3D "file://myconfig.config"

# sometimes present file - is there a way to conditionally do this statemen=
t
SRC_URI +=3D "file://myOtherConfig.config"

do_install() {
install -d ${D}${sysconfdir}
install -m 0755 ${WORKDIR}/myconfig.config ${D}${sysconfdir}
#same here
install -m 0755 ${WORKDIR}/myOtherConfig.config ${D}${sysconfdir}

}

FILES_${PN} +=3D " ${sysconfdir}/myconfig.config "
#same here
FILES_${PN} +=3D " ${sysconfdir}/myOtherConfig.config "

Many thanks
Howard

--VkNEpRorP2mbDXzsy6CS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:<br /><br />I have a simple recipe that installs a few miscellaneous fil=
es, one of the files may or may not be present and in reality that's ok for=
 the moment, but I don't see a way to do things in a recipe based on the pr=
esence or absence of a file.&nbsp; <br /><br />For example:<br /><br />LICE=
NSE=3D"CLOSED"<br /><br />FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<=
br /><br /># always present file<br />SRC_URI +=3D "file://myconfig.config"=
<br /><br /># sometimes present file - is there a way to conditionally do t=
his statement<br />SRC_URI +=3D "file://myOtherConfig.config"<br /><br /><b=
r /><br />do_install() {<br />&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdi=
r}<br />&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/myconfig.config ${D}$=
{sysconfdir}<br />&nbsp;&nbsp;&nbsp; #same here<br />&nbsp;&nbsp;&nbsp; ins=
tall -m 0755 ${WORKDIR}/myOtherConfig.config ${D}${sysconfdir}<br /><br />}=
<br /><br />FILES_${PN} +=3D " ${sysconfdir}/myconfig.config "<br />#same h=
ere<br />FILES_${PN} +=3D " ${sysconfdir}/myOtherConfig.config "<br /><br /=
><br />Many thanks<br />Howard<br />

--VkNEpRorP2mbDXzsy6CS--

