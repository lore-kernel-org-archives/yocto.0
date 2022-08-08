Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24750C00140
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 16:06:12 +0000 (UTC)
Subject: How to add INCOMPATIBLE_LICENSE only for one image? #bitbake #dunfell
To: yocto@lists.yoctoproject.org
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Aug 2022 09:06:09 -0700
Message-ID: <lWMP.1659974769649121840.u8lR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gPoPzOQ7pRf0e2WD9rYx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 16:06:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57802

--gPoPzOQ7pRf0e2WD9rYx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've two image recipes ( foo.bb ( http://foo.bb/ ) & bar.bb ( http://bar.bb=
/ ) ). I want to add INCOMPATIBLE_LICENSE=3D"GPLv3" only in foo.bb ( http:/=
/foo.bb/ ) & not bar.bb ( http://bar.bb/ )

Adding=C2=A0INCOMPATIBLE_LICENSE=3D" GPLv3" in local.conf is applying it on=
 both the images. So I tried this instead,

INCOMPATIBLE_LICENSE_pn-foo=3D" GPLv3"

But this also isn't=C2=A0working. Is there any other way for this?
NOTE : The recipes are image recipes, not packages

Cheers,
Priyanshu Sharma

--gPoPzOQ7pRf0e2WD9rYx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Hi,</span>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">I've two image recipes (<a style=3D"color: #1155cc;" href=
=3D"http://foo.bb/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=
=3D"https://www.google.com/url?q=3Dhttp://foo.bb&amp;source=3Dgmail&amp;ust=
=3D1660060563207000&amp;usg=3DAOvVaw1XXuHtySH5jhI_qrIdbkJ6">foo.bb</a>&nbsp=
;&amp;&nbsp;<a style=3D"color: #1155cc;" href=3D"http://bar.bb/" target=3D"=
_blank" rel=3D"noopener" data-saferedirecturl=3D"https://www.google.com/url=
?q=3Dhttp://bar.bb&amp;source=3Dgmail&amp;ust=3D1660060563208000&amp;usg=3D=
AOvVaw13rRguK8cWwD2DeYrikH1z">bar.bb</a>). I want to add INCOMPATIBLE_LICEN=
SE=3D"GPLv3" only in&nbsp;<a style=3D"color: #1155cc;" href=3D"http://foo.b=
b/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https://www.=
google.com/url?q=3Dhttp://foo.bb&amp;source=3Dgmail&amp;ust=3D1660060563208=
000&amp;usg=3DAOvVaw0W9tfUTVf1CN_Qr-Z6jXP0">foo.bb</a>&nbsp;&amp; not&nbsp;=
<a style=3D"color: #1155cc;" href=3D"http://bar.bb/" target=3D"_blank" rel=
=3D"noopener" data-saferedirecturl=3D"https://www.google.com/url?q=3Dhttp:/=
/bar.bb&amp;source=3Dgmail&amp;ust=3D1660060563208000&amp;usg=3DAOvVaw13rRg=
uK8cWwD2DeYrikH1z">bar.bb</a><br /><br />Adding&nbsp;INCOMPATIBLE_LICENSE=
=3D"<wbr />GPLv3" in local.conf is applying it on both the images. So I tri=
ed this instead,<br /><br /><span style=3D"font-family: monospace;">INCOMPA=
TIBLE_LICENSE_pn-foo=3D"<wbr />GPLv3"</span></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><span style=3D"font-family: monospace;">&nbsp;</span></div=
>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><span style=3D"font-family: arial, sans-serif;">But this a=
lso isn't&nbsp;working. Is there any other way for this?<br />NOTE : The re=
cipes are image recipes, not packages</span></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><span style=3D"font-family: arial, sans-serif;">&nbsp;</sp=
an></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><span style=3D"font-family: arial, sans-serif;">Cheers,</s=
pan></div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><span style=3D"font-family: arial, sans-serif;">Priyanshu =
Sharma</span></div>

--gPoPzOQ7pRf0e2WD9rYx--

