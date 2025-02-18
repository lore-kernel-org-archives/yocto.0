Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0A4AC02198
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 06:12:37 +0000 (UTC)
Subject: Any pointers to reduce samba-python3 package in Yocto scarthgap (300% more than samba )
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bhubaneswar, Odisha, IN (106.222.201.233)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Feb 2025 22:12:24 -0800
Message-ID: <G6nL.1739859144253797070.NrZ2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iU6CAx3cIxDPbIdkAqJu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 06:12:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64832

--iU6CAx3cIxDPbIdkAqJu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

I am trying to reduce the RFS size for Yocto Scarthgap
We have added samba package in RFS .

The RDEPENDS of samba is =C2=A0=C2=A0samba-python3 which is taking around 3=
00% more space than samba itself
21231 =C2=A0 KiB =C2=A0 =C2=A0samba-python3
6468 =C2=A0 =C2=A0 KiB =C2=A0 =C2=A0samba

samba-python-3 as RDEPENDS of samba :
https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes=
-connectivity/samba/samba_4.19.8.bb?h=3Dscarthgap#n213

Can members please point to some pointers as to how can we reduce the size =
of samba-python3.
Since its an RDEPENDS ,=C2=A0 IMAGE_INSTALL:remove =3D " samba-python3 " , =
package is not effective.

Thanks ,
Ashish

--iU6CAx3cIxDPbIdkAqJu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members ,</div>
<div>&nbsp;</div>
<div>I am trying to reduce the RFS size for Yocto Scarthgap </div>
<div>We have added samba package in RFS .</div>
<div>&nbsp;</div>
<div>The RDEPENDS of samba is &nbsp;&nbsp;samba-python3 which is taking aro=
und 300% more space than samba itself </div>
<div>21231 &nbsp; KiB &nbsp; &nbsp;samba-python3<br />6468 &nbsp; &nbsp; Ki=
B &nbsp; &nbsp;samba</div>
<div>&nbsp;</div>
<div>samba-python-3 as RDEPENDS of samba : </div>
<div><a href=3D"https://git.openembedded.org/meta-openembedded/tree/meta-ne=
tworking/recipes-connectivity/samba/samba_4.19.8.bb?h=3Dscarthgap#n213" tar=
get=3D"_blank" rel=3D"noopener">https://git.openembedded.org/meta-openembed=
ded/tree/meta-networking/recipes-connectivity/samba/samba_4.19.8.bb?h=3Dsca=
rthgap#n213</a></div>
<div>&nbsp;</div>
<div>Can members please point to some pointers as to how can we reduce the =
size of samba-python3.</div>
<div>Since its an RDEPENDS ,&nbsp; IMAGE_INSTALL:remove =3D " samba-python3=
 " , package is not effective. <br />
<div>&nbsp;</div>
Thanks ,<br />Ashish </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--iU6CAx3cIxDPbIdkAqJu--

