Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECA88C3ABB2
	for <webhook@archiver.kernel.org>; Wed, 28 May 2025 13:01:27 +0000 (UTC)
Subject: Re: setup tools error reporting about the version of a package
To: yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Texas, US (136.226.100.191)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 May 2025 06:01:27 -0700
References: <59BF0621-7230-4494-990C-3379E8015F76@arm.com>
In-Reply-To: <59BF0621-7230-4494-990C-3379E8015F76@arm.com>
Message-ID: <26596.1748437287399191595@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CHhkQwQ9OjvxVRaml6Zb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 13:01:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65433

--CHhkQwQ9OjvxVRaml6Zb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So yes you are correct. I was able to drill down to where the python code h=
as a comment that it checked the version against the standard PEP 440 stand=
ard and the alpha character's are not allowed.

*** <SOAP BOX RANT ***

WHY DIDN'T PYTHON JUST SAY THAT IN THE ERROR MESSAGE???

*** </SOAP BOX RANT ***

Thanks for your answer Sir.

Cheers!!

--CHhkQwQ9OjvxVRaml6Zb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So yes you are correct. I was able to drill down to where the python c=
ode has a comment that it checked the version against the standard PEP 440 =
standard and the alpha character's are not allowed.</div>
<div>&nbsp;</div>
<div>*** &lt;SOAP BOX RANT ***</div>
<div>&nbsp;</div>
<div>WHY DIDN'T PYTHON JUST SAY THAT IN THE ERROR MESSAGE???</div>
<div>&nbsp;</div>
<div>*** &lt;/SOAP BOX RANT ***</div>
<div>&nbsp;</div>
<div>Thanks for your answer Sir.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--CHhkQwQ9OjvxVRaml6Zb--

