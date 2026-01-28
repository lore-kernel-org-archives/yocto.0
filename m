Return-Path: <pierre.daye@p3lab.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27E39D46BF4
	for <webhook@archiver.kernel.org>; Wed, 28 Jan 2026 19:18:44 +0000 (UTC)
Subject: Re: [yocto] System device tree, AMD EDF, custom board
To: "Sergei Nikulov" <sergey.nikulov@gmail.com>, yocto@lists.yoctoproject.org
From: pierre.daye@p3lab.com
X-Originating-Location: Jumet, Wallonia, BE (91.86.174.204)
X-Originating-Platform: Linux Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jan 2026 11:18:35 -0800
References: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org> <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com>
In-Reply-To: <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com>
Message-ID: <1007393.1769627915286057389@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zEGu3YenCpE7oJpoU7fi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Jan 2026 19:18:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66201

--zEGu3YenCpE7oJpoU7fi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Sergei,

The issue is that with the system device tree approach, there is a clear cu=
t between the linux (from what I understand, interacts only with the cortex=
 a53) and the logic part (related to the fpga).
Your approach is ok as long as you don't have interactions between the two,=
 which is exactly my target!
For example, I want to set the i2c devices that are connected to a i2c port=
 linked to the logic part (aka FPGA) on my SoC.
This is where it is complicated for me to understand what I should do.
In the process described by AMD ( https://xilinx-wiki.atlassian.net/wiki/sp=
aces/A/pages/3250586081/Development+Flows+-+How+it+all+works ), it remains =
unclear to me how I can define these points?
Should I use an append to xilinx-bootbin or should I try to append it durin=
g the build of the image (as it was done previously).

--zEGu3YenCpE7oJpoU7fi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Sergei,</div>
<div>&nbsp;</div>
<div>The issue is that with the system device tree approach, there is a cle=
ar cut between the linux (from what I understand, interacts only with the c=
ortex a53) and the logic part (related to the fpga).</div>
<div>Your approach is ok as long as you don't have interactions between the=
 two, which is exactly my target!</div>
<div>For example, I want to set the i2c devices that are connected to a i2c=
 port linked to the logic part (aka FPGA) on my SoC.</div>
<div>This is where it is complicated for me to understand what I should do.=
</div>
<div>In the process described by AMD (<a href=3D"https://xilinx-wiki.atlass=
ian.net/wiki/spaces/A/pages/3250586081/Development+Flows+-+How+it+all+works=
" target=3D"_blank" rel=3D"noopener">https://xilinx-wiki.atlassian.net/wiki=
/spaces/A/pages/3250586081/Development+Flows+-+How+it+all+works</a>), it re=
mains unclear to me how I can define these points?<br />Should I use an app=
end to xilinx-bootbin or should I try to append it during the build of the =
image (as it was done previously).</div>

--zEGu3YenCpE7oJpoU7fi--

