Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791A7D2AB2C
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 08:49:31 +0000 (UTC)
Subject: About Yocto based images 
To: yocto@lists.yoctoproject.org
From: "Dhanyalakshmi K" <dhanyalakshmi.k@priyarajaelectronics.com>
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (51.158.238.20)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Oct 2024 01:49:23 -0700
Message-ID: <VN9Q.1730278163030155799.pwBR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="47JhC4GdItpqO8ykZOBy"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 08:49:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64174

--47JhC4GdItpqO8ykZOBy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear all,

I'm Dhanyalakshmi, and I'm considering one of the following images as our b=
ase image for the project with LS1012A as processor:

* core-image-minimal
* core-image-base CLI
* core-image-full-cmdline
* core-image-sato GUI
* core-image-x11 GUI
* core-image-weston
* core-image-lsb

To make an informed decision, I need to understand the specific differences=
 between these images, particularly concerning layers, recipes, and other r=
elevant aspects.

Could you guide me on how to gather this information effectively? What spec=
ific questions should I ask to gain insights into the differences between t=
hese images? Additionally, if anyone knows the rationale behind the various=
 image options provided by Poky, in which scenarios should I consider build=
ing one of these images?

I appreciate your assistance!

Best regards,
Dhanyalakshmi

--47JhC4GdItpqO8ykZOBy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Dear all,</p>
<p>I'm Dhanyalakshmi, and I'm considering one of the following images as ou=
r base image for the project with LS1012A as processor:</p>
<ul>
<li>core-image-minimal</li>
<li>core-image-base CLI</li>
<li>core-image-full-cmdline</li>
<li>core-image-sato GUI</li>
<li>core-image-x11 GUI</li>
<li>core-image-weston</li>
<li>core-image-lsb</li>
</ul>
<p>To make an informed decision, I need to understand the specific differen=
ces between these images, particularly concerning layers, recipes, and othe=
r relevant aspects.</p>
<p>Could you guide me on how to gather this information effectively? What s=
pecific questions should I ask to gain insights into the differences betwee=
n these images? Additionally, if anyone knows the rationale behind the vari=
ous image options provided by Poky, in which scenarios should I consider bu=
ilding one of these images?</p>
<p>I appreciate your assistance!</p>
<p>Best regards,<br />Dhanyalakshmi</p>

--47JhC4GdItpqO8ykZOBy--

