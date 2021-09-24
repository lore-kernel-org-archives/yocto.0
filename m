Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49E22C433F5
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 16:53:31 +0000 (UTC)
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
 by mx.groups.io with SMTP id smtpd.web09.1697.1632502395185598332
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 09:53:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.84,
 mailfrom: f_l_k@t-online.de)
Received: from fwd75.dcpf.telekom.de (fwd75.aul.t-online.de [10.223.144.101])
	by mailout09.t-online.de (Postfix) with SMTP id 5C0E71BE7A;
	Fri, 24 Sep 2021 18:53:13 +0200 (CEST)
Received: from [192.168.178.83] ([84.154.174.28]) by fwd75.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mToRi-2yQ2cL0; Fri, 24 Sep 2021 18:53:10 +0200
Subject: Re: [yocto][meta-rockchip][PATCH v2 2/2] rockchip-wic.inc: dont let
 wic edit fstab by default
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20210923211759.13676-1-f_l_k@t-online.de>
 <20210923211759.13676-2-f_l_k@t-online.de> <20210924131041.GB29617@localhost>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <10bc866b-fe4c-f2de-f200-c47d9733c4b5@t-online.de>
Date: Fri, 24 Sep 2021 18:53:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210924131041.GB29617@localhost>
Content-Type: multipart/alternative;
 boundary="------------DD3FB4A82E26939D54CF08D6"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1632502390-00001454-61705105/0/0 CLEAN NORMAL
X-TOI-MSGID: d6dbafda-d4d3-46b7-9b32-d8e743a64001
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 16:53:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54848

This is a multi-part message in MIME format.
--------------DD3FB4A82E26939D54CF08D6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 24.09.21 um 15:10 schrieb Trevor Woerner:
> Thanks for the patch and the SoB line. I'm going to apply this patch, but I'm
> going to amend the commit message to capture some of the conversation we've
> had. There's a chance we'll want to know "why" at some point in the future ;-)

Thanks for applying :)

It would be cool if wic had something like an 'exclude-from-fstab-update" option.
That would make the 'fstab-update' much more useful.


--------------DD3FB4A82E26939D54CF08D6
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Am 24.09.21 um 15:10 schrieb Trevor
      Woerner:<br>
    </div>
    <blockquote type="cite" cite="mid:20210924131041.GB29617@localhost">
      <pre class="moz-quote-pre" wrap="">
Thanks for the patch and the SoB line. I'm going to apply this patch, but I'm
going to amend the commit message to capture some of the conversation we've
had. There's a chance we'll want to know "why" at some point in the future ;-)
</pre>
    </blockquote>
    <pre>Thanks for applying :)

It would be cool if wic had something like an 'exclude-from-fstab-update" option.
That would make the 'fstab-update' much more useful.
</pre>
  </body>
</html>

--------------DD3FB4A82E26939D54CF08D6--

