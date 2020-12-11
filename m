Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.10218.1607705969812162076
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 08:59:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PfyzL222;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id s2so4873130plr.9
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 08:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=46GpaQCN34IKSI7pmMo5MkD234PXquhqecth8cTjicE=;
        b=PfyzL222y8ci7KgKnk7u4VNQ1A69tNMU2HxMP3RBDymSSUvioqnDoaZ8fhGqUGWq14
         7NSyJ2+hV/ftU4DGBlLQDi28E4nFBeS4KRkzoeOs1msJpCHOdT8omcUx1532DDhlGqi1
         9NwYvrODEqPGBshDD+nb4hWH8GY/ls69qZy4b4ua2WGj7pDSydGAUicd+jRBuske/U2x
         B+2/WFNZfCwnqw5qut3gUbJL4VDeWUktQMNs+zFwVLdcERv9tNSJAJuRx8xR9cVTTKNE
         YcC8malzBzEY2BpmAPuVL0e37a85hK7QSh2CdTtSd1jy/6dgDGy4uQYvTNcJBmRH9UI1
         gmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=46GpaQCN34IKSI7pmMo5MkD234PXquhqecth8cTjicE=;
        b=D4Yap27SL9j1MFgqu0q8nIJquNKJBqHDmbv1dSFb608Xbiu57YQdmhh/tn3XVGAUBg
         LzbTj9QASp6iSEUwKrJplD8pRiLOiY2p5qoQbJbvVuB1ErpICzue0sy6OmDpWzW5JnSj
         WDxMZeKgJN2cTHc4tKmVuKQ2vLrAVlUfvZLeVX53KTXOGmfx8S7sYirtXq5Ju+9ftlkU
         Bc0O71bf7VwYlEimGZV3ExnklPe0Vow6lhLrhj0UKa2YHaesDmqSdWXklOpDKjURdR6Q
         Kv/tWHBvyI/cy7P5/cL9WWboxrmOpI2HhUdCT90p6xBslQquGGPwE5WskvcIBIqn65IX
         qVzg==
X-Gm-Message-State: AOAM531WO0ho4j27KIciNDbrTCskajYO0AW3W8L+Z9KNBI/9XQQsdCAM
	ToXq3A3xERJHqb3BN1DMQWJge52B6d6a7w==
X-Google-Smtp-Source: ABdhPJw8XiGrq81AUIcRHi1Nl69itoYNCn9yBnzOLxA7l3zO2rAjPWZdHkRl8yzDxv2+IXJ4eFB1Eg==
X-Received: by 2002:a17:90a:fa0c:: with SMTP id cm12mr13982354pjb.87.1607705968767;
        Fri, 11 Dec 2020 08:59:28 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id d6sm10387127pfo.199.2020.12.11.08.59.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:59:28 -0800 (PST)
Subject: Re: [yocto] [meta-raspberrypi] error with sc16is752-spi0 overlay
To: yocto@lists.yoctoproject.org
References: <VI1PR03MB626929E955F2C659ABCB212382CA0@VI1PR03MB6269.eurprd03.prod.outlook.com>
 <14983.1607697679901770123@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <3c63fcec-a751-bdc8-cbc9-457980fdfb1b@gmail.com>
Date: Fri, 11 Dec 2020 08:59:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <14983.1607697679901770123@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/11/20 6:41 AM, Romain Crausaz wrote:
> I kept looking and I get the same error with the sdio overlay when I 
> remove the sc16is752.
> 

I think the content of IMAGE_BOOT_FILES would be right place to start 
looking into the issue.

bitbake -e <yourimage> | grep -e "^IMAGE_BOOT_FILES="

might give more insights into this variable's contents and see if the 
syntax is ok or not.

> 
> 
> 
