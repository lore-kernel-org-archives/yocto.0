Return-Path: <j.casas@falconelectronica.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A3AFC07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 12:05:39 +0000 (UTC)
Subject: Re: Files copied to /usr/local during installation get removed misteriously
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SmF2aWVyIENhc2FzIE1hcsOtbg==?= <j.casas@falconelectronica.com>
X-Originating-Location: Lodosa, Navarre, ES (185.128.171.24)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Nov 2023 04:05:33 -0800
References: <EC3AC9ED-7360-4446-9D86-C219A859EF55@arm.com>
In-Reply-To: <EC3AC9ED-7360-4446-9D86-C219A859EF55@arm.com>
Message-ID: <17365.1700049933492029898@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FgLKeTZmQM7IkSjd7cVG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 12:05:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61697

--FgLKeTZmQM7IkSjd7cVG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It is in run.do_userfs. I saw that the files where removed while do_image_u=
serfs task was running so I looked at the image logs in temp directory and =
found it there

--FgLKeTZmQM7IkSjd7cVG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It is in run.do_userfs. I saw that the files where removed while do_image_u=
serfs task was running so I looked at the image logs in temp directory and =
found it there

--FgLKeTZmQM7IkSjd7cVG--

