Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web09.37107.1622412651307229108
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 15:10:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hcEc1EtQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: stefan.seefeld@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id h24so6730849qtm.12
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 15:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=nNRz4XDjGqgZZCFYwrRlMNLlGc/pJat18Am43wEmhLQ=;
        b=hcEc1EtQUwAGOoCTpxTr0LTG65M1J8tx0H18IEm6MplAMn3rL3cyI4uXireVDSMRD/
         QhkTcZigTWNkSbD/0PvaWiy49WvSyAdxYLmtrito6LL/qNqnLCw9Z9KcLn1bEqBMTAtR
         jXpDVjeDNnjZ3auROeLUy/rabPKEK3bXcWc17PVytANUBWIEqVb2eT92/MmqW2RzVRPe
         LGRn2XiqAAngckWHsIl1ZyoSwJ9CYX3nN1jIMpGiRGXR0DZa5049yiHUcOgdO7hjv41E
         VhBJm2pEqHF3cnBlvLgAH97ER6VbOvLQe+IfPNZjPnYyN/SxgVD1XTNT7nG3XEpvL+kc
         rBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:to:from:subject:message-id:date
         :user-agent:mime-version:content-language;
        bh=nNRz4XDjGqgZZCFYwrRlMNLlGc/pJat18Am43wEmhLQ=;
        b=V9tdLIO86WvvFnW3RV+tRK5ziHfUHFcU/UOXiHlAzfHy5+sE96/WPFfqAyed5nXaNZ
         gGCu8flPntBKpj7r8OL6FH/5e83Ydm63LOWSPgF8AM4FACkbRKX7DOVPCrenlhMOq3lP
         //JFkI2lSZXCMQ3TgrEJxVtc4v01mInU84MT/VJciPRsVHGXIgW32MmtuJeM17ozo/us
         /vNrEFo1x0Nszo968LbVeMbxnjl8zJCEw1BCeRyoeAdSyyh0Sde4CV+436neyour+30H
         s1A5Vo1d2CmMm0vBJlLL8e8RwDteTaB+z7ItksKJp5VBv9oF1IDu2QsvI18VVzsRC45v
         qM8A==
X-Gm-Message-State: AOAM530EewjT5AZuOK/4ZFIkJwqP7e7tSV4AzxZ0skIGtv++yeVmBHwz
	Ckef1CbUZ9iz8OQf/3BtBo8luFwvlekPOQ==
X-Google-Smtp-Source: ABdhPJxrhspWVGDCPuEM8HxKjiagRt+rKFUeV8u5fDtp/xnXhe5erCP4aaL98wNcXAOqrFrFolDAOw==
X-Received: by 2002:a05:622a:1495:: with SMTP id t21mr12502652qtx.63.1622412649936;
        Sun, 30 May 2021 15:10:49 -0700 (PDT)
Return-Path: <stefan.seefeld@gmail.com>
Received: from [192.168.2.197] (bras-base-mtrlpq2911w-grc-18-69-156-113-119.dsl.bell.ca. [69.156.113.119])
        by smtp.gmail.com with ESMTPSA id y13sm7785725qkj.84.2021.05.30.15.10.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 May 2021 15:10:49 -0700 (PDT)
Sender: Stefan Seefeld <stefan.seefeld@gmail.com>
To: yocto@lists.yoctoproject.org
From: "Stefan Seefeld" <stefan@seefeld.name>
Subject: precedence problem with custom xserver-xf86-config_0.1.bbappend recipe
Message-ID: <50c175fb-325e-e7e7-af17-f55bb4d18662@seefeld.name>
Date: Sun, 30 May 2021 18:10:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
X-Groupsio-MsgNum: 53706
Content-Type: multipart/alternative;
 boundary="------------8329189EF5D69AE6BD09F321"
Content-Language: en-US

--------------8329189EF5D69AE6BD09F321
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to add a custom `xorg.conf` file to my yocto build, by 
defining a 
`recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend` recipe 
to my layer.

However, it seems like I always end up getting the (empty) `xorg.conf` 
file from 
`meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend`, 
even though poky's `meta-yocto-bsp` layer has lower priority (5) than my 
own (6).
I do get my own `xorg.conf` file if I remove (or rename) the 
meta-yocto-bsp recipe, so this really looks like a precedence problem.

Any idea what I may be missing ?

Thanks !

Stefan
-- 

       ...ich hab' noch einen Koffer in Berlin...


--------------8329189EF5D69AE6BD09F321
Content-Type: multipart/related;
 boundary="------------0E5D065AC5AC07C5B47A5744"

--------------0E5D065AC5AC07C5B47A5744
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello,<br>
    </p>
    <div class="moz-signature">I'm trying to add a custom `xorg.conf`
      file to my yocto build, by defining a
      `recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend`
      recipe to my layer.</div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">However, it seems like I always end up
      getting the (empty) `xorg.conf` file from
`meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend`,
      even though poky's `meta-yocto-bsp` layer has lower priority (5)
      than my own (6).</div>
    <div class="moz-signature">I do get my own `xorg.conf` file if I
      remove (or rename) the meta-yocto-bsp recipe, so this really looks
      like a precedence problem.</div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">Any idea what I may be missing ?<br>
    </div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">Thanks !<br>
    </div>
    <div class="moz-signature"><br>
      <div class="moz-signature">
        <div class="moz-signature">
          <pre><img moz-do-not-send="false" src="cid:part1.4B7133BE.822E5840@seefeld.name" alt="Stefan" width="123" height="77">
-- 

      ...ich hab' noch einen Koffer in Berlin...
</pre>
        </div>
      </div>
    </div>
  </body>
</html>

--------------0E5D065AC5AC07C5B47A5744
Content-Type: image/png;
 name=".signature.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.4B7133BE.822E5840@seefeld.name>
Content-Disposition: inline;
 filename=".signature.png"

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
Miz8AALwAAAAAElFTkSuQmCC

--------------0E5D065AC5AC07C5B47A5744--

--------------8329189EF5D69AE6BD09F321--
