Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFF71C48BF6
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 09:26:21 +0000 (UTC)
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in version strings
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: "Patrick Huesmann" <patrick.huesmann@desy.de>
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Feb 2024 01:26:18 -0800
References: <CANNYZj-i+0+ErYB60D_bV6=QQ1B5EBG7V8867EjEW-V4nw6vvA@mail.gmail.com>
In-Reply-To: <CANNYZj-i+0+ErYB60D_bV6=QQ1B5EBG7V8867EjEW-V4nw6vvA@mail.gmail.com>
Message-ID: <23930.1709198778245848116@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="K8DShOQbfVDqr87WTfsl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Feb 2024 09:26:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62646

--K8DShOQbfVDqr87WTfsl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, Alex!

Your suggestion will probably get rid of a lot of complexity in our recipe =
that tried to work around bitbake's limitations. But I'm still not sure how=
 to tackle the original problem (AUTOINC from PRSERV for file:// and http:/=
/ resources), even if I have SRCREV as static data before running bitbake.

If I understand correctly, bb.fetch2.get_srcrev() requires that the fetcher=
's supports_srcrev() is set, so it wouldn't support file and http fetchers.

So what would be the recommended way to implement this functionality? Shoul=
d I write and somehow inject my own fetcher module, or reimplement package_=
get_auto_pr() for my recipe (talking to PRSERV directly)?

Thanks again,
Patrick

--K8DShOQbfVDqr87WTfsl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, Alex!<br /><br />Your suggestion will probably get rid of a lot =
of complexity in our recipe that tried to work around bitbake's limitations=
. But I'm still not sure how to tackle the original problem (AUTOINC from P=
RSERV for file:// and http:// resources), even if I have SRCREV as static d=
ata before running bitbake.<br /><br />If I understand correctly, bb.fetch2=
.get_srcrev() requires that the fetcher's supports_srcrev() is set, so it w=
ouldn't support file and http fetchers.<br /><br />So what would be the rec=
ommended way to implement this functionality? Should I write and somehow in=
ject my own fetcher module, or reimplement package_get_auto_pr() for my rec=
ipe (talking to PRSERV directly)?<br /><br />Thanks again,<br />Patrick

--K8DShOQbfVDqr87WTfsl--

