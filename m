Return-Path: <vishal.rana118@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73B6DC433F5
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 04:42:45 +0000 (UTC)
Subject: Unable to parse
 /home/PATH/meta-swupdate/recipes-support/swupdate/swupdate_git.bb #swupdate
To: yocto@lists.yoctoproject.org
From: vishal.rana118@gmail.com
X-Originating-Location: Kolkata, West Bengal, IN (115.110.82.107)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Nov 2021 20:42:44 -0800
Message-ID: <oXe3.1636605764505636153.kXhn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Gg6C1DnMlG60ZV4KPmQW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 04:42:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55308

--Gg6C1DnMlG60ZV4KPmQW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am new with Yocto and SWupdate framework. I am trying to integrate SWupda=
te framework in our existing yocto code.
I am using *SUMO version*. while trying to build kernel image I am getting =
below error.
*MACHINE=3Dimx6s-comg-mtech DISTRO=3Dfsl-imx-fb EULA=3D1 source setup-envir=
onment build-mtech*
*bitbake linux-comg-mtech-4.14.78.local*

////////////////////////////////////////////////////////Error log//////////=
///////////////////////////////////////////////////////////////////////////=
////////////////////////////////////////////////////
ERROR: Unable to parse /home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/=
yocto/sources/meta-swupdate/recipes-support/swupdate/swupdate_git.bb
Traceback (most recent call last):
File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/pok=
y/bitbake/lib/bb/parse/__init__.py", line 117, in handle(fn=3D'/home/Mtech/=
Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swupdate/recipes=
-support/swupdate/swupdate_git.bb', data=3D<bb.data_smart.DataSmart object =
at 0x7f2675a782b0>, include=3D0):
with data.inchistory.include(fn):
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return h['handle']=
(fn, data, include)
raise ParseError("not a BitBake file", fn)
File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/pok=
y/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 154, in handle(fn=3D'/h=
ome/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swupda=
te/recipes-support/swupdate/swupdate_git.bb', d=3D<bb.data_smart.DataSmart =
object at 0x7f2675a782b0>, include=3D0):
if ext !=3D ".bbclass" and include =3D=3D 0:
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ast.multi_finalize(fn, d)

File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/pok=
y/bitbake/lib/bb/parse/ast.py", line 391, in multi_finalize(fn=3D'/home/Mte=
ch/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swupdate/reci=
pes-support/swupdate/swupdate_git.bb', d=3D<bb.data_smart.DataSmart object =
at 0x7f2675a782b0>):
logger.debug(1, "Appending .bbappend file %s to %s", append, fn)
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.parse.BBHandler.handle(append, d, True)

File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/pok=
y/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 132, in handle(fn=3D'/h=
ome/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-mylaye=
r/recipes-support/swupdate/swupdate_%d', d=3D<bb.data_smart.DataSmart objec=
t at 0x7f2675a782b0>, include=3DTrue):

>=C2=A0 =C2=A0 abs_fn =3D resolve_file(fn, d)

File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/pok=
y/bitbake/lib/bb/parse/__init__.py", line 141, in resolve_file(fn=3D'/home/=
Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-mylayer/re=
cipes-support/swupdate/swupdate_%d', d=3D<bb.data_smart.DataSmart object at=
 0x7f2675a782b0>):
