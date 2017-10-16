Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE60E00D0D; Mon, 16 Oct 2017 02:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F537E00D01
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 02:10:23 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id m72so3971806wmc.0
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 02:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=v8GDp0PrrvxYHKKpXhs0nwci89epWypStufP0wQZPCI=;
	b=rxm1zViqNxy5NqqrD/OxIB+LCcL4+OGNIaIhp3n1T7zVWxBO6aT8sea5T9Z0lhnqCf
	Q31m6NFqNN0oV6jLS2oCzuwAqD/v2PNYTNjaQJFFcr++qlTHQBlFbdpWzGkJwLeZgvj3
	SI4eahklT91J/WLX77AWga/3FooUDffShKR/F7TjGPOddUj7XjC4HdXIkommOX0YST99
	R1GkceRRMOiphgstH+GCnGOF91ks5DImjWA3ocFeSiq7LTlIHFlM+y7bJvRln/NgKDnA
	TB8GtkRpnQiH86W7dksUwkJT/4TQ1Ulr0NCjZ+fkpAdBEOU05nFj8Lw8tDaAk0o8hhx0
	jKTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=v8GDp0PrrvxYHKKpXhs0nwci89epWypStufP0wQZPCI=;
	b=X4bl9XipHAdXG8lnRtM0Puu7KAhfwNitNECl3I42tna+CpALlCpJqh9OwZWRIG3Yj1
	ssqAqZj7V/CNYQNNahwBXYesEG7rC8tqfrOn6d5E4yPAmzjjO4k4aQ9e0WTV7vfQF9+C
	AwEuA547xFfNv9GtEWC+RRQz7wrJVgq2zN0t5d5FL1dz8AncTdZpuHAgeChj0Jn3SQR4
	Bq6j6Fyxx+VSmMXOMMoWzu1KBWemVJ/MmBuaAeJPnD9hBp/TheVqwT9/waTHO3sc3jot
	KdDHSo4zaJKGbEeO7m7uymtTRpHWqltP4Qf9R2+j/tXJTUfxIrwht5XTvz6LuhBknqu8
	Ep4Q==
X-Gm-Message-State: AMCzsaU6GsNBHIGk0qfvdi/Ol4cqxAYgjc77QrG70Pt+F1IEKZHs6F+Y
	AouivLkPafWSMCSnDuXo4HMG6cz9
X-Google-Smtp-Source: AOwi7QBzJ7EW3vqt4lRXlBvtD/9l/l6b5OSpa82nDZfdTrxZG1LTThO1FutQUuX6ryXFvZU0pFngEg==
X-Received: by 10.223.145.41 with SMTP id j38mr6968331wrj.133.1508145022074;
	Mon, 16 Oct 2017 02:10:22 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-168-248.home.otenet.gr.
	[2.86.168.248]) by smtp.gmail.com with ESMTPSA id
	y15sm3613520wrc.96.2017.10.16.02.10.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Oct 2017 02:10:21 -0700 (PDT)
To: Andre McCurdy <armccurdy@gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
	<CAJ86T=U7WkuShnw7hzhGLUT4-mTB__SF2pFx8DtHFJ_O75DY0Q@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <ee101ffd-a217-0370-d06e-72d51481d45e@gmail.com>
Date: Mon, 16 Oct 2017 12:10:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=U7WkuShnw7hzhGLUT4-mTB__SF2pFx8DtHFJ_O75DY0Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: image dependent pkg versions/pkg variations
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Oct 2017 09:10:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Andy,

On 2017-10-12 01:08, Andre McCurdy wrote:
>>
>> What would you suggest?
> 
> Create additional variants of the machine config to cover each case,
> e.g. myboard.conf, myboard-debug.conf, myboard-dummy.conf, etc
> 
> The -debug, -dummy, etc variants can include the original base version
> of the machine config file, so there doesn't need to be any
> duplication.
> 

Thanks, I thought about this as well, but since it's actually the same 
board I would like to avoid encoding it in the MACHINE this way.

Anyhow, following this idea I was told that there is also something like 
this[1].

So maybe something like this could work:

bitbake \
multiconfig:customerA:stable-image \
multiconfig:customerA:bleeding-image \
multiconfig:customerB:stable-image \
multiconfig:customerB:bleeding-image

where it would be the same MACHINE, but different images and package 
versions, which could be defined in the configs.

[1] 
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#platdev-building-targets-with-multiple-configurations

Regards,

Robert

