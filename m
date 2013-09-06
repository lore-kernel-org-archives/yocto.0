Return-Path: <koansoftware@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A0CDE01420
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 05:49:59 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id h10so1589407eaj.11
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2013 05:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=0zH52qH9Itd2/TL9Pec5gE9e60kqZzHcZWFQDcZc/zU=;
	b=xwLykA6TzCouHns9Wmw/VBxfstE4pZluyW6Lb4BfgFJnpKB4JuOgo4qnqBBI9pQovs
	C9Sno8r7ciTiiuaPzlTp7ma7AnQrA0gKSgUsEU5HxwaE8hAswWJ+xTFbb8yoMDrmC6Qp
	U89fmMHrNuMWepW567B++eHFIZMlkWcBSId0q7pEAlaGyeSqa5xr+zxnCAXwA4Cj7Dx9
	Fyxx9P5YLBiYCQ1d7Jculpp2jO1Dxgs75xzP6oxy5DQVAB5L2DgjBh3NBVldmoYWi1o8
	0Fuwx9BfLawaYN1bfddqGgRiznvojX7MQKSSk6mcYj5yd6OuJIjvfzFnSJntEtu8sxKO
	6cgA==
X-Received: by 10.14.172.133 with SMTP id t5mr3838335eel.35.1378471797627;
	Fri, 06 Sep 2013 05:49:57 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id i1sm4044090eeg.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 06 Sep 2013 05:49:56 -0700 (PDT)
Message-ID: <5229CF72.8030701@gmail.com>
Date: Fri, 06 Sep 2013 14:49:54 +0200
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
In-Reply-To: <CAMZj-5MD+kLf3JVS7Mmyq-JfREKPdcoam0NFCTrqsFw4bnrx4A@mail.gmail.com>
Subject: Re: Embedded Linux with Xenomai support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Sep 2013 12:49:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Il 30/08/2013 12:34, Asier ha scritto:
> Hello all,
>
> I've just started studying the Yocto project, so I beg your pardon if
> this question has been already solved or it's just too easy (RT*M).
>
> I've got a working embedded system running Xenomai v2.5.5. The user
> interface has been developed with Qt Embedded. The kernel has been
> compiled using the ELinOS Embedded Linux distribution.
>
> Now, I want to change that interface to X11 so that I can use a desktop
> manager as well as some other X11 applications. The ELinOS distribution
> has an XServer, but it lacks a way of easily adding any desktop manager.
> Thus, I’m thinking about using another Linux distribution.
>
> That is how I have found the Yocto project. I think this can be the best
> solution for my new system.
>
> Is there any Linux distribution based on the Yocto project that lets me
> configure my embedded kernel with Xenomai? If not, has anybody got any
> experinece in adding Xenomai to the Yocto project?
>
> I'm using an Atom N270 chipset.
>
> Thanks in advance, best regards,
>
> Asier
>


Dear Asier,
As Yocto project participant and thanks to our experience with Xenomai 
(and RTAI) we at Koan can help you migrating or integrating any hard 
real time requirement into Yocto or as custom stand-alone solution 
creating or adapting a linux distribution with Xorg, and a desktop manager.
Feel free to contact me privately.

Cheers
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

