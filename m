Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web12.533.1581616648606804797
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:57:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=TqE/eSgS;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.167.178, mailfrom: jpuhlman@mvista.com)
Received: by mail-oi1-f178.google.com with SMTP id a142so6655951oii.7
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2020 09:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Rwg5AeMkcXyuuwV/S8kwKo8D6OEtLYEaB8JB/ZKZjKg=;
        b=TqE/eSgSNC+2MBEXy0gb5KIg6ufOFaWGyf1wdzFHW6GOVophB64Zch9Tctc9y1SFlE
         Nq50thCpewD2EY8yf5ClFEg9W6rw+t4QynhDfmXotDr4k9E+fCaUeA2pb01Ia+slAI7j
         YdXNeRDjR8UW7TsjLTXPnPFsXa2RI3STZa45laGgZtMucLxLr+1rchClkLXUNizYYkT1
         O8NBehwbvdaRvB8nhPqhWQETUXbnyI5EP0vbGwEWfRivXiQILMi4awyUAS6rPpmn7+2w
         aKX6t9q/54nAvQJLjqCk162xkxnFugjLzHOqIVFFQ+AhENB+J+rnTddsRSj0GHL0maPK
         svbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Rwg5AeMkcXyuuwV/S8kwKo8D6OEtLYEaB8JB/ZKZjKg=;
        b=t7r2uCGtXXMgPH9IpDi6eQDTbSX2UEhpLGBplthEIDY396BqDIG83891Jxf7RXVbAa
         uy4SqAZSo2LaV79HWhU2A+VAj4FR7EGVy1+zXWMDgqFTrSriyYrTsxIc/zZ3RYNWpFf2
         E0zT9HfHNgIrzKir8w6ckCC6Abm+tGXADxcJziyRKjB6HpsDkQjhgDQyTcMXXSQt0aGE
         IpFTd+Z+CgrZGv9hGOdVFY7CdXdPVOR/7pSkWzGFfXjWYquo3PxlSS0iY/mmLPYncZGT
         KRywoJ/eMRqB4hMq7f9gw3n7f8lRJzZg4HVkeF7/9jQ51gs86IX+EsS3fCV/2r1xQsHt
         XU8A==
X-Gm-Message-State: APjAAAVPwvKyirF4EZ3HKMnfjUO6zUzwq2poF3YFBvDv3qeIPLjWSJDR
	ikGEfge1wPJ0YoJEJ4Zs/UcUzmUQ0d8=
X-Google-Smtp-Source: APXvYqyKB2qSbV1bpU5SueqZozHHWGlKczpe0t7DPfYtQ/peGv612ysjFe3T2wgE+LVR/JECxdSuZA==
X-Received: by 2002:aca:d483:: with SMTP id l125mr3684919oig.124.1581616647619;
        Thu, 13 Feb 2020 09:57:27 -0800 (PST)
Return-Path: <jpuhlman@mvista.com>
Received: from ?IPv6:2600:1700:4c90:60a0:18f0:30d2:de29:e134? ([2600:1700:4c90:60a0:18f0:30d2:de29:e134])
        by smtp.gmail.com with ESMTPSA id c12sm988263oic.27.2020.02.13.09.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 09:57:26 -0800 (PST)
Subject: Re: [yocto] should all "IMAGE_INSTALL +=" become "IMAGE_INSTALL_append"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
References: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain>
 <19e5bb94-18b7-2ac7-4d8d-afee04772862@mvista.com>
 <alpine.LFD.2.21.2002131246280.2835715@localhost.localdomain>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <b653f8fe-60e5-06d5-8787-a7af5dee46b9@mvista.com>
Date: Thu, 13 Feb 2020 09:57:06 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002131246280.2835715@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I was looking at th 1.6 version of the document, and the 5.2.1 section
is 3.2.1 in the 3.0 version. The section is about modifying images from the
local.conf, so my comments are still the same. You need it to modify an 
image
from the local.conf, but += is more appropriate in an actual image recipe.

On 2/13/2020 9:48 AM, Robert P. J. Day wrote:
> On Thu, 13 Feb 2020, Jeremy A. Puhlman wrote:
>
>> You are referring to section 5.2.1 if I am not correct, not 3.2.1?
>    no, section 3.2.1 in current git version of YP development tasks
> manual. that manual doesn't even have a section 5. we better make sure
> we're looking at the same manual.
>
>> The context is important here. 5.2.1 is discussing using the
>> variable as part of your local.conf. Which is a different animal
>> then adding it to an image recipe.  In local.conf you really need
>> _append to for it to even take effect, where its more correct and
>> natural in my opinion to use += in bb since it provides more
>> flexibility to alter the recipe with out using too much magic.
> rday
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com

