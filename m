Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFFACC77B7F
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 07:01:20 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.2542.1750921274491111005
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 00:01:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cip2yUmK;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae0d11bb2a7so86076966b.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 00:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750921273; x=1751526073; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7UpWIoYrbs57hM+Z4cEL6+1nsis/iQMPzd2pctVkyto=;
        b=cip2yUmKUt1o5580r2JXaGUSP6J0O5IkfrkWpoqF1BtO+VewUCY+VQLyijoMcDwLgT
         UzKunnKGltd+GwNDMAH2fL8O8TDxdL9wTmNJOYCrsUQHfr+ZBgZrgoi5S4G/Vij2jxz1
         3uCUEGk/QSJDVQ04ECbGowzSenBXjmu0gIxU+II1uVp1/Yppl/ON/hDo5LH1JJFg9Bgc
         XAyJWCA5OAsng99t3gjZHfF8VAGZ/CyQY6VE8bNa6FHRPsD56k8HxFd2bz7nkEWcqz3e
         rhXn/PK+sR7J8cyd9vX1KD6twZM5jlXULysmqsmkpFiFuewIa54jSY0xkqNrljLWN+dI
         hjQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750921273; x=1751526073;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7UpWIoYrbs57hM+Z4cEL6+1nsis/iQMPzd2pctVkyto=;
        b=ddNaoZht29cFYMt85KIEj5LEgT/Ng8t7y1dKkAdLw3pFPMBbS3KvBxuqohtJftFuMh
         XE6E6Bz4QuSgB0WHOpE8wdeF87so1Ck/w7NHo9DW1GE5zz4ii6JkXYHBz9PTo9aDrAoz
         1QxKTXrnyWuumwxCrGCtp7MufEIIedYWI828yCDNZVw4vXeYF0v/D7pmO83Y4HG416fo
         W3/vdGyfF4y8ZC7GE+bzOU5UZIYh0LkHSzgyGYW1ZqJhyZkYeDNhOOxvz/fz/L0GpwIA
         zEIBUpzxFOvGKhbMrHGOeWut6jkWXn4Qv1w4Y4upA1F9LEfC11GWEKVQ2DF71kbFSMyL
         Y4RQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyoQ0KNyal33kDEFYEJboC0vo0F8fEPggu22ez2EffUz5Iuot2oF0q8E3F2GvPNVNlhzFMww==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YypHxN9kc1rL5c2Ak9/LdlqQn5wMTvhTGsL9lLnQ2mez1c31Xkz
	JDlvWVbr3f8sTHcQCeXLWIK4Urwe36hSAYeiFij8ZH7aDM/cSG+FG5M7
X-Gm-Gg: ASbGnctQP7JLNQs6tv227n9cS6dxJo/UAhWQHraIsPEjQ3+Mwg53b+h14vPK/aijWcN
	/+L9FKQkpYLxqgfjyL6Xmkgc/LHhgDC5hniwBbXy30GbQuimsmYdFhYmBAGf6SYL6sdrNEbNOJP
	FFBFk/rq0tV+j6rbrlsvvG8HUCgdfgD0SUx7n99q/z41Dr15Vv5yf8a+fXMilGjbWVOBo1SeQBc
	5wiJSJ4ZX8Zpxv1ibmqJho0gfuvh+JlHYfN8lw4Vmr0MvzBZtVzkft8N8aG1Ve7lJhBfa6Mueqb
	KSE8eafqqAs0YuM8vQ593RMYxe6Qv5H2ZwHIRvkTjLIjocejqKhC5i+0j/HDNVzkohY4IQ==
X-Google-Smtp-Source: AGHT+IHj7EbZuup13IyBWNudqoJGM44yTUKX+m/faYxPUc7bu+cg4E8UuSuZnF9tNJCKCaSPkhragA==
X-Received: by 2002:a17:906:4fc5:b0:ad8:85df:865b with SMTP id a640c23a62f3a-ae0bee4f81bmr565669266b.33.1750921272441;
        Thu, 26 Jun 2025 00:01:12 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0541b39e0sm1169880866b.110.2025.06.26.00.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 00:01:11 -0700 (PDT)
Message-ID: <a21ba424-4cb6-4284-a022-bc43b591bbbf@gmail.com>
Date: Thu, 26 Jun 2025 09:01:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Virtual Keyboard on Wayland
From: Gyorgy Sarvari <skandigraun@gmail.com>
To: matteo.orlandini@tastitalia.com, yocto@lists.yoctoproject.org
References: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
 <9005.1750863783770459333@lists.yoctoproject.org>
 <11968760-1c60-42a6-88f9-5dc7c1f219b9@gmail.com>
Content-Language: en-US
In-Reply-To: <11968760-1c60-42a6-88f9-5dc7c1f219b9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 07:01:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65548

On 6/25/25 19:18, Gyorgy Sarvari wrote:
> On 6/25/25 17:03, matteo.orlandini via Lists.Yoctoproject.Org wrote:
>> On Mon, Jun 23, 2025 at 02:48 PM, Gyorgy Sarvari wrote:
>>
>>     It seems that gnome-desktop's  x11 dependency was a relic of the past,
>>     and has been removed[1] some time ago. Maybe you could try to backport
>>     it in your layer (as local.conf or bbappend) and see what happens? (Or
>>     maybe even send a patch to the mailing list, if it works)
>>
>>     [1]:
>>     https://git.openembedded.org/meta-openembedded/commit/?id=8106d4192567233f0653242326ac3041a1233b69
>>
>> I added this .bbappend:
>> REQUIRED_DISTRO_FEATURES:remove = "x11"
>>  
>> DEPENDS:remove = "xext xrandr"
>>  
>> but now I got this error:
>> process didn't exit successfully: `rustc - --crate-name ___
>> --print=file-names -L
>> /newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0/recipe-sysroot/usr/lib/rustlib/aarch64-poky-linux-gnu/lib
>> --remap-path-prefix=/newbuild/tmp/work/armv8a-poky-linux/squeekboard/1.19.0=/usr/src/debug/squeekboard/1.19.0
>> --target aarch64-poky-linux --crate-type bin --crate-type rlib
>> --crate-type dylib --crate-type cdylib --crate-type staticlib
>> --crate-type proc-macro --print=sysroot --print=split-debuginfo
>> --print=crate-name --print=cfg` (exit status: 1)
>>   --- stderr
>>   error: Error loading target specification: Could not find
>> specification for target "aarch64-poky-linux". Run `rustc --print
>> target-list` for a list of built-in targets
> Which rust version, and from which layer are you using? I remember that
> meta-rust uses slightly different target names than oe-core/lts-mixins,
> which can cause some head scratching...

I think I see the problem. The scarthgap version of the recipe sets the
target to HOST_SYS, instead of RUST_HOST_SYS (which issue is very
similar to the meta-rust one)

Try adding this to a bbappend for squeekboard:

EXTRA_OEMESON = "\
   -Dcargo-flags=[\'--target\',\'${RUST_HOST_SYS}\',\'-v\'] \
   -Dtests=false \
   -Ddepdatadir=${datadir} \
   -Donline=false \
   -Dnewer=true \
"



