Return-Path: <mau.salvi@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A63D41C31
	for <webhook@archiver.kernel.org>; Wed, 13 Nov 2024 10:34:10 +0000 (UTC)
Received: from sonic309-24.consmr.mail.ir2.yahoo.com (sonic309-24.consmr.mail.ir2.yahoo.com [77.238.179.82])
 by mx.groups.io with SMTP id smtpd.web10.9149.1731494042637104452
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Nov 2024 02:34:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=UIWIb79x;
 spf=neutral (domain: yahoo.com, ip: 77.238.179.82, mailfrom: mau.salvi@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1731494040; bh=XKWcOQ1yD4mf7QGxJYZTeSi4lb1uA0X+DZHf6TQSImQ=; h=Date:From:Subject:To:References:From:Subject:Reply-To; b=UIWIb79xJZcH9hdpBpLqClZseomqNQ7/2ydA5sy+wnqR6RkXfLPgZ6eosHijFPKX3OejAexhqAiqlRF1kKeI/XH+xtVHhj2wKE/exZVtVmHymjAbxaMNun3WFcADJnFbM7oy8U7vBbkbkHa6kTvZpBeUg2+MAd+XWmpUmqv2tnZtmQSpo0RBJ20hxPMjvtPeulQK72YluBsxEL3ZoqhsZZxHFGCAGhOxm2qR5+BjEXxkKJjphrEh5W2q/wz/kmwORCy1FiWUYlKK9S76bkW2LRogqo/UJYz7ODdukBs8dXpT1DKnGyd61a4mehf9kXbo136Zy1jDf35tBHF4IEGWWQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1731494040; bh=NHTUhoG804EwQHjV1SVk2KYAtjYAeXC8ca1d4Yh1qyl=; h=X-Sonic-MF:Date:From:Subject:To:From:Subject; b=m528f86RxF3tv0jxic+D3emjF5I1z1vB522ALHC8v5bYnRqfPsKrNrmCjSBcqBlywmy0iHSNH5MMwT6/hlWviFqSCX5KUFr1nJJ4cG4YE16MHGgK9vWMpZQhVmlQW5JsQ2T2gMUjih3qB+MyjWbm85b/PgGhtRpN5bftmHvu5TEUyRCfb3WEMgXB1+7T9O+RBbEF2DgRtXUEn7K+V6LgMOfdKLl31jvb6TtvWZ2fn6HOmhzxq2PCNI7gL0+CAQ7ETQDYROO/rYRLRRUSUM8gGqSphcx6lgcR3lC2g9a8sqI5mxrFySyVnPgoDC2Lemg6Do4wEW4VMfn8zuEBD6LcAA==
X-YMail-OSG: md6i.9UVM1mB03ZW3AOWF64tafaEoRIzQBzdHjDtRYtjXFbwvpMTjnZ4Bn9q1CU
 b2dzSHaPa58uPdwLvj4uZwGqSCpe.ry0V4nCmQusY9VS.at_Cyp4bmvRb8wv1lu_XLTlCm7SkTMu
 E8ALn3GsXn0ImvvIZ3n3lyrxb0.j0aia3kfQs7GdwSKz8bTC3QG1VM4uUNO9RHuafRpQedNj8mFc
 nwOlNholG1bJlfJ5ZziYUDrZ0ekUnKXjLiTF3DhCS0WZBw9d.n6VgfnkvH6lumbWg_kb_2zqX3EL
 LvgBxp4RTV6Vk.6E5.31yBJXO1fwtcEoBDvs6KllX5fvMUBQoplolTS5nM4TKQSrdAkJ6P_Ic9JE
 A0XMdDf.ZAsirXX8dbju2nwEMmpmjwJhhW0SG3VqfantPLxauof1jvBaNaCHFnt72hqBnwql3F6u
 _qdYULtpR27fwA8ZOD92LyE2O2MtL0cP3e7iJ7OBFBDOGD0UgK5UIEGOlk9olmo2XcKbs7MK5nd.
 .Rp3Ly3_tRIPKE_tBckwZtwEXQZJcX6_2LJwEEOI.idFNf._rsNR8xHPGV73wmIap2EppP4UjOjM
 THryYVjc_1pMxWYXdb75JdXQuNJmFVQmTusD2vvvMEiUwUOY7RjDMGbUZ2.JplVtj.N8U8aJXwmQ
 IoyDTpOsm2CtGM9p28MthmSU5aTMn98kgSI4aehHZtItdAyDSgsdNc0hh1stScZziHmLeUzuSI7x
 CgTK3pg24sb8BQxDNxALtmyhyVvfbnca.5UzLcS.pm6sQEsqphgeQPdvWCJru1SCm9JggpUpQAti
 m7rHwB52THIQLYDvdpiORC4aJ80GhDe4duLPprQjcNt5ceguLaKDk2TOK_r7xKm4SGsDu_nsLtN7
 LSaboSc2bLU4q4q51sH8cNuchR.IobsCY6AJpsmLI5Us0NG5Uf5azOKPLMtuh27fFHizYrc2P2Aa
 GgWsR1OSOeqcSikbsR4mFTdiCd1mQrNT9od5xn7D0330icBffZHn9z6HWiJzcLzKsfiGSK9hIXbQ
 CSstd38y2ir_.LZLVBhE4RgmMNYm3aFptdFbRrLvksBTmgHzxT9fvJdVG20yf9oDZ9OdnrGjb_AR
 OpmeQlFb.AKclJhkbRBhdabpBFXiYkcjm3CbVP16E2l4YsUBCiJDGumLCNBRn6DkWL6uUCSvfq_q
 ZTLiaA3VaAc_D3CuBAfmxqx4GkiVgGd4RlLO2_hDNqyM.YLs.tLPEYlzvculcSJjZb58Z4KyTrxJ
 9TsPq95gdlX5mPcB4UxaxQ4Mj_NJ.V88xA46KCE6g65LRlNtiYh3Z.jP2Jx5kMpbQvCbSawLtHDJ
 L0wgeO.eIoel99McPzwE5gpx2xkZC8YlPVyvxvBEiX9q2B0rsi3EaFqivylzda2cxzho8J71_arX
 kvj847YpOlcyO._hkgF5_sXDuA0zzCZn23YWRYoxEsWbLkXHcPU4Lf01dCd0csHek4G4JYo9JW8N
 NpOyE33JddUaf8Il.9.OwoBEibDa5Cm7OH_kCl33J1BGDOa4fZtnXvj523SjuBJtEiOZgwrdfp19
 uxyF7yDIgpUUz8X4HGTqW4EjgYTg7uUXd8GcRCIgaSskxt78vMMovRuJPfPN0Ex6qviXFqIvpSwm
 TquEqCVXO2kJttv8dSTwOm.6uld2T4sCwCXHrpnSBzMUaZ.lyNRwa2Wp8wBLnBtBdUSmRPHdo65r
 AoEaq7B1.v3fmnq40BIQ.tyi4i42dzvzG6IG_4rQ.vR5Hn8IUCR07r7UVViuzkCudS5KH0usABPB
 OBi3T.tiZBEutht0_DMaS3Y.3G9jaAYtcggdYSly5beagCZrdbV247n2_Y6mXPAXQXw8nXAi_uSi
 5w90ZxDnJ3WmcDfuliWYvQQ6N5zfJJWuBhX1g1W0QDVIIk6DfxK.jdN8A0gxjD7R.kwZJQ2eYiC3
 INM.OZQyA54.omdRsjE8_PDPSZpC.JZu0_iYAhW3Kaoaf6ANVCBro1MCQzwgBcE9Q8EVQ6HCL5VW
 9VDfQWkFl6zCuOjJBJqCiTewQThmDaDWibFp0vgg8HD9FSHoEbteea1SYXY9GSIoW0WT8m.mLRNu
 xBn7nxvfmP7H2NJsBoNOvcSZ0h0UDrpwu.jYGhM.ME57n9RJJAAaJqGpdA9WHhB67U20nBazBg0Z
 2ma7RMCApQvL28TPWlb0CfWwaquRPXdNiG7Cpt0bsTarVUI7kO_hBkZQz0fbKKSAH1p4stg_5ZZ8
 QNB8-
X-Sonic-MF: <mau.salvi@yahoo.com>
X-Sonic-ID: 7d93c845-dbb2-4753-9864-3a31bc4efd33
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.ir2.yahoo.com with HTTP; Wed, 13 Nov 2024 10:34:00 +0000
Received: by hermes--production-ir2-c694d79d9-fn2jw (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 9f1518faeff3000398428b4f3bc72678;
          Wed, 13 Nov 2024 10:33:56 +0000 (UTC)
Message-ID: <9bc31ba3-694e-46fe-b353-8fe52ddbfff7@yahoo.com>
Date: Wed, 13 Nov 2024 11:33:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, it
From: "Mauro S." <mau.salvi@yahoo.com>
Subject: poky: logging scheme with journald
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
References: <9bc31ba3-694e-46fe-b353-8fe52ddbfff7.ref@yahoo.com>
X-Mailer: WebService/1.1.22876 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Nov 2024 10:34:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64271

Hi all,

I would like to ask you some information about logging scheme in poky 
when journald is in.

Without journald, by default logs are handled by busybox-klogd and 
busybox-syslogd: klogd forwards kernel logs to syslogd, and syslogd 
writes kernel and userspace logs in /var/log/messages.

When journald comes in, it would centralize whole system logging to 
itself, handling both kernel logs and userspace logs. For userspace 
logs, it creates the /dev/log symlink that points to 
/run/systemd/journal/dev-log (by systemd-journald-dev-log.socket), so 
logs generated by the syslog API (that  writes in /dev/log) should be 
collected by journald.
In poky, journald is configured with "ForwardToSysLog=yes" 
(meta/recipes-core/systemd/systemd-conf/journald.conf), then the 
collected logs are forwarded to a syslog daemon through 
/run/systemd/journal/syslog socket. Then it is expected that the syslog 
daemon reads this socket.
Beside journald, busybox-syslogd and busybox-klogd are also started.

What I observe is:
- syslogd collects only some logs in /var/log/messages, seems only logs 
from userspace  (e.g. logs generated by logger command). These logs are 
not collected by journald. Additionally, syslog is not collecting logs 
that journald is forwarding
- journald emits "Forwarding to syslog missed X messages"
- klogd is useless: kernel logs are captured by journald, so it does 
nothing. In fact, if I stop the service, kernel logs still be logged in 
journal

Seems to me that first two issues happen because syslogd is listening 
/dev/log (that journald would want for itself) instead of 
/run/systemd/journal/syslog (socket prepared by journald to forward 
logs): syslogd steals userspace logs from /dev/log (they don't reach 
journald) and does not collect logs journald forwarded to 
/run/systemd/journal/syslog.

So, as far as I understood, when journald is in, busybox-syslogd should 
be patched to listen to /run/systemd/journal/syslog instead of /dev/log 
(it is not possible to change this with config file or from build 
configuration). With this modification, journald will collect also 
userspace logs, and all (kernel + userspace) logs forwarded by journald 
will be collected by busybox-syslogd, and saved in /var/log/messages.
Additionally, when journald is in, klogd should not be started.

Am I missing something? Or actual behavior is the desired one?

Sorry for the long mail.
Thanks in advance
-- 
Mauro S.


