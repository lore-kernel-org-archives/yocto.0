Return-Path: <bjorn.gurnett@thermia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37D4CC0015E
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 09:24:32 +0000 (UTC)
Subject: Qt6.2 with eglfs build failing on kirkstone
To: yocto@lists.yoctoproject.org
From: "Gurnett, Bjorn" <bjorn.gurnett@thermia.com>
X-Originating-Location: Karlstad, Värmland County, SE (94.255.191.7)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Aug 2023 02:24:31 -0700
Message-ID: <uxPZ.1691745871291658410.lPeB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4xIZeNX69gKEj8u0Rx8z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 09:24:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60780

--4xIZeNX69gKEj8u0Rx8z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to build an custom image based on core-image with kirkstone and qt l=
ts-6.2 that should use the eglfs backend for a am625.

when building I keep getting the following error

glfskmsegldeviceintegration.cpp
| In file included from /home/jenkins/Yocto/kirkstone/poky/build/tmp/work/x=
86_64-linux/qtbase-native/6.2.10-r0/build/include/QtEglFSDeviceIntegration/=
6.2.10/QtEglFSDeviceIntegration/private/qeglfscursor_p.h:1,
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from /home/=
jenkins/Yocto/kirkstone/poky/build/tmp/work/x86_64-linux/qtbase-native/6.2.=
10-r0/git/src/plugins/platforms/eglfs/deviceintegration/eglfs_kms_egldevice=
/qeglfskmsegldeviceintegration.cpp:46:
| /home/jenkins/Yocto/kirkstone/poky/build/tmp/work/x86_64-linux/qtbase-nat=
ive/6.2.10-r0/build/include/QtEglFSDeviceIntegration/6.2.10/QtEglFSDeviceIn=
tegration/private/../../../../../../git/src/plugins/platforms/eglfs/api/qeg=
lfscursor_p.h:57:10: fatal error: QtOpenGL/QOpenGLShaderProgram: No such fi=
le or directory
|=C2=A0 =C2=A0 57 | #include <QtOpenGL/QOpenGLShaderProgram>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~

would appreciate any suggestions

--4xIZeNX69gKEj8u0Rx8z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Trying to build an custom image based on core-image with kirkstone and qt l=
ts-6.2 that should use the eglfs backend for a am625.<br /><br />when build=
ing I keep getting the following error<br /><br />
<div>glfskmsegldeviceintegration.cpp</div>
<div>| In file included from /home/jenkins/Yocto/kirkstone/poky/build/tmp/w=
ork/x86_64-linux/qtbase-native/6.2.10-r0/build/include/QtEglFSDeviceIntegra=
tion/6.2.10/QtEglFSDeviceIntegration/private/qeglfscursor_p.h:1,</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; from /=
home/jenkins/Yocto/kirkstone/poky/build/tmp/work/x86_64-linux/qtbase-native=
/6.2.10-r0/git/src/plugins/platforms/eglfs/deviceintegration/eglfs_kms_egld=
evice/qeglfskmsegldeviceintegration.cpp:46:</div>
<div>| /home/jenkins/Yocto/kirkstone/poky/build/tmp/work/x86_64-linux/qtbas=
e-native/6.2.10-r0/build/include/QtEglFSDeviceIntegration/6.2.10/QtEglFSDev=
iceIntegration/private/../../../../../../git/src/plugins/platforms/eglfs/ap=
i/qeglfscursor_p.h:57:10: fatal error: QtOpenGL/QOpenGLShaderProgram: No su=
ch file or directory</div>
<div>|&nbsp; &nbsp; 57 | #include &lt;QtOpenGL/QOpenGLShaderProgram&gt;</di=
v>
<div>|&nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~<br /><br />would appreciate any suggestions</div>
<div>&nbsp;</div>

--4xIZeNX69gKEj8u0Rx8z--

