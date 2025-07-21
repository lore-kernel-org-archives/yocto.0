Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA153C83F1A
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 03:23:19 +0000 (UTC)
Subject: error with SDK that supports Qt creator
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Scarborough, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 20 Jul 2025 20:23:05 -0700
Message-ID: <FTrN.1753068185981760834.14lX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KUYtcVEWXwqftQySiDUl"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 03:23:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65686

--KUYtcVEWXwqftQySiDUl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am building SDK using populate_sdk that support Qt creator.

All are configured correctly except Qt version is considered invalid after =
adding qmake from <sysroots>/x86_64-pokysdk-linux/usr/bin.

Further check discovers this result:

>=20
> crane@vmUbuntu2204:~/work/project/$ which qmake
> /opt/poky/0.1/sysroots/x86_64-pokysdk-linux/usr/bin/qmake
> crane@vmUbuntu2204:~/work/project/$ qmake -v
> QMake version 3.1
> Using Qt version 5.15.13 in
> /home/crane/work/yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-qtbase/5.15.13+git/recipe-sysroot/opt/poky/0.1/sysroots/x86_64-pokysd=
k-linux/usr/lib
>=20
> crane@vmUbuntu2204:~/work/project/$
>=20

Obviously it doesn't point to the correct path. Qt libraries are in <sysroo=
ts>/usr/lib directory. What might be the cause?

Any input is appreciated.

Thanks!
Crane

--KUYtcVEWXwqftQySiDUl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I am building SDK using populate_sdk that support Qt creator.&nbsp;</d=
iv>
<div>&nbsp;</div>
<div>All are configured correctly except Qt version is considered invalid a=
fter adding qmake from &lt;sysroots&gt;/x86_64-pokysdk-linux/usr/bin.</div>
<div>&nbsp;</div>
<div>Further check discovers this result:</div>
<blockquote>
<div>crane@vmUbuntu2204:~/work/project/$ which qmake<br />/opt/poky/0.1/sys=
roots/x86_64-pokysdk-linux/usr/bin/qmake<br />crane@vmUbuntu2204:~/work/pro=
ject/$ qmake -v<br />QMake version 3.1<br />Using Qt version 5.15.13 in /ho=
me/crane/work/yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
-qtbase/5.15.13+git/recipe-sysroot/opt/poky/0.1/sysroots/x86_64-pokysdk-lin=
ux/usr/lib<br />crane@vmUbuntu2204:~/work/project/$&nbsp;</div>
</blockquote>
<div>Obviously it doesn't point to the correct path. Qt libraries are in &l=
t;sysroots&gt;/usr/lib directory. What might be the cause?&nbsp;</div>
<div>&nbsp;</div>
<div>Any input is appreciated.</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Crane</div>

--KUYtcVEWXwqftQySiDUl--

