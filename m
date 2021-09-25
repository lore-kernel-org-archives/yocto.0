Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D491CC433F5
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 07:56:28 +0000 (UTC)
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
 by mx.groups.io with SMTP id smtpd.web12.4465.1632556587456214016
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 00:56:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.83,
 mailfrom: f_l_k@t-online.de)
Received: from fwd84.dcpf.telekom.de (fwd84.aul.t-online.de [10.223.144.110])
	by mailout07.t-online.de (Postfix) with SMTP id 9D57A1314B
	for <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 09:56:24 +0200 (CEST)
Received: from [192.168.178.83] ([84.154.167.53]) by fwd84.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1mU2Xl-4AnUnJ0; Sat, 25 Sep 2021 09:56:21 +0200
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
To: yocto@lists.yoctoproject.org
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <4960bca2-905e-9fbf-3ccc-93483c838655@t-online.de>
Date: Sat, 25 Sep 2021 09:56:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923205548.GA5309@localhost>
Content-Type: multipart/alternative;
 boundary="------------F58E68261507FA4AD22C010F"
Content-Language: en-US
X-TOI-EXPURGATEID: 150726::1632556581-00001473-A1ACD5CF/0/0 CLEAN NORMAL
X-TOI-MSGID: a5187ce7-a782-46b7-85bf-b95805a10ae4
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 07:56:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54849

This is a multi-part message in MIME format.
--------------F58E68261507FA4AD22C010F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Am 23.09.21 um 22:55 schrieb Trevor Woerner:
> We can add the --use-uuid line to the /boot entry if you really think it
> should be mounted on boot, but we shouldn't use it on the others and cause wic
> to generate a bad fstab. There are examples of other boards that don't mount
> /boot by default (raspi for sure, and I think bbb too).

Could the solution be as simple as this?

 From b8ba56d84fbac53901e5b7ca122498320e51fbf4 Mon Sep 17 00:00:00 2001
From: MarkusVolk <f_l_k@t-online.de>
Date: Sat, 25 Sep 2021 09:21:15 +0200
Subject: [PATCH] wic:direct.py: improve filter for fstab update

Signed-off-by: MarkusVolk <f_l_k@t-online.de>
---
  scripts/lib/wic/plugins/imager/direct.py | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/wic/plugins/imager/direct.py b/scripts/lib/wic/plugins/imager/direct.py
index 9d10ec01d0..15fa47356f 100644
--- a/scripts/lib/wic/plugins/imager/direct.py
+++ b/scripts/lib/wic/plugins/imager/direct.py
@@ -117,7 +117,7 @@ class DirectPlugin(ImagerPlugin):
          updated = False
          for part in self.parts:
              if not part.realnum or not part.mountpoint \
-               or part.mountpoint == "/":
+               or part.mountpoint == "/" or not part.mountpoint.startswith('/'):
                  continue
  
              if part.use_uuid:
-- 
2.25.1

With this patch wic only adds the /boot mountpoint. The invalid entries get filtered out.
We would then only need to set --use-uuid for /boot to avoid the system from crashing if
'no-fstab-update' isn't expicitly given as an argument


--------------F58E68261507FA4AD22C010F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Am 23.09.21 um 22:55 schrieb Trevor
      Woerner:<br>
    </div>
    <blockquote type="cite" cite="mid:20210923205548.GA5309@localhost">
      <pre class="moz-quote-pre" wrap="">We can add the --use-uuid line to the /boot entry if you really think it
should be mounted on boot, but we shouldn't use it on the others and cause wic
to generate a bad fstab. There are examples of other boards that don't mount
/boot by default (raspi for sure, and I think bbb too).</pre>
    </blockquote>
    <pre>Could the solution be as simple as this?

From b8ba56d84fbac53901e5b7ca122498320e51fbf4 Mon Sep 17 00:00:00 2001
From: MarkusVolk <a class="moz-txt-link-rfc2396E" href="mailto:f_l_k@t-online.de">&lt;f_l_k@t-online.de&gt;</a>
Date: Sat, 25 Sep 2021 09:21:15 +0200
Subject: [PATCH] wic:direct.py: improve filter for fstab update

Signed-off-by: MarkusVolk <a class="moz-txt-link-rfc2396E" href="mailto:f_l_k@t-online.de">&lt;f_l_k@t-online.de&gt;</a>
---
 scripts/lib/wic/plugins/imager/direct.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/wic/plugins/imager/direct.py b/scripts/lib/wic/plugins/imager/direct.py
index 9d10ec01d0..15fa47356f 100644
--- a/scripts/lib/wic/plugins/imager/direct.py
+++ b/scripts/lib/wic/plugins/imager/direct.py
@@ -117,7 +117,7 @@ class DirectPlugin(ImagerPlugin):
         updated = False
         for part in self.parts:
             if not part.realnum or not part.mountpoint \
-               or part.mountpoint == "/":
+               or part.mountpoint == "/" or not part.mountpoint.startswith('/'):
                 continue
 
             if part.use_uuid:
-- 
2.25.1

With this patch wic only adds the /boot mountpoint. The invalid entries get filtered out.
We would then only need to set --use-uuid for /boot to avoid the system from crashing if
'no-fstab-update' isn't expicitly given as an argument
</pre>
  </body>
</html>

--------------F58E68261507FA4AD22C010F--

