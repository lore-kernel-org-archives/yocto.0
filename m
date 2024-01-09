Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47EDFC46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 15:22:11 +0000 (UTC)
Subject: Re: [yocto] Problem with overlayed recipes
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Livorno, Tuscany, IT (176.246.5.130)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 09 Jan 2024 07:22:04 -0800
References: <CANNYZj9HfjU25_p9C7HwabP9YaHjMcbL0YTMwLfhLVHEE0Qa4g@mail.gmail.com>
In-Reply-To: <CANNYZj9HfjU25_p9C7HwabP9YaHjMcbL0YTMwLfhLVHEE0Qa4g@mail.gmail.com>
Message-ID: <28934.1704813724465689746@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OcnUZDq5rQFra9qaCadw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 15:22:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62120

--OcnUZDq5rQFra9qaCadw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your reply.

I replaced the content of mytest-image.bb with that of meta-intel/recipes-r=
t/images/core-image-rt-sdk.bb and added

IMAGE_INSTALL +=3D "simple-local"

at the end. This way I get a bootable wic, but find / -name simple-local fi=
nds nothing.

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--OcnUZDq5rQFra9qaCadw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thank you for your reply.<br /><br />I replaced the content of mytest-=
image.bb with that of meta-intel/recipes-rt/images/core-image-rt-sdk.bb and=
 added</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "simple-local"</spa=
n><br /><br /></div>
<div>at the end. This way I get a bootable wic, but <span style=3D"color: #=
0000ff;">find / -name simple-local</span> finds nothing.</div>
<div>&nbsp;</div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--OcnUZDq5rQFra9qaCadw--

