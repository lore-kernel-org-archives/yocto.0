Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.576.1595352555078744488
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 10:29:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O9Pa+vIN;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id b92so2005490pjc.4
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 10:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=TKS/mfEmDG87bzr4Sus6VLHK+9MVjnHUt6pCGqfbu00=;
        b=O9Pa+vIN+qjjXOPBD0ULTvULbd7VUXs4wlh2zQUC3OHS+z9tDGzaR5o9RqcINjr05e
         9+crWt4TurAlI1OLrNRAU4/dp9kvNZAQvETf7uXZJV8uCaFzj/0XtyDo4l+FNsKRJ7HN
         FF3D13gswCI6zgU+h7xTxiDs24Ps9FcHo02QahEdr5dCq1Ze5oZ334Fl3Ojqk+rwuenF
         zDAvhTRZEQEsmlrq2QrMaQDH7YznbSuotwXe7JzrURoad6nghRr3iJ112A8AC+DeyPl2
         Qsp8OC6l+ntZeF2iCoTJvm+GdEXxk2fWyHaylgg8lv600chc1vF4Ai1xg7iKWQ4Y5ZjK
         iu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TKS/mfEmDG87bzr4Sus6VLHK+9MVjnHUt6pCGqfbu00=;
        b=eVM+5BMy7TxPbxBFkBWEQr0BTJnrhBJYsnTNuPgUPj7KdJwV5ArNA6v5sqPLoq5SFM
         +VPUMuNwQepxBDnisVQREo0T5lCU+ZDDvxQuJ/xTbALvXAMDuitTbxmUT0L25lI4EdP/
         FHn7mLZHCXKo9oZZqxxa7D8tk3FfllOVzEGYMTXLNqerb+b4UBFOj59olg7dtaC/Ivcl
         DheQ6uebytb90aJe2GAzX6ES06byT4wG779zkv0T2+97/YCvUdc2QYRg89wCcYunGkeC
         rrmoFFqB+hBrq4HxUn47qtQFq0nHidgQRN2qXfTtqKu3kLRURUwZkbZqjPUPjOyDzhA1
         xJiA==
X-Gm-Message-State: AOAM531HFhk33nHi0V9lCGFvcoYlfUJbxfPbMK65xO36RHo28FB6scfy
	KeqOikW7KE3CBYpaTBw8qagdaRDRqzw=
X-Google-Smtp-Source: ABdhPJxI9kJOe3TsvzK1wpZQPgyNrPY+guMEpt2B/LLTfPzJn3P976dYQtCeYWcYL4CFBH/ARvUedg==
X-Received: by 2002:a17:902:9b82:: with SMTP id y2mr22201032plp.314.1595352554069;
        Tue, 21 Jul 2020 10:29:14 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::6651? ([2601:646:9200:4e0::6651])
        by smtp.gmail.com with ESMTPSA id g5sm3805876pjl.31.2020.07.21.10.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 10:29:13 -0700 (PDT)
