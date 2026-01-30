Return-Path: <pierre.daye@p3lab.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D257CD61033
	for <webhook@archiver.kernel.org>; Fri, 30 Jan 2026 06:48:47 +0000 (UTC)
Subject: Re: [yocto] System device tree, AMD EDF, custom board
To: philip.dawson@datapath.co.uk, yocto@lists.yoctoproject.org
From: pierre.daye@p3lab.com
X-Originating-Location: Jumet, Wallonia, BE (91.86.174.204)
X-Originating-Platform: Linux Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Jan 2026 22:48:40 -0800
References: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org> <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com> <1007393.1769627915286057389@lists.yoctoproject.org> <CAE7Ac0Bx2CTE0Q60yGy+birEsmk4pZcZ_Et7Qi0N3CBbAPgw_g@mail.gmail.com> <1014278.1769680249495232637@lists.yoctoproject.org>
In-Reply-To: <1014278.1769680249495232637@lists.yoctoproject.org>
Message-ID: <1028914.1769755720531785644@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uTPTwqEdHIx351bILTQV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jan 2026 06:48:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66205

--uTPTwqEdHIx351bILTQV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Philip,

I found a solution that is aligned with what you just wrote.
The main point that I found that anything purely related to linux (with no =
interaction with the PL) can be attached to a traditional device-tree.bbapp=
end recipe.
If you have something that is interacting with the PL (e.g. my drivers rece=
ive interrupts from the gic), then it needs to be provided through addition=
 the stdgen with the -user_dts parameters.
For the moment, at least, it is building correctly. When I am decompiling t=
he system.dtb found in boot partition [dtc -qqq -I dtb -O dts -o ${PWD}/tmp=
/device_tree.dts ${PWD}/tmp/system.dtb], I can see all my special nodes and=
 the customisation I did, so I have some hope that everything will work fin=
e :).

Thanks for the help,

Pierre

--uTPTwqEdHIx351bILTQV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Philip,</div>
<div>&nbsp;</div>
<div>I found a solution that is aligned with what you just wrote.&nbsp;<br =
/>The main point that I found that anything purely related to linux (with n=
o interaction with the PL) can be attached to a traditional device-tree.bba=
ppend recipe.</div>
<div>If you have something that is interacting with the PL (e.g. my drivers=
 receive interrupts from the gic), then it needs to be provided through add=
ition the stdgen with the -user_dts parameters.</div>
<div>For the moment, at least, it is building correctly. When I am decompil=
ing the system.dtb found in boot partition [dtc -qqq -I dtb -O dts -o ${PWD=
}/tmp/device_tree.dts ${PWD}/tmp/system.dtb], I can see all my special node=
s and the customisation I did, so I have some hope that everything will wor=
k fine :).</div>
<div>&nbsp;</div>
<div>Thanks for the help,</div>
<div>&nbsp;</div>
<div>Pierre</div>

--uTPTwqEdHIx351bILTQV--

