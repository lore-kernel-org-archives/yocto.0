Return-Path: <nguyenthaithuanalg@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7747C36002
	for <webhook@archiver.kernel.org>; Wed,  9 Apr 2025 13:52:23 +0000 (UTC)
Subject: Re: [yocto] A new member
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?VGh14bqtbiBOZ3V54buFbi1UaMOhaQ==?= <nguyenthaithuanalg@gmail.com>
X-Originating-Location: Quan Hai, Ho Chi Minh, VN (1.53.56.227)
X-Originating-Platform: Linux Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Apr 2025 06:52:14 -0700
References: <7465124b-5ddc-47af-9f77-755ef83453a7@gmail.com>
In-Reply-To: <7465124b-5ddc-47af-9f77-755ef83453a7@gmail.com>
Message-ID: <13400.1744206734783532039@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="v42OnHC1bnd37zqVXfoX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 13:52:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65131

--v42OnHC1bnd37zqVXfoX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gyorgy,
It is wonderful, I see the output: "poky/build/tmp/deploy/images/qemux86-64=
/core-image-sato-qemux86-64-20250409111400.rootfs.ext4" in my PC.
With commands below:
git checkout dunfell
source oe-init-build-env
bitbake core-image-sato --runall=3Dfetch ## get source
bitbake core-image-sato ## Build source

Now, I have a library, I want to integrate into yocto, and I hope the commu=
nity take a=C2=A0 look. On LinkedIn, Jan Flik - a director from Intel, told=
 me refer to yocto/openBMC, and could contribute to the community. Can you =
give me some hints? I really appreciate if you do that.
My libary is "simplelog-topic": https://github.com/thuanalg/simplelog-topic
Regards,
Thuan Nguyen Thai

--v42OnHC1bnd37zqVXfoX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Gyorgy,</div>
<div>It is wonderful, I see the output: "poky/build/tmp/deploy/images/qemux=
86-64/core-image-sato-qemux86-64-20250409111400.rootfs.ext4" in my PC.</div=
>
<div>With commands below:</div>
<div>
<pre>git checkout dunfell
source oe-init-build-env
bitbake core-image-sato --runall=3Dfetch ## get source
bitbake core-image-sato ## Build source
</pre>
</div>
<div>Now, I have a library, I want to integrate into yocto, and I hope the =
community take a&nbsp; look. On LinkedIn, Jan Flik - a director from Intel,=
 told me refer to yocto/openBMC, and could contribute to the community. Can=
 you give me some hints? I really appreciate if you do that.</div>
<div>My libary is "simplelog-topic": <a href=3D"https://github.com/thuanalg=
/simplelog-topic" target=3D"_blank" rel=3D"noopener">https://github.com/thu=
analg/simplelog-topic</a></div>
<div>Regards,</div>
<div>Thuan Nguyen Thai</div>

--v42OnHC1bnd37zqVXfoX--