Subject: Re: [yocto] Yocto Dunfell: package.class --> dwarfsrcfiles
To: Jan Hannig <jhannig@phoenixcontact.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0PR05MB5058061461A3E61A57263A41D5780@AM0PR05MB5058.eurprd05.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <738d2e96-4934-8420-5ba8-b6fdb3253df4@gmail.com>
Date: Tue, 21 Jul 2020 10:29:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <AM0PR05MB5058061461A3E61A57263A41D5780@AM0PR05MB5058.eurprd05.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 7/21/20 3:45 AM, Jan Hannig wrote:
> Hello,
> 
> with the upgrade from Yocto Zeus → Dunfell, we observe lots of messages 
> when building our product which seem heavy to be understood or to debug.
> 
> Actually, it's the failure of the "do_package" task of a proprietary 
> module written in C with following message:
> 
> ERROR: eds-1.0-r0 do_package: dwarfsrcfiles failed with exit code 1 (cmd 
> was ['dwarfsrcfiles', 
> '/home/jhannig/workspace/build/mguard3_tmp/work/aarch64-mguard-linux/eds/1.0-r0/package/usr/lib/libhdb.a']):
> 
> dwarfsrcfiles: 
> /home/jhannig/workspace/build/mguard3_tmp/work/aarch64-mguard-linux/eds/1.0-r0/package/usr/lib/libhdb.a: 
> not a valid ELF file
> 
> ERROR: Logfile of failure stored in: 
> /home/jhannig/workspace/build/mguard3_tmp/work/aarch64-mguard-linux/eds/1.0-r0/temp/log.do_package.13957
> 
> ERROR: Task 
> (/home/jhannig/workspace/mguard/meta-mguard/recipes-core/eds/eds_1.0.bb:do_package) 
> failed with exit code '1'
> 
> Following information to understand the problem:
> 
> - The code of this module wasn't changed, and it compiled errorless with 
> release "Zeus"
> 
> - The examination of the file "libhdb.a" brings following results:
> 
> - It is possible to unpack the archive-file "libhdb.a": 
>   jhannig@jhannig:~/Archiv/MG-2436$ ar x libhdb.a
> 
> - The Examination of the content with "file *.o" 
> [jhannig@jhannig:~/Archiv/MG-2436$ file *.o] brings following results:
> 
> hdb.o:             ELF 64-bit LSB relocatable, ARM aarch64, version 1 
> (SYSV), not stripped
> 
> hdbschema.o:       ELF 64-bit LSB relocatable, ARM aarch64, version 1 
> (SYSV), not stripped
> 
> hdbstaticschema.o: ELF 64-bit LSB relocatable, ARM aarch64, version 1 
> (SYSV), not stripped
> 
> utils.o:           ELF 64-bit LSB relocatable, ARM aarch64, version 1 
> (SYSV), not stripped
> 
> - This corresponds with the expectation and the intended character of 
> the file
> 
> - Minor changes in the makefile command line didn't change anything in 
> the result [EXTRA_OEMAKE += 'CC="${CC}" CPPFLAGS="${CPPFLAGS}" 
> CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" AR="${AR}" EDS_XML="${EDS_XML}"']
> 
> - Searching the internet for "dwarfsrcfiles" doesn't bring any 
> informative or documentative result, so it doesn't become clear, what 
> this tool exactly does.
> 
> Following questions asked to the community:
> 
> - Which cases of errors result in this error message?

something goes amiss in the ELF object generation, it could be many 
reasons like corrupt files or additional information in these objects 
which can confuse the dwarf reader

> 
> - What changed with the new yocto release, that "suddenly" a build 
> result is analyzed as failure?

packages get upgraded and in this particular case elfutils is the main 
package and it would have got upgraded to new revision which can bring 
additional behavior.

> 
> - Where exactly in the tool code is this error thrown? The message "not 
> a valid ELF file" isn't available in the code


its coming from dwarf reader provided by libdwfl from elfutils package.

> 
> - What should be done with the archive file and its content to eliminate 
> the error?

its not clear as to what might be going here so hard to say, but perhaps 
you can debug dwarfsrcfiles tool using gdb and your .a file as input and 
see why it things its a bad ELF object. It will perhaps give more 
insights. Its a native tool so should be easy to debug through. May be 
share stack trace etc. when it reaches the error state.

Secondly, it will be good to look at the build options used to create 
this .a and see if something stands out.

> 
> - Is this behavior well known, and is there any documentation to get 
> information about the tool?

its not well known, but its an error state that can happen.

> 
> Thanks a lot for help,
> 
> kind regards
> 
> Jan Hannig
> 
> Reasearch and Development
> 
> jhannig@phoenixcontact.com <mailto:jhannig@phoenixcontact.com>
> 
> www.phoenixcontact.com <http://www.phoenixcontact.com>
> 
> .......................................................................................
> 
> PHOENIX CONTACT Cyber Security GmbH　
> 
> Richard-Willstätter-Straße 6 　
> 
> D-12489 Berlin 　
> 
> 　
> 
> Register Court: AG Charlottenburg, HR B 202908　
> 
> Geschäftsführer/General Manager: Kilian Golm
> 
> //
> 
> 
> 
