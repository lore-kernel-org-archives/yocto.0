Return-Path: <ohnatiuk@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B8BAEB64DD
	for <webhook@archiver.kernel.org>; Tue, 27 Jun 2023 16:09:37 +0000 (UTC)
Subject: Re: File magic/sdk relocation
To: yocto@lists.yoctoproject.org
From: "Oleksandr Hnatiuk" <ohnatiuk@cisco.com>
X-Originating-Location: San Jose, California, US (128.107.241.175)
X-Originating-Platform: Windows Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Jun 2023 09:09:35 -0700
References: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
In-Reply-To: <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
Message-ID: <25445.1687882175160054772@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ciqbdnWe6tAbj9F2K9Wj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jun 2023 16:09:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60460

--ciqbdnWe6tAbj9F2K9Wj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi. After debugging this, I found there is another issue apart from the way=
 MAGIC is set in the recipe.

The do_populate_sysroot task doesn't use the value of MAGIC variable that i=
s available in tasks that build the code.
`file -b` is invoked from is_elf function in meta/lib/oe/package.py via `su=
bprocess.check_output`.
The environment of that subprocess call doesn't have the MAGIC variable set=
 so `file -b` fails.
(It uses `file` from $BUILDDIR/tmp/hosttools/file)
Verified this by providing a modified env with hardcoded MAGIC to `subproce=
ss.check_output` after which the error is gone.

What would the right solution for this look like?

Regards,
Oleksandr

--ciqbdnWe6tAbj9F2K9Wj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi. After debugging this, I found there is another issue apart from the way=
 MAGIC is set in the recipe.<br /><br />The do_populate_sysroot task doesn'=
t use the value of MAGIC variable that is available in tasks that build the=
 code.<br />`file -b` is invoked from is_elf function in meta/lib/oe/packag=
e.py via `subprocess.check_output`.<br />The environment of that subprocess=
 call doesn't have the MAGIC variable set so `file -b` fails.<br />(It uses=
 `file` from $BUILDDIR/tmp/hosttools/file)<br />Verified this by providing =
a modified env with hardcoded MAGIC to `subprocess.check_output` after whic=
h the error is gone.<br /><br />What would the right solution for this look=
 like?<br /><br />Regards,<br />Oleksandr

--ciqbdnWe6tAbj9F2K9Wj--

