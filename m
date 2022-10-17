Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9062C433FE
	for <webhook@archiver.kernel.org>; Mon, 17 Oct 2022 17:15:25 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.319.1666026915453196805
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Oct 2022 10:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dv5dXW7G;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id hh9so8104023qtb.13
        for <yocto@lists.yoctoproject.org>; Mon, 17 Oct 2022 10:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ox9DYZcypO7qwFq9S4+dO5lD79z9FBzyIn2FVl47Hf8=;
        b=dv5dXW7Gq53PmSxBvh/v0k7pGDp0wEksQwuKJ4RYf3wHPtvVPHe1htMFE9fHWmQnep
         Qf1RTL0gGWwo4X8IGFFhNR4sGf7cgFVbg1SQzGhzIA1j5v4fwZWpsHufK3y8WB6fcbJ8
         aqpYV9KAQflP+/1sGIb1ZfUtHPCFsmuXWEcIZRMDZwJUQJ/acv/el1Sp+yNwLONTGEYI
         3eUhgo8st0wn3uGST0JlX51eAHfChFDqaEIVIQsLao0Tcft4aVIl2kKtb9j0g/yO0TG9
         Bl+UJH9e+ac0rPdFZIyK1nG9jUViHS9k0dVboIbjYrpu3zUwQoxs5sPeB419RukljpsK
         KTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ox9DYZcypO7qwFq9S4+dO5lD79z9FBzyIn2FVl47Hf8=;
        b=EQl7vNooJMOfaBG1KEYsAu8YeREtZBUSSimf91vDJXyfVG3AjQdxqggmpRB1JC9u9r
         /a+wP5zhZ0saf9l4TwTUXJoaxS1oBotMjp1QgtWHxueOE6oWnwG9swcxib2f42HS2gXj
         FFnpNhWtVbPB/PMTl3sth/Dx8BzUDGWmSzf82b3CWGk/EhzzOsl5sKOPoJlJJpyVLSOR
         tGeS8J6bMbHYGP+HO90knwBdNymJn5hob6oyES2RTeyFU5b/rg0kxmg9RjnjZnK3/G5h
         UQt/DlbaXQEsjW/qwM3CV62sfeqr6CPJCa3yZOAQbyffPmXHW6DeaWx2SE2dnDV8OTCG
         RZ7Q==
X-Gm-Message-State: ACrzQf1r+MbxDeUmWb7jPe8xwLqSdxYpWbFq7IdrUCa1IbCEK6XYxzt8
	0xujkq+DYu5MW3Q7lqFBGR8AqfwwpL8=
X-Google-Smtp-Source: AMsMyM4vVtSItFnPcCBRLUxqN3vCdQ+x4CrL4yKWV5LYk94Oj1MWF3u3Ztm706BdGzHLzM0hVDh4rg==
X-Received: by 2002:ac8:59c2:0:b0:39c:e3b4:1265 with SMTP id f2-20020ac859c2000000b0039ce3b41265mr8327717qtf.55.1666026914385;
        Mon, 17 Oct 2022 10:15:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:f3c7:f51b:7232:a830? ([2600:1700:9190:ba10:f3c7:f51b:7232:a830])
        by smtp.gmail.com with ESMTPSA id i11-20020ac85e4b000000b0039cb59f00fcsm253090qtx.30.2022.10.17.10.15.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 10:15:13 -0700 (PDT)
Message-ID: <a03f341b-d247-57a4-812d-bbdc455cd22a@gmail.com>
Date: Mon, 17 Oct 2022 13:15:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 "bitbake-devel@lists.openembedded.org" <bitbake-devel@lists.openembedded.org>
From: akuster808 <akuster808@gmail.com>
Subject: Yocto Project Summit: 2011.11
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Oct 2022 17:15:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58352

Hello,

This is a reminder that the Yocto Project Summit is scheduled for 
November 29th to December. Registration is open.

The CFP still open and will close in 12 days from now on Oct 28th.


For more information see: 
https://www.yoctoproject.org/yocto-project-summit-2022-11/

regards,
Armin

