Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C326C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 10:26:14 +0000 (UTC)
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
 by mx.groups.io with SMTP id smtpd.web10.29275.1632738373391358382
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 03:26:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.21,
 mailfrom: f_l_k@t-online.de)
Received: from fwd85.dcpf.telekom.de (fwd85.aul.t-online.de [10.223.144.111])
	by mailout10.t-online.de (Postfix) with SMTP id DCC3B5EED
	for <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 12:25:40 +0200 (CEST)
Received: from [192.168.178.83] ([84.154.160.244]) by fwd85.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mUnpM-0HP1ub0; Mon, 27 Sep 2021 12:25:40 +0200
Subject: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root
 device
References: <bf6d701e-f884-57dd-7ab2-fdb513d7699e@t-online.de>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Markus Volk <f_l_k@t-online.de>
X-Forwarded-Message-Id: <bf6d701e-f884-57dd-7ab2-fdb513d7699e@t-online.de>
Message-ID: <8af45c64-b553-77a4-8f5c-bc33de94d85e@t-online.de>
Date: Mon, 27 Sep 2021 12:25:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <bf6d701e-f884-57dd-7ab2-fdb513d7699e@t-online.de>
Content-Type: multipart/alternative;
 boundary="------------6821F79F658AD20BC2298430"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1632738340-00001449-69A66885/0/0 CLEAN NORMAL
X-TOI-MSGID: 68439721-d131-4a21-adf1-6f1b844a1790
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 10:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54874

This is a multi-part message in MIME format.
--------------6821F79F658AD20BC2298430
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 25.09.21 um 17:09 schrieb Trevor Woerner:
> You'll need to re-send this with a better subject line and commit
> message so the right people will notice it. Otherwise they'll think it's
> meta-rockchip-specific.
>
> If (when) this patch gets applied upstream, then we can remove our
> work-around.

The patch has been applied :)

I had a quick look where this sda entries come from and i guess we fall to the default value here:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/wic/ksparser.py#n166

We may avoid getting /dev/sda entries in fstab by either setting --use-uuid or --use-label for '/boot' ?


--------------6821F79F658AD20BC2298430
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <div class="moz-forward-container">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      Am 25.09.21 um 17:09 schrieb Trevor Woerner:<br>
      <blockquote type="cite"
        cite="mid:20210925150907.GB13525@localhost">
        <pre class="moz-quote-pre" wrap="">You'll need to re-send this with a better subject line and commit
message so the right people will notice it. Otherwise they'll think it's
meta-rockchip-specific.

If (when) this patch gets applied upstream, then we can remove our
work-around.
</pre>
      </blockquote>
      <pre>The patch has been applied :)

I had a quick look where this sda entries come from and i guess we fall to the default value here:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/wic/ksparser.py#n166" moz-do-not-send="true">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/wic/ksparser.py#n166</a>

We may avoid getting /dev/sda entries in fstab by either setting --use-uuid or --use-label for '/boot' ?

</pre>
    </div>
  </body>
</html>

--------------6821F79F658AD20BC2298430--

