Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3571D12D66
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 12:56:27 +0000 (UTC)
Subject: Unable to find gdb in tmp/sysroots directory
To: yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: Amsterdam, North Holland, NL (165.225.240.117)
X-Originating-Platform: Windows Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 Nov 2024 04:56:25 -0800
Message-ID: <2Snm.1731416185813694899.IyUI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lFI9nN3eL8KnUbyVHWt1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 12:56:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64263

--lFI9nN3eL8KnUbyVHWt1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm trying to set up a debugfs. According to https://docs.yoctoproject.org/=
5.0.4/singleindex.html#using-the-gdbserver-method ( https://docs.yoctoproje=
ct.org/5.0.4/singleindex.html#using-the-gdbserver-method ) section 5, I sho=
uld be able to find my gdb in $BUILDDIR/tmp/sysroots but on my build, the "=
sysroots" directotry is empty after doing "bitbake gdb-cross-arm". I'm able=
 to find gdb in $BUILDDIR/tmp/work/... though.

I'm using the kirkstone branch of poky.

Does someone have an idea why it's the case?

Thanks in advance.

--lFI9nN3eL8KnUbyVHWt1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi everyone,</div>
<div>&nbsp;</div>
<div>I'm trying to set up a debugfs. According to <a href=3D"https://docs.y=
octoproject.org/5.0.4/singleindex.html#using-the-gdbserver-method" target=
=3D"_blank" rel=3D"noopener">https://docs.yoctoproject.org/5.0.4/singleinde=
x.html#using-the-gdbserver-method </a>section 5, I should be able to find m=
y gdb in $BUILDDIR/tmp/sysroots but on my build, the "sysroots" directotry =
is empty after doing "bitbake gdb-cross-arm". I'm able to find gdb in $BUIL=
DDIR/tmp/work/... though.</div>
<div>&nbsp;</div>
<div>I'm using the kirkstone branch of poky.</div>
<div>&nbsp;</div>
<div>Does someone have an idea why it's the case?</div>
<div>&nbsp;</div>
<div>Thanks in advance.</div>

--lFI9nN3eL8KnUbyVHWt1--