if not os.path.isfile(fn):
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise IOError(errno.ENOENT, "file %s not found=
" % fn)

FileNotFoundError: [Errno 2] file /home/Mtech/Graphics_Gx_Mtech/Graphics_GX=
_Mtech/BSP/yocto/sources/meta-mylayer/recipes-support/swupdate/swupdate_%d =
not found
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
/////////////////////////////////////

Not able to understand the root cause of this because without adding "meta-=
swupdate" layer I am able to build the code.
Please help me to resolve this issue.

Regards,
Vishal Rana

--Gg6C1DnMlG60ZV4KPmQW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />I am new with Yocto and SWupdate framework. I am trying=
 to integrate SWupdate framework in our existing yocto code.<br />I am usin=
g <strong>SUMO version</strong>. while trying to build kernel image I am ge=
tting below error.<br /><strong>MACHINE=3Dimx6s-comg-mtech DISTRO=3Dfsl-imx=
-fb EULA=3D1 source setup-environment build-mtech</strong><br /><strong>bit=
bake linux-comg-mtech-4.14.78.local</strong><br /><br />///////////////////=
/////////////////////////////////////Error log/////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
/////////////////////////////////<br />
<div>ERROR: Unable to parse /home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech=
/BSP/yocto/sources/meta-swupdate/recipes-support/swupdate/swupdate_git.bb</=
div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto=
/sources/poky/bitbake/lib/bb/parse/__init__.py", line 117, in handle(fn=3D'=
/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-swup=
date/recipes-support/swupdate/swupdate_git.bb', data=3D&lt;bb.data_smart.Da=
taSmart object at 0x7f2675a782b0&gt;, include=3D0):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;with dat=
a.inchistory.include(fn):</div>
<div>&nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; return h['handle'](fn, data, include)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise ParseError("not a BitBake file=
", fn)</div>
<div>&nbsp; File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto=
/sources/poky/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 154, in han=
dle(fn=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources=
/meta-swupdate/recipes-support/swupdate/swupdate_git.bb', d=3D&lt;bb.data_s=
mart.DataSmart object at 0x7f2675a782b0&gt;, include=3D0):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if ext !=3D ".bbclass" and include =
=3D=3D 0:</div>
<div>&nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; return ast.multi_finaliz=
e(fn, d)</div>
<div>&nbsp; &nbsp; &nbsp;</div>
<div>&nbsp; File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto=
/sources/poky/bitbake/lib/bb/parse/ast.py", line 391, in multi_finalize(fn=
=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/meta-=
swupdate/recipes-support/swupdate/swupdate_git.bb', d=3D&lt;bb.data_smart.D=
ataSmart object at 0x7f2675a782b0&gt;):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;logger.debug(1, "Appen=
ding .bbappend file %s to %s", append, fn)</div>
<div>&nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; bb.parse.BBHandler.handl=
e(append, d, True)</div>
<div>&nbsp; &nbsp; &nbsp;</div>
<div>&nbsp; File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto=
/sources/poky/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 132, in han=
dle(fn=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources=
/meta-mylayer/recipes-support/swupdate/swupdate_%d', d=3D&lt;bb.data_smart.=
DataSmart object at 0x7f2675a782b0&gt;, include=3DTrue):</div>
<div>&nbsp; &nbsp; &nbsp;</div>
<div>&nbsp; &nbsp; &gt;&nbsp; &nbsp; abs_fn =3D resolve_file(fn, d)</div>
<div>&nbsp; &nbsp; &nbsp;</div>
<div>&nbsp; File "/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto=
/sources/poky/bitbake/lib/bb/parse/__init__.py", line 141, in resolve_file(=
fn=3D'/home/Mtech/Graphics_Gx_Mtech/Graphics_GX_Mtech/BSP/yocto/sources/met=
a-mylayer/recipes-support/swupdate/swupdate_%d', d=3D&lt;bb.data_smart.Data=
Smart object at 0x7f2675a782b0&gt;):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not os.path.isfile(fn):</div>
<div>&nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; raise IOError(errno.ENOE=
NT, "file %s not found" % fn)</div>
<div>&nbsp; &nbsp; &nbsp;</div>
<div>FileNotFoundError: [Errno 2] file /home/Mtech/Graphics_Gx_Mtech/Graphi=
cs_GX_Mtech/BSP/yocto/sources/meta-mylayer/recipes-support/swupdate/swupdat=
e_%d not found<br />///////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
///////////////////////////////////////////////////////////////////////////=
/////////////////////////////////////////////////////////<br /><br />Not ab=
le to understand the root cause of this because without adding "meta-swupda=
te" layer I am able to build the code.<br />Please help me to resolve this =
issue.<br /><br /><br /><br /><br /><br />Regards,<br />Vishal Rana</div>

--Gg6C1DnMlG60ZV4KPmQW--

