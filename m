Return-Path: <gschmottlach@gmail.com>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A9EE003BF
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 08:19:43 -0700 (PDT)
Received: by mail-wi0-f177.google.com with SMTP id hi5so20873wib.4
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 08:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EdLrFGGUkaRbAGhMXL3KYjW51aPNCoRpHsNtMgNwS/8=;
	b=Rf+TyNunWFwIXJjWhVx6J3h0U2i0sWgo1+sorTfejt1rAxtvoo3Qi3adjjYfv9mhI6
	SaU3tezlT6iK5tuEXxiL/DPmE5varOuR8FqjltNx9pzfps/5AA6A7lPYm8rtDfUvwo6h
	AD9DDe8J4BZT1w5JA2RczT45dPvsZxy3I2a/GjoMIZv17jBSUsahkEV6zHHYFaCYFcCA
	JtZexiYxFPYAe9Hi8Q4oMU6JEgo17CbleW8nJjM4lKLygNVK7Z0h0EblVJ83qwpa4Px3
	v2wgVXvptE1v9t4T2wYbioboJPMrqazZBarWuUYF8M7rf2wIWDtCPnTB1O+CS/yt+RG4
	vx9g==
MIME-Version: 1.0
X-Received: by 10.194.23.73 with SMTP id k9mr15309876wjf.24.1377616782549;
	Tue, 27 Aug 2013 08:19:42 -0700 (PDT)
Received: by 10.216.122.135 with HTTP; Tue, 27 Aug 2013 08:19:42 -0700 (PDT)
Date: Tue, 27 Aug 2013 11:19:42 -0400
Message-ID: <CAMS2kBGuQmZKUVvSvtcZepwi2ZV7b8guwnRYfNbHY2CEhyNQmw@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: Syntax for specifying multiple URI's in a PREMIRRORS statement?
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
X-List-Received-Date: Tue, 27 Aug 2013 15:19:47 -0000
Content-Type: multipart/alternative; boundary=047d7b5d4396f5e99a04e4ef6683

--047d7b5d4396f5e99a04e4ef6683
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to figure out the syntax for specifying more than one URI in a
single PREMIRROR statement, e.g.

PREMIRRORS_append = "git://.*/.* file://toplevel/premirror
ftp://ftp.acme.com/pre_mirror/foo \n"

So for all "git" fetches I want it to *first* look in a local premirror
directory and if the file is not found there then try to fetch from an FTP
server. How do you separate the two destination URIs to search? I tried a
space ' ' and semi-colon but neither appear to work. Is the syntax
documented somewhere. Can anyone provide a suggestion?

--047d7b5d4396f5e99a04e4ef6683
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m trying to figure out the syntax for spec=
ifying more than one URI in a single PREMIRROR statement, e.g.<br><br></div=
>PREMIRRORS_append =3D &quot;git://.*/.* file://toplevel/premirror <a href=
=3D"ftp://ftp.acme.com/pre_mirror/foo">ftp://ftp.acme.com/pre_mirror/foo</a=
> \n&quot;<br>
<br></div>So for all &quot;git&quot; fetches I want it to *first* look in a=
 local premirror directory and if the file is not found there then try to f=
etch from an FTP server. How do you separate the two destination URIs to se=
arch? I tried a space &#39; &#39; and semi-colon but neither appear to work=
. Is the syntax documented somewhere. Can anyone provide a suggestion?<br>
</div>

--047d7b5d4396f5e99a04e4ef6683--
