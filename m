Return-Path: <rroyce@textronsystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13BB6C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 14:03:00 +0000 (UTC)
Subject: Re: [yocto] Do_package is changing permissions of files
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: rroyce@textronsystems.com
X-Originating-Location: US (151.165.212.38)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 07:02:50 -0700
References: <DC492DE1-8638-494E-8DBB-E865BBF78924@arm.com>
In-Reply-To: <DC492DE1-8638-494E-8DBB-E865BBF78924@arm.com>
Message-ID: <26223.1747922570855214978@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IbrlYyeCYi38lHdFOsXh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 14:03:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65402

--IbrlYyeCYi38lHdFOsXh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'll see what i can do with reproducing it from walnascar package but i'm n=
ot a strong user of bitbake and yocto. I mostly work on recipes from an exi=
sting build structure.

The permissions changes on the source files normally isn't a problem, howev=
er, we have some source that have the exec bit set on them in the repo we a=
re pulling from. One of the checks we perform involves checking with mercur=
ial if anything in the source clone has changed from the version checked ou=
t and capturing that as part of the binary. It is probably not the "right" =
way to do it but it is what i'm working with for now. Changed permissions a=
re seen by mercurial as a delta from the source clone.

Thanks for the headsup on the hard links. It looks like they are hardlinks =
from the source in WORKDIR/package to S. I don't need that source package f=
or my use case and it is missing key files we need to be a real source rpm =
anyway. Can I disable the creation of it?

--IbrlYyeCYi38lHdFOsXh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'll see what i can do with reproducing it from walnascar package but =
i'm not a strong user of bitbake and yocto. I mostly work on recipes from a=
n existing build structure.</div>
<div>&nbsp;</div>
<div>The permissions changes on the source files normally isn't a problem, =
however, we have some source that have the exec bit set on them in the repo=
 we are pulling from. One of the checks we perform involves checking with m=
ercurial if anything in the source clone has changed from the version check=
ed out and capturing that as part of the binary. It is probably not the "ri=
ght" way to do it but it is what i'm working with for now. Changed permissi=
ons are seen by mercurial as a delta from the source clone.</div>
<div>&nbsp;</div>
<div>Thanks for the headsup on the hard links. It looks like they are hardl=
inks from the source in WORKDIR/package to S. I don't need that source pack=
age for my use case and it is missing key files we need to be a real source=
 rpm anyway. Can I disable the creation of it?</div>

--IbrlYyeCYi38lHdFOsXh--

