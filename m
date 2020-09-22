Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web12.2220.1600756930369266475
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 23:42:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S/TCRXtS;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id o25so6197584pgm.0
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 23:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tbTb7OFfGQDaDOudPHp0kiOilk+kanBT3fttHgJ6CDY=;
        b=S/TCRXtSQBa3SsreoSRMAyCknGm3UZ1RqTVsYhpVbOGeD+//IxzGUd+w6UKfnncyno
         eVaxSF48C2jSfLZ+94PUDcqnR//DDIIGe9P0+Bl4LgZ7BEH+7JJ4eOO6noKCcmbk9Fkr
         C1MN4NpuTNhzMBT0Ewr7QjMLmuDa1oYmAdOnfCKQORPIdc/x7VHkEpwhdqNh7JMvWtIw
         jlWeBc0CmAdhA7BdZj6q3/+Tu78zoPI4EuMM/95iYpqQdhRN5g33B/hzITAxOH3gfYcN
         J9XD4FvoM4BhwBX+xQeOPTeKC0vZbY6vYlN7/F2SQR5aTcNI0+zFNS6OHvecINMwOJFD
         pUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=tbTb7OFfGQDaDOudPHp0kiOilk+kanBT3fttHgJ6CDY=;
        b=su69F0BFjYq8tuTOV4vddkDfo3Z3A1oSXECTsJA7KkA84TXnMnHWymFVny5pvCVPsO
         4b+QtM6lpyOQwK2GKcTlFrnRSOShti2tf1QpkdCmnMhWF1fl1XxuGjExWC5lml1hDyhI
         6CTg3SBYIzdRKn5YIltk+XRQivVhMV+fDQsYLhaOoDCr4qvZGfzars22RB4A70Zg6qsU
         vIJJ8gaDhHmdSWxErdfypQbWgG2ydHvMaXvs3qgSNL0NUmQd4iyn3SYegt9WLzuW+0b1
         GGIFUV7RNlbjK8i5/2EbykjmIjroEzE9Ed1qA93sBGiu1YFEyNbzkxIh4fiU/irr7lu9
         OYdA==
X-Gm-Message-State: AOAM533ynUdtS5soGWEgRE5Hy06gCmXPeCtV7UBWqVjGYBR31EjdjYC1
	ROTAFt054jkJnX4GIfXPxIPS7xzzW3TCrw==
X-Google-Smtp-Source: ABdhPJws5nQ16aP/BiXj3k8rrtYdA8gH+PWw84cPyNx7Hj9xV5JmXJ+HyW4svqbc/icgaFnCGgFqEw==
X-Received: by 2002:a62:fc07:0:b029:142:2501:34f5 with SMTP id e7-20020a62fc070000b0290142250134f5mr2924374pfh.78.1600756929231;
        Mon, 21 Sep 2020 23:42:09 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:28e0:938b:f1c2:a4a6? ([2601:646:9200:4e0:28e0:938b:f1c2:a4a6])
        by smtp.gmail.com with ESMTPSA id l14sm1268672pjy.1.2020.09.21.23.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 23:42:08 -0700 (PDT)
To: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>,
 yocto@lists.yoctoproject.org
References: <CAAjAsizfFN2RFj-ve2Fx0NPTd9jLSHp1NtShjy_TnUVW7c8yvA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] preistall package when use a package manager
Message-ID: <7403e7d6-b6ba-6879-b25a-8919694ca609@gmail.com>
Date: Mon, 21 Sep 2020 23:42:07 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <CAAjAsizfFN2RFj-ve2Fx0NPTd9jLSHp1NtShjy_TnUVW7c8yvA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 9/21/20 1:28 AM, Matteo Facchinetti wrote:
> Hi,
> 
> I need to preinstall a package in a specific directory in my target image.
> 
> In detail I use RPM package manager and I like to include RPM 
> packages in my target to provide a way to install services only when used.
> This is useful when you don't have an internet connection.
> 
> Is there a way to do this?
> Opinions are welcome.

it seems you want to bundle unstalled packages ( rpms ) in your 
firmware, perhaps you can look at adding a ROOTFS_POSTPROCESS_COMMAND 
and copy the needed packages, but you need to be sure that all 
dependencies(rpms) are also made available as part of this bundle
and you have to check this consistency everytime you update firmware


> 
> Regards,
> Matteo
> Sirius Electronic Systems
> 
> 
> 
> 
