Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0CD3C3601E
	for <webhook@archiver.kernel.org>; Thu, 10 Apr 2025 10:04:09 +0000 (UTC)
Subject: Sub meta-layer under meta-cloud-services seems non-compatible to scarthgap
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (182.74.28.237)
X-Originating-Platform: Linux Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Apr 2025 03:04:06 -0700
Message-ID: <P4Kp.1744279446027998556.xE8o@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lK1LKf7kH5OX9vWn7Jh8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Apr 2025 10:04:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65135

--lK1LKf7kH5OX9vWn7Jh8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

I was looking at the meta-clouse-services layer to try an test setup for op=
enstack as i saw the recipe .
But when following the README i faced non-compatible error on=C2=A0scarthga=
p
This is because the sub-layer under meta-cloud-service seems compatible onl=
y to "thud warrior" only
https://git.yoctoproject.org/meta-cloud-services/tree/meta-openstack-contro=
ller-deploy/conf/layer.conf?h=3Dscarthgap

1) Can senior members help me understand how are members able to get an bui=
ld for scarthgap
as there are some recent patches being pushed on scarthgap
2) Since the sub-layer are not supported for scarthgap , can i conclude tha=
t yocto openstack is only tested till thud / warrior.

Generally my understanding is that any recipe which is present in the layer=
 (branch) is tested.
Sorry if i am missing any obvious here , but i thought to check with group

Thanks ,
Ashish

--lK1LKf7kH5OX9vWn7Jh8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members , </div>
<div>&nbsp;</div>
<div>I was looking at the meta-clouse-services layer to try an test setup f=
or openstack as i saw the recipe .</div>
<div>But when following the README i faced non-compatible error on&nbsp;sca=
rthgap &nbsp; &nbsp;&nbsp;</div>
<div>This is because the sub-layer under meta-cloud-service seems compatibl=
e only to "thud warrior" only
<div><a href=3D"https://git.yoctoproject.org/meta-cloud-services/tree/meta-=
openstack-controller-deploy/conf/layer.conf?h=3Dscarthgap" target=3D"_blank=
" rel=3D"noopener">https://git.yoctoproject.org/meta-cloud-services/tree/me=
ta-openstack-controller-deploy/conf/layer.conf?h=3Dscarthgap</a></div>
<div>&nbsp;</div>
<div>1) Can senior members help me understand how are members able to get a=
n build for scarthgap </div>
</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; as there are some recent patches being pushed=
 on scarthgap</div>
<div>2) Since the sub-layer are not supported for scarthgap , can i conclud=
e that yocto openstack is only tested till thud / warrior.</div>
<div>&nbsp;</div>
<div>Generally my understanding is that any recipe which is present in the =
layer (branch) is tested.</div>
<div>Sorry if i am missing any obvious here , but i thought to check with g=
roup </div>
<div>&nbsp;</div>
<div>Thanks ,<br />Ashish </div>

--lK1LKf7kH5OX9vWn7Jh8--

