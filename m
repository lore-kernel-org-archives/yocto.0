Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.3629.1605079126883312602
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 23:18:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IPz5OZL8;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id b6so1511041wrt.4
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 23:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=55XmZhY+lCXokho0tnDWThOtnr5rm9d3Z/Qh0GxilPc=;
        b=IPz5OZL8PIF+61f9cSkgryYR8xVmji9dZdZre3wZTCBq9sg5HunbukvA0AciP2XAXJ
         LI4ckUs7iBRrj33ccFc7MQwpHemyurTyB2hLoZYXaWsO3Ed/taCM7Gt1H/TWmB5oOR9T
         MTKULMUb0EEh7TwGGElmaABtIQSQdUZ3PtkgkzJvyBzQjKzMCUhA1yD7uRujp67Q4J9g
         tIrmOF4ck/vRVToHVT6eHTNf89vKQP2P7Opugfwgyj7v7jRqqgjRCk/H7IWauNKMIK/6
         sxt9jMqTRaCzK9vZ8nMQm/TdnAfKA8sg3V20oFicUAP6/4qAzc0XHu0+fkK0CgyopTvr
         m3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=55XmZhY+lCXokho0tnDWThOtnr5rm9d3Z/Qh0GxilPc=;
        b=dAggOFQss8MVEkLlWaTJ25mZdGW+BZZPcIzkyd+F23WgU7P0J1OU9Z9XPHTwNWjCGz
         K5j0ZZwxF9qxszAvyoVCuJVuaMMY0zDoQU2ALHeGtnXXqFmMQmKvyDOA6MT3vHytqOin
         ytqlXS+YwlNUIHEGUhasHW4firv7CC0rtg6IkAAnLyhpF1vcEh/LnJE+IaKOQHwCNd61
         sKnFXDJem8msUQT2d8FDACxjj2xq5YcVu0SipvCtx0DzyMD3gLezrw2rnz+/V45SnfA9
         SddpI6c6mSzqZFkM1dHC+kaB0BH+hCFmH9+dYptY8XHSfPltM+MzfqH+fqowTQGvusN7
         lFog==
X-Gm-Message-State: AOAM531DhYPxWcElfikBEuqh05KUf2UHq9jTK6EEU4vUORVQpxez8kxs
	ZvUI6/NDQo+NG6eUAqMPn7s=
X-Google-Smtp-Source: ABdhPJwwQ5csBhlOCG4aRd0mw/pkgpoX/hmUOwEa+DICosIsqqdren16p0JOdzCEPalIBh+u6YxDaw==
X-Received: by 2002:adf:e3c9:: with SMTP id k9mr28339259wrm.275.1605079125280;
        Tue, 10 Nov 2020 23:18:45 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-84-14-95.home.otenet.gr. [2.84.14.95])
        by smtp.gmail.com with ESMTPSA id v189sm1517797wmg.14.2020.11.10.23.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 23:18:44 -0800 (PST)
Subject: Re: [yocto] Error when building eSDK for a `docker load`able tarball
To: Manuel Wagesreither <ManWag@FastMail.FM>, yocto@lists.yoctoproject.org
References: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, jester@theyoctojester.info
Message-ID: <3223ae35-537c-48dc-1301-5a3c29dafd92@gmail.com>
Date: Wed, 11 Nov 2020 09:18:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

And as far as I understand you tried to build some extensible SDK 
against an x86-64 container.

Please note, that my SDK most likely contains a bit more than the 
"standard" stuff[0], but this should not make much of a difference here.

[0] 
https://gitlab.com/meta-layers/meta-resy/-/blob/dunfell/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend

I take a container-x86-64:

bitbake app-container-image-mosquitto-oci [1]

[1] https://pastebin.com/T9hX1H8f

bitbake app-container-image-mosquitto-oci -c populate_sdk [2]

[2] https://pastebin.com/eujc57DG

bitbake app-container-image-mosquitto-oci -c populate_sdk_ext

breaks in a similar way[3]

[3] https://pastebin.com/rV9ewZa9

So it looks like it's extensible SDK specific.

Can you please try with the "standard" sdk instead of the extensible sdk 
to see if this works for you?

You might want to play with IMAGE_CONTAINER_NO_DUMMY = "1" which is 
defined in poky/meta/classes/image-container.bbclass and try to build a 
container with a kernel as a workaround in case you build an eSDK.

Regards,

Robert

