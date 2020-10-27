Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web09.864.1603841266165190592
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 16:27:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BynEeFXr;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id x10so1559311plm.13
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 16:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GABnQUL+g5KLKcf1hx2kz59I3IIWtDIp3ZbL0HOgirM=;
        b=BynEeFXr//Xm0Pqq6kGp6S20o7dH5qB40fss5MdaNe0hNIpED7UhU0Y3D6Rxh7045m
         3P+SkYVcpwt6AMgo3UXW6Hx3EYmuv/VJPxQfUVQl/aZ4cTKXysWjA/CKRrLn9xqNbGBc
         EWfLz99Vq1wICfWqE5r3Y3YFtBIysfQGf07O5M/poLykArj2nNtbCJEgi+qGUofixuLr
         04EZyRc+IFYP0bakhiFYSeFGbFlIZSBlSx4MuqNCIokAHGGVko4DfI+imalbcveq8DTM
         TjX3UIwCxXoT2GzFdkbrL5ij2seL8jpNzSPt7QCHn1M6s3nb4AU92hJVCImB4TZ4V1Uu
         5V3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=GABnQUL+g5KLKcf1hx2kz59I3IIWtDIp3ZbL0HOgirM=;
        b=mEqEBWWUHaB2OOWRf1PmMhTiCxWI1GipxR4FB+jRwX3TRhsxdgpP28H3VhS7sVR+hc
         aGun0sE1jNjUHcf8KERuvui5OUjZmUsh9DWIU3gKdm03jU8sgOOL+C2sTg76sN1Sc0AB
         vDV2DXGWxUtPxpaf9QKlrrlWS2m5OAWg57Pdba7vx1cuzY2YC3TwSqFWoVOIrntaT0QN
         u55nQBCGCOnbDjEx3IUMMSlv4b1mQzEi9OqsBJdkRCFfLOpJb5LQjdXSKmkrq+dHE4xn
         6B18DmFVVpPyNVjZNVsGZibsRS8bxFw6vVGxSsM6zt4ihgeZX/V1BkelPi0axmJ4+86h
         rOhQ==
X-Gm-Message-State: AOAM530SDn64i+LAG/hPTMGUXX3/QYHfTCYyCQV5XAqAIIOFkcu88Pt5
	lSOxwsrBh22/AFhNHw8Y2J+wtBGmudFnaQ==
X-Google-Smtp-Source: ABdhPJxibhjdaRvSbRG1XlLrcuUOVytS1aTH1tKD4FHTmlnwT+pwq5tP92GIIleyNuVnCdU1miqrEQ==
X-Received: by 2002:a17:90a:6a4b:: with SMTP id d11mr4224339pjm.48.1603841265286;
        Tue, 27 Oct 2020 16:27:45 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:34ed:fa30:8661:dbd2? ([2601:646:9200:4e0:34ed:fa30:8661:dbd2])
        by smtp.gmail.com with ESMTPSA id b1sm2922590pjd.11.2020.10.27.16.27.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 16:27:44 -0700 (PDT)
Subject: Re: [yocto] grubenv not being generated
To: Howard <howard.egan@avid.com>, yocto@lists.yoctoproject.org
References: <iBrw.1603838024536007513.6YEJ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <cead7465-bedd-18cc-6fab-843e678a1171@gmail.com>
Date: Tue, 27 Oct 2020 16:27:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <iBrw.1603838024536007513.6YEJ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 10/27/20 3:33 PM, Howard wrote:
> Hi:
> 
> I am using grub as my bootloader, and enabling it via
> 
> EFI_PROVIDER = "grub-efi"
> 
> That all seems to work fine, except that grubenv is not being created 
> anywhere.  I can run grub-editenv to create one on the target, but I 
> need it built in.
> 
> Most of what I'm reading implies that it should be getting built.  I 
> will say this, however, and that is that grub.cfg does not seem to 
> reference the grubenv file which kind of makes sense since grubenv is 
> not present.
> 
> I did find this thread, but it didn't really have any answers.
> https://lists.yoctoproject.org/g/yocto/message/40612?p=,,,20,0,0,0::Created,,grubenv,20,2,0,61333830 
> <https://lists.yoctoproject.org/g/yocto/message/40612?p=,,,20,0,0,0::Created,,grubenv,20,2,0,61333830>
> 
> Wondering what I am missing.

perhaps a post edit function and add grub-native to DEPENDS so you can 
find needed binaries during cross build.

> 
> Many Thanks
> Howard
> 
> 
> 
> 
