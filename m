Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46E43C001B0
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 08:59:32 +0000 (UTC)
Subject: Re: wic cp doesn't work with ext4 partition
To: yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: Nuremberg, Bavaria, DE (87.148.38.218)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jul 2023 01:15:33 -0700
References: <CAAfyv36GCbQ1M=KtQTLiMP3eg3pTiQ3rh43x6pHoK2T6ztRWxA@mail.gmail.com>
In-Reply-To: <CAAfyv36GCbQ1M=KtQTLiMP3eg3pTiQ3rh43x6pHoK2T6ztRWxA@mail.gmail.com>
Message-ID: <15873.1689236133239327587@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RXNjXQv084DRyifXcTgv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 08:59:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60565

--RXNjXQv084DRyifXcTgv
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi,
how did you solve this? <br>
I have a multi-partion *.wic file and if I copy to part4 (vfat) it is fine.=
 <br>
But if I try to copy to part3 (ext4) then it fails ... which I can see with=
 `ls`. <br>
If I try to copy a complete folder `srv` like: <br>
`wic cp ~/GIT/nfp/buildo/tmp/additional_data/srv ~/GIT/nf75p/buildo/xxx.wic=
:3/`
... then a `srv` is created which looks like this:
```
wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv
debugfs 1.45.5 (07-Jan-2020)
-l: Ext2 inode is not a directory
```
I can delete this with :
`wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv`
... but I cannot copy anything inside and also the original content from `s=
rv` is not inside.

I'm using Ubuntu 20.04 and also tried it in a docker with Ubuntu 16.04.

Any know issues here or what I'm doing wrong?

Thanks a lot
Markus

--RXNjXQv084DRyifXcTgv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,
how did you solve this? <br>
I have a multi-partion *.wic file and if I copy to part4 (vfat) it is fine.=
 <br>
But if I try to copy to part3 (ext4) then it fails ... which I can see with=
 <code>ls</code>. <br>
If I try to copy a complete folder <code>srv</code> like: <br>
<code>wic cp ~/GIT/nfp/buildo/tmp/additional_data/srv ~/GIT/nf75p/buildo/xx=
x.wic:3/</code>
... then a <code>srv</code> is created which looks like this:</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">wic ls ~/GIT/nf=
p/buildo/xxx.wic:3/srv
debugfs 1.45.5 (07-Jan-2020)
-l: Ext2 inode is not a directory
</code></pre>
<p>I can delete this with :
<code>wic ls ~/GIT/nfp/buildo/xxx.wic:3/srv</code>
... but I cannot copy anything inside and also the original content from <c=
ode>srv</code> is not inside.</p>

<p>I'm using Ubuntu 20.04 and also tried it in a docker with Ubuntu 16.04.<=
/p>

<p>Any know issues here or what I'm doing wrong?</p>

<p>Thanks a lot
Markus</p>

--RXNjXQv084DRyifXcTgv--

