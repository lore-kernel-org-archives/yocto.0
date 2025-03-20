Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F7CC36002
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 07:13:46 +0000 (UTC)
Subject: Re: [yocto] How to build a yocto image with two different python3 versions ? #yocto #python #scarthgap #sdk #toolchain
To: 283982@ust.com, yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (182.74.28.237)
X-Originating-Platform: Linux Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Mar 2025 00:13:38 -0700
References: <20431.1742453702008361364@lists.yoctoproject.org>
In-Reply-To: <20431.1742453702008361364@lists.yoctoproject.org>
Message-ID: <20431.1742454818555423816@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kdquSk1zjAfO8owMvzDd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 07:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64988

--kdquSk1zjAfO8owMvzDd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

1) You can't have build with two version of recipe & both getting compiled.
Build will pick "only one" from build .
Which one will be pulled can be depending on recipe version / layer priorit=
y and few other parameters

2) You can quickly check which version is being picked by build using # =C2=
=A0bitbake -e python3 > python-log and look for recipe in this log

3) You can use BBMASK to deselect the required recipe

4) You can try creating two different core-image-minimal-XYZ image for diff=
erent version of python
so depending upon your requirement you can decide which image (and hence py=
thon) will be build for your use case

So you need to decide which version of python you want the RFS to be genera=
ted

--kdquSk1zjAfO8owMvzDd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>1) You can't have build with two version of recipe &amp; both getting =
compiled.</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; Build will pick "only one" from build .</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; Which one will be pulled can be depending on =
recipe version / layer priority and few other parameters </div>
<div>&nbsp;</div>
<div>2) You can quickly check which version is being picked by build using =
# &nbsp;bitbake -e python3 &gt; python-log and look for recipe in this log =
</div>
<div>&nbsp;</div>
<div>3) You can use BBMASK to deselect the required recipe </div>
<div>&nbsp;</div>
<div>4) You can try creating two different core-image-minimal-XYZ image for=
 different version of python </div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; so depending upon your requirement you can de=
cide which image (and hence python) will be build for your use case</div>
<div>&nbsp;</div>
<div>So you need to decide which version of python you want the RFS to be g=
enerated</div>
<div>&nbsp;</div>

--kdquSk1zjAfO8owMvzDd--

