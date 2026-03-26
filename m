Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C900106F317
	for <webhook@archiver.kernel.org>; Thu, 26 Mar 2026 09:56:30 +0000 (UTC)
Received: from bumble.maple.relay.mailchannels.net (bumble.maple.relay.mailchannels.net [23.83.214.25])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.44492.1774518985414743542
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2026 02:56:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=rxc8mNBD;
 spf=pass (domain: rootcommit.com, ip: 23.83.214.25, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id B0DEB9217F5;
	Thu, 26 Mar 2026 09:56:24 +0000 (UTC)
Received: from de-fra-smtpout3.hostinger.io (100-114-142-253.trex-nlb.outbound.svc.cluster.local [100.114.142.253])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id BAE4692209C;
	Thu, 26 Mar 2026 09:56:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1774518984;
	b=aKczfNhTxMb2HM/8Yn/dIfJF1u1FrD4gf/n53gqPwmrltzPtfkMsq/vf8kGHI+689jC8eZ
	LZCrF76AI9k/Jks6eMHVYp9QZn31kExlcHzEFt6NChqmNcMyZMSzXDDZDYPSNaL/drh9EN
	a6Gel6MM6DLYpyKD6/RT3/DMnxLji9wE3lJgyy0f40Z883WNfQ32u7yWuvc8M/Nn1IMZ8t
	r6IybGjsTjI5wRtcJyFfXN3AnE7Z9PFe4zDuElYOZRcftkBtINgLfl+9YvieBEhXhl9l9V
	44fQofYtF4Y+SlOKyC4gvTDFm6nVwaspgvhvxQkiQc4OKjQDn/fAGVsAGbhWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1774518984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Wu64vYop5i8JOVvSf894xqXB4QLXno5ACw7mBV9U84A=;
	b=c4vb0jMb/NROJCO2/vSSd7lR/132RJaZVBJhxMf2KWTKQrQWcLRJbob4n6Wd0ZhxaWKkYe
	VVLawZb7eu5UpUvIrim55Vise0nPfK/zfH9LCNsT7EPwXXHit1ZEvTSqR2wiQKzUQq+u0y
	Iv7S1Ji42BmrfKS3YWMAV5Vws/TFYIzCZ+0CKil6n57gH/I0059BnlX3c+SyGf2C2We5b5
	qZ3O1+AsbZSx/N2QWTjm5+lKEcILl+RRoEB3jm7gnXK6SGKJtEuan1e6gGldCwk3S9XPG6
	yaLfRbK+Ah4bb5vIBOaBb9exZo15Nj9fTpS0LJ4rOp3iV36p1+js3qkpwmF3Yg==
ARC-Authentication-Results: i=1;
	rspamd-7f98bb5847-4lctd;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-White-Whistle: 79d70a2a1159f3d2_1774518984475_2840697066
X-MC-Loop-Signature: 1774518984474:3938047858
X-MC-Ingress-Time: 1774518984474
Received: from de-fra-smtpout3.hostinger.io (de-fra-smtpout3.hostinger.io
 [148.222.55.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.114.142.253 (trex/7.1.5);
	Thu, 26 Mar 2026 09:56:24 +0000
Received: from [IPV6:2001:861:4450:d360:81fe:c283:dbfd:f96b] (unknown [IPv6:2001:861:4450:d360:81fe:c283:dbfd:f96b])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fhK113pXHz3wx0;
	Thu, 26 Mar 2026 09:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1774518982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wu64vYop5i8JOVvSf894xqXB4QLXno5ACw7mBV9U84A=;
	b=rxc8mNBDXgdptYyY0H571PiqaS+uZq8UIv/D2NNmXZkFlfPuGYqVXtJmwCaIt0cEub9sWO
	mL8htM5egSfpWlFqCrp6h4RmTtWtruihclhVALf86q+QVLsEkwQ5KJUw/qcBeExQNmk6tX
	vFN37u7dDebggccrhAK4Bj2kIj4WdMmKhQW9YEiUaA3cRDTP1Rnf0HuXivCXzrStNkapVm
	DqW3FSoFzemiJt95S8ZcgSEx3gB7iyFa1NUj+qxCy03vrn/pF3HI28Lv/9cFwOB6pdjr2h
	zeoyf+BsD5eH3Bs1JiWnZ72I/tJhPl2pcVHU2y0zck8dkS5MJXV34bUGsYWOlw==
Message-ID: <aab17025-f0f2-4c04-b370-8789624eb571@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: overlayfs-etc on top of dm-verity?
To: Vyacheslav Yurkov <uvv.mail@gmail.com>
References: <bfaae86a-5b66-4abf-95ef-0fd345ffcada@rootcommit.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <bfaae86a-5b66-4abf-95ef-0fd345ffcada@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Thu, 26 Mar 2026 09:56:21 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=ALriHGRn c=1 sm=1 tr=0 ts=69c502c5 a=dCRv1xv6W43JwEVryS0S5A==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=AHIHXcdB7rjkH5Lyv8wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfAUa3W2ed0K6obKBQsc//mzy/h0+0WwVJ0sQi0Pvq+N6q6lUQBpUGlnMM3nBpZCMRtVifV2RoTXTID/1v5UgIc9Ehbk/t0rtHDLNy2FShJrul292aeLz PZvBm0zT9i88zboMUAv97xvsCA4fzbf4yKwW4a6bC4ECvehMZtTkIjkk6B6pWBgjGgebeQ+G5Fp/zWV8l6KgHaZqZq0RSBd136dV3sSSqE4A2638k2aKiNIy /sP6cFX4Z2x4vD59Ah/6WAYo2rA8n/fNAUT3C0fh9ozSuQmyTrs2VsA1mREZ9UoB9y9kdxukeOzIV/UJ0NOEF9Ne/Pjd8x/RlQ8zepMvG60GJ5xZ5hXAnAGh q98DPx7zxZB2iJxed1PxK5UPo4aneF7s9Y8UvzER8F/pTJ9e9hI=
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2026 09:56:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66355

Greetings,

On 3/25/26 10:20 PM, Michael Opdenacker wrote:
> Hi Slava and community,
>
> Do you know if overlayfs and in particular our overlayfs-etc class=20
> works when /etc is on a dm-verity root filesystem?
>
> Without dm-verity (regular ext4 or erofs root filesystem), everything=20
> looks all right:
> # mount | grep overlay
> /data/overlay-etc/upper on /etc type overlay=20
> (rw,relatime,lowerdir=3D/etc,upperdir=3D/data/overlay-etc/upper,workdir=
=3D/data/overlay-etc/work,uuid=3Don)
>
> When /etc is on /dev/mapper/rootfs (dm-verity), everything seems=20
> messed up:
> # mount | grep overlay
> overlay on /var/cache type overlay=20
> (rw,relatime,lowerdir=3D/var/cache,upperdir=3D/var/volatile/cache,workd=
ir=3D/var/volatile/.cache-work,uuid=3Don)
> overlay on /var/lib type overlay=20
> (rw,relatime,lowerdir=3D/var/lib,upperdir=3D/var/volatile/lib,workdir=3D=
/var/volatile/.lib-work,uuid=3Don)
> overlay on /var/spool type overlay=20
> (rw,relatime,lowerdir=3D/var/spool,upperdir=3D/var/volatile/spool,workd=
ir=3D/var/volatile/.spool-work,uuid=3Don)
> overlay on /srv type overlay=20
> (rw,relatime,lowerdir=3D/srv,upperdir=3D/var/volatile/srv,workdir=3D/va=
r/volatile/.srv-work,uuid=3Don)
>
> Systemd may be messing up, as only in this case, it does:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/cac=
he...
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/lib=
...
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/spo=
ol...
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /srv...
>
> But these bind mounts show up as overlay mounts!
>
> Has anyone already encountered such an issue?

I eventually managed to get /etc mounted as an overlay. It seems that=20
/sbin/init was started instead of /sbin/preinit as specified in the=20
kernel command line.
I hardcoded the call to /sbin/preinit by customizing=20
openembedded-core/meta/recipes-core/initrdscripts/initramfs-framework/fin=
ish=20
(in a bbappend file, of course).

The code looks right though, I need to understand why this happens.

Another weirdness that remains is these volatile mounts for /var/cache/,=20
/var/lib, /var/spool and /srv, which I didn't have with a regular=20
read-only root filesystem.
I'll keep you posted.
Cheers
Michael.

--=20
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


