Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22471093168
	for <webhook@archiver.kernel.org>; Wed, 25 Mar 2026 21:20:23 +0000 (UTC)
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.34286.1774473616150503456
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2026 14:20:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=RWw7qtsl;
 spf=pass (domain: rootcommit.com, ip: 23.83.209.14, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 67405223D6E;
	Wed, 25 Mar 2026 21:20:15 +0000 (UTC)
Received: from fr-int-smtpout26.hostinger.io (trex-green-8.trex.outbound.svc.cluster.local [100.114.137.253])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 7D25322387A;
	Wed, 25 Mar 2026 21:20:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1774473615;
	b=uBmJNJxBBxEuaEoJw8g8MuQUMY3DaRDRKIX7sn9BOUYHTcpfpIVcfHhEDWktmCUNAp1HmW
	KzC0l0fvA7dUmjHxTTNY9mzTyFJheeXNbNQIUfPOLzTyp1FovsN3085tcXPbuZQfWlIwZQ
	J9KLtm1HDLeVqTB0jp9EM/zeKMNMOmFOlduHoptmNVJ7e28rbZj+QGG7687s35+xJiVGDM
	HyiAufRdcD5wj+eHjCGesLvSFUEjTVl5ZMG2jvbmEH01CB6fh4u6+BDov0t6SNqV+Nvuap
	F5LkRsSd2kCxnLs3CVSA8gHnKWI2eYAgfT18YlLYJKr8KRjyLjv/hHIw59Cgmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1774473615;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=oIaCcKtM1pe9/fBSL3TQmf7KIr7RbGx7Dz6m1hAsLEM=;
	b=2KHADQrwkSj9VtqqzWKvHFDJpSoF/BJQ54qCYH7P0JdipzGXG1ZWFfh83ufF0jQGmkQqEb
	54KfC95xAgjWCIRPvZfWZ5HstvYXtiItYikKwp81IqgRZFDR7FVsbS2SNSy6T8EmnCQTSb
	/J+G6dNVVAskuTPjH5CPixL6OLX7C0/fBtnWf+Ku82Q7dCyNk4dyFJ/J/0oY0fm9N83IhG
	uvYAHNw7Uki0TQysQLrks8wPY5C2GjOHovrV3svKNf7st8yRZNSMjQragj30xDFAKOdrn9
	E3T+Gvx8bzXvsMfA0c9gDFIvpHs06NF9eJIdkcZ1/E6o7V3gVB+KggNs1NtVpA==
ARC-Authentication-Results: i=1;
	rspamd-7f98bb5847-x6mlb;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Shade-Suffer: 18b555b04e14b725_1774473615185_3113627219
X-MC-Loop-Signature: 1774473615185:3857809353
X-MC-Ingress-Time: 1774473615185
Received: from fr-int-smtpout26.hostinger.io (fr-int-smtpout26.hostinger.io
 [148.222.54.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.114.137.253 (trex/7.1.5);
	Wed, 25 Mar 2026 21:20:15 +0000
Received: from [IPV6:2001:861:4450:d360:188d:8582:1782:42d1] (unknown [IPv6:2001:861:4450:d360:188d:8582:1782:42d1])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fh0DX2shSz1xwk;
	Wed, 25 Mar 2026 21:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1774473612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oIaCcKtM1pe9/fBSL3TQmf7KIr7RbGx7Dz6m1hAsLEM=;
	b=RWw7qtslLkKJB8fWKEhDZaNNy4iEzHmT6+iPezGmDyfRKWAdVYJuLA8YX/ALgl5aDfQsMt
	3gDYbdKf22EzeWU7NQfyC2KRqjbYsvchEmAUEd795537A9hF245tjOq6YsCd2fnQ2ysoix
	Fupc/KjQAdlx7XgYBI7xJhE4RolSaZxwFpDGTde0d9CMUYUKGniBZMW41Nc6DSejSH8Lt4
	v0t/Y4LfJ1+uAR5Q89DsQ6aUxT+X/BWYE/hCv3/14mqwLLRl8NkWr5f43xKBSQOJjxcnEU
	zZm2symNKAgZMfv6pUvDH7AjI8YyApWWykIopwMJ+zFyUVA+M4dZzMSkPCODUA==
Message-ID: <bfaae86a-5b66-4abf-95ef-0fd345ffcada@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Content-Language: en-US
To: Vyacheslav Yurkov <uvv.mail@gmail.com>
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: overlayfs-etc on top of dm-verity?
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Wed, 25 Mar 2026 21:20:12 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=Gq4Q+V1C c=1 sm=1 tr=0 ts=69c4518c a=xNvIQ/5En087gOx/i3F37A==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=4Cg6MyQqYa1YOB7myp8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfDSb7xhrkOvZwqA+TGARamIUoAyuHKfV5jV9IEUXkrahFzsnL9EPhyYLK2PsJFhrwUb696gax1RmSmYo+PsvlvJcrosy5TXf4nJ+avHTrAWSnSTPPZQK rc++2dRwSYQetCobSZSLPKNC16D6OSOJF0Ag2Y5U1ZQRdhjxZtorDNCkSt9bhwIlFXlSctB2n73c0RZiD2wm1IeLH/+8rcodgx/F8tY8SHuEAilUtsVS4HsC ZU+ygste5Sd6UoObugmac4RIHzdaPvM3kAE2T3dW1Xj6hOgAzorGExgtu1QJ1vNqvvbaD/OQlHJA+O35xNtwScMgkQYeWccV+M5tPXKy2Y51DygF6+bMHEUR 1YkHjIOtrDILWRBx2QvePLQaMgtHnhWQppWs1ksc0XfZ5azYHL4=
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2026 21:20:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66354

Hi Slava and community,

Do you know if overlayfs and in particular our overlayfs-etc class works=20
when /etc is on a dm-verity root filesystem?

Without dm-verity (regular ext4 or erofs root filesystem), everything=20
looks all right:
# mount | grep overlay
/data/overlay-etc/upper on /etc type overlay=20
(rw,relatime,lowerdir=3D/etc,upperdir=3D/data/overlay-etc/upper,workdir=3D=
/data/overlay-etc/work,uuid=3Don)

When /etc is on /dev/mapper/rootfs (dm-verity), everything seems messed u=
p:
# mount | grep overlay
overlay on /var/cache type overlay=20
(rw,relatime,lowerdir=3D/var/cache,upperdir=3D/var/volatile/cache,workdir=
=3D/var/volatile/.cache-work,uuid=3Don)
overlay on /var/lib type overlay=20
(rw,relatime,lowerdir=3D/var/lib,upperdir=3D/var/volatile/lib,workdir=3D/=
var/volatile/.lib-work,uuid=3Don)
overlay on /var/spool type overlay=20
(rw,relatime,lowerdir=3D/var/spool,upperdir=3D/var/volatile/spool,workdir=
=3D/var/volatile/.spool-work,uuid=3Don)
overlay on /srv type overlay=20
(rw,relatime,lowerdir=3D/srv,upperdir=3D/var/volatile/srv,workdir=3D/var/=
volatile/.srv-work,uuid=3Don)

Systemd may be messing up, as only in this case, it does:
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/cach=
e...
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/lib.=
..
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /var/spoo=
l...
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting Bind mount volatile /srv...

But these bind mounts show up as overlay mounts!

Has anyone already encountered such an issue?
Thanks in advance,
Cheers
Michael.

--=20
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


