Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web08.24942.1621870879796639703
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 08:41:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8HWtNso;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id 22so20739787pfv.11
        for <yocto@lists.yoctoproject.org>; Mon, 24 May 2021 08:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kDtLPKrPjI56CJuHcJjM23USJ1+2bvaIBRREvkNJFPc=;
        b=i8HWtNsoX6xJZtofoTvUceYluclaOwlLnv7Wfc6NjDZwP3wJRf3F5oE+1qbNGWDnHa
         d/ar7lcN49HmHqSqfvwNJICAk9tzE3ydkHr5qtFGBfPr7x/aS2Fr5BhMm0aV4fmv3rsn
         5vZbuRFjXd5n1devRCdsZ+TQxJnsTrzs1Bk8L6g4prgu4KDNC6KCHHaoE8iv5KUYl1LL
         GUdBpUT4F2ccQ1OKGOh9i5PGHk1YHDbiL2Mcgqv+n6aU1WNpMZrrGipvWIFnv1TRDzJs
         DlhIjCw3RqUS9TnZIeju4cqjPs7BEO065IgtVPOtjY1IZkxIdgMGIho2A73bSuXnscim
         70xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=kDtLPKrPjI56CJuHcJjM23USJ1+2bvaIBRREvkNJFPc=;
        b=NmU4eYlu9RFpz/OoJUGmoIrK4MDoFZsDTEHTZZqA4xGS9ZPeyqTD39A2BeQxaJRskb
         AgipR/jxGVLcVhBbTCVM/d4G8MVXj/UiMeG8+kxhIBB4YXj5R8xYPQ2A4cmxIuqPzrTk
         nqYxufEVBEnvPLeFZhCsuPvQNzcFA9Ax4G3ppYRXP+Q0bib/2iAVvxC4zn2OtQa4Ie+m
         QuGW/S2SFqL2M2/yPyKh0r5Z0pKBtLPIbzhl/HW/k7SOfEPTSjdAXreX/smP1Zzt2g1B
         +hYuwLxNEUZ7R9ziuVJZcnUr2fn6RO/GpZr4pa4S6BO0D1qceQQdijZj2VtzsnIHFkaD
         AoPQ==
X-Gm-Message-State: AOAM53318YgAYaGlknftuxscQMZDsBVdTffCzSzsaEOUHf4QbNggwIV/
	pbrES+F9UTn2zA+UJjukMz7EGsWxvNtjXg==
X-Google-Smtp-Source: ABdhPJyHxNrsQshYZkk4MqyVu7cHFSICltTX5vpjK+YQemScRc7xLwND8eqFM+w26R7qCOa6D2lZuA==
X-Received: by 2002:a05:6a00:88a:b029:261:6d37:dac6 with SMTP id q10-20020a056a00088ab02902616d37dac6mr25187271pfj.18.1621870878860;
        Mon, 24 May 2021 08:41:18 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::9c7a? ([2601:646:9200:a0f0::9c7a])
        by smtp.gmail.com with ESMTPSA id z23sm10163530pjh.44.2021.05.24.08.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 08:41:18 -0700 (PDT)
Subject: Re: [yocto] using grpc fails with linker error: file in wrong format
To: Juergen Landwehr <juergen.landwehr@gmx.de>, yocto@lists.yoctoproject.org
References: <TYgw.1621841848638083780.ftKc@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <d11af7fd-15d1-f0a6-e5c1-9545704f7f6c@gmail.com>
Date: Mon, 24 May 2021 08:41:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <TYgw.1621841848638083780.ftKc@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/24/21 12:37 AM, Juergen Landwehr wrote:
> Hi all,
> 
> I am developing a C++ library that is using gRPC.
> 
> To be able to use protoc for generating the stubs I added the following 
> dependencies:
> 
> DEPENDS += "\
>    grpc-native \
>    protobuf-native \
>    ...
>    "
> 
> 
> and to link my library with cross-compiled libraries:
> 
> RDEPENDS += "\
>     grpc \
>     protobuf \
>     ...
>     "
> 
> However, linking the library fails with the following error:
> 
> ld: 
> /data/jenkins/workspace/e0_mbient_yocto_mbient_manifests_master_downstream/build/tmp/work/cortexa72-mbient-linux/tokenmaster-client/git-r0/recipe-sysroot-native/usr/lib/libgrpc++.so.1.24.3: 
> error adding symbols: file in wrong format
> 
> I guess the problem is, that native grpc++ library is used from the 
> "recipe-sysroot-native" directory and thus not the cross-compiled version.
> 
> What am I doing wrong? How can I tell Yocto to use the cross-compiled 
> versions?

this is upto your component's build system, so perhaps you should look 
into that and ensure that its using right options. Second place to look 
is recipe for your package and ensure right vars and options are passed 
to build. you might want to look at sysdig package build system and see 
how they are doing it and perhaps mimic that for your package too.

> 
> Thanks,
> 
> Jürgen
> 
> 
> 
> 
