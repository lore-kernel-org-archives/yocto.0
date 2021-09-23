Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=3.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,NICE_REPLY_A,SPF_HELO_NONE,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81D80C433F5
	for <webhook@archiver.kernel.org>; Thu, 23 Sep 2021 22:26:15 +0000 (UTC)
Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
 by mx.groups.io with SMTP id smtpd.web11.389.1632435974448461272
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 15:26:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.82,
 mailfrom: f_l_k@t-online.de)
Received: from fwd84.dcpf.telekom.de (fwd84.aul.t-online.de [10.223.144.110])
	by mailout05.t-online.de (Postfix) with SMTP id 6AF0E1F6EA;
	Fri, 24 Sep 2021 00:23:59 +0200 (CEST)
Received: from [192.168.178.83] ([79.219.228.58]) by fwd84.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mTX8F-2wQZer0; Fri, 24 Sep 2021 00:23:55 +0200
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <255e8117-5135-6f34-3b7a-7b9b94f0b603@t-online.de>
Date: Fri, 24 Sep 2021 00:23:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923205548.GA5309@localhost>
Content-Type: multipart/alternative;
 boundary="------------1772FBB2BB82CB7BE259AE71"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1632435835-00001473-3A56F2C8/0/0 CLEAN NORMAL
X-TOI-MSGID: 3c45704d-f258-4e9a-a131-c8a18a24bbb3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 22:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54827

This is a multi-part message in MIME format.
--------------1772FBB2BB82CB7BE259AE71
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

> I'm surprised mount doesn't complain about those first 5 lines! Those are not
> properly-formed fstab(5) entries.

No, it doesn't. Those entries are ignored except /boot.
One interesting thing: i always had that bunch of malformed fstab entries.
Before the change from static to uuid it looked like this in fstab:

/dev/mmcblk1p1	loader1	vfat	defaults	0	0
/dev/mmcblk1p2	reserved1	vfat	defaults	0	0
/dev/mmcblk1p3	reserved2	vfat	defaults	0	0
/dev/mmcblk1p4	loader2	vfat	defaults	0	0
/dev/mmcblk1p5	atf	vfat	defaults	0	0
/dev/mmcblk1p6	/boot	vfat	defaults	0	0

Now it looks like wic fails in getting the correct value and uses sda as a best bet

> you're proposing (a bunch of malformed fstab(5) entries) should be considered
> correct.

I guess i just got used to it because it has always been like this since i build for the rock-pi

> In the mean time I'd like to apply your patch 2/2, if you could please add
> your SoB line?

Have sent new patches. Just delete the first one if you dont need it


--------------1772FBB2BB82CB7BE259AE71
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <blockquote type="cite" cite="mid:20210923205548.GA5309@localhost">
      <pre class="moz-quote-pre" wrap="">I'm surprised mount doesn't complain about those first 5 lines! Those are not
properly-formed fstab(5) entries.
</pre>
    </blockquote>
    <pre>No, it doesn't. Those entries are ignored except /boot.
One interesting thing: i always had that bunch of malformed fstab entries.
Before the change from static to uuid it looked like this in fstab:

/dev/mmcblk1p1	loader1	vfat	defaults	0	0
/dev/mmcblk1p2	reserved1	vfat	defaults	0	0
/dev/mmcblk1p3	reserved2	vfat	defaults	0	0
/dev/mmcblk1p4	loader2	vfat	defaults	0	0
/dev/mmcblk1p5	atf	vfat	defaults	0	0
/dev/mmcblk1p6	/boot	vfat	defaults	0	0

Now it looks like wic fails in getting the correct value and uses sda as a best bet
</pre>
    <blockquote type="cite" cite="mid:20210923205548.GA5309@localhost">
      <pre class="moz-quote-pre" wrap="">you're proposing (a bunch of malformed fstab(5) entries) should be considered
correct.</pre>
    </blockquote>
    <pre>I guess i just got used to it because it has always been like this since i build for the rock-pi
</pre>
    <p>
    </p>
    <blockquote type="cite" cite="mid:20210923205548.GA5309@localhost">
      <pre class="moz-quote-pre" wrap="">
In the mean time I'd like to apply your patch 2/2, if you could please add
your SoB line?</pre>
    </blockquote>
    <pre>Have sent new patches. Just delete the first one if you dont need it</pre>
  </body>
</html>

--------------1772FBB2BB82CB7BE259AE71--

