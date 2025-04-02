Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CB1C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 05:50:27 +0000 (UTC)
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.167.76)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 22:50:20 -0700
References: <CAMKF1spoxyeqY3cg=auNcMbr2FV=Fpgg-piHksC5uFQugVFnow@mail.gmail.com>
In-Reply-To: <CAMKF1spoxyeqY3cg=auNcMbr2FV=Fpgg-piHksC5uFQugVFnow@mail.gmail.com>
Message-ID: <5436.1743573020806108283@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fPv93VcejRTxtMwTAlNe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 05:50:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65062

--fPv93VcejRTxtMwTAlNe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI Khem Raj,

I tried UNINATIVE_MAXGLIBCVERSION =3D "2.34" now I am facing below issue.

| switch/switch.c:11:10: fatal error: misc/switch.h: No such file or direct=
ory
| =C2=A0 =C2=A011 | #include <misc/switch.h>
| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~
| compilation terminated.
| Makefile:570: recipe for target 'switch/switch.o' failed
| make[2]: *** [switch/switch.o] Error 1

Can you suggest any alternative.

Thanks & Regards,
Sateesh

--fPv93VcejRTxtMwTAlNe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>HI Khem Raj,</div>
<div>&nbsp;</div>
<div>I tried UNINATIVE_MAXGLIBCVERSION =3D "2.34" now I am facing below iss=
ue.&nbsp;</div>
<div>&nbsp;</div>
<div>| switch/switch.c:11:10: fatal error: misc/switch.h: No such file or d=
irectory<br />| &nbsp; &nbsp;11 | #include &lt;misc/switch.h&gt;<br />| &nb=
sp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~<br />=
| compilation terminated.<br />| Makefile:570: recipe for target 'switch/sw=
itch.o' failed<br />| make[2]: *** [switch/switch.o] Error 1</div>
<div>&nbsp;</div>
<div>Can you suggest any alternative.</div>
<div>&nbsp;</div>
<div>Thanks &amp; Regards,</div>
<div>Sateesh</div>

--fPv93VcejRTxtMwTAlNe--

