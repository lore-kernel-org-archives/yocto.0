Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 895BBCAC58F
	for <webhook@archiver.kernel.org>; Sun, 14 Sep 2025 09:07:07 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web10.5814.1757840817841319830
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Sep 2025 02:06:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GgHTyEH2;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-628f29d68ecso6490728a12.3
        for <yocto@lists.yoctoproject.org>; Sun, 14 Sep 2025 02:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757840816; x=1758445616; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3qX1wSTFUmgDpTdToRgq+8uQexxs2WXqHORdfVLbkaw=;
        b=GgHTyEH2Dr/JARQcXMTlwbpfrH6MO3maM01Xu+PpjWtcswhixL5fZJLmwms0Hm6snI
         rjHINWeaANIZfwmyuRgkyZ4NohAXEDTAmARy8F7UkeuffkmpZ1Urzqp76hWiE82WERGs
         31X9Ah9VLSoWSNcgkSYNgP7ACVyZbmLso/Uc/XtT3KQsCUQDB/5lnrejpVktblAK27Jw
         7wIKEQSm5/pQ8WOTx18iej7znNid0AYovPAV4CEC171WllMXpee9xtBvDOE0LRkgOWiF
         gdcz+SwB1EQmUoeB3YhvNekWLtCCdhwMwSR6vkZDXGjtsmEVAz0k1gkFHjH5sEoA9PNA
         gSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757840816; x=1758445616;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qX1wSTFUmgDpTdToRgq+8uQexxs2WXqHORdfVLbkaw=;
        b=J+RuHettz4Qn7QEQ1Hm8Mlea0VPpurFpYQnnzQ8roCWrYlCousp7F+4WH+vLfGx2rr
         Pb5liqqUqnVT32aM1iTEN3h6wMmPlAL93Fwj8MIyHzGVqfVVfYDTBPcpBO6Pi3wSMG4u
         mhu2vHbLVf+BhzriOCdbbSvWCeWU4um7eHYEu1RIWJ5WTpoR1cbXFJQxAfLOsJMB2Mly
         yEUeOMD2qASNib470IQ04SyMf53vMguhJ5THnf8S1VQt+blCIhQVJ6LkuL+OJ4DaKp9t
         qYOtSI9w5DVTPjFcwY9FY/5aUbuKkrSBfw5sejxXPMt4BH/i5ogj9Kx3ADEYQ0SR+RVy
         5Z7A==
X-Forwarded-Encrypted: i=1; AJvYcCXS4Pv3n6qesOB6OMt1JKDcY/9SgXoR+FE8/iNEmRS8gE+PiB/j0w7e8E/LwwxLwRH+1UeTZA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwSV2nyxG82yScB7gr6ekIHJEhGqcTpVyUwJngo2hnekEiMjQm2
	bsKgbt6IXPqyWe77v/k8Qhpkbu1najnYnFXeRMZbXC3W1oxGG2RE3VsS
X-Gm-Gg: ASbGncucAsHf3WlLB1QgECfuFIdWMh5I4qxqpzeazY1HtEjft4HsIEEhla1FS4K5kXp
	AbSkD6Z5fdasq6OIeqjGeId3R/6WpBSsPpxCJBnz2KPyDGNyjhZ8T8E87a+1+d1uuhG8yk63XAb
	8PgYvOiVAHOE56IOt2rS6iX2hcpuECrY6C6IfTjUOH7aLuOIpM7D5vIJxws4jqKJn8QAkGSe32q
	xpg3qpG6mepjaK/x47GHqLFmid5kfMSUn6gsPH29dEh8/Nrz5npl1/tDIlXStsPZ7bGfQh/XxDm
	kTPEzXshWnJChjLK7F52XEEBq/Z/rArp5FcBHvF2/NaEU3xPxnNmf5tr16RjXsqPntBp3Mj4/mN
	h/bh2NiSSF2nYbJWeiNncNKgB/GMQbMri2WxqYnSLCQ==
X-Google-Smtp-Source: AGHT+IHmC+ZTRyE7E6goKyK8DlcylOpJACKTrDO6tvYtILn+nbzjDdrTDecm6+eIu2zyuA60ilL46w==
X-Received: by 2002:a05:6402:2790:b0:62f:345e:45df with SMTP id 4fb4d7f45d1cf-62f345e48famr520775a12.1.1757840816016;
        Sun, 14 Sep 2025 02:06:56 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ec3400cd4sm7036189a12.41.2025.09.14.02.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 02:06:54 -0700 (PDT)
Message-ID: <0f48c182-17a5-4bcc-ae5d-409ac215de8b@gmail.com>
Date: Sun, 14 Sep 2025 11:06:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] do_package error after building meta-tensorflow and
 libcamera-apps does not detect tensorflow-lite
To: ashish.shrikhande@gmail.com, yocto@lists.yoctoproject.org
References: <0990cea5-1a65-4c61-a627-cd1b7f9875b9@gmail.com>
 <28401.1757817359547257347@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <28401.1757817359547257347@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Sep 2025 09:07:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65836

On 9/14/25 04:35, ashish shrikhande6 via Lists.Yoctoproject.Org wrote:
> I tried bitbake -c cleanall but the issue remains the same.

Random thought: I wonder if this could be because of some pip config
seeping into the build environment. After some tests it looks that pip
tries read some config files outside of the build env.

Not sure what option can affect this (if any at all), but you could try
going through the config file list[1] used by pip. If you find any of
these files on your machine, try to rename it temporarily to prevent it
from loading, then try to clean and rebuild tflite. (After the test
rename it back) If one of these configs is the reason for the failure,
than it should be mitigated from the layer side most likely.

[1]: https://pip.pypa.io/en/stable/topics/configuration/ - the global
and user config files are relevant. Site config not that much.


>  
> Regarding libcamera-apps, I will apply patches and recommended changes
> and let you know.
>  Thanks


