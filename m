Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FCEC4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 15:45:42 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.17553.1667749541751952571
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 07:45:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=u/kczsLw;
 spf=pass (domain: mistywest.com, ip: 209.85.214.174, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f174.google.com with SMTP id y4so9030250plb.2
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 07:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y8Vn62Hgp2OtEA8Oe1QzJqwst4QzTZ3ISa1lbHY0R28=;
        b=u/kczsLwyBTsvwZFOdbatzSV/YSkH5VJgWrlh7j732oOLAuL2r8DVmE5xpdCwpEdxy
         Gl5QRtD0DxGG9bXGdPKCqkydb6XatKGDOuUz3bxO4q5dmrLA4gF3V7sTM9kYJa+rOCr/
         SDVq4HDVY8gImGdBHAQFBhsR45v7bXBdy2bptKZmz4p/u9HuMySy+Nv3h1LPfTwhSqmn
         HKMQRLfzcnRnrETUUX15jAB4XLtDvuPHZQI4Fi9n1RnS+fOL1Pi1ldn8YWDEZ0hyRWLG
         7fveDijrvZfRFa/iwsRLwZ0Kj6uqWIi+PMIwUJ5vn7Ewne2XVoxboX221EyB+eoTGwz3
         qv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y8Vn62Hgp2OtEA8Oe1QzJqwst4QzTZ3ISa1lbHY0R28=;
        b=R+KmuErTe+eOalROymFt2qMDjGo3W5xkDPJMeSff4MwRsw91azqjem/35/GJTjwaVF
         /fZWMwnuCNgLLv2+6jF6r+YKUTGc2WJMytvBxvtHPwAowtxMy/GB/HbRo9dZeZhH0wAL
         La6jBYebDSPR1XbRIhztZuhxOLdZ2/DkyGB+X8+llWnDZX1/OdnJrIgBeLTH9Cue1oyb
         o/jeLaISIagRzr7YN9MmPH7Ff4UK7oOzHqZlh5YIQ+oRsWmnIPS4LC/tPt1G6IejGNXk
         ThHrH+LKWDXEUhqwqW8iNvP7xPzC1GBRXZ2MltFCs6x6D9JTWVhn9+WsCV6R/AMAhzY1
         lFWg==
X-Gm-Message-State: ACrzQf0+/2lzlQCZ2DatisuzamthEPDDMgNQOFwRmq28qHopXTghpgux
	ENRDFHl/kiQTq8gXqx4nLGBFtg==
X-Google-Smtp-Source: AMsMyM7um+0ABpKdQixOKFU7PLCI471PfzkdPHjkjwq9ruDugJ7bKeP+QOrZp0n69d35ttidDvnRdA==
X-Received: by 2002:a17:90b:3149:b0:214:162c:1ee7 with SMTP id ip9-20020a17090b314900b00214162c1ee7mr28007422pjb.142.1667749541147;
        Sun, 06 Nov 2022 07:45:41 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id c195-20020a621ccc000000b00550724f8ea0sm2716587pfc.128.2022.11.06.07.45.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 07:45:40 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------ZDIey7b1Vt3iAPk0peIO8WA2"
Message-ID: <d54b931a-b20a-674c-9e5f-6dc4601969a7@mistywest.com>
Date: Sun, 6 Nov 2022 07:45:39 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <534XKR.CLOQ7V0FCACC3@t-online.de>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <534XKR.CLOQ7V0FCACC3@t-online.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 15:45:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58497

This is a multi-part message in MIME format.
--------------ZDIey7b1Vt3iAPk0peIO8WA2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/22 01:40, Markus Volk wrote:
> Am So, 6. Nov 2022 um 00:45:36 -0700 schrieb Mistyron 
> <ron.eggler@mistywest.com>:
>>     | 
>> /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: 
>> undefined reference to `rl_echo_signal_char'
>
> missing readline dependency ?

rl_echo_signal_char is a symbol from readline per 
https://tiswww.case.edu/php/chet/readline/readline.html

--------------ZDIey7b1Vt3iAPk0peIO8WA2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 11/6/22 01:40, Markus Volk wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:534XKR.CLOQ7V0FCACC3@t-online.de">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div id="geary-body" dir="auto">Am So, 6. Nov 2022 um 00:45:36
        -0700 schrieb Mistyron <a class="moz-txt-link-rfc2396E" href="mailto:ron.eggler@mistywest.com">&lt;ron.eggler@mistywest.com&gt;</a>:<br>
        <blockquote type="cite">
          <div class="plaintext" style="white-space: break-spaces;">    | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/<a class="moz-txt-link-freetext" href="common.c:904">common.c:904</a>: undefined reference to `rl_echo_signal_char'</div>
        </blockquote>
        <div><br>
        </div>
        <div>missing readline dependency ?</div>
      </div>
    </blockquote>
    <p>rl_echo_signal_char is a symbol from readline per
      <a class="moz-txt-link-freetext" href="https://tiswww.case.edu/php/chet/readline/readline.html">https://tiswww.case.edu/php/chet/readline/readline.html</a><br>
    </p>
  </body>
</html>

--------------ZDIey7b1Vt3iAPk0peIO8WA2--

