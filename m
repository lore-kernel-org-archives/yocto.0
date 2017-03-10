Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C77EE009DA; Fri, 10 Mar 2017 06:58:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f171.google.com (mail-ot0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E165FE00939
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:58:18 -0800 (PST)
Received: by mail-ot0-f171.google.com with SMTP id x37so78134522ota.2
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=GoSus5SA8hNqAWJHLQkGXgU/n9jpevKzAYxffYItsyk=;
	b=ku84oND45xIQ+qLmumfgUtYEWOmyjt7eTnQIEK4jc9YDzzXup426xTHsgtkOTYEoDW
	koNf2yhizUrkIO7psEEt68KALhiVJ6mJwo66Hgepo88OfehCK56NlY+rRsjyN1F5epFz
	geE/SHEiegpBEd8MVdJlQBTKAKqkbYYPbjZIHgDgypmCPNt7gQAehMX1vsSSTaixHRXd
	jZTdYPoPaqiLRGNhvPRIh5Y35/fonkClsWHA/UoINUDbzriINGRXI5hg6XnT5gsrnDWF
	fjIvHl9BYLa229uZg5WKP8cEBFms9kr497vMdoYByezIxUBBUdsQNY94ZkbSS5tZdUGF
	NOQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=GoSus5SA8hNqAWJHLQkGXgU/n9jpevKzAYxffYItsyk=;
	b=IH+RN+1uJc418gYL865Z8cxz7hZtWTIO/nslY5SMqZvtu/wNIrgHGjsc3domC8l/mg
	4M4CrHLOtAmRVtDWLnvI7zieBsrHOThpy+ygasyr7rvPkJvKMVHCTNg7iuZYPMZxDqnc
	Tj1CEdUUdVlwMbBIJKwp8gAjvqukbloVzfAPVyi+ZFMh+bRUP+o+7oTtmxiFCbe/VyhP
	CA4mcpezHtZys7irbfJKHCys15AlLXtQzwV5M5NAemYSB1JWcYJpJLZJAl2znPmcJiyd
	5aBURkASl7gQ78kAzwzC/jVtXfy2sDmCPCRIwwRJXRUCdyy1AQN/HmXnvhzstbtOcby2
	RKgA==
X-Gm-Message-State: AFeK/H24SZ00c4a+e/hbYskfl+Ilm5whiAHF5fBsxLaCA/LDS/6pxKdL0TtWlh+euHTaBw==
X-Received: by 10.157.23.15 with SMTP id i15mr11960175ota.250.1489157897624;
	Fri, 10 Mar 2017 06:58:17 -0800 (PST)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com.
	[209.85.218.46]) by smtp.gmail.com with ESMTPSA id
	w41sm4307614ota.40.2017.03.10.06.58.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 06:58:16 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f46.google.com with SMTP id 126so52386983oig.3
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:58:15 -0800 (PST)
X-Received: by 10.202.78.5 with SMTP id c5mr9078715oib.77.1489157895514; Fri,
	10 Mar 2017 06:58:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.26.5 with HTTP; Fri, 10 Mar 2017 06:58:15 -0800 (PST)
In-Reply-To: <b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
Date: Fri, 10 Mar 2017 11:58:15 -0300
X-Gmail-Original-Message-ID: <CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
Message-ID: <CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 14:58:21 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 11:48 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 03/10/2017 04:30 PM, Otavio Salvador wrote:
>>
>> When integrating the CHICKEN Scheme support onto the Yocto Project we
>> dealt it using their installation tool but making the package of
>> individual packages (eggs, in this specific case) as individual
>> recipes. We went further and automated the recipe generation and this
>> made it quite easy to maintain in long term.
>>
>> Take a look at:
>>
>> https://github.com/OSSystems/meta-chicken
>
>
> Thanks, even though my Scheme-fu isn't great :)
>
> I'd like to avoid generating entire separate recipes though, because that
> implies your custom-written tool would be figuring out where the dependency
> source came from in the first place, and what are its own dependencies, when
> creating the recipe, which can be tricky, breakage-prone guesswork.

In fact not; as you generate the recipes for the dependencies, it goes
recursively and is always good.

> I want to use existing tools (like 'npm install') for getting the stuff from
> the network - we don't really need full recipes, we just want to know the
> licenses of the dependencies, and, if possible, lock them down to a specific
> version.

Well we initially thought this would suffice but consider a security
flaw. As many apps may be using different versions of same package it
becomes a nightmare to figure which ones are affected. If using
dependencies it is fine, for free.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

