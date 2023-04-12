Return-Path: <talhacali@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0459AC77B6E
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 11:12:58 +0000 (UTC)
Subject: Re: create-layers-setup Yaml support #bitbake
To: yocto@lists.yoctoproject.org
From: talhacali@gmail.com
X-Originating-Location: CH (147.161.250.82)
X-Originating-Platform: Windows Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Apr 2023 04:12:51 -0700
References: <CANNYZj9q3zBCguBussvczdj=CuuEqY4zvvOEw2jO-kPrHXq13g@mail.gmail.com>
In-Reply-To: <CANNYZj9q3zBCguBussvczdj=CuuEqY4zvvOEw2jO-kPrHXq13g@mail.gmail.com>
Message-ID: <10320.1681297971251679769@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PUKAIYJDN6B1LoyTAudV"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 11:12:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59689

--PUKAIYJDN6B1LoyTAudV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Renovate normally doesn't require to make changes in other files.
It supports many package files, and detects them automatically.
It parses them, and finds the dependencies without needing any change.
But, for package files which is not supported by Renovate, a regular expres=
sion
is needed inside the file to let Renovate know where to look while parsing =
the file.
As far as I know, there is no other way than adding a new line to the file.

We are also using Renovate the same way with bb files as well.

We have got a lot of projects, and potential projects that have several dif=
ferent
dependencies. They are hosted in different repositories, and the idea is to=
 update
their dependencies (or not it depends on the project) regularly, and do it =
automatically.
Like I said, with the package files that Renovate supports such as npm, Doc=
kerfiles, etc. it is easy to do,
but for our case we need to modify the json file with an added comment. For=
 this reason, Yaml files are
an ideal solution for us.

--PUKAIYJDN6B1LoyTAudV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Renovate normally doesn't require to make changes in other files. <br />It =
supports many package files, and detects them automatically. <br />It parse=
s them, and finds the dependencies without needing any change. <br />But, f=
or package files which is not supported by Renovate, a regular expression<b=
r />is needed inside the file to let Renovate know where to look while pars=
ing the file. <br />As far as I know, there is no other way than adding a n=
ew line to the file.<br /><br />We are also using Renovate the same way wit=
h bb files as well.&nbsp;<br /><br />We have got a lot of projects, and pot=
ential projects that have several different <br />dependencies. They are ho=
sted in different repositories, and the idea is to update <br />their depen=
dencies (or not it depends on the project) regularly, and do it automatical=
ly.<br />Like I said, with the package files that Renovate supports such as=
 npm, Dockerfiles, etc. it is easy to do,<br />but for our case we need to =
modify the json file with an added comment. For this reason, Yaml files are=
<br />an ideal solution for us.

--PUKAIYJDN6B1LoyTAudV--

