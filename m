Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63CD9E00D23; Fri, 20 May 2016 07:35:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f65.google.com (mail-qg0-f65.google.com
	[209.85.192.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193B9E00CC4
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 07:35:24 -0700 (PDT)
Received: by mail-qg0-f65.google.com with SMTP id b14so9697312qge.2
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 07:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QqhM0Inykmojk8qNgMf4JdzlzwxkTMQOvT+Li8yxQCE=;
	b=iSfluNpY7h1ymblQhAqXFi8StmPwXw4EnvTtZ20D6TZL+ST9wTUthF3fcDa0qBzAlh
	wY8dBtvmDEOXu15hloUt87JQABViXNlz6Akl4h2SQev84p3ULFeT/mcFYuAlsRMP1Jnj
	huiboX8sUMxr+ZyhPqRqn6dh1qkYICn9MtT7praBS9cISR9HoAzFOKIBWt+tHYcwEMHY
	sN9WHE2yeu0SYrYUpKids+LRYszM43hjs4YetAf6HdpETV6y8NIrWkVuJu4dMqBoMzRT
	ABjsM7nxC3oxQwli+0Y/a214tgKceHEvF4KqpO5iziTuKgXPIydmgPxleJkwE0aBucmY
	10NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QqhM0Inykmojk8qNgMf4JdzlzwxkTMQOvT+Li8yxQCE=;
	b=dnuhPMMKLNA8BxpCPGBA8i2olzfRm+jE1tEzw8cMO1CppLVT/85VvO/zmB25/T2ChY
	Kp0k5edObAe4u/lCsw/cTRbCyWtSKGh/3WKah9nam5Wor4g/p3viw6akNgZgAGMnYGWc
	bHRKHOyg9rxvJqrR/ud/LYwCi5ciA6Ho50COy8DuWMV8q84nG9AhPUHE5aOnd7lhox+o
	OBbC3ZQIho3uWv2w+K3qRf0UyEJM4fq8/CM0Z8/3cqZWY+al6fld8YMZsjvcbfEqpBtI
	IN4MIOEZE91F/mUj6nM3cBjQa7WF/dd3b0Aw10g72RB/FnTFjFbir51HAXPTNwF+d0KN
	M1MA==
X-Gm-Message-State: AOPr4FW+XBvaSYPzJxXGYF9xkYOzN05k6vciVne17w84QWJBp2MPsjSEWr8ZUZuzsQC3GE1QeF4/sg+bkX0zhg==
X-Received: by 10.140.176.205 with SMTP id w196mr3750147qhw.76.1463754924026; 
	Fri, 20 May 2016 07:35:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 20 May 2016 07:34:54 -0700 (PDT)
In-Reply-To: <20160520105156.GK9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
	<722F295F-4BEE-4E0A-9078-BB24EF9BAAE2@gmail.com>
	<F57461B0-379F-4CA7-8A72-F993A6BFC155@neuf.fr>
	<5E856D17-B2AF-4439-A778-1F1A93B4103B@neuf.fr>
	<CALbNGRSiO_PNDx1sxpCqLS75pyj9jfDBWAQQPhNgUBj8hZScOA@mail.gmail.com>
	<20160519151111.GB9848@resin.home>
	<CAMKF1sobZFxrWtiPQYtzqKEnZyqFCAR9Mgf=9BuS9gj5k-ynhw@mail.gmail.com>
	<20160520103935.GI9848@resin.home>
	<03f601d1b285$0a8c81f0$1fa585d0$@neuf.fr>
	<20160520105156.GK9848@resin.home>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 May 2016 07:34:54 -0700
Message-ID: <CAMKF1spVPvi2iMEZxyoTxW0ZkbKCzkV1DUfMWSHz1VoRZJ3cGA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Fri, 20 May 2016 14:35:28 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 20, 2016 at 3:51 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, May 20, 2016 at 12:47:40PM +0200, Herve Jourdain wrote:
>> Hi Andrei, Khem,
>>
>> That's what I implemented in the upcoming v2 - except for the python
>> checking function part.
>> One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?
>> I know CMA is kind of common, but we're using this only to trigger a
>> parameter to the v4c overlay.
>> Any opinion? (in the current implementation, I went with CMA_SIZE, but I
>> have doubts...)
>>
>
> Hint: Try to reply in line if possible. It is easier to follow the
> discussion in this way.
>
> I would vote for VC4_CMA_SIZE. It sounds safer.

yes

>
> --
> Andrei Gherzan

