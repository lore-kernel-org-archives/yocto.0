Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89AA7C00140
	for <webhook@archiver.kernel.org>; Fri, 12 Aug 2022 15:38:19 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.713.1660318690606393448
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 08:38:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VXrWJSKL;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 15-20020a17090a098f00b001f305b453feso8680985pjo.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 12 Aug 2022 08:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=sPHa+eeHl4oYbn7vnWbWrHZGfYNiJdW2aHd4tyOh0A8=;
        b=VXrWJSKLTD0NlAQIpyjZ8nOaDva4iS0CPSvOzHGIamqnrDokwvb+70RPpbAR/ixvyX
         tS7AGr4wr9QR8GdXifVaGc0NC7KU41+zos53M/l/9+/MgWHYO9yeqHyQeS53GKu0iHq1
         8MMrWR1OfIO/DQoylMt+ENGO5mD4DOr7zxyWYc9PKYxEul6eIXtBbAtjbO04HL663C8E
         qUAr4gTHUYIdBSKA9QgjeyM33BC41qaigvwbkdQs6n21c9h3PdkjHrx31PKcMWPtTTuM
         JM89a/v7afFPNQCTLPqFOBuJZQCgDzFl1Zu3usQedi/CXJ6Qsf+wF9rKW0p0KvY5n/rZ
         8djQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=sPHa+eeHl4oYbn7vnWbWrHZGfYNiJdW2aHd4tyOh0A8=;
        b=CXksX7iRmlOpRxT/x5SnlGfnzdMx7BjOY0y7KsNGIbmFO3OmTlH3THCzbz+DZ0s8SY
         lUe65BBHTzVAFXOohiodtaVUODA3lnhcJT5T8pXRM1/mMPdvA72AwPSFwKRNIzc31pn9
         Mn3tjJkGVGG1DUbK2tBk1rb6rT+9+7sVpRB8xhxc6eSqbiZZ3LBBLtPkruiBj3kHSuqi
         RB2u9IQkWDcTtRzWq7BRvxqH6t5e1Hcsse3oGW+hezGBwbK3RmAe/CM2PKaXNWDQWAtl
         0RfrXD/iK/LQ/+JWyYnQGR+oBeB85KbbDqcxQs+dBlSGfvdvWKXJ5Ek10/od8gooKQ1V
         LDtg==
X-Gm-Message-State: ACgBeo3g4VkN26s6Tikw8QVe0zKYWKGjEENgGrCuUcxIWhraYxFySyzo
	6z+egRikA+fu4KZWcM9DJ2Q=
X-Google-Smtp-Source: 
 AA6agR6JqP21aFCo9EoOKIXSCe6JOrKHhAiP5DrnRKNRc8F7xBpbT7swmIWBpNYWSfvj0LRWe3pg4Q==
X-Received: by 2002:a17:903:210b:b0:16f:d62:1384 with SMTP id
 o11-20020a170903210b00b0016f0d621384mr4558084ple.133.1660318690019;
        Fri, 12 Aug 2022 08:38:10 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 f8-20020a170902ce8800b001714853e503sm1948199plg.36.2022.08.12.08.38.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 08:38:08 -0700 (PDT)
Message-ID: <5f31ae89-7e66-bad3-fb07-89a06e829249@gmail.com>
Date: Fri, 12 Aug 2022 08:35:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [meta-security][PATCH] samhain-standalone: fix buildpaths
 issue
Content-Language: en-US
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org
References: <20220811094012.423944-1-mingli.yu@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220811094012.423944-1-mingli.yu@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Aug 2022 15:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57832

merged

On 8/11/22 02:40, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> Fixes:
>    WARNING: samhain-standalone-4.4.9-r0 do_package_qa: QA Issue: File /usr/share/doc/samhain-standalone/scripts/samhain.ebuild-light in package samhain-standalone-doc contains reference to TMPDIR
>    File /usr/share/doc/samhain-standalone/scripts/samhain.ebuild in package samhain-standalone-doc contains reference to TMPDIR [buildpaths]
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   .../0001-Don-t-expose-configure-args.patch    | 44 +++++++++++++++++++
>   recipes-ids/samhain/samhain-standalone.bb     |  1 +
>   2 files changed, 45 insertions(+)
>   create mode 100644 recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch
>
> diff --git a/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch b/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch
> new file mode 100644
> index 0000000..fedbe5b
> --- /dev/null
> +++ b/recipes-ids/samhain/files/0001-Don-t-expose-configure-args.patch
> @@ -0,0 +1,44 @@
> +From 111b1e8f35e989513d8961a45a806767109f6e1e Mon Sep 17 00:00:00 2001
> +From: Mingli Yu <mingli.yu@windriver.com>
> +Date: Thu, 11 Aug 2022 17:15:30 +0800
> +Subject: [PATCH] Don't expose configure args
> +
> +Don't expost configure args to fix buildpath issue.
> +
> +Upstream-Status: Inappropriate [oe specific]
> +
> +Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> +---
> + scripts/samhain.ebuild-light.in | 2 +-
> + scripts/samhain.ebuild.in       | 2 +-
> + 2 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/scripts/samhain.ebuild-light.in b/scripts/samhain.ebuild-light.in
> +index 2b09cdb..b7f7062 100644
> +--- a/scripts/samhain.ebuild-light.in
> ++++ b/scripts/samhain.ebuild-light.in
> +@@ -55,7 +55,7 @@ src_compile() {
> + #	      --with-state-dir=/var/lib/${PN} \
> + #	      --with-log-file=/var/log/${PN}.log \
> +
> +-	./configure ${myconf} @mydefargs@ || die
> ++	./configure ${myconf} mydefargs || die
> +         emake || die
> +
> + 	echo '#!/bin/sh' > ./sstrip
> +diff --git a/scripts/samhain.ebuild.in b/scripts/samhain.ebuild.in
> +index 635a746..b9a42e7 100644
> +--- a/scripts/samhain.ebuild.in
> ++++ b/scripts/samhain.ebuild.in
> +@@ -55,7 +55,7 @@ src_compile() {
> + #	      --with-state-dir=/var/lib/${PN} \
> + #	      --with-log-file=/var/log/${PN}.log \
> +
> +-	./configure ${myconf} @mydefargs@ || die
> ++	./configure ${myconf} mydefargs || die
> +         emake || die
> +
> + 	echo '#!/bin/sh' > ./sstrip
> +--
> +2.25.1
> +
> diff --git a/recipes-ids/samhain/samhain-standalone.bb b/recipes-ids/samhain/samhain-standalone.bb
> index 445cb99..b832dc8 100644
> --- a/recipes-ids/samhain/samhain-standalone.bb
> +++ b/recipes-ids/samhain/samhain-standalone.bb
> @@ -1,6 +1,7 @@
>   require samhain.inc
>   
>   SRC_URI += "file://samhain-not-run-ptest-on-host.patch \
> +            file://0001-Don-t-expose-configure-args.patch \
>               file://run-ptest \
>   "
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57824): https://lists.yoctoproject.org/g/yocto/message/57824
> Mute This Topic: https://lists.yoctoproject.org/mt/92955016/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


