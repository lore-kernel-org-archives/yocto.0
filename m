Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBDECC46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 10:42:09 +0000 (UTC)
Subject: Re: [yocto] Problem with overlayed recipes
To: Marco Cavallini <koansoftware@gmail.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Livorno, Tuscany, IT (176.246.5.130)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 09 Jan 2024 02:42:08 -0800
References: <11840.1704786438525164797@lists.yoctoproject.org>
In-Reply-To: <11840.1704786438525164797@lists.yoctoproject.org>
Message-ID: <28934.1704796928231404958@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Nq3dcCs7F5AAKnQP90PE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 10:42:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62115

--Nq3dcCs7F5AAKnQP90PE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Marco,

it is there:

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/home/vboxuser/yocto/poky/meta \
/home/vboxuser/yocto/poky/meta-poky \
/home/vboxuser/yocto/poky/meta-yocto-bsp \
/home/vboxuser/yocto/meta-openembedded/meta-oe \
/home/vboxuser/yocto/meta-intel \
/home/vboxuser/yocto/meta-mytest \
"

Grazie, ciao
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

--Nq3dcCs7F5AAKnQP90PE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you Marco,<br /><br />it is there:<br /><br />
<div><span style=3D"color: #0000ff;"># POKY_BBLAYERS_CONF_VERSION is increa=
sed each time build/conf/bblayers.conf</span></div>
<div><span style=3D"color: #0000ff;"># changes incompatibly</span></div>
<div><span style=3D"color: #0000ff;">POKY_BBLAYERS_CONF_VERSION =3D "2"</sp=
an></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">BBPATH =3D "${TOPDIR}"</span></div>
<div><span style=3D"color: #0000ff;">BBFILES ?=3D ""</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">BBLAYERS ?=3D " \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/poky/meta =
\</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/poky/meta-=
poky \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/poky/meta-=
yocto-bsp \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/meta-opene=
mbedded/meta-oe \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/meta-intel=
 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; /home/vboxuser/yocto/meta-mytes=
t \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; "</span><br /><br />Grazie, cia=
o</div>
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

--Nq3dcCs7F5AAKnQP90PE--

