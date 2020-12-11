Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web08.9912.1607706240255788518
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 09:04:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYS/J3BD;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id j13so2659047pjz.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 09:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=dAnUxdWes2nKMOsXbObnLLpLiORk8zFJjZF3EXPsYWE=;
        b=kYS/J3BDDl+h46hXE3Qi884GUQMMXjLwZ3W8oliLCmiMoEUJZH+KAaNmmu9B5DMvZW
         wDQvKF3NT8bqwjYOKuL+R62C1xBIuf9K3q+2eogU3iaOgXVcC0py6JQcasKXRj0GvKFD
         QcMGmZuk0gFm/Muhwj0oAI0w6CFYhGmmO4a3Jyyco5//rcY10ruefCRPXTTU+G0we8bn
         N5t2CoFO+PbDDfxL1o3kWJaxELgoy8XFIZmgva1Ob2cMeWUHiYjk3rr84Re8gYDVUBjH
         YPo1KyLep92/Jo/qqUN6TedtF04HZ3EEK2JCQWgkQ1WfPmzpDsPUoBkybopFWxjE6vgT
         +c9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dAnUxdWes2nKMOsXbObnLLpLiORk8zFJjZF3EXPsYWE=;
        b=TAZz23tLLJeqvAgX/2xpar9HY5uUspvTNe3FbCq7oN7UkzkeTLH1qegi7f5gI37kYl
         dHNBFAvtdRQ2xzr1pcMAz7ihwZeNACd6ZBzsfxDeRLTx5wsd0Fp4R7DdF5ZVWncEQWj8
         aGUzc91b/4WyLzbp/yEeg/iMdnPLNTzr/Azr0i9rJAviOrovaEV0l2ER5VDLDKnccDQE
         8yMcHBtgb1od7luwCCw530TQ0rehcmkeHlykc+N9szg+GtJb9EVUygdVxTGXyYqEGsVP
         jzr+clg3ajvgjwSrMGzgISlYzllqP/zBst63lRz48vjLAdo5QqI6+dlhUBewQppyjvwc
         QQ7A==
X-Gm-Message-State: AOAM532EpG/AHhlqIrcFxYwOPZPAQCJJGiLBIT/oJoxJjEsK0kaI75DL
	wjCgM6vEKOOwHkG6SIjKSsZf1akJNoEWoA==
X-Google-Smtp-Source: ABdhPJwk+MW8bi378JCKkSimBoiZhDuzzBA3VAqI/w2ZXCdO/xAEo5HmW1TLK2QIL3crpwlwyqpLXg==
X-Received: by 2002:a17:90a:fa8e:: with SMTP id cu14mr14044114pjb.140.1607706238974;
        Fri, 11 Dec 2020 09:03:58 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id a17sm10898069pga.56.2020.12.11.09.03.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 09:03:58 -0800 (PST)
Subject: Re: [yocto] curl_easy_perform() failed: Couldn't connect to server #linux #yocto
To: vijayrakeshmunganda@gmail.com, yocto@lists.yoctoproject.org
References: <LX0D.1607682387068707611.wmeq@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <5efa9771-376a-3e4b-2cad-bf7c6741679e@gmail.com>
Date: Fri, 11 Dec 2020 09:03:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <LX0D.1607682387068707611.wmeq@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/11/20 2:26 AM, vijayrakeshmunganda@gmail.com wrote:
> Hi,
> 
> I'm trying to do HTTPS POST using curl with CA certificate, but I got an 
> error as "curl_easy_perform() failed: Couldn't connect to server". The 
> same code works on a Linux machine but not on my target board, I can't 
> understand what I'm missing. I have an active internet connection 
> without any firewall. Kindly please give any suggestions.
> 

check what all packageconfig is being used are you using gnutls, then 
you might want to try nss or openssl and see if that helps.

> Thanks & Regards,
> Vijay
> 
> 
> 
> 
