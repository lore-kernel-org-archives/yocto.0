Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F676C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 12:26:14 +0000 (UTC)
Subject: Using meta-qt5-extra layer build KDE support on riscv target   #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.98.179.254)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Oct 2021 05:26:13 -0700
Message-ID: <FyQ1.1634041573203203885.JcyN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WXyxG74Utocq9mPGIrtJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 12:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55035

--WXyxG74Utocq9mPGIrtJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am facing bellow error while building KDE support using meta-qt5-extra la=
yer.can any body know please suggest me how can i fix this problem.

I have added already qttools -> this will provide Qt5LinguistTools but gett=
ing below error.

Error displayed:
=C2=A0CMake Error at /usr/share/ECM/modules/ECMPoQmTools.cmake:144 (find_pa=
ckage): Could not find a package configuration file provided by "Qt5Linguis=
tTools"=C2=A0 with any of the following names:

=C2=A0=C2=A0=C2=A0 Qt5LinguistToolsConfig.cmake
=C2=A0=C2=A0=C2=A0 qt5linguisttools-config.cmake

Add the installation prefix of "Qt5LinguistTools" to CMAKE_PREFIX_PATH or=
=C2=A0 set "Qt5LinguistTools_DIR" to a directory containing one of the abov=
e
files.=C2=A0 If "Qt5LinguistTools" provides a separate development package =
or=C2=A0 SDK, be sure it has been installed.
Call Stack (most recent call first):
/usr/share/ECM/modules/ECMPoQmTools.cmake:234 (ecm_process_po_files_as_qm)=
=C2=A0 CMakeLists.txt:317 (ecm_install_po_files_as_qm)

-- Configuring incomplete, errors occurred!
See also "/usr/src/kde/phonon-4.10.3/build/CMakeFiles/CMakeOutput.log".

--
Regards,
Sateesh

--WXyxG74Utocq9mPGIrtJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">Hi Guys,<br /><br />I am facing bellow error while building KDE su=
pport using meta-qt5-extra layer.can any body know please suggest me how ca=
n i fix this problem.<br /><br />I have added already qttools -&gt; this wi=
ll provide Qt5LinguistTools but getting below error.<br /><br />Error displ=
ayed:
</pre>
<tt style=3D"margin: 0px; font-family: courier, 'courier new', monospace; c=
olor: #a01e1e;"></tt>
<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">&nbsp;</pre>
<tt style=3D"margin: 0px; font-family: courier, 'courier new', monospace; c=
olor: #a01e1e;">CMake Error at /usr/share/ECM/modules/ECMPoQmTools.cmake:14=
4&nbsp;</tt><tt style=3D"margin: 0px; font-family: courier, 'courier new', =
monospace; color: #a01e1e;">(find_package):&nbsp;</tt><tt style=3D"margin: =
0px; font-family: courier, 'courier new', monospace; color: #a01e1e;">&nbsp=
; Could not find a package configuration file provided by&nbsp;</tt><tt sty=
le=3D"margin: 0px; font-family: courier, 'courier new', monospace; color: #=
a01e1e;">"Qt5LinguistTools"</tt>
<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">&nbsp; with any of the following names:

&nbsp;&nbsp;&nbsp; Qt5LinguistToolsConfig.cmake
&nbsp;&nbsp;&nbsp; qt5linguisttools-config.cmake

</pre>
<tt style=3D"margin: 0px; font-family: courier, 'courier new', monospace; c=
olor: #a01e1e;">&nbsp; Add the installation prefix of "Qt5LinguistTools" to=
&nbsp;</tt><tt style=3D"margin: 0px; font-family: courier, 'courier new', m=
onospace; color: #a01e1e;">CMAKE_PREFIX_PATH or</tt>
<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">&nbsp; set "Qt5LinguistTools_DIR" to a directory containing one of=
 the above
</pre>
<tt style=3D"margin: 0px; font-family: courier, 'courier new', monospace; c=
olor: #a01e1e;">&nbsp; files.&nbsp; If "Qt5LinguistTools" provides a separa=
te development&nbsp;</tt><tt style=3D"margin: 0px; font-family: courier, 'c=
ourier new', monospace; color: #a01e1e;">package or</tt>
<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">&nbsp; SDK, be sure it has been installed.
Call Stack (most recent call first):
</pre>
<tt style=3D"margin: 0px; font-family: courier, 'courier new', monospace; c=
olor: #a01e1e;">&nbsp; /usr/share/ECM/modules/ECMPoQmTools.cmake:234&nbsp;<=
/tt><tt style=3D"margin: 0px; font-family: courier, 'courier new', monospac=
e; color: #a01e1e;">(ecm_process_po_files_as_qm)</tt>
<pre style=3D"font-family: courier, 'courier new', monospace; font-size: 14=
px; white-space: pre-wrap; margin: 0em; color: #a01e1e; background-color: #=
ffffff;">&nbsp; CMakeLists.txt:317 (ecm_install_po_files_as_qm)


-- Configuring incomplete, errors occurred!
See also "/usr/src/kde/phonon-4.10.3/build/CMakeFiles/CMakeOutput.log".
</pre>
<div>&nbsp;</div>
-- <br />Regards,<br />Sateesh

--WXyxG74Utocq9mPGIrtJ--

