Return-Path: <patrick@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AB82E00CA2; Fri,  6 Oct 2017 07:56:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF4B4E00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 07:56:37 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id u138so8074570wmu.5
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 07:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=AvrKo93yXvYTVHwEBBh57JyU1pvKKjv26Ev4lxNKkFI=;
	b=mlJ5/QY56NjVI2/ZUyWfslo75w77ceOz84AVbjpi+cBMrUXVnQEcztHxOjxW5vYHD1
	52pEl3tH76z+HJCk+DgmUL6tvNeqxZkXExQg23JSCJlxh2gO3fxI6LmhR9g5SywC1/4R
	rJhRG84ktT1wTPbJ0o8JyqJwZOXeZnO2z5iu4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=AvrKo93yXvYTVHwEBBh57JyU1pvKKjv26Ev4lxNKkFI=;
	b=Kxz3pWsfnrW+jI9/HiysxNvdObfgYKZNq5L/hJAGBELf+rYIGAKw//fIS+T3k59c1L
	8nzyPKxCkzCpIn/1wk1H1ncpXHq2eBpJerC8Rq5IfgKjGy/gDNJ+qXO0SfJr/51XpU1e
	Uqqk3iTnVjjPmMLAzVa4CkmFfeWZUnBNsrS+PvSKmVBLQLEsgzZ3sl9QEed9F5qw2E/m
	L4VUoGR6M0n2J99nNYnh/qLnDCTdhL+gmugwAS8ss8qwxEDVwfj/VB+562thitA8s47x
	AzKKJURcAq1h1C1WNi+cJL+mb4iXwfU9bAjjkD5+37RJEUqPCpiy8hRpiwbqko6mRGHf
	PIxg==
X-Gm-Message-State: AMCzsaUNrV6WTgjw4/Uy5nYurFjjjxVznbWrrP/t2wxvayJrnt8gP1zV
	VuFmk4daBKP1WcVLziEla46SMP6pcaw=
X-Google-Smtp-Source: AOwi7QDQpIjYcduTjKC8eshAaONgR0ZnR2e8fWKwSVyJVb+Ii2ScftN0XM4B10cW8EXPShNXZwvhbQ==
X-Received: by 10.80.153.59 with SMTP id k56mr3688533edb.208.1507301796404;
	Fri, 06 Oct 2017 07:56:36 -0700 (PDT)
Received: from [192.168.1.62] (p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	e14sm1639680edk.95.2017.10.06.07.56.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Oct 2017 07:56:35 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <947c7792-92d4-780a-e3c5-19dc2fb00706@advancedtelematic.com>
	<CAMKF1sp-KnGeOLOkAdt6aX1b6+KdhpiUwGiLnCAS0-XE-_efUw@mail.gmail.com>
From: Patrick Vacek <patrick@advancedtelematic.com>
Message-ID: <e1419f62-4eff-4853-7fd8-d1e4a60abd95@advancedtelematic.com>
Date: Fri, 6 Oct 2017 16:56:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp-KnGeOLOkAdt6aX1b6+KdhpiUwGiLnCAS0-XE-_efUw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boost + Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 14:56:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 06.10.2017 15:36, Khem Raj wrote:
> On Fri, Oct 6, 2017 at 5:05 AM, Patrick Vacek
> <patrick@advancedtelematic.com> wrote:
>> Hello,
>>
>> I'm trying to understand how Yocto figures out which Boost libraries to
>> install in an image. I've been studying the Boost recipes and it looks
>> like RRECOMMENDS is used to specify all of the libraries, but yet my
>> image only gets a subset of them. It's the subset that I typically need,
>> so it's fine, but I want to understand how the process works.
>>
>> There's an additional tricky detail that got me looking into this. When
>> I bitbake a recipe I've written which just lists "boost" in DEPENDS,
>> running ldd the compiled executable does not appear to depend on a
>> couple of the boost libraries that I'd specified in CMake (although it
>> does depend on several others). Only the libraries that are specifically
>> mentioned with ldd are installed in the image. However, if I manually
>> cross-compile the same code via the native-sdk, ldd indicates that all
>> the expected libraries are dependencies. As such, that executable will
>> not be able to run on my device until I install the missing libraries.
>> Oddly, those libraries are built with bitbake, but not installed! How
>> does bitbake manage to remove some of these dependencies?
> 
> it could be thst applications dependency detection mechanism is behaving
> differently and presenting different set to linker.
> 
> Secondly its possible that linker options in play are different e.g.
> --as-needed and --copy-dt-needed-entries might be in play
> 

It turns out that the troublesome boost libraries are not actually used
after all! I haven't yet deduced if the sort of linker flags you
mentioned are being used, but that may be at the root of the issue.

What's now confusing me is why, after removing all references to the
extraneous libraries, CMake still finds them and the cross-compiled
binary still links against them. The only thought I've had so far is
that they are a transitive dependency, although that seems unlikely.
However, that's probably a matter to look into with CMake, not Yocto...

Thanks!

-- 
Patrick Vacek
ATS Advanced Telematic Systems GmbH
Kantstraße 162, 10623 Berlin
HRB 151501 B, Amtsgericht Charlottenburg
Vertreten durch die Geschäftsführer
Dirk Pöschl, Armin G. Schmidt


