Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C88FE00A48; Tue, 14 Mar 2017 13:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFFA1E009DA
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 13:41:08 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id h11so13791453ywa.2
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 13:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=48segExsy9jD0sjnP7PL8sna+BYhi8xjOAz2uDHyCMg=;
	b=etkzUz2Vg7ny9cskfm5w6BXwoqEpigC9Pnerh2JOh3yF0FNxzmCDhyaB9ZG0pj/xM+
	HgengvQmMOdYJw7+xBBohZXC7r1ZucisyiP+5c4cYhSyVKHVsJvxcDN1ZTv3Qr2TGfzH
	ot3JxZ/DfT0N2SYuXdsBtPxoO6mEFfvA2WTS8hyAXITcgzofbOlTTmms+scOKLiuT57D
	5oW1MOmokrNrGWTXwyusyGbkGZdNVg9uEVKAZgqtbqN5Rc3art6735uLrBtIwY3/JHU8
	8usLHL5os/K2iDb/tt+XocJXALTnKkAQTtoNuXZ+Q6nLgOVFt09uYdPjDegRw4Mr1FZO
	auUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=48segExsy9jD0sjnP7PL8sna+BYhi8xjOAz2uDHyCMg=;
	b=JVZqtxZgqh1Hy5aqTSKQr8cdwL8LT15y6LLstx8KKOT/lBGUd1r141cIgeYClB4e/u
	yFJbMWdoSpTmu23efBj4iN8uERRqki7aLoDY2JsdEQ7vAwCBqcAMtakQVYOhkJPiQ24G
	w3tM3zOUSZhgPGa435CJtMsrW5nPOQ/nmVDBcFcSD0RYDnolps7oD8dlKZ6wNYJngYYI
	yjCPtfHOytrO/hXDzu4CBmk/H7CDSl/tl30eyRFVjuvP16lnMZFr5DYcbnTMsQno76+b
	4eumJGu+hfrJeUQs9I3w8OaJkzTPojcdj22yD93PQynCzmyqnCsE1a8pNxZ+huKXhK6Q
	NuMA==
X-Gm-Message-State: AFeK/H2jPo9w18q9uILLNOSBCazLknYIYla4rh6vxUgrRQ9UMpd0otZ9wCB5L8sewcXyjdkzoMobb+7JJvHSXQ==
X-Received: by 10.37.33.137 with SMTP id h131mr14623888ybh.159.1489524067810; 
	Tue, 14 Mar 2017 13:41:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.59.79 with HTTP; Tue, 14 Mar 2017 13:41:07 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
References: <alpine.LFD.2.20.1703130859580.13400@uk63952.mitel.com>
	<alpine.LFD.2.20.1703141608001.3664@localhost.localdomain>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 14 Mar 2017 21:41:07 +0100
Message-ID: <CAAfyv34xQFXPZ2ir7P0nWHMqyHPZR5jLSy4=QRd9=8x=t3Y8xQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: make[2]: *** No rule to make target 'fitImage'. Stop.
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
X-List-Received-Date: Tue, 14 Mar 2017 20:41:12 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert,

On Tue, Mar 14, 2017 at 9:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Mon, 13 Mar 2017, Robert P. J. Day wrote:
>
>>
>>   i'll start a new thread to focus on just this issue. again, building
>> core-image-minimal for mpc8315e-rdb, adding this to local.conf:
>>
>>   INHERIT += "kernel-fitimage"             <-- do i need this line?
>>   KERNEL_IMAGETYPES_append = " fitImage"
>>
>> anyway, run:
>>
>>   $ bitbake virtual/kernel
>>
>> and eventually get:
>>
>>   make[2]: *** No rule to make target 'fitImage'.  Stop.
>
> ... snip ...
>
>   i would still love to figure out how to generate a simple FIT image
> when building core-image-minimal for mpc8315e-rdb.
>
>   first, based on what i read, my first attempt was to add the
> following line to local.conf:
>
>   KERNEL_IMAGETYPES_append = " fitImage"
You need probably also add:

KERNEL_CLASSES += "kernel-fitimage"

to local.conf
>
> however:
>
>   $ bitbake virtual/kernel
>
>   ... snip ...
>
>   | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E uImage
>   CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
>   | NOTE: make -j 8 HOSTCC=gcc  HOSTCPP=gcc  -E fitImage
>   CC=powerpc-poky-linux-gcc  -fuse-ld=bfd LD=powerpc-poky-linux-ld.bfd
>
>   ... snip ...
>
>   | make[2]: *** No rule to make target 'fitImage'.  Stop.
>   | Makefile:150: recipe for target 'sub-make' failed
>   | make[1]: *** [sub-make] Error 2
>   | Makefile:24: recipe for target '__sub-make' failed
>   | make: *** [__sub-make] Error 2
>
> which makes sense since there is no such target, "fitImage", in the
> kernel build structure.
>
>   what am i screwing up here? how do i generate a simple FIT image?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

