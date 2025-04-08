Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4482AC369A1
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 19:00:46 +0000 (UTC)
Received: from smtp-outbound7.duck.com (smtp-outbound7.duck.com [20.67.222.12])
 by mx.groups.io with SMTP id smtpd.web11.74272.1744117978093446734
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 06:12:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@duck.com header.s=postal-KpyQVw header.b=LKgTbUDr;
 spf=pass (domain: duck.com, ip: 20.67.222.12, mailfrom: proffesionaladdress2@duck.com)
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org> <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com> <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com> <aa127e87-0a7f-4c5a-9467-675d1cf1df03@gmail.com> <7A2D6367-3CD1-460F-9655-69A8B0D980A7.1@smtp-inbound1.duck.com>
Subject: Re: [yocto] warn if a variable is not used
MIME-Version: 1.0
X-Rspamd-Bar: -
X-Rspamd-Report: DMARC_POLICY_ALLOW(-0.5) MIME_GOOD(-0.1) R_DKIM_ALLOW(-0.2) R_SPF_ALLOW(-0.2)
X-Rspamd-Score: -1
X-Rspamd-Action: no action
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto at lists yoctoproject org proffesionaladdress2 <yocto@lists.yoctoproject.org>,
 proffesionaladdress2@duck.com
Received: by smtp-inbound1.duck.com; Tue, 08 Apr 2025 09:12:56 -0400
Message-ID: <A1FCA99A-D1F4-45C5-9174-3D1F7F2D8082.1@smtp-inbound1.duck.com>
Date: Tue, 08 Apr 2025 09:12:56 -0400
From: proffesionaladdress2@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Subject: References; q=dns/txt; s=postal-KpyQVw;
 t=1744117977; bh=TOwEDi8mlLSAwxqjgXQkeRhS8n4xHfqVuojNbpJU6iU=;
 b=LKgTbUDrWzuE5XzS4bMYzM6YhZUeqDPumVFFkuScIPU/Uiq/pLMI1R+jmeKTNufnKPlrGz2Tp
 nvSwLJOSmw/VbSrT+BNxr7OSEkBvSyjOtY3nt0BuzyTrtdGA659Z6Op5qJDBlD6AfU+7yULQ3tW
 mTR6Ns8OTBeQyeYVKaDZNls=
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 19:00:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65126

Thank you, but branch is never reached because the previous condition is =
never true in this code (and I don't know why).
Even if bbwarn print 'WARNING: rpi-u-boot-scr-1.0-r0 do_compile: =
isempty=3Dtrue'.

isempty=3D"${@bb.utils.contains('MY_VARIABLE', '', 'false', 'true', d)}"
bbwarn "isempty=3D$isempty"
if [[ $isempty =3D=3D true ]]; then
           MY_VARIABLE =3D "value"
            bbwarn "MY_VARIABLE is not defined, used default: =
${MY_VARIABLE}"
else
            bbwarn "?????"
fi

But maybe bitbake provide some syntax to print a warning when a variable is=
 not set outside bash code.
Or it is easier to use some python code.

----- Mail original -----
De: "Gyorgy Sarvari" <skandigraun_at_gmail.com_proffesionaladdress2@duck.=
com>
=C3=80: "yocto at lists yoctoproject org proffesionaladdress2" =
<yocto_at_lists.yoctoproject.org_proffesionaladdress2@duck.com>, =
proffesionaladdress2@duck.com
Envoy=C3=A9: Mardi 8 Avril 2025 14:56:24
Objet: Re: [yocto] warn if a variable is not used

>
> | /<path>/run.do_compile.352486: 153: MY_VARIABLE: not found
<snip>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MY_VARIABLE =
=3D "value"
Note that when you are in do_compile, that's a shell script. You
shouldn't put space around the equal sign here, because that's not a
valid syntax to assign a value to a variable in shell.


