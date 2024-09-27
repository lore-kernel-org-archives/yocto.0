Return-Path: <yanmei.guo@boeing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54140CEBF72
	for <webhook@archiver.kernel.org>; Fri, 27 Sep 2024 02:59:31 +0000 (UTC)
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Guo, Yanmei" <yanmei.guo@boeing.com>
X-Originating-Location: Bengaluru, Karnataka, IN (192.48.23.244)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Sep 2024 19:59:29 -0700
References: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
In-Reply-To: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
Message-ID: <20211.1727405969816910866@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="c1YDvVlg0rrw1Xbr3uRo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Sep 2024 02:59:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63900

--c1YDvVlg0rrw1Xbr3uRo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We use multiconfig as our seperate build management so that we can reuse so=
me build component but have different configurations.

It looks like BBLAYERS can't be appended in multconfig.conf?=C2=A0 =C2=A0So=
 between multiconfigurations, they have to share the same BBLAYERS?

--c1YDvVlg0rrw1Xbr3uRo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>We use multiconfig as our seperate build management so that we can reu=
se some build component but have different configurations.</div>
<div>&nbsp;</div>
<div>It looks like BBLAYERS can't be appended in multconfig.conf?&nbsp; &nb=
sp;So between multiconfigurations, they have to share the same BBLAYERS?&nb=
sp;</div>
<div>&nbsp;</div>

--c1YDvVlg0rrw1Xbr3uRo--

