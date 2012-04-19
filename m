Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C03E006C7
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 06:47:09 -0700 (PDT)
Received: by werc1 with SMTP id c1so7350235wer.35
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 06:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e8Z3I16rLq5bZjLb1d8vp59+FbFmPbKJXKjEyiHJgio=;
	b=kH2YTD+fmawMnxz/KVzGyGuFQunBpZrZdKOSqRZArk7wNw9ywMAweL5sqdCMAqBB6s
	o0LCD5cXTT5gJoo1rHeY5CBPlKZyu1+KpcEZ4xWww/TEJ443ks0U8DAF8wAhBj9Rw0TF
	tp/BEuOFoXe2RengpLO5jGj/nw6eUKtfsLHNUKp9KNEy4RBRkOrECKYN7Rsg1yM7XNQ7
	vKqXGrgwfolpt4MW+sKBkji6+sG4nEIdNmiw23WF1Khyu3v35eliBiWjToDNFTHj1rxu
	iJoCEllRa22scnsdAfMFT77uEQ+ZDL6JYLRLIZ6tK6drWw0fxD37ww6205UhNCsBV+pl
	tPfA==
MIME-Version: 1.0
Received: by 10.216.132.40 with SMTP id n40mr1371889wei.68.1334843228722; Thu,
	19 Apr 2012 06:47:08 -0700 (PDT)
Received: by 10.223.14.149 with HTTP; Thu, 19 Apr 2012 06:47:08 -0700 (PDT)
In-Reply-To: <1334839951.13017.1.camel@ted>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <1334306723.7309.54.camel@ted>
	<1334839692.2799.61.camel@babel.joshhome>
	<1334839951.13017.1.camel@ted>
Date: Thu, 19 Apr 2012 15:47:08 +0200
Message-ID: <CAGiJk9ej+ksqtJD2GgZZKtyk2gvCwE0TfBOiONbuSnFzGR4R4A@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build time data
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Apr 2012 13:47:10 -0000
Content-Type: text/plain; charset=UTF-8

2012/4/19 Richard Purdie <richard.purdie@linuxfoundation.org>:
> On Thu, 2012-04-19 at 18:18 +0530, Joshua Immanuel wrote:
>> Hello,
>>
>> On Fri, 2012-04-13 at 09:45 +0100, Richard Purdie wrote:
>> > There are undoubtedly ways we can improve performance but I think
>> > we've done the low hanging fruit and we need some fresh ideas.
>>
>> Is there a way to integrate distcc in yocto so that we could distribute
>> the build across machines.
>
> See icecream.bbclass but compiling is not the bottleneck, its configure,
> install and packaging...

Multi threaded package managers come to my mind, also multi threaded
bzip2 (see [1])
Maybe multi threaded autotools / cmake, but that will be future talk
(and a headache for the developers).


>
> Cheers,
>
> Richard
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


[1] http://compression.ca/pbzip2/

-- 
Regards
Samuel

