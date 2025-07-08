Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D59C83F09
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 04:32:01 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web11.11292.1751949116050192813
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 21:31:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=fu7alBql;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1751949114; bh=vov4zxKfdjqD4rZJFvOQXppXFE3uAUtudWznc5syOHE=;
	h=Date:To:From:Subject:From;
	b=fu7alBqloiSoS1M1XH3hI+D7eaC+DYDBCaRUNUSr4Z4aqgdkYDia0L5WlqIXXW1i+
	 u05bjH1ZKt3ifOu7AVXt31mIu11AUpP+0X8ugXSuronRQidzH0MWgnejQ35iuL8nOg
	 jTf+jvsEcYcrbaB7OL2mDq5OB5wcXObfLvPV1Kxgr7/wFwcV61A+OWUZTzDoSNHua7
	 odxMyiYtobWc115R5hSvJpEC+6xaByfvah33NRX6u/YLGu3kxJbfZgFpZOwpOWY814
	 7ie9MlWMSmznJGy4LzET4MPwTKhTOsNE0PsSz9g7fZXL6zcY2GR2D+sBERPxAx3KLe
	 FM9fWOaG1fZsw==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 1842E68271
	for <yocto@lists.yoctoproject.org>; Tue,  8 Jul 2025 04:31:54 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 7fCMg102SDcR for <yocto@lists.yoctoproject.org>;
 Tue,  8 Jul 2025 04:31:48 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA
	for <yocto@lists.yoctoproject.org>; Tue,  8 Jul 2025 04:31:48 +0000 (UTC)
Message-ID: <14b926fd-9e17-4f0d-a267-cdfb255532ec@d-f-d.ca>
Date: Tue, 8 Jul 2025 00:31:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Content-Language: en-US, en-CA, fr
From: "Daniel F. Dickinson" <daniel@d-f-d.ca>
Subject: base-files: invalid 'strictatime' on /run
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 04:32:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65624

Currently in OE-Core meta/recipes-core/base-files/base-files/fstab

(which becomes /etc/fstab on-device) has


tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /run=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tmpfs=20
mode=3D0755,nodev,nosuid,strictatime 0=C2=A0 0

which for qemuarm64 (from OE-core) and raspberrypi5 (from=20
meta-raspberrypi) both

emit an error in dmesg during boot "invalid mount option 'strictatime'".

With busybox this seems to be cosmetic (strictatime simply ignored), but=20
with using

toybox the mount error results in /run not being mounted, which causes=20
problems

for other packages (like udev) when using sysvinit.


Before I create a patch, I'd like to understand why this is occurring,=20
and the preferred fix.


1. Is this arm/arm64 specific due to defconfig not being aligned with=20
e.g. x64, or

2. Is this a result of a change in default kernel config across the board=
?

3. Or, am I missing something about this?


In the case of 1, is the preferred resolution to add strictatime to=20
arm/arm64 defconfig?

In the case of 2, should the 'strictatime' be dropped entirely or=20
replace with a different

'atime' option?


Oh, and should busybox config be changed so that an invalid mount option=20
is not

silently ignored?


Regards,

Daniel

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


