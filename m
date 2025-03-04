Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7F4C282C6
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 00:14:20 +0000 (UTC)
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: "Lander0606" <landervanloock@gmail.com>, yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Woluwe-Saint-Pierre - Sint-Pieters-Woluwe, Brussels Capital, BE (94.109.168.89)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Mar 2025 16:14:15 -0800
References: <6528.1741039555830093334@lists.yoctoproject.org>
In-Reply-To: <6528.1741039555830093334@lists.yoctoproject.org>
Message-ID: <13960.1741047255037394534@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j0NYOrwYk7f52o213K7J"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Mar 2025 00:14:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64915

--j0NYOrwYk7f52o213K7J
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I did improve the patch a bit by adding a list to track which inodes alread=
y have been processed so the callback isn't executed twice for the same ino=
de (as happened in the error above, for some reason). Maybe the current sol=
ution is not the optimal one, but the build now completes with no errors.

I also added some small changes to prevent a memory leak (closing the direc=
tory) and crashes when an error occurred while opening a directory. The upd=
ated patch can be found here, in the comments below I added the line number=
s for the changes: https://gist.github.com/Lander0606/7ca20f75408b1d759a1e5=
4b2384626d1

Please feel free to test and improve this implementation.

--j0NYOrwYk7f52o213K7J
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I did improve the patch a bit by adding a list to track which inodes a=
lready have been processed so the callback isn't executed twice for the sam=
e inode (as happened in the error above, for some reason). Maybe the curren=
t solution is not the optimal one, but the build now completes with no erro=
rs.</div>
<div>&nbsp;</div>
<div>I also added some small changes to prevent a memory leak (closing the =
directory) and crashes when an error occurred while opening a directory. Th=
e updated patch can be found here, in the comments below I added the line n=
umbers for the changes: <a href=3D"https://gist.github.com/Lander0606/7ca20=
f75408b1d759a1e54b2384626d1" target=3D"_blank" rel=3D"noopener">https://gis=
t.github.com/Lander0606/7ca20f75408b1d759a1e54b2384626d1</a></div>
<div>&nbsp;</div>
<div>Please feel free to test and improve this implementation. </div>

--j0NYOrwYk7f52o213K7J--

