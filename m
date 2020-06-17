Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1983.1592353696217040934
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 17:28:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iV9uv+vg;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2C71E01D10; Tue, 16 Jun 2020 17:28:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,URIBL_RED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (robert.berger.yocto.user[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E5CBE01CCB
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 17:28:13 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id q25so204465wmj.0
        for <yocto@yoctoproject.org>; Tue, 16 Jun 2020 17:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YlgAvqKw8BOPJKiedqhjI8MM68joGCuJXa37FjfTTak=;
        b=iV9uv+vgeNMwXdHOZ2ix1PO9UPPbiOBdZmBbDTZu4q5Gvj7aGsi3b6BRFwtFapIALT
         wCU8u9dnPhdzjUdiHW0hEqY8c4vW3SPJn7+pPK50E+hPmoSbHRb8l0QjR2w601JxaGOH
         7Ln0QHVZFYx3+mHm8U3b/RJmxTcYZKPQCigEwKZs8UuvljBTY7zBp6zrF4lluiN2lRSs
         7/YuwxmOd5mtGIBIMiid2tNgpvrHLw6uWx/MzZ1zAYGqgkYHI2HpmFeiavyG5WEEk/ix
         x9h33FcAIFZLONnFx3W/VdQAQKjA0hc2RlELVTn5y0+B4l3usJDhx0uvtMRC+2xhAZ9M
         HRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YlgAvqKw8BOPJKiedqhjI8MM68joGCuJXa37FjfTTak=;
        b=bgXFHfYcn1+oA22NtDlGh/0YhY3qFpEqMyG/o0aBOEp4N+lM1sg5UllO7kwYo3c3M5
         gkMn2fbP83VnmEz1rASWO3vTvvfLbDak8bw+YKl9a1JIekJ6IDvoj14VLDckMA2JuHDt
         wckd+NrZV73Rx7tsQxwe7o6QFFvOWhiesTe90CU+2k3o+S0Y/rn+qbxx3oAw6N43OOTd
         wEkDdrNE69x7RFpsvOmBB4j8BhThJoIB5on3B8s9h63OBapEjAEu/Ckf9Yies9WuV/RF
         M6qrSfEg+iy3i6qDbEiE9vA9pPTKQo7y5NNe3gAEuSqR4FkA9NBmY2HeZCW5qbLVj+0d
         pATA==
X-Gm-Message-State: AOAM532W4cvHSvphVIFn5tp+2hFNPDAhzxZgAwB8bPFE/CUINoJ+rFMK
	oe6sVvBQy6oj0ThLA7L6DA0=
X-Google-Smtp-Source: ABdhPJz90M7SLcKT2q0RKUxAWnCAeUnpyPhmLEWWHL+k9ZGLM8w+JeHBYOUoLyh1dPWX4Ot21/+gXA==
X-Received: by 2002:a05:600c:2313:: with SMTP id 19mr5919499wmo.51.1592353693070;
        Tue, 16 Jun 2020 17:28:13 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-130-251.home.otenet.gr. [2.86.130.251])
        by smtp.gmail.com with ESMTPSA id k21sm32461052wrd.24.2020.06.16.17.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 17:28:12 -0700 (PDT)
Subject: Re: [yocto] Go toolchain in SDK
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Robert Berger <robert.berger@reliableembeddedsystems.com>
References: <161921A2ACDFB2CB.10725@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <ae28480a-0ccb-c56a-88e4-505617a869a0@gmail.com>
Date: Wed, 17 Jun 2020 03:28:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <161921A2ACDFB2CB.10725@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 16/06/2020 23:55, Robert Berger via lists.yoctoproject.org wrote:
> 
> bitbake core-image-sato-sdk -c populate_sdk
> 
> and currently also for:
> bitbake core-image-sato-sdk -c populate_sdk_ext
> 

... and no arm-resy-linux-gnueabi-go on the target, only on the host SDK

> I don't think that's the way it was intended.
> 
> Can you please enlighten me?
> 
> Regards,
> 
> Robert
> 
> 
> 

