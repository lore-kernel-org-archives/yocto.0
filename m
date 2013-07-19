Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 470F5E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 06:07:03 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id fb19so5346261obc.9
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 06:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=721g8xYFpgjwEU7ohKPg+QtbhO14SinjzD776dSUvHw=;
	b=HVW3TpsF//ajzST8axoAkhLKsKOi+/gr9gumywgzGgwvtsVOZgYlkIAOEyEWFM6X39
	mj3NMf+mWG/cfuO2Im3y5GfFE58caAp+IO+hsgk/sN79DQJMXCLyG0o3JrNbr7BdxD7C
	Zki4FW8jrQu8vxEJ13Y/bCwNB2+CqsJGL2xgN4jQeWmYzpsVv2DI4Eykk4fpikGPotj2
	7N62Olt7Ykn/r4So8hl8UDZNKRg4oyLp327G7WY9R0/guXoRVi1oEkAVDR+uAiKDp6wG
	6eg605sNQEPkjs8/Tl/mq41RrRVgmGmQF2x9KzE1k1na2g/6wuruE+jV4CIwwrIa2uR4
	uADw==
MIME-Version: 1.0
X-Received: by 10.182.181.73 with SMTP id du9mr12106455obc.106.1374239222431; 
	Fri, 19 Jul 2013 06:07:02 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Fri, 19 Jul 2013 06:07:02 -0700 (PDT)
Date: Fri, 19 Jul 2013 09:07:02 -0400
Message-ID: <CAE8H0+XntiXZNiZg4ZJhf+uLusWLu+ddQpXPuKru5epugR4W2Q@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: 9.0.1 release tarball requires bitbake 1.19.1 but provides 1.18.0?
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
X-List-Received-Date: Fri, 19 Jul 2013 13:07:06 -0000
Content-Type: multipart/alternative; boundary=089e010d9b76b0874104e1dd001a

--089e010d9b76b0874104e1dd001a
Content-Type: text/plain; charset=ISO-8859-1

I've run into another issue when trying to upgrade my system from Denzil to
Dylan using the released packages.  I extracted the 9.0.1 released tarball,
added the crownbay BSP, then moved my layers over from Denzil.  Sourced the
build directory, then modified bblayers.conf and local.conf to merge my
specifics with the new formats.

'bitbake core-image-minimal' results in an error... "OE-core's config
sanity checker detected a potential misconfiguration." and "Bitbake version
1.19.1 is required and version 1.18.0 was found".

A contributing factor may be that I also have a git snapshot from 2 days
ago on the same system (that builds), but I've tried to keep them in
separate directories and be careful about running the source script in it's
own shell.

Is this a problem with the release tarball or a PICNIC problem?

John

--089e010d9b76b0874104e1dd001a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve run into another issue when trying to upgrade my =
system from Denzil to Dylan using the released packages. =A0I extracted the=
 9.0.1 released tarball, added the crownbay BSP, then moved my layers over =
from Denzil. =A0Sourced the build directory, then modified bblayers.conf an=
d local.conf to merge my specifics with the new formats. =A0<div>
<br></div><div>&#39;bitbake core-image-minimal&#39; results in an error... =
&quot;OE-core&#39;s config sanity checker detected a potential misconfigura=
tion.&quot; and &quot;Bitbake version 1.19.1 is required and version 1.18.0=
 was found&quot;.</div>
<div><br></div><div>A contributing factor may be that I also have a git sna=
pshot from 2 days ago on the same system (that builds), but I&#39;ve tried =
to keep them in separate directories and be careful about running the sourc=
e script in it&#39;s own shell. =A0</div>
<div><br></div><div>Is this a problem with the release tarball or a PICNIC =
problem? =A0</div><div><br></div><div>John</div></div>

--089e010d9b76b0874104e1dd001a--
