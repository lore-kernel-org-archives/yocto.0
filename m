Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=3.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,NICE_REPLY_A,SPF_HELO_NONE,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16B0FC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 10:07:21 +0000 (UTC)
Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
 by mx.groups.io with SMTP id smtpd.web09.6208.1632478040196631061
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 03:07:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.85,
 mailfrom: f_l_k@t-online.de)
Received: from fwd81.dcpf.telekom.de (fwd81.aul.t-online.de [10.223.144.107])
	by mailout11.t-online.de (Postfix) with SMTP id 86512B5E9;
	Fri, 24 Sep 2021 12:07:17 +0200 (CEST)
Received: from [192.168.178.83] ([84.154.174.28]) by fwd81.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mTi6v-1u5gCv0; Fri, 24 Sep 2021 12:07:17 +0200
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
To: Khem Raj <raj.khem@gmail.com>
Cc: Trevor Woerner <twoerner@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
 <255e8117-5135-6f34-3b7a-7b9b94f0b603@t-online.de>
 <CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <f9a6b1b7-54d5-dddc-b24e-5e24575df374@t-online.de>
Date: Fri, 24 Sep 2021 12:07:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------93C961603C3572024F17DB71"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1632478037-00001460-86F0203B/0/0 CLEAN NORMAL
X-TOI-MSGID: d08cdc9f-3b06-4545-bb33-f6c6420867ae
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 10:07:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54841

This is a multi-part message in MIME format.
--------------93C961603C3572024F17DB71
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 24.09.21 um 06:46 schrieb Khem Raj:
> are you both using systemd or sysvinit

I am using systemd


--------------93C961603C3572024F17DB71
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Am 24.09.21 um 06:46 schrieb Khem Raj:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">are you both using systemd or sysvinit
</pre>
    </blockquote>
    <pre>I am using systemd
</pre>
  </body>
</html>

--------------93C961603C3572024F17DB71--

