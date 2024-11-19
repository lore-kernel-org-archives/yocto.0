Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC19BD60079
	for <webhook@archiver.kernel.org>; Tue, 19 Nov 2024 08:07:08 +0000 (UTC)
Subject: Suggested way to generate two version of same package in Yocto 
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Dombivali, Maharashtra, IN (139.5.44.84)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Nov 2024 00:06:58 -0800
Message-ID: <laOo.1732003618528028886.1LO6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tAMxEV26boEbJ6nPbg8T"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 08:07:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64296

--tAMxEV26boEbJ6nPbg8T
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

I want openssl-3.2.x build to use some file from openssl-3.0.8 build
So this requires the same build to generate build for both version of opens=
sl .

Is there any preferred way which senior member can suggest or=C2=A0 any sam=
ple implementation for this

As of now i am looking at an logic where same build had two different recip=
e in Yocto Rocko (openssl10_1.0.2r.bb
openssl_1.1.1b.bb )
https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/openssl?id=
=3D34fa190d957f19f69ede7af68f75e3beef3fc96a

We are working to get the openssl_3.2.2 with openssl_3.0.8 FIPS support.
I have created an recipe and got all work done to have openssl-3.0.8 with F=
ips on Yocto scrathgap.

Can senior members suggest proper way of doing this

Thanks
Ashish

--tAMxEV26boEbJ6nPbg8T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members ,</div>
<div>&nbsp;</div>
<div>I want openssl-3.2.x build to use some file from openssl-3.0.8 build</=
div>
<div>So this requires the same build to generate build for both version of =
openssl .</div>
<div>&nbsp;</div>
<div>Is there any preferred way which senior member can suggest or&nbsp; an=
y sample implementation for this</div>
<div>&nbsp;</div>
<div>As of now i am looking at an logic where same build had two different =
recipe in Yocto Rocko (openssl10_1.0.2r.bb<br />openssl_1.1.1b.bb ) </div>
<div><a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-connect=
ivity/openssl?id=3D34fa190d957f19f69ede7af68f75e3beef3fc96a" target=3D"_bla=
nk" rel=3D"noopener">https://git.yoctoproject.org/poky/tree/meta/recipes-co=
nnectivity/openssl?id=3D34fa190d957f19f69ede7af68f75e3beef3fc96a</a></div>
<div>&nbsp;</div>
<div>
<div>We are working to get the openssl_3.2.2 with openssl_3.0.8 FIPS suppor=
t.</div>
<div>I have created an recipe and got all work done to have openssl-3.0.8 w=
ith Fips on Yocto scrathgap.</div>
<div>&nbsp;</div>
<div>Can senior members suggest proper way of doing this</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Ashish</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</div>

--tAMxEV26boEbJ6nPbg8T--

