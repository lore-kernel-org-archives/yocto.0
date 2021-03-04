Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.1966.1614878286709236760
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 09:18:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCwtQ08j;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id h4so19279660pgf.13
        for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 09:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=L21L125Yd6mvkZpvSCQQ9gK0KmdOUbivGJDZZ02yJuE=;
        b=jCwtQ08j63cJkG1ifkO0/A2HyBRXk9hwhgoySE1w7uUQNBQkSKEIxILJ5ntiiaPsRB
         6wKx6vSNGARY06By9tZ9VxjxChX4XMXLKSco7R3ocXFy+Q1E2YjI+KWoejsB1BEI7lsK
         XIzcXDla7sUn9lIV2DL1vroIiDTaw1Ld+s2OfEnwMzechDUstKF6YGAx0oJg+OYPgzsQ
         TroCuabQjSw8vno0nM36TNJ65tFNnGrpFg8/WpTk5iHIqBrzYCZtOKoEVzIa9rMp3L1O
         W+hs2Tw1LtxK1EImNDwm1aupETBN7VfqIvXyzVp06b1Ol3JhyJ3SznaEFC4xh9eFz1XL
         SZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L21L125Yd6mvkZpvSCQQ9gK0KmdOUbivGJDZZ02yJuE=;
        b=n4uk4cM5AJA3o1rq4YYiniO1rT0LA+TpjjaxlB9huK5+2ZJJ0A1ECys6KLjj3xcsRP
         HY5zOioBrOFvOYW1YHn86PoYj3UJjRmkj9/aEaihVky+eF2ZTASJ90C64yPczYX/FkU9
         rMuXZCprMI5Xw/5gsRzX4GluujjaKVuD+fNlW7+Id14Jf5cy45XtZSXLAGl8saJn0L1W
         HCvEXmcNzDTsK6THdQq07BLMb0ndy8h0S0PUkc9tvBpOEe5+L+oi1CwS4bXa6aRL4ru+
         WS8QBi7P6OOIeajNw6SZT2L4UzpT3+3AhlSMcMCMf0h/64KkrYx6F42iPNvOrQn/UlGV
         05Aw==
X-Gm-Message-State: AOAM531OnWGbQKKjy/UIqYysQglZUJjVu+q9S3fJwbVRRH9xABk6Rlkx
	ivKUFSGoBLLku+STsqm8G9j20ntBtJcwLw==
X-Google-Smtp-Source: ABdhPJwI7XmsdNcBKBBKrV/MWSf0cSjLgRJFPoIJgL6ZQ3OIUm6aZECs9HyAOw4FnakGOOY7t2lQig==
X-Received: by 2002:aa7:9af8:0:b029:1ef:20f4:56c0 with SMTP id y24-20020aa79af80000b02901ef20f456c0mr3509993pfp.6.1614878285576;
        Thu, 04 Mar 2021 09:18:05 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::b3bf? ([2601:646:9200:a0f0::b3bf])
        by smtp.gmail.com with ESMTPSA id k63sm19155pfd.48.2021.03.04.09.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 09:18:05 -0800 (PST)
Subject: Re: [yocto] #yocto #sdk
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.166925E38A880F18.17096@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <019a0cec-9cc4-3e49-f514-93fc4695fee7@gmail.com>
Date: Thu, 4 Mar 2021 09:18:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.166925E38A880F18.17096@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

if you have AUTOREVs e.g. can be problematic, and also using TIME/DATE 
in recipes which can interfere

On 3/4/21 5:13 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> Is there a list of certain classes that might interfere with the ability 
> of the eSDK to lock down the configuratiuon ?
> 
> Thanks,
> 
> Steve
> 
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On 
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Tuesday, March 2, 2021 3:26 PM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] #yocto #sdk
> 
> *_External Email Alert_*
> 
> *This email has been sent from an account outside of the BAE Systems 
> network.*
> 
> Please treat the email with caution, especially if you are requested to 
> click on a link, decrypt/open an attachment, or enable macros.  For 
> further information on how to spot phishing, access “Cybersecurity 
> OneSpace Page” and report phishing by clicking the button “Report 
> Phishing” on the Outlook toolbar.
> 
> I still appear to be having an issue with the SXT SDK install…
> 
> Building for zeus/x86_64 Intel based platform…
> 
> I build my kernel image clean, fully functional…
> 
> Standard SDK builds clean and appears functional…
> 
> Ext SDK builds clean, but on install I am still seeing Error below…
> 
> (1)What is it comparing  between unhash/task hash ?, more sig issues ?
> 
> (2)What is meant by “This is usually due to missing setscene tasks” ?
> 
> (3)In the local.conf under the SDK they set :
> 
> SSTATE_MIRRORS += " file://universal/(.*) <file://universal/(.*)> 
> file://universal-4.9/\1 <file://universal-4.9/1> 
> file://universal-4.9/(.*) <file://universal-4.9/(.*)> 
> file://universal-4.8/\1 <file://universal-4.8/1>"
> 
> Under sdk-extra.conf I set :
> 
> SSTATE_MIRRORS += file://.* file:///ede/tms/yocto/zeus/sstate_cache/PATH 
> <file://.*%20file:/ede/tms/yocto/zeus/sstate_cache/PATH>
> 
> My SSTATE_MIRRIOR is based off the clean builds I mentioned above, is 
> this the correct procedure ?
> 
> I am trying to figure out how best to debug this issue, it is occurring 
> on the post install, and everything pretty much appears in place.
> 
> Steve
> 
> 14:43 smonsees@yix490038 
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> 
> LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
> 
> ====================================================================
> 
> Enter target directory for SDK (default: ~/limws_sdk): 
> /disk0/scratch/smonsees/testSDK
> 
> You are about to install the SDK to "/disk0/scratch/smonsees/testSDK". 
> Proceed [Y/n]? Y
> 
> Extracting 
> SDK..............................................................................done
> 
> Setting it up...
> 
> Extracting buildtools...
> 
> Preparing build system...
> 
> Parsing recipes: 100% 
> |###########################################################################################| 
> Time: 0:01:32
> 
> Initialising tasks: 100% 
> |########################################################################################| 
> Time: 0:00:04
> 
> Checking sstate mirror object availability: 100% 
> |################################################################| Time: 
> 0:00:03
> 
> ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
> 
> Task 
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/liburcu/liburcu_0.11.1.bb:do_populate_sysroot, 
> unihash 
> cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601, 
> taskhash cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601
> 
> Task 
> /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-devtools/python/python3_3.7.8.bb:do_packagedata, 
> unihash 
> 925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f, 
> taskhash 925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f
> 
> .
> 
> .
> 
> .
> 
> This is usually due to missing setscene tasks. Those missing in this 
> build were:
> 
> <<appears to list every recipe under ./testSDK/layers directory here>>
> 
> 
> 
> 
> 
