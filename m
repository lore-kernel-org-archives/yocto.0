Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB226D0C601
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 11:55:27 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.10290.1729857322829152373
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 04:55:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mjOpWFVo;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: skandigraun@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539f6e1f756so2316021e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 04:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729857321; x=1730462121; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pw8wj1RPQLho/qrzsq3b0vQUg342ZgEwdLtqIhd2Mck=;
        b=mjOpWFVoeMNZwyuxRgUfmMWuCgTn6mme2h9dnHoIAp+lL2MON2F9T8OJy4nhxXEMDw
         1LBcTi0JPvI7uci2QzrdnkjXc+3WXWVQqPlAth2BHwyRTGfzQWW+el2J77oBrNRAr6Ot
         cmIG40H0armIZh/OTtAhhF5V+En6SCVKUm5xLgLnd4Q5LJxxhqBjuNhVEG8HOCY3qle/
         kP7j/m7pokZWgmgoOV+BJYndzzlEcLCCOBiW7uJAEHLvICN8iJ8JdsAiZUJR28pAIc95
         OtHb56xPsC9FEsDUrL11uHdU5ZAGzxEkJksksf5rgRSVL66BhxQCmz1+14jizGuuZlDe
         zjRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729857321; x=1730462121;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pw8wj1RPQLho/qrzsq3b0vQUg342ZgEwdLtqIhd2Mck=;
        b=vaChrmjUWk0ENaihVcFqbBjdv+0dQ6oFVy+GLJgK/gNrTOexwVv9fqOxxACY4tLJLZ
         IJerwlaCeAht7Zzgo9JWvJnCapEegOScou21oPOs13eC0hLqbqWBN7EH6m77IB64+IpP
         rtVw2rHcDaA6+sOaFSqoMbbG0gBktNhdjxkLXXjhV9cXjxcYgvxgggO/ribrgQQjqlbJ
         hEZ4AHsCKT7bVXhi9NjKgEh0CvXXQqivCj7DidHk9mWJb6dR6t470+A7gkKIwJbGpGwI
         2EUfQXOYsERoRMI/6IuN9nktfmc32NDzlgJaD5lT/knUdnXrY+iQUvxQd5YGRNwr3kgO
         6uJA==
X-Gm-Message-State: AOJu0Yww+dyO/obV0dfUla/9jKvdwidionLP7/l+4iLyyy3PJiI16qSs
	VtB1LouLMnXfqkm+Faz/ZHWw4anrk29dWZrvR136RO+9KEicP3vWzHLAzg==
X-Google-Smtp-Source: AGHT+IEjBz/ZdeUXd0bHtULyjC/KGlP8h09nodVIiua0GJJnzki3kc1tdeMNCpofvIXiqF8oRvLpPg==
X-Received: by 2002:a05:6512:ac1:b0:539:ea54:8d22 with SMTP id 2adb3069b0e04-53b23deb2d8mr3484708e87.18.1729857320324;
        Fri, 25 Oct 2024 04:55:20 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b567838sm47078885e9.23.2024.10.25.04.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 04:55:19 -0700 (PDT)
Message-ID: <97b78264-54b4-4644-a04c-0bbcfd83bb4d@gmail.com>
Date: Fri, 25 Oct 2024 13:55:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] sources/poky/meta/recipes-kernel/perf/perf.bb:do_compile)
 failed with exit code '1'
To: yocto@lists.yoctoproject.org, rprronadrit@gmail.com
References: <L0FD.1729851883206053358.YL1F@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <L0FD.1729851883206053358.YL1F@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 11:55:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64126

On 10/25/24 12:24, RAVIKUMAR RONAD via lists.yoctoproject.org wrote:

> *Output:*
> *ERROR: Task 
> (/home/calixto_admin/calixto-yocto-bsp/sources/poky/meta/recipes-kernel/perf/perf.bb:do_compile) failed with exit code '1'

Around the same error (at the end of the output) there should be a 
message along the lines of
"ERROR: Logfile of failure stored in: 
/home/calixto_admin/calixto-yocto-bsp/sources/build/tmp/work/raspberrypi3_64-poky-linux/perf/1.0-r9/temp/log.do_compile.14505"

This file contains the output of the compilation step, and should also 
shed some light on the actual problem. If it doesn't help you, posting 
this file's content (or a link to it, if it is very big) could help us 
helping you.

