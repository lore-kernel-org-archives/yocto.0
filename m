Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.12043.1576683506870915319
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 07:38:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dKB6wAla;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A716CE00DEE; Wed, 18 Dec 2019 07:38:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5635AE00D4F
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 07:38:26 -0800 (PST)
Received: by mail-pl1-f170.google.com with SMTP id z3so1135277plk.6
        for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 07:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=deDacwM7PqdETdBvIyZgDBj5lokc5Ag7XiJ8rSasV7E=;
        b=dKB6wAlaJRc19QC6gT4zRRnpi+cO/SRyfZYDXq6jp+9uDzSzlcRGO5R6McSgl7rz+j
         Vqs3s5QVrszs6Op4nnOR7mRzdwP88fRl1glGLo5ShT4PqZ03J5hUoz1uyH2pdpGRrpdu
         cG0g0jaIA7lAHsDbZajntI2YQ/Ng469KjzAFEGVfUR58S9o9DiXmSMe5cSkAt5i9C5d9
         WDzLtkeUSsQaGS9MDXQBzSltv1EEvEcHPGgftKcmK+y/jAKHZa8ypW1lYZslljNtcd5/
         53c1P2ii3R6JBJj4Bi4FpR5Ov7ld5cqLxK77YfBDsXlvEa2CHnnWwoItHIRc0AmfPEGT
         8K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=deDacwM7PqdETdBvIyZgDBj5lokc5Ag7XiJ8rSasV7E=;
        b=ENQnE8XgpN/8bSWyBLFbJdj7aCzqpuUZrJdKP9QafKLTYylMzQveKbPYlswWz5AnNZ
         xHQmCRkZgWS0ndPlgQ6I0+em1bMhIfR6dIrEzPwc1xejMn+oFRuFDBHgey+K+eIGUv4J
         33skGiIFRaa6p570+cY09sFVLYhNnPQVDxMOLwWn3iDRsGRP8SgxUzDlEMHUVChxfEpF
         k+TM6WqoIuAXeKgNs6YvHWNmU6mboKB9tYnIi2Ck/pmM1j0VXMImb9Qj1v/au83nqMMb
         OTDa0Nef60RnK11qhVaIS1mrmS8R3WYFaIWMMFMPdW/J/DkEoMDn1em5/EEa/EzH/Nj0
         eeOA==
X-Gm-Message-State: APjAAAXIdFou3tYVUkJ9DPwlbHY+JsDX2NaIik5iw8PxBO3K9smSxOjh
	0EnvjAJa0myUiD7xqHU2BrI=
X-Google-Smtp-Source: APXvYqzCytJt9ovzUpefuZypIADuZVc4Pi2nfknyLqTJeNlqJ9dhT9y7JGCAW34JT5RJ+vr9Zc+hYA==
X-Received: by 2002:a17:90a:fb4f:: with SMTP id iq15mr3596707pjb.86.1576683505838;
        Wed, 18 Dec 2019 07:38:25 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:9da4:8d1c:e983:1af6? ([2601:202:4180:a5c0:9da4:8d1c:e983:1af6])
        by smtp.gmail.com with ESMTPSA id 133sm3758467pfy.14.2019.12.18.07.38.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 07:38:25 -0800 (PST)
Subject: Re: QA Cycle report for build (yocto-3.1_M1.rc8)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Yocto TSC <tsc@lists.yoctoproject.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
 <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <758d70c1-e964-483a-a0ee-69763fea3d9c@gmail.com>
Date: Wed, 18 Dec 2019 07:38:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6ef53298d27a12c5dc99cc985ea0fae147438f63.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 12/18/19 2:46 AM, Richard Purdie wrote:
> On Wed, 2019-12-18 at 03:32 +0000, Jain, Sangeeta wrote:
>> Hello all,
>>
>> This is the full report for 3.1_M1.rc8:  
>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>>
>>
>> ======= Summary ========
>> No high milestone defects.  
>> No new defects are found in this cycle.
>> glib and valgrind ptest failed (BUG id:13713). 

The Valgrind is a known issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666

>>
>> ======= Bugs ========
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13713
> Thanks Sangeeta.
>
> Adding TSC to CC.
>
> We have the bugs above but they're minor ptest issues (small
> regressions).
>
> We have performance problems in certain world build cases but we need
> to work through those issues in master.
>
> We also have reproducibile build issues but those are in theory fixed
> in master.
>
> I think we should ship this as I can't see any huge improvements from
> any further respins, it just collides with vactions. We should move
> forward to M2 after the holidays.

I would make these blockers for M2/M3 and approve shipping M1

- armin
>
> Cheers,
>
> Richard
>
>

