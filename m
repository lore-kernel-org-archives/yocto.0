Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E78FC433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 12:46:48 +0000 (UTC)
Subject: Re: Howto build packages for dependencies of an out of image recipe
 build.
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Letchworth Garden City, England, GB (86.16.192.236)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Mar 2022 04:46:47 -0800
References: <qHzn.1646821447603268340.seYL@lists.yoctoproject.org>
In-Reply-To: <qHzn.1646821447603268340.seYL@lists.yoctoproject.org>
Message-ID: <14260.1646830007736310806@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LCUp7oPS6qaWzX0RHoa7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 12:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56405

--LCUp7oPS6qaWzX0RHoa7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just want to add that it seems to run the do_package task but not the=C2=A0=
do_package_write_deb one for each of the dependencies.

--LCUp7oPS6qaWzX0RHoa7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just want to add that it seems to run the do_package task but not the&nbsp;=
do_package_write_deb one for each of the dependencies.

--LCUp7oPS6qaWzX0RHoa7--

