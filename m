Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.1178.1581721659470564070
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 15:07:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qe/QAnMV;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id w21so5664428pgl.9
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 15:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=85E4/WcRx1ZnqVLR10N2SChDd1xNwowVxJaVno9LIVU=;
        b=qe/QAnMVu4dA74759TvtFHdFfVSqIntVUGhdgCU1Du9MvDzaqAhQwpy2gtELJ8HCK6
         Pln4p3G2MeiS043jVqLdj/HzjODr5/n3soUw8Z7x/Kc+WIaaRTdIcyBP1XP0XJyK+z03
         NUsAZPOh0R18aXbCfF/R3cSgJNmAZPgVLknmmkWFGttK21QKZWo9dzU2WIEZ9HKxiNet
         XTeoR+ZgN5OqSz4siAKz0ZlPpgZXUF/7pHyQUcArmJEYic0cV52vDd6/8LkJm9geOThc
         8DfDfNWNg3nyWQQC5DnEgRdLMT102EInyISqRW6JWEPF9o3DXTVPadc7QlUpvOf9q+xz
         A8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=85E4/WcRx1ZnqVLR10N2SChDd1xNwowVxJaVno9LIVU=;
        b=OQUiudecVHuqJGJ/Wzdua5PY57XfKu4+1WuVCJpIUsyRVPAK/eeMP2mtQ9o+1OCh4N
         37wkTPDkFFzo4znHqWmxBOEOuCSCzg5djtvRGI0UWwfBncYoEcq/+3wSDauEkChBoZll
         HdhGLcLF7Lj+BOHVhO6VNSH9oJwj+2uVbAOvifI194vHm94CXn0IdDrcytcuUSLhgqqf
         eD2Hcgd80/ED4TndP8rwrD7gvNofD1gWOGYU+oB9F1SEl0Bze4Y2et79cxemRsZno3cS
         CC6elasd2lBHkmycUFORFlhq/SfsRKpGy7HCnWoILhiFnNKcJZ9NXN1A5gCNZHyLNjgL
         niJw==
X-Gm-Message-State: APjAAAVD76sVQsLEmEydByNACI5C/7jwsNRROygbp0o1vfCAJ33hrT37
	7/2+kmgt6Vg3B/0ZugJIiPZoduSxZvY=
X-Google-Smtp-Source: APXvYqxFCV2RjEn0+sqLTHuOayKqpiyXu990kcjYCg5E2oNj3Oue3Xm8qfHZ7MpvH/wr1GP9Q4yswg==
X-Received: by 2002:aa7:8e85:: with SMTP id a5mr5774434pfr.24.1581721658448;
        Fri, 14 Feb 2020 15:07:38 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:24fa:ebe1:e23c:267a? ([2601:646:9200:4e0:24fa:ebe1:e23c:267a])
        by smtp.gmail.com with ESMTPSA id d4sm7498863pjz.12.2020.02.14.15.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 15:07:38 -0800 (PST)
Subject: Re: [yocto] #sdk #toolchain #yocto
To: amern2k16@att.net, yocto@lists.yoctoproject.org
References: <Igxp.1581697611359538979.oZvW@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <97592192-9079-304f-d0b7-a600711ddb80@gmail.com>
Date: Fri, 14 Feb 2020 15:07:37 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <Igxp.1581697611359538979.oZvW@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/14/20 8:26 AM, amern2k16@att.net wrote:
> In Yocto Project Application Development and the Extensible Software 
> Development Kit(eSDK) Manual, Appendix A.2.  6. Building an SDK 
> Installer says the following:
> "To build the SDK installer for a standard SDK and populate the SDK image"
> what do they mean by "populate the SDK image" ?
> After running 'bitbake image -c populate_sdk' command, sdk folder was 
> created in my build/tmp/deploy/sdk.  In this folder there is .sh 
> script.  This script
> is SDK  installer but what do they mean by 'and populate the SDK 
> image'?  What SDK image?
> 

sdk installer - The container ( .sh file)
SDK image - Content inside the installer ( SDK files which you see upon 
SDK installation)

> 
> 

