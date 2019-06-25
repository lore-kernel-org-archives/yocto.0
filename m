Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 356FEE00D30; Tue, 25 Jun 2019 01:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D5DE00CD5
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 01:53:01 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id x4so16863948wrt.6
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 01:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=ogMuoDZVi0kg6/SMpKRrP7UWCUCTSu5LA4qy+frqqKg=;
	b=ABZEgFredIRQhdgYo5Vx7v4pQNTeA3318EQ2rK0KwpNIfGtjp5nDE/kSKjHq1M7sDx
	rHhd1SsYRyBw/j+hB8Fn8u5zq7cHd8VWOzRfS6dhPo1fuE/J0SPsCZCeGjCGhjgumr6h
	qqHfqkrQ/9k0M9giUPnPQxqtiuFozPiEVOTDDECefGrRw8V5NuvUpqv6w1rcCkYbNlcP
	ILI2YrfuyjNLMZa+Yw4x4boo3VUNxLXODpR9QbqGAT40ELH4II6lh2Rc3sdO1ajww9fD
	kKnO8s5Jfr8/0EDVyyQ5zF/Grx6k6/lINWHniC3fYT41Qj/Vdv94i5gZBPjphOSyF28H
	yN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ogMuoDZVi0kg6/SMpKRrP7UWCUCTSu5LA4qy+frqqKg=;
	b=SiF+MsVZLYRMk6uQLuRQoeCbNzSq3jhqGXhj03DV3eNA5lwL4nwkOljvAx6UU3MIVE
	ExJpdR1BqGJH6HN77auJIJrKZmfklISuRyRHavYPf2HFM4qDFCNjCbMRJl8LwLpiIEk9
	JCxwG36ThL8NPEGgnYM5Rdlyg0DsRqMKg7BX0HmXTiZdq4BmikZpX9nF/GEXxzV6LfH6
	myzZ66P1BrOt16GBUannNzmEEj5PgTOebJwMNPjuXH+xkzG9joV6ld7mim8TVBZFUuZO
	JuGDpf6NVcNapTchUihy0mxaf86FRO6SZpzsMcaDXSorp58LBdeajSfEFChDNxIjIuzd
	Hs/g==
X-Gm-Message-State: APjAAAV/lEQPiUvLCDBnecqKMPe25xs4SykY/s+HI49jiYFQJhmccehE
	lt9haE72XrW+iC7UoH32zrnw004BIw4=
X-Google-Smtp-Source: APXvYqy7+51aCYFWy6l1qR207pqZHMXcawqxjbQDFIZd1BiBIhMjlqeoXBLZ2X/piWyECR1f0ygj3w==
X-Received: by 2002:a5d:4f8a:: with SMTP id d10mr31075696wru.13.1561452780589; 
	Tue, 25 Jun 2019 01:53:00 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id
	d18sm40246557wrb.90.2019.06.25.01.52.59 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Jun 2019 01:52:59 -0700 (PDT)
To: yocto@yoctoproject.org
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
	<20190624070810.GD1584@archworkstation>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
Date: Tue, 25 Jun 2019 10:52:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624070810.GD1584@archworkstation>
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Tue, 25 Jun 2019 08:53:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Morné,

thanks for you answer. Maybe, I will explain more: we have a Dragonboard 
410c based hardware. We use a read-only rootfs in one partition 
(actually two with A/B approach) and we have a data partition for user 
data as well as device specific data. We can partition and flash the 
device through fastboot. So, if we can prepare ext4 filesystems (maybe 
through yocto instead of hand-crafted scripting) for each device, 
commissioning will be an easy task for the manufacturer.

I guess, we are not the only ones that need to store device specific 
information besides the rootfs, and I do not find a whole lot about it 
in the yocto manuals. I wonder, if there are best practices, how to 
protect the data from getting corrupted (intentionally by an attacker or 
by accident through ... flash corruption or whatever).

Regards,

    Matthias

On 6/24/19 9:08 AM, Morné Lamprecht wrote:
> On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:
>> Is there a smart, recommended way to deal with device specific data 
>> (i.e.  serial number, credentials for backend access, you name it), 
>> that is specific for *one* device, and hence does not belong into the 
>> rootfs. I know, that there are (safe) hardware stores for it, but 
>> what, if your device does not have one.
>
> Not sure if I'm misunderstanding your question, but this should be 
> part of your device commissioning process, i.e. like injecting 
> specific security keys etc...so basically this will part of your image 
> install / flash process, and not really part of the Yocto build 
> process. The specifics of such a process would depend on your specific 
> commissioning process.
>
>         - Morné

