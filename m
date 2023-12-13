Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8ECEC4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 19:02:54 +0000 (UTC)
Subject: Re: [yocto] do_rootfs failed
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: daniele.lugli@gmail.com
X-Originating-Location: Marina di Ravenna, Emilia-Romagna, IT (176.246.31.108)
X-Originating-Platform: Windows Opera 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 11:02:47 -0800
References: <CAMKF1sp1dLp5hzAraBz6FbHFJxKhYCHWQpk+5kb8Xfy_y_h3YA@mail.gmail.com>
In-Reply-To: <CAMKF1sp1dLp5hzAraBz6FbHFJxKhYCHWQpk+5kb8Xfy_y_h3YA@mail.gmail.com>
Message-ID: <16371.1702494167654412785@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lgwtrlH9TddKJ5rmRNlY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 19:02:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61885

--lgwtrlH9TddKJ5rmRNlY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok thank you, I am going to try your suggestion.

So my core-image-rt-extended.bb is now as follows:

require recipes-core/images/core-image-minimal-dev.bb

DEPENDS:append =3D " linux-yocto"

DEPENDS:append =3D " qemuwrapper-cross"

IMAGE_FEATURES +=3D "package-management ssh-server-dropbear"
EXTRA_IMAGE_FEATURES =3D "tools-debug debug-tweaks tools-profile dbg-pkgs"

IMAGE_INSTALL =3D "\
${CORE_IMAGE_BASE_INSTALL} \
rt-app \
schedtool-dl \
"
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

--lgwtrlH9TddKJ5rmRNlY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok thank you, I am going to try your suggestion.<br /><br />So my core-imag=
e-rt-extended.bb is now as follows:<br /><br />
<div><span style=3D"color: #339966;">require recipes-core/images/core-image=
-minimal-dev.bb</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #339966;">DEPENDS:append =3D " linux-yocto"</spa=
n></div>
<div>&nbsp;</div>
<div><span style=3D"color: #339966;">DEPENDS:append =3D " qemuwrapper-cross=
"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #339966;">IMAGE_FEATURES +=3D "package-managemen=
t ssh-server-dropbear"</span></div>
<div><span style=3D"color: #339966;">EXTRA_IMAGE_FEATURES =3D "tools-debug =
debug-tweaks tools-profile dbg-pkgs"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #339966;">IMAGE_INSTALL =3D "\</span></div>
<div><span style=3D"white-space: normal; color: #339966;"><span style=3D"wh=
ite-space: pre;"> </span>${CORE_IMAGE_BASE_INSTALL} \</span></div>
<div><span style=3D"white-space: normal; color: #339966;"><span style=3D"wh=
ite-space: pre;"> </span>rt-app \</span></div>
<div><span style=3D"white-space: normal; color: #339966;"><span style=3D"wh=
ite-space: pre;"> </span>schedtool-dl \</span></div>
<div><span style=3D"white-space: normal; color: #339966;"><span style=3D"wh=
ite-space: pre;"> </span>"</span></div>
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

--lgwtrlH9TddKJ5rmRNlY--

