Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5382FCF58E4
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 07:30:38 +0000 (UTC)
Subject: Re: [yocto] Missing opencv files in toolchain #yocto
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Sep 2024 00:30:30 -0700
References: <CAMKF1sp080KnfUpP9zWVNyh2Jm6HQ-uh=U+HcLCGTFQqzO5_aw@mail.gmail.com>
In-Reply-To: <CAMKF1sp080KnfUpP9zWVNyh2Jm6HQ-uh=U+HcLCGTFQqzO5_aw@mail.gmail.com>
Message-ID: <17877.1726817430762729816@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ma3B0ZYbpW5RhYHPPOCD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 07:30:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63872

--Ma3B0ZYbpW5RhYHPPOCD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Khem Raj for your replay.

I followed procedure suggested by you . I used *"bitbake -c populate_sdk co=
re-image-minimal"* , now I can get the opencv related files in my toolchain=
.
But with this it seems few QT5 related files are missing so I could not abl=
e to cross-compile my Qt5 application which was working with toolchain crea=
ted using "bitbake meta-toolchain-qt5".

*Error log:*
*--------------------------------------------------------------------------=
-------------------------------------------------------------*
poornesh@IBE2113N:~/Desktop/qtapp/opencv/provu-v0.0.4.04$ qmake
Cannot find feature spec_pre.prf
Error processing project file: /home/poornesh/Desktop/qtapp/opencv/provu-v0=
.0.4.04/provu.pro
*--------------------------------------------------------------------------=
-------------------------------------------------------------*

May I get your suggestions on this !

Thanks,

--Ma3B0ZYbpW5RhYHPPOCD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Khem Raj for your replay.</div>
<div>&nbsp;</div>
<div>I followed procedure suggested by you . I used <strong>"bitbake -c pop=
ulate_sdk core-image-minimal"</strong> , now I can get the opencv related f=
iles in my toolchain.</div>
<div>But with this it seems few QT5 related files are missing so I could no=
t able to cross-compile my Qt5 application which was working with toolchain=
 created using "bitbake meta-toolchain-qt5".<br /><br /><strong>Error log:<=
/strong></div>
<div><strong>--------------------------------------------------------------=
-------------------------------------------------------------------------</=
strong></div>
<div>poornesh@IBE2113N:~/Desktop/qtapp/opencv/provu-v0.0.4.04$ qmake&nbsp;<=
br />Cannot find feature spec_pre.prf<br />Error processing project file: /=
home/poornesh/Desktop/qtapp/opencv/provu-v0.0.4.04/provu.pro</div>
<div><strong>--------------------------------------------------------------=
-------------------------------------------------------------------------</=
strong></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>May I get your suggestions on this !</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks,</div>

--Ma3B0ZYbpW5RhYHPPOCD--

