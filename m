Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A006C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 09:26:37 +0000 (UTC)
Subject: [Poky - Kirstone] About update FFmpeg to v6.0 in poky #bitbake #devtool #ffmpeg #kirkstone #yocto #poky
To: yocto@lists.yoctoproject.org
From: dspei@ambarella.com
X-Originating-Location: Shanghai, CN (116.246.37.178)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 24 Oct 2023 21:17:59 -0700
Message-ID: <xcT9.1698207479013990293.zP8l@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="djEreTdBmhTedIsIHM4L"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 09:26:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61476

--djEreTdBmhTedIsIHM4L
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, community

Thanks for your contribution to this great project.

The FFmpeg=C2=A06.0 was released on 2023-02-27. It is the latest stable FFm=
peg release from the 6.0 release branch.
https://ffmpeg.org/download.html#release_6.0

I can find it when using $ devtool latest-version FFmpeg, but the version=
=C2=A0of the FFmpeg recipe is 5.0.1 on poky-kirstone.
INFO: Current version: 5.0.1
INFO: Latest version: 6.0

Although we can use "devtool upgrade=E2=80=9C to update by hand, the defaul=
t version being updated to FFmpeg 6.0 is warranted from the point of view o=
f multimedia performance and yocto's long-term maintenance.

Thanks for any comments.

Thanks
Best Regard
Da-shun Pei
Ambarella Shanghai

--djEreTdBmhTedIsIHM4L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, community<br /><br />Thanks for your contribution to this great project=
.<br /><br />The FFmpeg&nbsp;6.0 was released on 2023-02-27. It is the late=
st stable FFmpeg release from the 6.0 release branch. <br /><a href=3D"http=
s://ffmpeg.org/download.html#release_6.0" target=3D"_blank" rel=3D"noopener=
">https://ffmpeg.org/download.html#release_6.0</a><br /><br />I can find it=
 when using $ devtool latest-version FFmpeg, but the version&nbsp;of the FF=
mpeg recipe is 5.0.1 on poky-kirstone.
<div>
<div>INFO: Current version: 5.0.1</div>
<div>INFO: Latest version: 6.0</div>
<br />Although we can use "devtool upgrade&ldquo; to update by hand, the de=
fault version being updated to FFmpeg 6.0 is warranted from the point of vi=
ew of multimedia performance and yocto's long-term maintenance.<br /><br />=
Thanks for any comments.<br /><br />Thanks<br />Best Regard<br />Da-shun Pe=
i<br />Ambarella Shanghai<br /><br /></div>
<div>&nbsp;</div>
<div><br /><br /></div>

--djEreTdBmhTedIsIHM4L--

