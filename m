Return-Path: <fgobber@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E85BC3DA6E
	for <webhook@archiver.kernel.org>; Mon, 25 Dec 2023 06:17:23 +0000 (UTC)
Subject: I get an error with bitbake when a program requires libgpiod.
To: yocto@lists.yoctoproject.org
From: "fgobber@hotmail.com" <fgobber@hotmail.com>
X-Originating-Location: Cles, Trentino-Alto Adige, IT (151.62.169.215)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 24 Dec 2023 22:17:21 -0800
Message-ID: <SQYO.1703485041673038154.cmwU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hJt8rkW2e7zYsAXkkrtN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Dec 2023 06:17:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62034

--hJt8rkW2e7zYsAXkkrtN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm running a project that uses yocto to produce a version of linux.
The image must contain a program developed with eclipse CDT which uses the =
one contained in the SDK as a toolchain and I have added a recipes called i=
sabusrun.bb which includes this application.
Under these conditions the bitbake procedure ends successfully producing a =
valid image.
Then when I extended the program
which requires adding the libgipiod library to the project, the bitbake pro=
cedure fails with this message:
ERROR: isabusrun-1.0-r0 do_package_qa: QA Issue: /opt/ISABus/ISABusRun cont=
ained in package isabusrun requires libgpiod.so.2()(64bit), but no provider=
s found in RDEPENDS_isabusrun? [rdeps-file]
ERROR: isabusrun-1.0-r0 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.

I added version 2.0.2 to the libgpiod recipes but the error still shows up.

What should I do to resolve the error.

Thanks for the help.

Best regards

Flavio

--hJt8rkW2e7zYsAXkkrtN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />
<pre id=3D"tw-target-text" class=3D"tw-data-text tw-text-large tw-ta" dir=
=3D"ltr" style=3D"unicode-bidi: isolate; font-size: 28px; line-height: 36px=
; background-color: #f8f9fa; padding: 2px 0.14em 2px 0px; position: relativ=
e; margin-top: -2px; margin-bottom: -2px; resize: none; font-family: inheri=
t; overflow: hidden; width: 270px; text-wrap: wrap; color: #202124; border:=
 initial none initial;" data-placeholder=3D"Traduzione" data-ved=3D"2ahUKEw=
izrM7s9KmDAxXcgP0HHdxQDRYQ3ewLegQIBhAQ"><span class=3D"Y2IQFc" lang=3D"en">=
I'm running a project that uses yocto to produce a version of linux.
The image must contain a program developed with eclipse CDT which uses the =
one contained in the SDK as a toolchain and I have added a recipes called i=
sabusrun.bb which includes this application.
Under these conditions the bitbake procedure ends successfully producing a =
valid image.
Then when I extended the program
which requires adding the libgipiod library to the project, the bitbake pro=
cedure fails with this message:
ERROR: isabusrun-1.0-r0 do_package_qa: QA Issue: /opt/ISABus/ISABusRun cont=
ained in package isabusrun requires libgpiod.so.2()(64bit), but no provider=
s found in RDEPENDS_isabusrun? [rdeps-file]
ERROR: isabusrun-1.0-r0 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.

I added version 2.0.2 to the libgpiod recipes but the error still shows up.

What should I do to resolve the error.

Thanks for the help.<br /><br /><br />Best regards<br /><br />Flavio<br /><=
br /></span></pre>

--hJt8rkW2e7zYsAXkkrtN--

