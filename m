Return-Path: <kovom30835@locawin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02855CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 09:41:29 +0000 (UTC)
Subject: [GIT-TAG] How do I include the aligned version of a Git tag in the build?
To: yocto@lists.yoctoproject.org
From: kovom30835@locawin.com
X-Originating-Location: Mugnano di Napoli, Campania, IT (88.45.138.69)
X-Originating-Platform: Windows Chrome 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 13 Oct 2023 02:41:26 -0700
Message-ID: <78JZ.1697190086777929372.w8tx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lk6uDMLNeDGcXIshYMnI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 09:41:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61330

--lk6uDMLNeDGcXIshYMnI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I need to include the Git tag in my project's recipe build in order to =
implement automatic versioning. If the tag is set before the prefetch step =
is performed, I can read the tag after prefetching. Then, when the project =
is built, the tag is correctly stored in the executable file.

However, if I change the tag on the Git repository (server-side), the BitBa=
ke recipe is not re-executed, and the new tag version is not included in th=
e build.

Is there a method to execute the recipe only when a new tag is set in the r=
emote repository?

Many thanks

--lk6uDMLNeDGcXIshYMnI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"font-size: 14px;">Hi, I need to include the Git tag in =
my project's recipe build in order to implement automatic versioning. If th=
e tag is set before the prefetch step is performed, I can read the tag afte=
r prefetching. Then, when the project is built, the tag is correctly stored=
 in the executable file.</span></div>
<div><span style=3D"font-size: 14px;">&nbsp;</span></div>
<div><span style=3D"font-size: 14px;">However, if I change the tag on the G=
it repository (server-side), the BitBake recipe is not re-executed, and the=
 new tag version is not included in the build.</span></div>
<div><span style=3D"font-size: 14px;">&nbsp;</span></div>
<div><span style=3D"font-size: 14px;">Is there a method to execute the reci=
pe only when a new tag is set in the remote repository?</span></div>
<div><span style=3D"font-size: 14px;">&nbsp;</span></div>
<div><span style=3D"font-size: 14px;">Many thanks<br /><br /></span></div>

--lk6uDMLNeDGcXIshYMnI--

