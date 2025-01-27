Return-Path: <omri.sarig@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C254C0218C
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 09:05:29 +0000 (UTC)
Subject: [meta-poky] python string is marked as deprecated
To: yocto@lists.yoctoproject.org
From: omri.sarig@prevas.dk
X-Originating-Location: =?UTF-8?B?S2FybHNrb2dhLCDDlnJlYnJvIENvdW50eSwgU0U=?= (81.216.59.226)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2025 01:05:22 -0800
Message-ID: <1pkm.1737968722388215807.pmdl@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ua83FGxAwSnrmzQQ7X75"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 09:05:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64633

--ua83FGxAwSnrmzQQ7X75
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a Python code I'd like to add to my Yocto build.
In this code, I use the string module ( https://docs.python.org/3/library/s=
tring.html ) from Python.

To make my code run on the target, I need to add the dependency of "python3=
-stringold" to my recipe.
I've looked at the description of this package, and it says: "Python string=
 APIs [deprecated]".

My code works as expected on the target, but the naming of the package, and=
 its description confuses me.
As far as I can tell, Python's string module is not currently deprecated. I=
n the past, this module did use to contain more functionality, which moved =
to be part of the str object itself, but the module still contains other fu=
nctionality, which is not deprecated.

I tried to trace the log of meta-poky to see when the deprecation notice wa=
s added, and it looks like it is there from the first commit adding this py=
thon (and this package) to the project:

commit 7defc582e098a099f9056aa4ff18e200361ad512
Author: Richard Purdie <richard@openedhand.com>
Date: =C2=A0 Tue May 23 11:07:10 2006 +0000

Add python+pyhton-pygtk2

git-svn-id: https://svn.o-hand.com/repos/poky/trunk@415 311d38ba-8fff-0310-=
9ca6-ca027cbcb966

Is this deprecation message for the package wrong, or am I doing something =
wrong by using it?

Thanks for the help,
With Kind Regards,
Omri

--ua83FGxAwSnrmzQQ7X75
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I have a Python code I'd like to add to my Yocto build.</div>
<div>In this code, I use the <a href=3D"https://docs.python.org/3/library/s=
tring.html" target=3D"_blank" rel=3D"noopener">string module</a> from Pytho=
n.</div>
<div>&nbsp;</div>
<div>To make my code run on the target, I need to add the dependency of "py=
thon3-stringold" to my recipe.</div>
<div>I've looked at the description of this package, and it says: "Python s=
tring APIs [deprecated]".</div>
<div>&nbsp;</div>
<div>My code works as expected on the target, but the naming of the package=
, and its description confuses me.</div>
<div>As far as I can tell, Python's string module is not currently deprecat=
ed. In the past, this module did use to contain more functionality, which m=
oved to be part of the str object itself, but the module still contains oth=
er functionality, which is not deprecated.</div>
<div>&nbsp;</div>
<div>I tried to trace the log of meta-poky to see when the deprecation noti=
ce was added, and it looks like it is there from the first commit adding th=
is python (and this package) to the project:</div>
<div>&nbsp;</div>
<div>commit 7defc582e098a099f9056aa4ff18e200361ad512<br />Author: Richard P=
urdie &lt;richard@openedhand.com&gt;<br />Date: &nbsp; Tue May 23 11:07:10 =
2006 +0000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br=
 />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;<br />&nbsp; &nbsp; Add python+pyhton-pygtk2 &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />&nbsp; &nbsp; git-svn-id: https:=
//svn.o-hand.com/repos/poky/trunk@415 311d38ba-8fff-0310-9ca6-ca027cbcb966<=
/div>
<div>&nbsp;</div>
<div>Is this deprecation message for the package wrong, or am I doing somet=
hing wrong by using it?</div>
<div>&nbsp;</div>
<div>Thanks for the help,</div>
<div>With Kind Regards,</div>
<div>Omri</div>

--ua83FGxAwSnrmzQQ7X75--

