Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6944.1792571673115576464
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 01:34:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=HtpFBrzm;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: elinor.montmasson@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id B83243D81784;
	Wed, 21 Oct 2026 04:34:31 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id zt_2bV5UpDl1; Wed, 21 Oct 2026 04:34:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D66403D817C1;
	Wed, 21 Oct 2026 04:34:30 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com D66403D817C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1792571670; bh=h74B5ryt32QRFoMzOCzogneQ6uh9a56CxGlNxTA6Kiw=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=HtpFBrzmvnxaTtcHdZkFL/F+v2VERN633UzlOgs//WgSpfkTs1GVl1dVZBAISCh7W
	 jlE41V21A3R0nat4gA1if2hMyaEEmYpsFtPYuNR8Y25eVRpfHzV8SVySHvJUgCmkqo
	 7JnU1VUj+sL7lpvjayX1OTUdNjgUPou8zm80+AFbcYHv4AN/yNZCkMTMwc6g6uQuuO
	 sVctig1fktb+QW6JGJBSsNgqY5w8BS0XYAcr6KC1p049lhPT85ovjQL9+McBBh312B
	 IikXX8KVUf44yKb2/anfWByhM3TTvDecjpbRm7CyBQUkblHn7BrlRatbEeXGuKT6Lx
	 yKX3vxU7p31QQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id Hm77lGPxA2KK; Wed, 21 Oct 2026 04:34:30 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 9B9613D81784;
	Wed, 21 Oct 2026 04:34:30 -0400 (EDT)
Date: Wed, 21 Oct 2026 04:34:30 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: adrian.freihofer@siemens.com, peter.marko@siemens.com
Cc: yocto@lists.yoctoproject.org
Message-ID: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com>
Subject: Issues and questions regarding PowerPC 32-bits e500v2 tuning
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 10.1.20_GA_0326 (ZimbraWebClient - FF158 (Linux)/10.1.20_GA_0326)
X-Zimbra-Message-Verification: hash=SHA256;guid=NjllZjdmZWVkNzJjOGNlZjI1ZDNhMzAyZmRhMjk1NmYwNTQxODkwOWUzODNlMTMyYjRmMmM1ZTJiYmQyZTczMw==
Thread-Index: csrwnORdasdJ3xzr7D7vjdu/N9REbw==
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 08:34:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66771

Hello,

My company is currently interested in building a Yocto distribution for
a PowerPC 32-bit e500v2 platform using the associated tuning available
in OE-Core.
I have a few questions related to the e500v2 tuning in OE-Core.

I understand that PowerPC e500v2 was considered part of a specific architecture
category, PowerPC SPE, which isn't supported anymore in GCC as SPE support
was dropped in GCC 9.1.
In the e500v2 core, the SPE was used as FPU, meaning code for this architecture
can now only be compiled with soft fpu if using active GCC releases.
Do you confirm this analysis?

Building a core-image-minimal with the ppce500v2 tuning in OE-Core doesn't work
out-of-the-box on Yocto Wrynose.
Recipes building with meson (e.g. xorgproto) fail because the do_configure task
runs a "meson-qemuwrapper" binary which fails with SIGILL.
This looks like a floating point configuration problem as adding the tuning
feature "fpu-soft" solves this issue.
This would confirm the lack of SPE support and the need to specify soft fpu
usage or any usage of floating point will result in an execution error.

* Was any testing done for the e500v2 tuning or the e500 tuning?
	* The e500 shares the same SPE specificity.
* Should the e500v2 tuning configuration be considered not up-to-date?
* Is there any plan in updating and testing the e500 and e500v2 tuning
  configurations?
	* Especially, tune-ppce500.inc still enables the "spe" feature,
	  but should encounter the same GCC compatibility problem as the e500v2.

Best regards,
Elinor Montmasson
