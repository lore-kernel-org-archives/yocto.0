Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98BDC001DE
	for <webhook@archiver.kernel.org>; Wed, 19 Jul 2023 13:01:06 +0000 (UTC)
Subject: Re: wic cp doesn't work with ext4 partition
To: yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: Erlangen, Bavaria, DE (80.255.6.130)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Jul 2023 05:52:11 -0700
References: <25008.1689316808406713055@lists.yoctoproject.org>
In-Reply-To: <25008.1689316808406713055@lists.yoctoproject.org>
Message-ID: <13915.1689771131121393972@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zxAcKdkbGF9XOFvBKN9g"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jul 2023 13:01:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60615

--zxAcKdkbGF9XOFvBKN9g
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi,

now it is clear why it doesn't work.
`wic` uses `debugfs` to write things to ext? partitions.
But `debugfs` (1.45.4 (23-Sep-2019)) can only write to the current working =
directory and it cannot copy complete directory trees (like mtools's `mcopy=
` can do for FAT like file systems).

So the only way I see to achieve this is to write a command list which is g=
iven to `debugfs` via `-f`parameter.
Such a command list may look like this for command `debugfs -w single_parti=
tion_file -f command_list` :
```=20
cd "/dirX"
rm "file1"
cd "/"
rmdir "dirX"
cd "/"
mkdir "dirX"
cd "/dirX"
write "/home/myuser/my_local_file1" "file1"
```

The remove is done because `debugfs`cannot overwrite files!

I hope this helps others with same problem ... :-)

Cheers,
Markus


--zxAcKdkbGF9XOFvBKN9g
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>

<p>now it is clear why it doesn't work.
<code>wic</code> uses <code>debugfs</code> to write things to ext? partitio=
ns.
But <code>debugfs</code> (1.45.4 (23-Sep-2019)) can only write to the curre=
nt working directory and it cannot copy complete directory trees (like mtoo=
ls's <code>mcopy</code> can do for FAT like file systems).</p>

<p>So the only way I see to achieve this is to write a command list which i=
s given to <code>debugfs</code> via <code>-f</code>parameter.
Such a command list may look like this for command <code>debugfs -w single_=
partition_file -f command_list</code> :</p>
<pre class=3D"prettyprint"><code class=3D"language-unknown">cd &#34;/dirX&#=
34;
rm &#34;file1&#34;
cd &#34;/&#34;
rmdir &#34;dirX&#34;
cd &#34;/&#34;
mkdir &#34;dirX&#34;
cd &#34;/dirX&#34;
write &#34;/home/myuser/my_local_file1&#34; &#34;file1&#34;
</code></pre>
<p>The remove is done because <code>debugfs</code>cannot overwrite files!</=
p>

<p>I hope this helps others with same problem ... :-)</p>

<p>Cheers,
Markus</p>

--zxAcKdkbGF9XOFvBKN9g--

