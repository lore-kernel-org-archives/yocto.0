Return-Path: <mail2uvijay@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3196C0015E
	for <webhook@archiver.kernel.org>; Wed,  5 Jul 2023 07:21:34 +0000 (UTC)
Subject: Getting segmentation fault while creating wic images
To: yocto@lists.yoctoproject.org
From: mail2uvijay@gmail.com
X-Originating-Location: US (136.226.253.21)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Jul 2023 00:21:31 -0700
Message-ID: <GHxO.1688541691010870295.8jtz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eAGFKZXLrGgbfCl4ik9Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 07:21:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60516

--eAGFKZXLrGgbfCl4ik9Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying re-build yocto for one of the custom board having ti processor.
using dunfell branch. While creating images getting "output: Segmentation f=
ault (core dumped)"
"
NOTE: recipe app-image-1.0-r0: task do_image_wic: Failed
ERROR: Task (...................................////.//////////:do_image_wi=
c) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5310 tasks of which 5306 didn't need to be r=
erun and 1 failed.
"
Note: i have working build created on 19.06, this is building successfully.

Regards,
Vijay

--eAGFKZXLrGgbfCl4ik9Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am trying re-build yocto for one of the custom board havin=
g ti processor.<br />using dunfell branch. While creating images getting "o=
utput: Segmentation fault (core dumped)"<br />"<br />
<div>NOTE: recipe app-image-1.0-r0: task do_image_wic: Failed</div>
<div>ERROR: Task (...................................////.//////////:do_ima=
ge_wic) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 5310 tasks of which 5306 didn't need to=
 be rerun and 1 failed.<br />"<br />Note: i have working build created on 1=
9.06, this is building successfully.<br /><br /><br /></div>
Regards,<br />Vijay

--eAGFKZXLrGgbfCl4ik9Z--

