Received: from mail201.livehostsupport.com (mail201.livehostsupport.com [101.100.195.11])
 by mx.groups.io with SMTP id smtpd.web12.11297.1604928240558785562
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 05:24:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: sama.com.sg, ip: 101.100.195.11, mailfrom: william.jacob@sama.com.sg)
Received: (helo=[192.168.1.11])
	by mail201.livehostsupport.com with esmtpsa (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.93)
	(envelope-from <william.jacob@sama.com.sg>)
	id 1kc79I-0007gh-Ct; Mon, 09 Nov 2020 21:23:56 +0800
Subject: Re: [yocto] Why python3 is build native in yocto ??? #python
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
References: <CAAnfSTu8N11SfDGCpPN=hsQNL-ahG6WMf62EK_-56iqMzzKVng@mail.gmail.com>
 <2541.1604655255009585774@lists.yoctoproject.org>
 <CAAnfSTuEHgJGJ2c2pOg4Lp+QTnQHHLDAEGkwBL9JC-4ekkm44Q@mail.gmail.com>
 <b504fe001583540869b29df943ec1b0a2e2cc385.camel@linuxfoundation.org>
From: william.jacob@sama.com.sg
Message-ID: <040acdf2-dd5e-cc1e-1a25-209886d32d31@sama.com.sg>
Date: Mon, 9 Nov 2020 18:53:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b504fe001583540869b29df943ec1b0a2e2cc385.camel@linuxfoundation.org>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mail201.livehostsupport.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sama.com.sg
X-Get-Message-Sender-Via: mail201.livehostsupport.com: authenticated_id: william.jacob@sama.com.sg
X-Authenticated-Sender: mail201.livehostsupport.com: william.jacob@sama.com.sg
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Understood but this is where it gets tricky for me .

I am trying to compile llvmlite which depends on llvm . The problem is 
that because native python is used it will give me OS Error when I link 
LLVM build for ARM The reason I get this error is because llvmlite is 
looking for LLVM built for x86 .


On 09/11/20 3:59 pm, Richard Purdie wrote:
> On Mon, 2020-11-09 at 09:14 +0000, Ross Burton wrote:
>> DEPEND on python3 and python3-native then.
> Note that whilst the python headers and library will be in recipe-
> sysroot, the python3 binaries will not. This is because they're
> designed to run on the target, not the host you're building on so we
> don't bother putting them there.
>
> Cheers,
>
> Richard
>
