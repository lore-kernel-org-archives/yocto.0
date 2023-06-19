Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23335EB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 16:33:25 +0000 (UTC)
Subject: meta-arm-toolchain: SUPPORTED file not found #toolchain
To: yocto@lists.yoctoproject.org
From: Jesus.JimenezSanchez@verifone.com
X-Originating-Location: GB (62.209.33.82)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 19 Jun 2023 09:33:23 -0700
Message-ID: <5H3q.1687192403619815582.2AB4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZQ53ehADsl75fRNCSs8w"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 16:33:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60349

--ZQ53ehADsl75fRNCSs8w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I'm trying to add the arm toolchain to my yocto project but I just g=
ot this error
```
| cp: cannot stat '.../tmp-glibc/work/cortexa7t2hf-neon-vfpv4-ostl-linux-gn=
ueabi/external-arm-toolchain/2022.02-r0/image/local/SUPPORTED': No such fil=
e or directory
```
It comes from the `external-arm-toolchain.bb` recipe. I've checked and the =
`SUPPORTED` file is in the right folder (the `files` folder where the `exte=
rnal-arm-toolchain.bb` file is). I haven't made any modifications to the me=
ta-arm repo. I just cloned it and changed to branch `kirkstone`. After that=
, I have configured my local.conf with this:
```
TCMODE =3D "external-arm"

EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-linux-gnue=
abihf"
```

I have added this to the `bblayers.conf`:
```
BBLAYERS +=3D "${OEROOT}/layers/meta-arm/meta-arm-toolchain"
```

And that's it, I think. Have I missed any steps?

--ZQ53ehADsl75fRNCSs8w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I'm trying to add the arm toolchain to my yocto project but I just g=
ot this error<br />```<br />| cp: cannot stat '.../tmp-glibc/work/cortexa7t=
2hf-neon-vfpv4-ostl-linux-gnueabi/external-arm-toolchain/2022.02-r0/image/l=
ocal/SUPPORTED': No such file or directory<br />```<br />It comes from the =
`external-arm-toolchain.bb` recipe. I've checked and the `SUPPORTED` file i=
s in the right folder (the `files` folder where the `external-arm-toolchain=
.bb` file is). I haven't made any modifications to the meta-arm repo. I jus=
t cloned it and changed to branch `kirkstone`. After that, I have configure=
d my local.conf with this:<br />```<br />TCMODE =3D "external-arm"<br /><br=
 />EXTERNAL_TOOLCHAIN =3D ".../gcc-arm-11.2-2022.02-x86_64-arm-none-linux-g=
nueabihf"<br />```<br /><br />I have added this to the `bblayers.conf`:<br =
/>```<br />BBLAYERS +=3D "${OEROOT}/layers/meta-arm/meta-arm-toolchain"<br =
/>```<br /><br />And that's it, I think. Have I missed any steps?

--ZQ53ehADsl75fRNCSs8w--

