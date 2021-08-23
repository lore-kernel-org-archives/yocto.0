Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web12.26350.1629735682729847139
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 09:21:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O1IlqQLY;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id t42so13241090pfg.12
        for <yocto@lists.yoctoproject.org>; Mon, 23 Aug 2021 09:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=/BMl0Cw1EvxaTXHfcHRGat7has5mM+Y35u56xy3k0fE=;
        b=O1IlqQLY+ecVOQ69T7DDaBhzyHLpWlIFNrJdrprg+17grtJBWXKs1IIWH26GMhlAg2
         zjrQfZ8JbBFn6RMD5wrWlUP0ssjMLeEMaDyvn072GEBj5Y2fhykzf6wzKkPlhv6nS4oE
         RyES8U5SsXOOltDcmA30o1WnlzwWfVFM48gk2FDJgNlg6yHuGUp8YIJCPAYU6iZrtHsh
         LRvG/VZP/txcbl5YvERpoVeYiKcq58sKzagVCLm0hr0VvNVgQveExpiW8V8/SCY4ubU7
         IVOIxastBjMphLk1sblTqiIWxo86PR7wIk03pELA7QrA/7gPEIpZP2w1Q19xWXaIw3Gk
         FbHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=/BMl0Cw1EvxaTXHfcHRGat7has5mM+Y35u56xy3k0fE=;
        b=tU1zRrZYzTwmEtU7ssqLZizLUZywSKH6bMdhAKKzHGWtWp4cGHJzekw/HwzLId+TSG
         uoEGv7UuKqQjiDHXheWBRWNjy/44wn5x7KCikU0tMnp1MXppBjnPuZUE+PHLpcO/GSOl
         hDblysMdcLq5ktlKYJiLUWeuUCWXmGrkEgV5CgbOgzCUx1wfhWlJSWfXNrCml1NL7NSc
         98OD2XbeaaWy6CVKoKR3tM/q53bfWGVjXE1r1Tp1/OM0vm611bLwloUMCkVg8zFOPUPM
         g+o0E9lQHsJXStm9IrEuVw6/1T+5eP7FVfRx09HuPJ7Q+hps+kwQePmu0ebNDfVA25Yj
         dWCw==
X-Gm-Message-State: AOAM533zjXz2gexIOy6VRITa43dzOYnH3rsn9y/Qh7+W61vXhfJRjY+h
	zqA+V59F0XjxcRQkLlrFCfA=
X-Google-Smtp-Source: ABdhPJzf+Qegkin7iUVgSY14bUBbpHmYqZZLdrysj1A69HVJiYb5YdwaP9luBZP9WntE2zmMqyIkWg==
X-Received: by 2002:a62:8858:0:b029:2fb:6bb0:aba with SMTP id l85-20020a6288580000b02902fb6bb00abamr34858381pfd.32.1629735682241;
        Mon, 23 Aug 2021 09:21:22 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:7cf5:888d:b618:582d? ([2601:646:9200:a0f0:7cf5:888d:b618:582d])
        by smtp.gmail.com with UTF8SMTPSA id d4sm6074290pfo.214.2021.08.23.09.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 09:21:21 -0700 (PDT)
Message-ID: <de417108-e131-39a3-43b6-0c6384d8ef2f@gmail.com>
Date: Mon, 23 Aug 2021 09:21:20 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.0.1
Subject: Re: [yocto] meta-gnome error #yocto
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <zHK7.1629712512589292197.GWRl@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <zHK7.1629712512589292197.GWRl@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 8/23/21 2:55 AM, yasminebenghozzi6@gmail.com wrote:
> Hello, please can anyone help with this error ?
> ERROR: ParseError at 
> /home/yasmine/yocto/poky/meta-openembedded/meta-gnome/recipes-gnome/yelp/yelp_3.34.0.bb:7: 
> Could not inherit file classes/itstool.bbclass
> 
> this is the line 7:
> inherit gnomebase itstool autotools-brokensep gsettings gettext gtk-doc 
> features_check mime-xdg
> 
> 

this class is provided by meta-oe layer. Make sure you have meta-oe 
layer in your bblayers.conf

> 
> 
