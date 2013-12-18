Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7E1BE007BE
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 08:26:19 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id uy5so7931397obc.26
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 08:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HNezzE1ZAcSWn93VfODCc/W9QdR+1RLOe6hI8ckfvlo=;
	b=Ma5bNwLZaTvXyfozpAGjNe0v0T8aAkxefn9sAQi32IsiOBo2CjO1wJOiRsMdf+xE+9
	L4Gakb5joQHHy0hZFY+xhz/a14eZzGK82AhsyZTBJOyeJ47tw2tDz3Tz0T3OC5KGdLvu
	peZvo7l6sGQjqviM4HrexO6BApcf3OFbQQS/Y0Wfg++0gekGm0W2vOIhh1ME+cA1EO6d
	h3A229Zw2FRWB61E4yv0D42QJJL4BUY/YOnN2PrzQmsM7sGcCPye+qsfGy3u8o5k315A
	swpSHLkCAHedd4YVESDwqCpvdffNj6AhUo1bmLeW82TdFnDQpUQ1y8xjQL1TAe+gn9mR
	7bAA==
MIME-Version: 1.0
X-Received: by 10.60.144.228 with SMTP id sp4mr21005466oeb.29.1387383978719;
	Wed, 18 Dec 2013 08:26:18 -0800 (PST)
Received: by 10.76.100.173 with HTTP; Wed, 18 Dec 2013 08:26:18 -0800 (PST)
Date: Wed, 18 Dec 2013 11:26:18 -0500
Message-ID: <CAE8H0+XZVS8sSV-RKDxOzcvm4CrzUS-BV2bBU7KLmdh9ri=PoQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: poky-tiny, boot and filesystems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Dec 2013 16:26:20 -0000
Content-Type: multipart/alternative; boundary=047d7b41ccbc37ffe504edd181a8

--047d7b41ccbc37ffe504edd181a8
Content-Type: text/plain; charset=ISO-8859-1

I've been beating my head for a few days now, and would love a little
guidance.  Acknowledging that there are multiple ways to skin the cat, my
immediate goal is to reduce the boot time, presumably using poky-tiny.

I have poky-tiny building for my hardware under dora.
I have it booting on crownbay hardware by copying the .ext2 image onto the
sdcard, installing grub, copying the .cpio.gz file on to the card, and
using grub to load the kernel image and initrd the filesystem.

I'm wondering if that last bit about initrd is the 'best' option, or if I
should be overlaying a write-able filesystem on top of the original .ext2
file system?  How?

And I'm pretty sure I've not got something right...I figured out how to
.bbappend the tiny-init recipe and get my own edits into 'init' and
'rc.local', but it appears those files and changes made it into both the
ext2 file system and the .cpio.gz initrd file system.  On one hand, I'm
grateful since it works, but 'both' seems to point at me getting something
wrong.

Any links to clear tutorials would be greatly appreciated.  There's a
wealth of information available on this topic, but none that seems
comprehensive (that I've found), and as I've said, each seems to take a
different approach, leaving out a step or two along the way.

John

--047d7b41ccbc37ffe504edd181a8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been beating my head for a few days now, and woul=
d love a little guidance. =A0Acknowledging that there are multiple ways to =
skin the cat, my immediate goal is to reduce the boot time, presumably usin=
g poky-tiny. =A0<div>

<br></div><div>I have poky-tiny building for my hardware under dora.</div><=
div>I have it booting on crownbay hardware by copying the .ext2 image onto =
the sdcard, installing grub, copying the .cpio.gz file on to the card, and =
using grub to load the kernel image and initrd the filesystem.=A0</div>

<div><br></div><div>I&#39;m wondering if that last bit about initrd is the =
&#39;best&#39; option, or if I should be overlaying a write-able filesystem=
 on top of the original .ext2 file system? =A0How?</div><div><br></div><div=
>
And I&#39;m pretty sure I&#39;ve not got something right...I figured out ho=
w to .bbappend the tiny-init recipe and get my own edits into &#39;init&#39=
; and &#39;rc.local&#39;, but it appears those files and changes made it in=
to both the ext2 file system and the .cpio.gz initrd file system. =A0On one=
 hand, I&#39;m grateful since it works, but &#39;both&#39; seems to point a=
t me getting something wrong. =A0</div>
<div><br></div><div>Any links to clear tutorials would be greatly appreciat=
ed. =A0There&#39;s a wealth of information available on this topic, but non=
e that seems comprehensive (that I&#39;ve found), and as I&#39;ve said, eac=
h seems to take a different approach, leaving out a step or two along the w=
ay. =A0</div>
<div><br></div><div>John</div><div><br></div><div><br></div>
</div>

--047d7b41ccbc37ffe504edd181a8--
