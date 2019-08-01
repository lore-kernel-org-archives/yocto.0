Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A37A6E00D30; Thu,  1 Aug 2019 10:25:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E17E00C22
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 10:25:23 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id s7so145934200iob.11
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 10:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=8HnEvgBepoxjwly9UQgWYRuVVvdxkX0HEjF0/n2ctDQ=;
	b=gOGVr7s+kBhJHtXpOBbeewxJUWJPR26rGGaMpGdi5yqsWlIWf6kZAANpHtZK2GrfgW
	j1KUPmDu4CEKmqo2Pw7KFfzLGjm4K/StMi4pwZ2zEcffrUsz0XRMYZeobSShjPsVIufe
	11LWCJRa8OTQzC1ztBEySoFskrVKqsJnh7u/ShnxMDFhiBEgoXTn3AhsBHmYqM9htwWE
	nMQxzdHzyunkY4sYHfYYXwHec471H60AZpO/WH8imRPLDmnZui+FHeWGSP0J3spwWQ2a
	VA2xpCi63W1XjgM9v6vXoPNSVUFTgI03fIAjjT4ameqBM+k1tI1QPhdSCTLErMeFuC//
	K60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8HnEvgBepoxjwly9UQgWYRuVVvdxkX0HEjF0/n2ctDQ=;
	b=bEoaTPPDnsPj/Hf/Z8/FABv3v2YnXlPMNW8I2+QK4QjA8rD+YUkBWNiFznDVqQK75g
	t+JXtRLw6GwZnyR4SQOMXLXne8YQ+RdLzPhF+8TYguiDGTEUKUQWGsLfpzLHGCnYZC2I
	2RytVNTFg3V1Lwn0wE8svA0MxONuyVA9TbjCqJXlXNLwNNhfvlSq0KCtMYcohbYp15rY
	2uDi0wo8Y4LGBNJZmSrZ/4bbsG0tu2ox2ozu3xn68mi8SS/SYTJoJw793tqam50YcGEF
	MbAFLZulfnB1JMqYqVsOMygdznUR21rDfKNGoL1aF30i0WT1rPblwXSE8lk/laACdXjA
	oX5w==
X-Gm-Message-State: APjAAAUhRPFP1pDPWSgg8O38Nz5ZZ6RYuNXrtgSlGIEnqQKdX9niZvxG
	h/yThiEjEKtY8qRvz8GskHQEAe/L
X-Google-Smtp-Source: APXvYqxoneilCeJO7+iA05l4ZRxZ/Xq07wxqdmOJzWor1NmnpvksW7naZYckRz6CSTTdMsn1fCgyVg==
X-Received: by 2002:a6b:6d07:: with SMTP id a7mr4082762iod.254.1564680322194; 
	Thu, 01 Aug 2019 10:25:22 -0700 (PDT)
Received: from [10.30.197.57] ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	y20sm57871042iol.34.2019.08.01.10.25.21
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 10:25:21 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: Patrick Doyle <wpdster@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAF_dkJBL96YB_Gbr1PRRN_f+Qr0EJO=T8ycifHwQwxUBnxC_LA@mail.gmail.com>
Message-ID: <1250b29b-9884-4353-8592-ec307ff9025d@gmail.com>
Date: Thu, 1 Aug 2019 12:25:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAF_dkJBL96YB_Gbr1PRRN_f+Qr0EJO=T8ycifHwQwxUBnxC_LA@mail.gmail.com>
Subject: Re: Reproducible u-boot
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
X-List-Received-Date: Thu, 01 Aug 2019 17:25:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 8/1/19 9:08 AM, Patrick Doyle wrote:
> How do I use the reproducible_build class to create a reproducible u-boot?
>
> I tried adding
>
> inherit reproducible_build

Reproducible builds aren't enabled on a per-recipe basis, instead try 
adding:


  INHERIT += "reproducible_build"

  BUILD_REPRODUCIBLE_BINARIES = "1"

to your local.conf file, which will enable reproducible builds for all 
recipes.

That being said, reproducible builds are still being actively worked on, 
so your mileage may vary. It will also depend if u-boot even builds in a 
reproducible manner to begin with.

>
> to my u-boot recipe, but when I do that, I generate errors of the form:
>
> ERROR: When reparsing
> /path/tot/u-boot_git.bb.do_deploy_source_date_epoch, the basehash
> value changed from
> e7c4a942e76dc4e630d9dc6e3b6d49db66adeb2c9a5e2d511fac3fc7dabd4e59 to
> 4735b8a3f887bf83059c5d56e529f1a5650fab8ac53ce4e2c222524e690092ae. The
> metadata is not deterministic and this needs to be fixed.
>
> Where should I look to learn more about the use of reproducible_build.bbclass?

Here is the current wiki page: 
https://wiki.yoctoproject.org/wiki/Reproducible_Builds

I'm afraid its a little out of date though.


>
> --wpd

