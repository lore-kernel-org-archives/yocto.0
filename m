Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21977C678D5
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 16:34:52 +0000 (UTC)
Subject: Re: How to install files to custom partition?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Mar 2023 08:34:49 -0800
References: <26451.1678292286573455950@lists.yoctoproject.org>
In-Reply-To: <26451.1678292286573455950@lists.yoctoproject.org>
Message-ID: <5682.1678293289751585846@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="L8khoqoDpaSqo2oIrnqh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 16:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59369

--L8khoqoDpaSqo2oIrnqh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Update: Tried below approach

do_install() {
install -d ${D}${custom}/
install -m 0755 ${S}/sample.sh ${D}${custom}/sample.sh
}

FILES_${PN} =3D " \
${custom}/sample.sh \
"

But, getting the error "Files/directories were installed but not shipped in=
 any package"

--L8khoqoDpaSqo2oIrnqh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Update: Tried below approach<br /><br />
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}${custom}/</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/sample.sh ${D}${custom}/sample.sh<b=
r />}<br /><br />
<div>FILES_${PN} =3D " \</div>
<div>&nbsp; &nbsp; ${custom}/sample.sh \<br />"<br /><br />But, getting the=
 error "Files/directories were installed but not shipped in any package"</d=
iv>
</div>

--L8khoqoDpaSqo2oIrnqh--

