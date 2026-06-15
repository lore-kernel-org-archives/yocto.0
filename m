Return-Path: <diwateprashant44@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F968CD98CE
	for <webhook@archiver.kernel.org>; Mon, 15 Jun 2026 06:12:02 +0000 (UTC)
Subject: Re: [yocto] Yocto Lens - Static Analysis and Style Review Tool for Yocto Metadata
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: diwateprashant44@gmail.com
X-Originating-Location: IN (202.160.146.2)
X-Originating-Platform: Windows Chrome 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Jun 2026 23:11:58 -0700
References: <CA+-BmJYpWEugmjb8UvjRMOmHxyMBzkjCTBq6ASpen84FmKyrBg@mail.gmail.com> <CANNYZj8sPFyigFC-RSsdDO9NKMBBNEvG8FiPMZtRRpdTCh=eeA@mail.gmail.com>
In-Reply-To: <CANNYZj8sPFyigFC-RSsdDO9NKMBBNEvG8FiPMZtRRpdTCh=eeA@mail.gmail.com>
Message-ID: <82309.1781503918113972435@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZXHhRodpCQiw0YD0lVU2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jun 2026 06:12:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66599

--ZXHhRodpCQiw0YD0lVU2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Alexander and Ayoub.

Those are both very fair questions.

Regarding running against oe-core/meta-yocto/meta-openembedded: I haven't y=
et done a systematic benchmark against the reference layers, but I agree th=
at's an important next step. It will help identify false positives and also=
 show whether Yocto Lens is finding anything genuinely useful beyond existi=
ng tooling. I'll post results once I've had a chance to run it against thos=
e layers and review the findings.

Regarding differentiation from oelint-adv, meta-sca, and the official Yocto=
 tooling: my goal is not to replace those projects. In fact, many of the ch=
ecks overlap and I've been using them as references while learning more abo=
ut Yocto metadata validation.

The main idea behind Yocto Lens is currently:

*=20

a standalone workflow that can run directly on layer repositories

*=20

An interactive terminal dashboard for reviewing findings

*=20

recipe health scoring and metadata quality insights

*=20

SARIF export for CI systems

*=20

a single interface that combines static-analysis and style-review results

That said, I completely agree that accuracy and the usefulness of the check=
s matter more than UI. Running against oe-core and meta-openembedded is pro=
bably the right next step to evaluate where Yocto Lens provides value and w=
here it still needs improvement.

I appreciate the feedback and suggestions.

--ZXHhRodpCQiw0YD0lVU2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p>Thanks, Alexander and Ayoub.</p>
<p>Those are both very fair questions.</p>
<p>Regarding running against oe-core/meta-yocto/meta-openembedded: I haven'=
t yet done a systematic benchmark against the reference layers, but I agree=
 that's an important next step. It will help identify false positives and a=
lso show whether Yocto Lens is finding anything genuinely useful beyond exi=
sting tooling. I'll post results once I've had a chance to run it against t=
hose layers and review the findings.</p>
<p>Regarding differentiation from oelint-adv, meta-sca, and the official Yo=
cto tooling: my goal is not to replace those projects. In fact, many of the=
 checks overlap and I've been using them as references while learning more =
about Yocto metadata validation.</p>
<p>The main idea behind Yocto Lens is currently:</p>
<ul>
<li>
<p>a standalone workflow that can run directly on layer repositories</p>
</li>
<li>
<p>An interactive terminal dashboard for reviewing findings</p>
</li>
<li>
<p>recipe health scoring and metadata quality insights</p>
</li>
<li>
<p>SARIF export for CI systems</p>
</li>
<li>
<p>a single interface that combines static-analysis and style-review result=
s</p>
</li>
</ul>
<p>That said, I completely agree that accuracy and the usefulness of the ch=
ecks matter more than UI. Running against oe-core and meta-openembedded is =
probably the right next step to evaluate where Yocto Lens provides value an=
d where it still needs improvement.</p>
<p>I appreciate the feedback and suggestions.</p>
</div>

--ZXHhRodpCQiw0YD0lVU2--

