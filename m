Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC2DC61CE8
	for <webhook@archiver.kernel.org>; Mon,  9 Jun 2025 16:04:57 +0000 (UTC)
Subject: Inherit bbclass from bb file with a certain condition
To: yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Tel Aviv, IL (46.19.85.1)
X-Originating-Platform: iPhone Safari 18.4
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Jun 2025 09:04:56 -0700
Message-ID: <DdRX.1749485096351227940.SVlR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lQg9iDq7Aj0QAUPWzRYj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jun 2025 16:04:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65487

--lQg9iDq7Aj0QAUPWzRYj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello community

In my case, I have bbclass and bb file.

I want to inherit the bbclass from the bb file when a specific condition is=
 TRUE, if its FALSE i don=E2=80=99t want to inherit the class, has someone =
have an idea? =F0=9F=92=A1

Inherit my-class from a python function isn=E2=80=99t supported, I tried va=
rious options, but nothing works properly.

Appreciate your help =F0=9F=92=AA=F0=9F=8F=BB

let me know if there is any other related information to provide.

Regards,

Haim

--lQg9iDq7Aj0QAUPWzRYj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">Hello community&nbsp;</span></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">In my case, I have bbclass and bb file.</span></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">I want to inherit the bbclass from the bb file whe=
n a specific condition is TRUE, if its FALSE i don&rsquo;t want to inherit =
the class, has someone have an idea? =F0=9F=92=A1<span class=3D"Apple-conve=
rted-space">&nbsp;</span></span></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">Inherit my-class from a python function isn&rsquo;=
t supported, I tried various options, but nothing works properly.</span></p=
>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">Appreciate your help =F0=9F=92=AA=F0=9F=8F=BB</spa=
n></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;"><br />let me know if there is any other related in=
formation to provide.</span></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';">&nb=
sp;</p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">Regards,</span></p>
<p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'system-ui';"><sp=
an style=3D"font-family: 'system-ui'; font-weight: normal; font-style: norm=
al; font-size: 12.00px;">Haim</span></p>
</div>

--lQg9iDq7Aj0QAUPWzRYj--

