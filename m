Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04796C369A1
	for <webhook@archiver.kernel.org>; Wed,  9 Apr 2025 14:40:34 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.10264.1744209625378159147
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Apr 2025 07:40:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ic6mJTJY;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac2a9a74d9cso939620166b.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 07:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744209624; x=1744814424; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XwCBPUuUT6XbdbPKgRhy3BtnMdmqeibnIPcdWtGnR60=;
        b=Ic6mJTJYXy1nfs+4/n8afGnvgsHuUwJBgbXYS60KhdHvvrp2xtyY1I/x31Tr/W6r1m
         wg9ZE/jWvx50LqbVENhv2RrIEbqR8pIB7K/+0kmB52kVVsbRGpwCTtgVtiY3i/Ct3DRN
         SUoKlva2mwc4Iky79Emi2yTOMmUqbdZphFvkgP1viw3zfgiUJ3RGXokTRkYc8zfLN8ha
         DYg+C0XNf5rUU5GTw08QpKr4hLBe0rOyGNXl4To9WekJsL02a+KSUyou0e3ykQRqEAXl
         jGwWx1Oq2uOymp8yPfNugdYPW/Kme8imokXGPije7Af0ywJ7hqMHS2YLy+6hnGMVPHzJ
         M56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744209624; x=1744814424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XwCBPUuUT6XbdbPKgRhy3BtnMdmqeibnIPcdWtGnR60=;
        b=jX6HdzX4puBN+qb+UXqlPphSrDn1uR+GFHXSlcboJ81rGa64X45Gv12VCzg63oHoOP
         O7u5vBrSf0y2jTsJ1/t3nPaDi206UhZ0zXefOHfz27jQKAOWMDw+edHolBn4n3wJ2xxM
         1VtezP3ncAKG5jaS21uXSkf7i3+lXYNqCT1BBnqGmqFcR7nfvSavR/9hwV2GSfBM82A8
         E1alDbVJ8oqm/hBNBfTlD5q0w0EhnrHBIFPenOt4KQCeP0Yp4eKxZNq+ptK84taUcak4
         0C+e2UUuzeMHCGoJQ7l3lq5PBO7Z5OsM/Grcsq93Q8vUaTpXHpJUGAHxtBylKEz4ZNbu
         3slA==
X-Forwarded-Encrypted: i=1; AJvYcCUU3CfmdVhHHZW8XPiv6SjXvjEEkNiRT2hr9ILwx7N20M3W3/VdTle8OVkzwG5UWs2sr60gWg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yytk72T8pdffdIWRaPf//tuMXzKkSVxKQ7wXMDJbR5cZiyIvElw
	qG1i/cQ64xiIshFNlwAhMiQEn3TYK7NX+cl3tcBtHabArxqiG5iz
X-Gm-Gg: ASbGnctgBGea+o6dJ0yUtLHKJd/S6UrLc4HXCxZEq02464folyqb0UDhc7ogReqYfBL
	fpYX9T7MAYNQg6qVsbUXYamZqt6sOLzQsaZn32fzShYbWPJ8xLs0kcFCR5JuaBF6Jp6XZR2Lj/6
	qA1fCsiHHnxQcU4/bk8sSPoF6QAvxqjArQogKw/Ws1bjYvw3YK7Fzv5icZUwn61ZcuMG6yDY3YX
	hNV0J79nCADV5plIUN9bYaoFR35mBg51WiWqio7pEna6/SdbLA2WoiaKvJo+iHlrA9xvq3qCnKV
	e0FfSnHwklVdQJ7zBPOkqPUlQKFg2Ofza1k2ELlKkOjggLEQ
X-Google-Smtp-Source: AGHT+IGJDq8UV0SlKZiWOr3TdhHBoKd9qQ88m2Qd2m/J8E2+HqFl+WbQoh5JEU+atW98UhCd62AapA==
X-Received: by 2002:a17:907:971e:b0:ac7:f3a6:5af0 with SMTP id a640c23a62f3a-aca9b64d285mr379040766b.10.1744209623313;
        Wed, 09 Apr 2025 07:40:23 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc14csm104782666b.134.2025.04.09.07.40.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 07:40:22 -0700 (PDT)
Message-ID: <7318f03d-649d-41d7-92d9-1e6596bb62b9@gmail.com>
Date: Wed, 9 Apr 2025 16:40:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: nguyenthaithuanalg@gmail.com, yocto@lists.yoctoproject.org
References: <7465124b-5ddc-47af-9f77-755ef83453a7@gmail.com>
 <13400.1744206734783532039@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <13400.1744206734783532039@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 14:40:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65132


On 4/9/25 15:52, Thuận Nguyễn-Thái via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
> It is wonderful, I see the output:
> "poky/build/tmp/deploy/images/qemux86-64/core-image-sato-qemux86-64-20250409111400.rootfs.ext4"
> in my PC.
> With commands below:
> git checkout dunfell
> source oe-init-build-env
> bitbake core-image-sato --runall=fetch ## get source
> bitbake core-image-sato ## Build source
> Now, I have a library, I want to integrate into yocto, and I hope the
> community take a  look. On LinkedIn, Jan Flik - a director from Intel,
> told me refer to yocto/openBMC, and could contribute to the community.
> Can you give me some hints? I really appreciate if you do that.

To add your own software, you need to create a recipe, or a .bb file,
which describes how to compile and install your application.

You can find info on this topic here:
https://docs.yoctoproject.org/dev-manual/new-recipe.html
Especially check sections 5.1-5.3, which describe how to create new
recipes - the page is long, but these section are short, and easy to
read, it should give a good start.

Once you have the recipe, you need to add it to your image. It is also
fairly simple, described here:
https://docs.yoctoproject.org/dev-manual/customizing-images.html (this
page is pretty short).


There is one last thing I would like to note: I see from your commands
that you are using "dunfell" version.
If you can, you should use a different version - for example "scarthgap"
or "walnascar". Dunfell is old and unmaintained. It is not for new
projects - it is getting very outdated.


> My libary is "simplelog-topic":
> https://github.com/thuanalg/simplelog-topic
> Regards,
> Thuan Nguyen Thai

