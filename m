Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF765E009B2; Tue,  7 Mar 2017 12:48:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5107FE00924
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 12:48:09 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 25so1124659pgy.3
	for <yocto@yoctoproject.org>; Tue, 07 Mar 2017 12:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=/qN04pAOGBtfnunJHuoyU8ESaiaQBLCGNdYCJ8Cp4tg=;
	b=uH3AXhRVcD7cE6Fmm4giwBaDamAvFcCS4wD4taJ7aEgRyhV8/KxWGN1Np3+MlIba87
	/Z/l3k3tUFH2dSr/tuxFH7kaeQZEJREw6OsS820ddwxBA6n0eDiw/BYb7MMeRqi6zkAg
	sDbfgKC4UmsueEVG0dr+xxXLOh5ZfkxF0b/MW2FbxVZDsHR/dg5MvkjYzeImExYDRNlb
	SIp0dYEaExVXkSqbkRy75FABbJH9EMU35EHzMUDCjvqdGwGQAMSZT0luQd5r1lERguqR
	q/GIAjhbF1zFmbjOJ7ICrpTC4OTnbAJne1bs2aEprIyzJrR0YvRq3Dz50Vw7qlMik71+
	wrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=/qN04pAOGBtfnunJHuoyU8ESaiaQBLCGNdYCJ8Cp4tg=;
	b=HBWkraea8yp9vDYyoACy3RyoebgU4kR1qb47dpOP7d4yuq5voyME1wHlnIhv06ED19
	gsaqj62lOWNudnQusuqFgakoHW8Ja1/sQ7FT9UnzSlgjoXZmUBHazqUOJNrJbff9yIYF
	/b5fOUnno+heKWAEceUi5RmN/z/MhcLnQXmU7tvjT2ghiaiN2N9ZDsInuVYJhNSgINLX
	L9kP4roNWSGnGzbe2OJ5PHtIU4C4mGm2go7YE0bWpD9XWAT7OmCv4xIuhJ6buKNTjCZP
	Obuq3QGKKu8fPfitDqNlF+FVt5rbRZB7w5yKoN2/+8K+vV7NIBAmVuW3vTown5G8GWhN
	SYTQ==
X-Gm-Message-State: AMke39lwEGOrl7Pj5f+RRhM/+g475wNA5+ZF9NSjneTpdjfsaOWvkE39ztwT0Kh4U+45Fg==
X-Received: by 10.84.211.97 with SMTP id b88mr3196403pli.113.1488919689587;
	Tue, 07 Mar 2017 12:48:09 -0800 (PST)
Received: from [10.22.11.190] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	b195sm1477111pfb.106.2017.03.07.12.48.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Mar 2017 12:48:09 -0800 (PST)
To: Soumya Gupta <soumyag213@gmail.com>
References: <CAFD+RaYVrFfPXrbW79FMx24wJDSqfxAt2ey3PYKmvL0E5hE7Bw@mail.gmail.com>
	<1488906492.3261.20.camel@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <abba0f39-4218-2158-61fd-a094d6d7b2b0@gmail.com>
Date: Tue, 7 Mar 2017 12:48:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1488906492.3261.20.camel@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Intoducting myself: Applying for Outreachy
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
X-List-Received-Date: Tue, 07 Mar 2017 20:48:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Soumya,

Are you trying to apply for the intership? You may want to take a look at

https://www.yoctoproject.org/outreachy-internship

Not sure how that differs from the outreach program.

Maybe Jefro or Tracy can clarify.

regards,

Armin



On 03/07/2017 09:08 AM, Leonardo Sandoval wrote:
> On Tue, 2017-03-07 at 22:18 +0530, Soumya Gupta wrote:
>> Hi all,
>>
>>
>> My name is Soumya, an I am a final year Engineering undergraduate
>> student from New Delhi. I would love to work to contribute to Yocto
>> for the summer.
>>
>>
>> I have been coding in Python for the past year and I am quite at ease
>> with the same. It states on the Outreachy page, that there is a
>> project relating to the building of autobuilders. I want to work on
>> the same.
> can you point to that page?
>
> There is an autobuilder repo at git.yoctoproject.org, perhaps you can
> start looking there.
>
>> Being a newbie, it would be great, if someone could guide me on the
>> right path here
>>
>> Thanks already
>>
>>
>> Best,
>> Soumya Atul Gupta
>> Final Year Undergraduate Student, ECE
>> Netaji Subhas Institute of Technology
>> New Delhi, India
>>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


