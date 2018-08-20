Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD7FE00874; Mon, 20 Aug 2018 06:06:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87852E007C9
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:06:45 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id k12-v6so25616487oiw.8
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=RIkmtdJ945xfbKgPyX4Ubt4/eKEvnKABUVBSJsQiDcg=;
	b=ku94CPQT2EorlYhuuls04MbLgx7wAeAiDjLCmMdQCBoi0LzqSo9+uygjqjxQv49W8k
	fl0xBbPhA6+icNjYytwSnfZKwzG2DODeBqdxIVHW3er2EYA7b6rmEX/jI7ZJOa6evbMW
	H4f5IdimKM+/KQJFdo8+RehcTqJkEAJsNicPj91MeWS4WfmkwMas0xq47DS+v46oZFmz
	cv1YypRYImfYkX7UmuswF6wv0Vb/ny9BrVyavtXU8GO0USrqIZonSG0XIF2UPXnf9h0H
	gd+vz28h7Z3AWeJBxgPnLD3YUYsLRf6BTi+Z9G1gz2Hv1tyPtt1L2wjonmSy3/mTSj1+
	Osig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RIkmtdJ945xfbKgPyX4Ubt4/eKEvnKABUVBSJsQiDcg=;
	b=C0LQ9hcNPoO71fa8b6A0erRm8Mfqf8c9b9DDOqpYwulGZUwO1LHHAl+9Z1HwKspiOs
	ZddbGJAYQsewsreOrbyKqlpZaIV5/tuBZh/yu1cSwElE14zd1PMMEhphbYuirzsUOXWN
	5rUJ2LBPOZu1vKIWUXtwXTRfFAo/V+Jwzz+UwzbFCkza7Iln8dP5Fnm3M0wi67vOLle/
	eKUs25HK2WwMrNAa3WE7M8BexvxGnao/6vxNz22DMOgopf2ZBUhhELj11LF+P9f2W4SA
	Lb/BkX7RHa7Rzw3qfScJVm8rjtflj3DOTjay7s8sSnVRkQHsragGAE+hqbdqNxv5TQIT
	aMwA==
X-Gm-Message-State: AOUpUlGi5WSBd+TGPF8armyGwbukAXjHtuaqx9aj6YyOPt+6peiUSiWu
	XCaLjEhbKgWC8plzEFECI1Aaro28J65wR+dUeOnAaTGe
X-Google-Smtp-Source: AA+uWPwTD98wjSuMR2CejAWsyA5lIMIWDKmjRHvxqEtQIj0L0SreNGJIaJ28BX2s4DZmNR60xhyfGOJr5YGSuRg0l3c=
X-Received: by 2002:a54:4197:: with SMTP id
	23-v6mr14573719oiy.352.1534770404561; 
	Mon, 20 Aug 2018 06:06:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:77cf:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 06:06:43
	-0700 (PDT)
In-Reply-To: <CAOT_U5Zs2hk8_+LCY3+-1vqCXDaA_WmmHWDLZaSkpXd3Wg2CfQ@mail.gmail.com>
References: <CAOT_U5YbbpuVdM6yB0eBJu0gncs+_XJ8rNOgiDYOUsme3Y6izw@mail.gmail.com>
	<7b7e1431-40da-b37a-b770-1290d1ab0263@googlemail.com>
	<CAOT_U5Zs2hk8_+LCY3+-1vqCXDaA_WmmHWDLZaSkpXd3Wg2CfQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 20 Aug 2018 15:06:43 +0200
Message-ID: <CAOT_U5azb=xY4G+U8bvdiP0=TPdT3nj7tEgO0uW-ks-yBrZ5yQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>, 
	Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Subject: Doubts about image "equalness"
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
X-List-Received-Date: Mon, 20 Aug 2018 13:06:46 -0000
Content-Type: text/plain; charset="UTF-8"

Hey Matthias,
thanks for the response

> it seems a non trivial task to generate an image out
> of another image by hand. So much, that can get messed up (permissions,
> owner...).

I don't see it as that big of a problem.
In our case it would end up mounting the production image and editing
config files
to i.e.
enable ssh, point to a different logging server, have the debug log level...

The overhead is that it would have to be done manually after the production
image is build, where as believing in yocto would mean a single build step :)


> We try to
> automatize the tests as much as possible. If a test on production fails,
> we retest with debug image to see what went wrong...


For us the case problematic case is the beta testing that happens in
field with selected customers. Can't automate that much :)

> We opt to build both images through
yocto / openembedded.

Have you so far experienced issues in which the images behaved differently
besides the obvious changes that you wanted?

Be Well,
Alan

On Mon, Aug 20, 2018 at 1:46 PM, Matthias Schoepfer
<matthias.schoepfer@googlemail.com> wrote:
> Hi Alan,
>
> we face the same problems here. We opt to build both images through
> yocto / openembedded. If you look at the tools and steps needed, to
> generate an image, it seems a non trivial task to generate an image out
> of another image by hand. So much, that can get messed up (permissions,
> owner...).
>
> I think, there is no way around to test production image. We try to
> automatize the tests as much as possible. If a test on production fails,
> we retest with debug image to see what went wrong...
>
> Regards,
>
>     Matthias
>
>
> On 08/17/2018 10:35 AM, Alan Martinovic wrote:
>> Hi,
>> I'm hoping to get opinions on a doubt regarding a certain yocto related
>> problem.
>>
>> We have a following images in place:
>>
>> * production-image.bb
>>         * core features, max security
>>
>> * beta-image.bb
>>         * require production-image.bb
>>         * added logging, reduced security for dev intervention
>>
>>
>> At the moment, we first build the beta end if all is good we again build the
>> production.
>> This means we need to build and test twice even when no flaws are found in the
>> beta image.
>>
>> We do that because, not knowing the internals of yocto enough,
>> it seems to risky to run the tests on the beta-image and afterwards
>> just ship the production-image assuming they are the same.
>>
>> Because of that, a second approach has been suggested in which yocto
>> doesn't build the beta-image, but it gets created by manually modifying the
>> built production-image binary.
>>
>> The core problem is we don't know the core of yocto that well to vouch
>> for the yocto option, on the other hand, this could be just a
>> psychological problem
>> and the manual approach is as dangerous if not worse :)
>>
>> Did anyone how similar problems?
>> Would like to hear your opinions on how you approached them?
>>
>> Be Well,
>> Alan
>

