Return-Path: <tamtamis@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E655DC6FD1F
	for <webhook@archiver.kernel.org>; Thu,  9 Mar 2023 09:19:19 +0000 (UTC)
Subject: Re: Question about psuedo abort errors
To: yocto@lists.yoctoproject.org
From: "Tamis" <tamtamis@gmail.com>
X-Originating-Location: CH (147.161.130.252)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Mar 2023 01:19:14 -0800
References: <22051.1678106002246388737@lists.yoctoproject.org>
In-Reply-To: <22051.1678106002246388737@lists.yoctoproject.org>
Message-ID: <21997.1678353554952504620@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nXVbsikkNXMyGvLSKFJ4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 09:19:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59373

--nXVbsikkNXMyGvLSKFJ4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I believe that we resolved the issue.
The issue was reproduced again during latest nightly build. And then was al=
so reproducible manually.
So, I modified the recipe and spitted S and B variables.
So I set:

S =3D "${WORKDIR}/git"
B =3D "${S}/v2"

Fixed the paths into do_install.
Now both B and S are into the PSEUDO_IGNORE_PATHS automatically and now if =
we install files from S those are now ignored.

After next invocation of the recipe the error was not reproducible. So I be=
lieve that issue was resolved.

Thanks a lot Richard for your input and Qi for your hint.

Best regards,
Panagiotis

--nXVbsikkNXMyGvLSKFJ4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello all,<br /><br />I believe that we resolved the issue.<br />The iss=
ue was reproduced again during latest nightly build. And then was also repr=
oducible manually.<br />So, I modified the recipe and spitted S and B varia=
bles.<br />So I set:</p>
<p>S =3D "${WORKDIR}/git"<br />B =3D "${S}/v2"</p>
<p>Fixed the paths into do_install.<br />Now both B and S are into the PSEU=
DO_IGNORE_PATHS automatically and now if we install files from S those are =
now ignored.</p>
<p>After next invocation of the recipe the error was not reproducible. So I=
 believe that issue was resolved.<br /><br />Thanks a lot Richard for your =
input and Qi for your hint.<br /><br />Best regards,<br />Panagiotis</p>

--nXVbsikkNXMyGvLSKFJ4--

