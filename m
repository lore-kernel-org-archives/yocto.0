Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1360CE00BC6; Thu, 26 Nov 2015 03:16:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B88E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 03:16:05 -0800 (PST)
Received: by wmvv187 with SMTP id v187so26409412wmv.1
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 03:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qQS8zyhqixxx9CG4wkqaT8m4a4GxESBwAuKSJRkdk/U=;
	b=LZqEj9+ULE+FHuvaLE/yY92STYIjfdsxFY9IbySMFr63vJg1UbFHszO9nY10uQmELa
	TLqMfraZTD2Qob7vyFSlB68ZZEwkUaam2vqzvDy6/7o+pmXQjYE2LuaXMb6rMngqDi2s
	Oun+haLF9IaT2S019ULRqd1KJbFaaX96TzKLAvbIa3BpOt9GkOZEXi9gUHvUHKbMyd9l
	2GXnZPg4762K7LIV6mgzTQJLgIf8fkjNdG9va5jvS6D2x10yCkdrBkw+v+Afl22prIUl
	NtbEBejE4W1tt7LlyNqc7ywku52+JvFaVTPxSnVwO8pchgB2LgNtUu/LXbWsze22esqc
	980w==
MIME-Version: 1.0
X-Received: by 10.194.2.33 with SMTP id 1mr56017247wjr.150.1448536564977; Thu,
	26 Nov 2015 03:16:04 -0800 (PST)
Received: by 10.28.59.4 with HTTP; Thu, 26 Nov 2015 03:16:04 -0800 (PST)
In-Reply-To: <1906079.hoisBn1qUN@peggleto-mobl.ger.corp.intel.com>
References: <CAAfyv37MZCr1cRNedU9xsbNwXQLejQSaibmd+z6cwYBANzAt=g@mail.gmail.com>
	<1906079.hoisBn1qUN@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 26 Nov 2015 12:16:04 +0100
Message-ID: <CAAfyv369ysSiYXX+nVCQ+1F-r3nWJw9Zq70S8b8bqRWZk+efKA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: PRINC functionality workaround
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
X-List-Received-Date: Thu, 26 Nov 2015 11:16:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

On Thu, Nov 26, 2015 at 12:03 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Marek,
>
> On Thursday 26 November 2015 08:16:51 Belisko Marek wrote:
>> after upgrading to jethro release PRINC functionality was removed by
>> commit : a4d530bcf55f03258078c10a123e2717444e1060 on oe-core. PRINC
>> functionality was used in some of our recipes so I took part from
>> PRINC funtionality and put is to separate method (in bbclass) [0]
>
> You'll have to forgive me for asking the obvious question - why aren't you
> using the PR server?
basically we have some base layer which has e.g. PR="rev123" in bb
recipe. Then we have other layer where we extend functionality
to base recipe (add custom patches) and we was using PRINC so every
change in bbappend has increased PR.
PR is then finally used in our FW update scripts where we update only
when PR is changed.
So I would like to introduce kind of PRINC functionality with my change back.
>
>> I'm trying to use it in bbappend like:
>> inherit veryspecial_helpers
>> PR := ${increase_pr(5)} but this seems to be then evaluated as :
>> u-boot/2015.07-${increase_pr(5)} which is wrong and fails.
>>
>> Any ideas what is wrong with this approach? Maybe some brackets? Many
>> thanks.
>
> missing @ ?
Afters adding @ it complains:
 Failure expanding variable PR[:=], expression was ${@increase_pr(2)}
which triggered exception NameError: global name 'd' is not defined
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

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

