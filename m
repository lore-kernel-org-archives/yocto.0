Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web12.25394.1628788850554263074
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Aug 2021 10:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=stcPYGMQ;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id a20so8222076plm.0
        for <yocto@lists.yoctoproject.org>; Thu, 12 Aug 2021 10:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:organization:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QFIyJ8W4oTolOfWPRc1AjJCm2xshvDlPhljfe1Q1a3k=;
        b=stcPYGMQ4TJWv7GaIg+UTuTBXpvInnofcfKieD9Y4CoJV2UsQaCqwplcnf9UT8+qMC
         2VS6zRQtwqwPkkBXMp3i92IBtsiiRKk/5SoJmyYCl4MOw4a+plJRLgPboerrVmGWh0HB
         Fmt1bZfOE1lRSfiuhxZ5hOZOUlWmrsfFw+aGmaJHGE6XmS9gaArP4v2aj3wwRPGdHLps
         8d/gJs44KkJMHGVqL3Dgzd9lZr5heMMUwTk9VqsFzv+7v3COdkXJBwkL5uz5YLE26Vrs
         f4HCx/6yqoFTRuHSo2U0wRBCSOzvDU7ryk8PR+by5ETeObXIya1y9oakn1VxGKDZtLqz
         XXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=QFIyJ8W4oTolOfWPRc1AjJCm2xshvDlPhljfe1Q1a3k=;
        b=WEMy1q3cEn0OH/X9rCmRxKE+NrfYQVFmLwIQ3oWZ3/h6rFvI7M6VLFae5k+Ug0MCmz
         i2qMf5jxq/IWWmZ5nQGCpLMc34plh+nz05DGBcZIfkgBfPdrujfNj0rHfOPyaAkdtMMK
         P6axYahu3aJQIi7vmJPJ3M/psMHa1j2lrmTbGfXJvxgwYzl1TjDwKzBHS5SUc7I9b4ml
         OxMYB3LR2iRXVs77Ii5tXOBFnZWbzrLNHl2F15wkZuxtn0d1ICtw09GkVTqn3nFlQLB2
         i6DR0xFoszQC2VHwkLn7YFYTo27FbPDvduU1GdkzI1QEW7S8c2kdml3NJBDrVFNaWXB9
         BYqA==
X-Gm-Message-State: AOAM530JUiE4zJYoC/kX3dZTjdZiRcL90wDW2TJOwKZR+JYumiIUK4vd
	CbOta/AIUhl7j8OJm7DUhIAK2/RNY40VJg==
X-Google-Smtp-Source: ABdhPJzf/Xm/PH63Xm5QBJp6EMmbv2wHkkBRY0iEITIZi4EvywEWvNTi1jKFCAZBt9G9GkE578dcRA==
X-Received: by 2002:a62:1982:0:b029:356:3484:b7ec with SMTP id 124-20020a6219820000b02903563484b7ecmr5174777pfz.48.1628788849902;
        Thu, 12 Aug 2021 10:20:49 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:c078:a19b:8919:aba? ([2601:646:9200:a0f0:c078:a19b:8919:aba])
        by smtp.gmail.com with ESMTPSA id x19sm4134313pfo.40.2021.08.12.10.20.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 10:20:49 -0700 (PDT)
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.169A3B316BD435F2.18254@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Subject: Re: [yocto] #yocto debbuging option under zeus
Message-ID: <a1e5e1fa-4dc9-3bf1-6ab1-90702dec036e@gmail.com>
Date: Thu, 12 Aug 2021 10:20:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.169A3B316BD435F2.18254@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 8/11/21 3:53 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> Is it documented anywhere on how one might manually load debug info an 
> for image with the binaries stripped ?
> 

what you are looking for is perhaps achieved better by setting a 
feedserver on your buildmachine and then let your target download/update 
packages much like other distributions

in local.conf set

PACKAGE_FEED_URIS = "http://10.0.0.10:8000"

this would encode the feedserver address into you online package manager 
config in image

then run

bitbake package-index

which would update the feed metadata index

Run a http-server on the feed directory on buildserver

a poor man's way is

cd build/tmp/deploy/ipk/
python -m http.server

then you can go to your target and do normal opkg operations


opkg update && opkg install busybox-dbg

another advantage of this approach is that it will automatically 
download/install the dependecies.



> Thanks,
> 
> Steve
> 
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On 
> Behalf Of *Monsees, Steven C (US) via lists.yoctoproject.org
> *Sent:* Tuesday, August 10, 2021 1:48 PM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] #yocto debbuging option under zeus
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
> I ran across the following under the Yocto Project Profiling and Tracing 
> Manual, and after checking my ipk data files/layout, I was wondering if 
> someone could tell me, if ipk is capable of performing a similar set of 
> operations to install my debug data ?, and if so, what would be the 
> correct command sequence ?
> 
> “ The debug packages once built can be found in build/tmp/deploy/rpm/* 
> on the host system. Find the busybox-dbg-...rpm file and copy it to the 
> target. For example:
> 
> [trz@empanada core2]$ scp 
> /home/trz/yocto/crownbay-tracing-dbg/build/tmp/deploy/rpm/core2_32/busybox-dbg-1.20.2r2.core2_32.rpm 
> root@192.168.1.31 <mailto:root@192.168.1.31>:
> 
> root@192.168.1.31's <mailto:root@192.168.1.31's> password:
> 
>       busybox-dbg-1.20.2-r2.core2_32.rpm                     100% 
> 1826KB   1.8MB/s   00:01
> 
> Now install the debug rpm on the target:
> 
>       root@crownbay:~# *rpm -i busybox-dbg-1.20.2-r2.core2_32.rpm*
> 
> “
> 
> Thanks,
> 
> Steve
> 
> 
> 
> 
> 
