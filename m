Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA47C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 06:54:37 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.7051.1702968869823556930
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 22:54:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hnJL3xYj;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: bremenpl@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2cb21afa6c1so56472151fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 22:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702968868; x=1703573668; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ysaa0n5w7yKPJqO5U6tC9YLtehCyeOAv6PH9HdioTGw=;
        b=hnJL3xYjxwVwsN9LitzvHf2jM33A3svBd0lp1C2JCJDhr5ywwZHDTz4DERZBJvS5e2
         QV/GBwRr0Rw/TrtHvQoAweR6AcD9eVdHGzWcFlRanvqpV3CwcEDvwgE1qtXIFeVXXOQo
         Peo/jlRZM0vBg6vlkxUEQlQ5SLUB/rMFKBCBHjWMnTpmKXCITBEmmKW0BDAskpC8srKW
         Hths7K6Vhv970sEkL0l+dGa2qm2zs33jx25iLKWWCJAjLpJrbwD/M6QK/3YfJLQFoJGJ
         4PWMk60Pn/+I6VMrPTrBNYv9xJ0hKUP+qYz1muqenzCgJ/vz0BZG3grEV62dydCQYbio
         824Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702968868; x=1703573668;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ysaa0n5w7yKPJqO5U6tC9YLtehCyeOAv6PH9HdioTGw=;
        b=XONMpsZW7YG8aQjqetSxgw2yi4dLY9rHRjFGLX7ltJeb5iZxyFu7MZsaiEZ/fdIYQZ
         2jjXevN0LuH+fQsweF/CzcrCvSsEp0n0cSlGvZQv7azjuxno2vv141QN5A3OFGDIdHbk
         SZxOQftnFgd7NNWtj1nvknpaTHpl7iCMRv/CHT9uaa7gRYrVq/h96x6IK3aN+K8iYXE2
         r4MtXssuOm8TPW168P3CCa051Zu5euOeJ5ZNjUFQvTbAI+2pOUeuSpxm4sGczCuuEXng
         /5m851hpBoiFxBLH9fe2cN6fBCs8BhT2ahyG4iCRUxkIwwGL9Wu+LOY5GW2mtKggnOFY
         VSQg==
X-Gm-Message-State: AOJu0Yy+yzlheoGkmBJnTVz6MY1W5eF8q+df63MWHy78bnIRX/FxsWlf
	w8QNKA8bEApHv24CvSGzxMBqihnAIUc=
X-Google-Smtp-Source: AGHT+IGiKHbYvkTFULUNaGIb1k+Lai4wVFoeZNq1HhmpxStihM56dKbS0KpEFh2Wa8TUxd50WXRdng==
X-Received: by 2002:a05:651c:506:b0:2cc:43ec:3922 with SMTP id o6-20020a05651c050600b002cc43ec3922mr4591875ljp.45.1702968867512;
        Mon, 18 Dec 2023 22:54:27 -0800 (PST)
Received: from [192.168.7.15] (eqj153.neoplus.adsl.tpnet.pl. [83.20.77.153])
        by smtp.gmail.com with ESMTPSA id p8-20020a05640210c800b0055399fbe7b3sm282394edu.20.2023.12.18.22.54.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Dec 2023 22:54:26 -0800 (PST)
From: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: BBB default image and extlinux dir
Date: Tue, 19 Dec 2023 06:54:23 +0000
Message-Id: <eme778d004-53f3-4d36-976c-441531b87cda@13fff5e5.com>
Reply-To: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
User-Agent: eM_Client/9.2.2157.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MBEC37531C-6F5A-4968-A7C5-FCF431C0B772"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 06:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61976

--------=_MBEC37531C-6F5A-4968-A7C5-FCF431C0B772
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,
I am using Yocto Kirkstone. I want to build and run the exemplary=20
core-image-minimal for BBB. After the build, when I dd the SD card with=20
this command:
sudo dd if=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/<media>
Everything works- I can boot from the SD card. The boot partition then=20
includes of the following files/ directories:
am335x-boneblack.dtb  am335x-bone.dtb  am335x-bonegreen.dtb  extlinux  MLO  =
u-boot.img  zImage
Following different tutorials on how to copy the built files manually,=20
there is no mention of the extlinux directory and am335x-bone.dtb=20
am335x-bonegreen.dtb files (I think these blobs are for BB white and BB=20
green, so not needed). But the thing is, my image wont boot (probably)=20
because of the lack of the extlinux dir and the extlinux.conf file=20
inside (its a guess). Why does it boot without that dir in the tutorials=20
(i.e., here=20
<https://tutorialadda.com/yocto/create-linux-image-for-beaglebone-black-usi=
ng-yocto-build-system>)?

As a rule (assuming the extlinux conf is necesarry), should one always=20
create one as part of the deploy process, or is it also auto generated=20
and can be copied over during manual files copy instead of the dd=20
approach?

I would appreciate all feedback!

--
=C5=81ukasz Przenios=C5=82o

--
=C5=81ukasz Przenios=C5=82o

--------=_MBEC37531C-6F5A-4968-A7C5-FCF431C0B772
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles">=20
blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: center; '], li[s=
tyle=3D'text-align: right;'], li[style=3D'text-align: right; '] {  list-sty=
le-position: inside;}
body { font-family: Verdana; font-size: 12pt; }
.quote { margin-left: 1em; margin-right: 1em; border-left: 5px #ebebeb soli=
d; padding-left: 0.3em; }

 </style>
</head>
<body><div><div id=3D"x398322b6e70646a69d43fda2664afdc2"><div>Hello,</div><=
div>I am using Yocto Kirkstone. I want to build and run the exemplary core-=
image-minimal for BBB. After the build, when I dd the SD card with this com=
mand:</div><div><pre><code>sudo dd if=3Dcore-image-minimal-beaglebone-yocto=
.wic of=3D/dev/&lt;media&gt;</code></pre></div><div>Everything works- I can =
boot from the SD card. The <code>boot</code> partition then includes of th=
e following files/ directories:</div><div><pre><code>am335x-boneblack.dtb =
 am335x-bone.dtb  am335x-bonegreen.dtb  extlinux  MLO  u-boot.img  zImage</c=
ode></pre></div><div>Following different tutorials on how to copy the built =
files manually, there is no mention of the <code>extlinux</code> directory =
and <code>am335x-bone.dtb  am335x-bonegreen.dtb</code>
 files (I think these blobs are for BB white and BB green, so not=20
needed). But the thing is, my image wont boot (probably) because of the=20
lack of the=20
<code>extlinux</code> dir and the <code>extlinux.conf</code> file inside (i=
ts a guess). Why does it boot without that dir in the tutorials (i.e., <a h=
ref=3D"https://tutorialadda.com/yocto/create-linux-image-for-beaglebone-bla=
ck-using-yocto-build-system" rel=3D"nofollow noreferrer">here</a>)?</div><d=
iv><br /></div><div>As a rule (assuming the extlinux conf is necesarry), sh=
ould one always create one as part of the deploy process, or is it also aut=
o generated and can be copied over during manual files copy instead of the=
 dd approach?</div><div><br /></div><div>I would appreciate all feedback!</d=
iv>
<div><br /></div><div id=3D"signature_old" style=3D"clear:both;">--<div>=C5=
=81ukasz Przenios=C5=82o</div></div><div></div></div></div>
<div><br /></div><div id=3D"signature_old" style=3D"clear:both">--<div>=C5=
=81ukasz Przenios=C5=82o</div></div><div><br /></div>
</body></html>
--------=_MBEC37531C-6F5A-4968-A7C5-FCF431C0B772--


