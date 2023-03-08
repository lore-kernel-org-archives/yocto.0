Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05DADC64EC4
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 16:18:12 +0000 (UTC)
Subject: Re: How to install files to custom partition?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Mar 2023 08:18:06 -0800
References: <CANNYZj-XHuy5p9SQZTaAxfxbHL4Z7ksWcD0UhKgoxyY18-mr8w@mail.gmail.com>
In-Reply-To: <CANNYZj-XHuy5p9SQZTaAxfxbHL4Z7ksWcD0UhKgoxyY18-mr8w@mail.gmail.com>
Message-ID: <26451.1678292286573455950@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eswlQClfIWYf9QsMF807"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 16:18:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59368

--eswlQClfIWYf9QsMF807
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alex,

Thanks for the update.

I already have a partition created using .wks file. "--label custom" is use=
d here

>=20
> In your recipe you need to install files into the root directory of
> the partition itself and not its mount point,
>=20

Do you mean like this below?

do_install() {
install -d ${D}${custom}/
install -m 0755 ${S}/sample.sh ${D}${custom}/sample.sh
}

I am not sure if I understodd below statement fully:

"Then you need to create an image recipe that will install one or more of t=
he packages that contain the files that should be on the partition."

I think adding=C2=A0FILES_${PN} should take care of this, right?

FILES_${PN} =3D " \
${custom}/sample.sh \
"

--eswlQClfIWYf9QsMF807
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alex,<br /><br />Thanks for the update.<br /><br />I already have a p=
artition created using .wks file. "--label custom" is used here<br />
<blockquote><span style=3D"white-space: pre-wrap;">In your recipe you need =
to install files into the root directory of</span><br style=3D"white-space:=
 pre-wrap;" /><span style=3D"white-space: pre-wrap;">the partition itself a=
nd not its mount point,<br /></span></blockquote>
<br />Do you mean like this below?<br /><br />
<div>do_install() {</div>
<div>&nbsp; &nbsp; install -d ${D}${custom}/</div>
<div>&nbsp; &nbsp; install -m 0755 ${S}/sample.sh ${D}${custom}/sample.sh<b=
r />}</div>
<div><br /><span style=3D"white-space: pre-wrap;">I am not sure if I unders=
todd below statement fully:<br /><br />"Then you need to create an image re=
cipe that will install one or more </span><span style=3D"white-space: pre-w=
rap;">of the packages that contain the files that should be on the </span><=
span style=3D"white-space: pre-wrap;">partition."<br /><br /></span>I think=
 adding&nbsp;FILES_${PN} should take care of this, right?<br /><br />
<div>FILES_${PN} =3D " \</div>
<div>&nbsp; &nbsp; ${custom}/sample.sh \ <br />"</div>
</div>

--eswlQClfIWYf9QsMF807--

