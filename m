Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644A5C7EE23
	for <webhook@archiver.kernel.org>; Mon,  5 Jun 2023 17:47:14 +0000 (UTC)
Subject: new recipe file to extract the tar.gz  in to root directory  #hardknott
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.240.78.191)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 Jun 2023 10:47:09 -0700
Message-ID: <rC1u.1685987229179457557.GJiP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D6tQ35QZOzpUJb9Hc4QF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Jun 2023 17:47:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60182

--D6tQ35QZOzpUJb9Hc4QF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello geeks

Hope all are well

I need to create the Yocto recipe to extract the local tra.gz based project=
 files in to root directory

here is my recipe contents

###############################################################

SUMMARY =3D "Eyesite Application"
LICENSE =3D "MIT"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"

FILES_${PN} +=3D "/eyesite"

SRC_URI =3D "file://eyesite.tar.gz"

S =3D "${WORKDIR}"

do_unpack() {
# Extract the tar.gz file
tar -xf ${WORKDIR}/eyesite.tar.gz -C ${WORKDIR}
}

do_install() {
# Create the eyesite directory in the root
install -d ${D}/eyesite

# Install the extracted application
cp -r ${WORKDIR}/eyesite ${D}/eyesite
}

#################################################################

The file structure is as follows under the *recipe-app* file

=E2=94=9C=E2=94=80=E2=94=80 eyesite
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 eyesite_1.0.bb
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 files
=E2=94=82=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 e=
yesite.tar.gz

I'm getting below Yocto error during the building
########################################################

Log data follows:
| DEBUG: Executing shell function do_unpack
| tar: /home/mahi/Documents/AIO_System/var-fslc-yocto/build_aio/tmp/work/co=
rtexa7t2hf-neon-fslc-linux-gnueabi/eyesite/1.0-r0/eyesite.tar.gz: Cannot op=
en: No such file or directory
| tar: Error is not recoverable: exiting now
| WARNING: exit code 2 from a shell command.
| ERROR: ExecutionError('/home/mahi/Documents/AIO_System/var-fslc-yocto/bui=
ld_aio/tmp/work/cortexa7t2hf-neon-fslc-linux-gnueabi/eyesite/1.0-r0/temp/ru=
n.do_unpack.82783', 2, None, None)

########################################################

Can anyone help me here ?

Thanks

--D6tQ35QZOzpUJb9Hc4QF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello geeks</p>
<p>Hope all are well</p>
<p>&nbsp;</p>
<p>I need to create the Yocto recipe to extract the local tra.gz based proj=
ect files in to root directory</p>
<p>&nbsp;</p>
<p>here is my recipe contents</p>
<p>###############################################################</p>
<p>SUMMARY =3D "Eyesite Application"<br />LICENSE =3D "MIT"<br /><br />FILE=
SEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br /><br />LIC_FILES_CHKSUM =
=3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f30=
2"<br /><br />FILES_${PN} +=3D "/eyesite"<br /><br />SRC_URI =3D "file://ey=
esite.tar.gz"<br /><br />S =3D "${WORKDIR}"<br /><br />do_unpack() {<br />&=
nbsp;&nbsp;&nbsp; # Extract the tar.gz file<br />&nbsp;&nbsp;&nbsp; tar -xf=
 ${WORKDIR}/eyesite.tar.gz -C ${WORKDIR}<br />}<br /><br />do_install() {<b=
r />&nbsp;&nbsp;&nbsp; # Create the eyesite directory in the root<br />&nbs=
p;&nbsp;&nbsp; install -d ${D}/eyesite<br /><br />&nbsp;&nbsp;&nbsp; # Inst=
all the extracted application<br />&nbsp;&nbsp;&nbsp; cp -r ${WORKDIR}/eyes=
ite ${D}/eyesite<br />}<br /><br />########################################=
#########################</p>
<p>&nbsp;</p>
<p>The file structure is as follows under the <strong>recipe-app</strong> f=
ile</p>
<p>=E2=94=9C=E2=94=80=E2=94=80 eyesite<br />=E2=94=82&nbsp;&nbsp; =E2=94=9C=
=E2=94=80=E2=94=80 eyesite_1.0.bb<br />=E2=94=82&nbsp;&nbsp; =E2=94=94=E2=
=94=80=E2=94=80 files<br />=E2=94=82&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=E2=94=94=E2=94=80=E2=94=80 eyesite.tar.gz</p>
<p>I'm getting below Yocto error during the building <br />################=
########################################</p>
<p>Log data follows:<br />| DEBUG: Executing shell function do_unpack<br />=
| tar: /home/mahi/Documents/AIO_System/var-fslc-yocto/build_aio/tmp/work/co=
rtexa7t2hf-neon-fslc-linux-gnueabi/eyesite/1.0-r0/eyesite.tar.gz: Cannot op=
en: No such file or directory<br />| tar: Error is not recoverable: exiting=
 now<br />| WARNING: exit code 2 from a shell command.<br />| ERROR: Execut=
ionError('/home/mahi/Documents/AIO_System/var-fslc-yocto/build_aio/tmp/work=
/cortexa7t2hf-neon-fslc-linux-gnueabi/eyesite/1.0-r0/temp/run.do_unpack.827=
83', 2, None, None)<br /><br />############################################=
############</p>
<p>&nbsp;</p>
<p>Can anyone help me here ?</p>
<p>Thanks</p>

--D6tQ35QZOzpUJb9Hc4QF--

