Return-Path: <dspore@parraid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E354C00145
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 16:56:38 +0000 (UTC)
Subject: Recipe to install third-party RPM  #bitbake 
To: yocto@lists.yoctoproject.org
From: dspore@parraid.com
X-Originating-Location: Lexington Park, Maryland, US (146.168.63.66)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Dec 2022 08:56:32 -0800
Message-ID: <oLwT.1670518592065738278.wqdu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QR6WKC6hpgSe3NZmzHEj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 16:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58764

--QR6WKC6hpgSe3NZmzHEj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I need to deploy a third-party package as part of my Yocto image.=C2=A0 I a=
m not sure how to build a recipe that will automate the installation of thi=
s RPM and dependencies.=C2=A0 If any of these dependent packages are not al=
ready included in the core-image-base image, I'll have to put together reci=
pes for those as well and add them to the main recipe for the package (the =
RPM I want to install).=C2=A0 I have a basic idea of what needs to be done =
but am fuzzy on the detail.=C2=A0 I'll need to create a recipe that points =
to my RPM file via=C2=A0SRC_URI, but I am not sure what commands need to be=
 included to make sure the RPM is seen as a package I can add via my local.=
conf.=C2=A0 The goal is to have the package installed in the final image su=
ch that the software is running as if the RPM was installed manually at the=
 command prompt on the target board.=C2=A0 =C2=A0I've done a lot of googlin=
g, but the few posts I could find contain bits of information that aren't t=
hat useful to a Yocto newbie.=C2=A0 Note that I am using latest version of =
Kirkstone.

Thanks!

David

--QR6WKC6hpgSe3NZmzHEj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I need to deploy a third-party package as part of my Yocto imag=
e.&nbsp; I am not sure how to build a recipe that will automate the install=
ation of this RPM and dependencies.&nbsp; If any of these dependent package=
s are not already included in the core-image-base image, I'll have to put t=
ogether recipes for those as well and add them to the main recipe for the p=
ackage (the RPM I want to install).&nbsp; I have a basic idea of what needs=
 to be done but am fuzzy on the detail.&nbsp; I'll need to create a recipe =
that points to my RPM file via&nbsp;SRC_URI, but I am not sure what command=
s need to be included to make sure the RPM is seen as a package I can add v=
ia my local.conf.&nbsp; The goal is to have the package installed in the fi=
nal image such that the software is running as if the RPM was installed man=
ually at the command prompt on the target board.&nbsp; &nbsp;I've done a lo=
t of googling, but the few posts I could find contain bits of information t=
hat aren't that useful to a Yocto newbie.&nbsp; Note that I am using latest=
 version of Kirkstone.<br /><br />Thanks!<br /><br />David

--QR6WKC6hpgSe3NZmzHEj--

