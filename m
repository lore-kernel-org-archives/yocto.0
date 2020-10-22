Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web08.11717.1603377982305551594
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 07:46:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JvWD+B5d;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: mr.nuke.me@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id h62so1691028oth.9
        for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2020 07:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=A1cKse2sJzv0SGRzAIFj/QFgwsdV/cFHTsKx7+UlQvQ=;
        b=JvWD+B5dHrshKjjCHGhA63RwJxOwUWMbwBpDB7MnNiv3mc0uzRZ6pRamBTTanWediT
         uFRC0k53lLwvhoXK6rjeTkc7b8LuHrGRqyocVjj+idIx6yaTW8lJrEKmF/CMuX+HlxYs
         y8BjfudaWLSIjJduTdxEXODYh4W9/GNlXlwXxzk6AZJskuU8RJJ6kegrPwcIx9Y3edMD
         5JHrmMzH5gbyxRDThKcuBu/Kgnk7mFAl9HfwGShvN1kHnEHoV4A1nkbfT//6D3GPyYLU
         ry9+nq4uKdpIg4dPQAHFLSejD3RSFWhU4FkV016A/QLlPOwdgLVDHoxXJ9cs2huvUQAB
         UwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A1cKse2sJzv0SGRzAIFj/QFgwsdV/cFHTsKx7+UlQvQ=;
        b=kpu4XnxlClz93T66veSSPR83xSkWuxyEh4Z5uYSCtZ5ddNjS2Mtbxfi+L1koJhSPpS
         RM54MBPE+KtBsDfFnh+nbuE0tXYQkVRrj/FGXVuD4gDo8TmF6BpCJrUOK1ik/pInXaWH
         ZO9mKwjO++UTJrjaksTzwX0GpyPB1GTYN1LyU/Odv1q9m+fBRaB81/CwtRBIWAyEkRUW
         qTcoIhUryVaA3rMu7prTrvEpk/s31/KkGSjlqy3SIsDR7zE0UXTu8ceY6TfGEQlnq3Eq
         kZ/YDN+HjXwKKk1gfOyGImiOTEAdybogmygjkHlgPNF6K/yXHdIvSkQm7uDOSshlmshG
         mSKQ==
X-Gm-Message-State: AOAM531MHypiE8jAtl3NfMmv5IO/+Ca2XxHNvcrX8HwVeXfd8uYNGtcP
	HWCTeqW745veev0itsLhVgI3ZY+znXPjcA==
X-Google-Smtp-Source: ABdhPJxWE8s+vfOpeVTh9k6IXrxqkg4CLXaWqVsNXU0vGb+CnZbXtvQlrT/H0Rk3Zkpc/86iT68Ceg==
X-Received: by 2002:a05:6830:113:: with SMTP id i19mr1962362otp.263.1603377981338;
        Thu, 22 Oct 2020 07:46:21 -0700 (PDT)
Return-Path: <mr.nuke.me@gmail.com>
Received: from nuclearis2-1.gtech (c-98-195-139-126.hsd1.tx.comcast.net. [98.195.139.126])
        by smtp.gmail.com with ESMTPSA id j21sm450708otq.18.2020.10.22.07.46.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 07:46:20 -0700 (PDT)
Subject: Re: [yocto] How to assemble FIT images with linux and OPTEE?
To: yocto@lists.yoctoproject.org
References: <163E31BAB70D36EC.4805@lists.yoctoproject.org>
From: "Alex G." <mr.nuke.me@gmail.com>
Message-ID: <872912d8-26b7-5791-5111-c079e19d2a6a@gmail.com>
Date: Thu, 22 Oct 2020 09:46:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <163E31BAB70D36EC.4805@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/15/20 9:46 AM, Alex G. via lists.yoctoproject.org wrote:
> Hi,
> 
> I'm trying to write a recipe for a secure boot flow. It would look 
> something like this:
> 
>      images {
>          optee@1 { "path/to/tee.bin" }
>          linux@2 { "path/to/zImage" }
>          fdt@board { ... }
>      }
>      configurations {
>          secure {
>              kernel = "optee@1";
>              loadables = "linux@2";
>              fdt = "fdt@board";
>          }
>      }

Hi,

A quick follow-up. Was wondering if anyone has had to bundle OPTEE and 
linux before.

Alex

> 
> I've tried to "inherit kernel-fitimage", but soon learned of a couple of 
> limitations:
>      * images: No way to add an optee binary
>      * configurations: No way to add a "loadables"
> 
> Secondly, since this approach would use files from several packages, I 
> think it would be better to have the recipe separate from the kernel 
> build. Bot how would I use files from another recipe? All I could figure 
> out was to first put them in ${DEPLOY_DIR_IMAGE}.
> 
> What would be the "correct" way to write such a recipe?
> 
> Alex
> 
> 
> 
> 
