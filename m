Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9DDC00140
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 17:09:05 +0000 (UTC)
Subject: Kirkstone Upgrade now gives RDEPENDS error with /usr/bin/python
 #kirkstone #python
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Beaverton, Oregon, US (136.226.60.115)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Aug 2022 10:08:57 -0700
Message-ID: <UofA.1660151337489903680.2qAu@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BpxYhOmXqMD4h5YWbM2I"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 17:09:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57821

--BpxYhOmXqMD4h5YWbM2I
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Good Afternoon,

I am updating a project from Honister to Kirkstone, Has anyone else run int=
o an issue with python files with a *#!/usr/bin/python* header throwing the=
 (abbreviated) Error below?

This did not occur with the prior honister branch, changing to *#!/usr/bin/=
python3 or removing the line altogether seems to resolve the issue.* I woul=
d prefer to not have to expend the time and effort involved as the same cod=
ebase is used on a legacy platforms that do not use python3.

ERROR: do_package_qa: QA Issue: /sample.py contained in package requires /u=
sr/bin/python, but no providers found in RDEPENDS?

Thanks,

Bruce

--BpxYhOmXqMD4h5YWbM2I
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Good Afternoon,&nbsp;<br /><br />I am updating a project from Honister t=
o Kirkstone, Has anyone else run into an issue with python files with a&nbs=
p;<strong> #!/usr/bin/python</strong> header throwing the (abbreviated) Err=
or below?<br /><br />This did not occur with the prior honister branch, cha=
nging to<strong> #!/usr/bin/python3 or removing the line altogether seems t=
o resolve the issue.</strong>&nbsp;I would prefer to not have to expend the=
 time and effort involved as the same codebase is used on a legacy platform=
s that do not use python3.<br /><br /><span style=3D"color: #242424; font-f=
amily: -apple-system, BlinkMacSystemFont, 'Segoe UI', system-ui, 'Apple Col=
or Emoji', 'Segoe UI Emoji', 'Segoe UI Web', sans-serif; background-color: =
#e8ebfa;">ERROR: do_package_qa: QA Issue: /sample.py contained in package r=
equires /usr/bin/python, but no providers found in RDEPENDS?&nbsp;<br /><br=
 /></span>Thanks,<br /><br />Bruce</p>
<p>&nbsp;</p>

--BpxYhOmXqMD4h5YWbM2I--

