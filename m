Return-Path: <robert.berger.yocto.user@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46595C433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Feb 2022 09:09:14 +0000 (UTC)
Subject: Re: Additional hardening options
To: yocto@lists.yoctoproject.org
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
X-Originating-Location: Athens, Attica, GR (85.75.26.181)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Feb 2022 01:09:13 -0800
References: 
 <f291b53c64f3ff2f8b98e26f1213db151a651f73.camel@linuxfoundation.org>
In-Reply-To: 
 <f291b53c64f3ff2f8b98e26f1213db151a651f73.camel@linuxfoundation.org>
Message-ID: <10591.1643706553421712312@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AjMD1Akhk5w8QZrdYQJ3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Feb 2022 09:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56040

--AjMD1Akhk5w8QZrdYQJ3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

This[1] is what I usually add as well to the security flags.

With respect to the "default" flags I had some fun with the SDK and=C2=A0-D=
_FORTIFY_SOURCE=3D2 and=C2=A0-fstack-protector-strong.

I guess they do have some performance impact as well, but I did not do very=
 thorough research.

Also, I did not confirm it yet but suspect that some of those flags might b=
e the reason for "debuginfod gdb: *** stack smashing detected ***: terminat=
ed".[2]

[1] https://gitlab.com/meta-layers/meta-resy/-/blob/master/conf/distro/incl=
ude/more_security_flags.inc

[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14570

Regards,

Robert

--AjMD1Akhk5w8QZrdYQJ3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />This[1] is what I usually add as well to the security flags.=
<br /><br />With respect to the "default" flags I had some fun with the SDK=
 and&nbsp;-D_FORTIFY_SOURCE=3D2 and&nbsp;-fstack-protector-strong.<br /><br=
 />I guess they do have some performance impact as well, but I did not do v=
ery thorough research.<br /><br />Also, I did not confirm it yet but suspec=
t that some of those flags might be the reason for "debuginfod gdb: *** sta=
ck smashing detected ***: terminated".[2]<br /><br />[1]&nbsp;<a href=3D"ht=
tps://gitlab.com/meta-layers/meta-resy/-/blob/master/conf/distro/include/mo=
re_security_flags.inc" target=3D"_blank" rel=3D"noopener">https://gitlab.co=
m/meta-layers/meta-resy/-/blob/master/conf/distro/include/more_security_fla=
gs.inc</a><br /><br />[2]&nbsp;<a href=3D"https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D14570" target=3D"_blank" rel=3D"noopener">https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D14570</a><br /><br />Regards,<br /><b=
r />Robert

--AjMD1Akhk5w8QZrdYQJ3--

