Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36D8AC02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 17:22:55 +0000 (UTC)
Subject: Re: [yocto] [HELP]
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: Pune, Maharashtra, IN (165.225.120.155)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2025 09:22:46 -0800
References: <CANNYZj9hFmjRONtY6Gx5fBsp2UsTn3yMzKOn5uhX4UT5LxWp8g@mail.gmail.com>
In-Reply-To: <CANNYZj9hFmjRONtY6Gx5fBsp2UsTn3yMzKOn5uhX4UT5LxWp8g@mail.gmail.com>
Message-ID: <1047.1736961766763185321@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NAZVCWWLk4wjeDd2XYpm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 17:22:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64563

--NAZVCWWLk4wjeDd2XYpm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

First, does /home/build/project/meta-eaton/conf/layer.conf exist? :- yes it=
 exists
build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env

1st if
templatdirvalue =3D template-name , templateconf value =3D /home/build/proj=
ect/meta-eaton/conf/templates/template-name/default
Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/tem=
plates/template-name/default) must point to meta-some-layer/conf/templates/=
te =C2=A0 =C2=A0mplate-name

1st IF it is failing

--NAZVCWWLk4wjeDd2XYpm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; back=
ground-color: #ffffff; text-decoration-thickness: initial; text-decoration-=
style: initial; text-decoration-color: initial; display: inline !important;=
 float: none;">First, does /home/build/project/meta-eaton/conf/layer.conf e=
xist? :- yes it exists</span></div>
<div>build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env<br />=
<br />1st if<br />templatdirvalue =3D template-name , templateconf value =
=3D /home/build/project/meta-eaton/conf/templates/template-name/default<br =
/>Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/t=
emplates/template-name/default) must point to meta-some-layer/conf/template=
s/te &nbsp; &nbsp;mplate-name<br /><br />1st IF it is failing</div>

--NAZVCWWLk4wjeDd2XYpm--

