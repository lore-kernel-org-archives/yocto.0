Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34C57C02185
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 14:05:59 +0000 (UTC)
Subject: Re: [yocto] Advice for tracking down changes that invalidate sstate cache across builds
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 06:05:58 -0800
References: <CANNYZj94udOxVo8C95Ou_goUSsSJx2_UcATAAFfD4Ma70JdTNQ@mail.gmail.com>
In-Reply-To: <CANNYZj94udOxVo8C95Ou_goUSsSJx2_UcATAAFfD4Ma70JdTNQ@mail.gmail.com>
Message-ID: <25943.1737122758834735998@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YrQr3SCoGe19BkyS8Rhy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 14:05:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64579

--YrQr3SCoGe19BkyS8Rhy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> If you're using scarthgap or more recent release, 'bitbake -S
> printdiff' is as good as such a tool can possibly be. I would suggest
> starting with a simple experiments with plain poky, or studying the
> selftests in class SStatePrintdiff (in
> meta/lib/oeqa/selftest/cases/sstatetests.py) before running it on a
> complex real world scenario.
>=20

I'm unfortunately not on scarthgap yet due to our older PetaLinux version b=
ut will look forward to trying that when we get round to upgrading thank yo=
u!

Phil

--YrQr3SCoGe19BkyS8Rhy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>If you're using scarthgap or more recent release, 'bitbake -S<br />pri=
ntdiff' is as good as such a tool can possibly be. I would suggest<br />sta=
rting with a simple experiments with plain poky, or studying the<br />selft=
ests in class SStatePrintdiff (in<br />meta/lib/oeqa/selftest/cases/sstatet=
ests.py) before running it on a<br />complex real world scenario.</div>
</blockquote>
<div>I'm unfortunately not on scarthgap yet due to our older PetaLinux vers=
ion but will look forward to trying that when we get round to upgrading tha=
nk you!</div>
<div>&nbsp;</div>
<div>Phil</div>

--YrQr3SCoGe19BkyS8Rhy--

