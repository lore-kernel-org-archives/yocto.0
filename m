Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3430E00B01; Wed, 31 May 2017 17:17:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448B8E00992
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 17:17:48 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id g15so7270942wmc.2
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 May 2017 17:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZXpNYNrsitaxO7uingMmavHeinFnn+643pOrbdhIf0c=;
	b=QRxwQGor+We6C2Asselz/Zkr3fNMTSureAr1UOariy4wqkvpe7S8B0OHuPwgBjAYDz
	fTYfWJc8CjEFRheWWPzcVE47P9YYHjU6f49SFVgVYl0u8iz1a2YpXP8gz8abFg9kkWWl
	CAMdgcLK/6Tg1x/apWWKwF980Dq4DDeXikB/MlJaBgvDHu7aGy004MpXUmu8LfWdutlk
	x9wQ45imNREcy8Rdh6QexB1R25b5eBPy5YRY8dP29IW6rIr86GgS1XLAp6QraSoB3vf/
	fRn7s5Mt9Xk3tx3v/KKHLEUvSDCCALEv0ZbH1yQj+9KjeLvR+FrKxQyovQlb6NKN8aPt
	g+aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZXpNYNrsitaxO7uingMmavHeinFnn+643pOrbdhIf0c=;
	b=sjADLzuWsZA3OX64n70oT+hhQiHTCwyAPMGlpC8K80MPPpFMEq61m6oPHO/d6e874z
	VTBftYdUxyj48QTFjQ1V5Y8F6vsJS7JgZNHYFJtXLL5mYJCPoMFfX9mhQ1OtvtKEwiDZ
	OdEpWnBYEu1/5xtRf0Did4mWIAd2X1dwpe/Py1LMqvGKP8IdLpsLg9XtVB/cxXUoa23E
	sF7se8tC0Q91xXrBEkDtfS61OnNnSZZbIONMJl0o210kiy0PYJHn0+6PQkQZT3r9VYwB
	C0+1ISmUqvfnscGxfkR7yvC/Fq+RsaFnDpAeNLaCf6PNqgftXJxdDzpVlRWfuPtnc0C/
	5sRg==
X-Gm-Message-State: AODbwcBqKl+gIXFsC9cCizgPBuLPxcxLPDSxK/gkwsfenuX6Qy2sCPQl
	sY76Cs30s5YSRS7zZjp/48QNBByYKQ==
X-Received: by 10.80.151.29 with SMTP id c29mr10429643edb.30.1496276268110;
	Wed, 31 May 2017 17:17:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Wed, 31 May 2017 17:17:17 -0700 (PDT)
In-Reply-To: <CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
	<CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
	<CAK18fxF3uXOdsZkaN9f-DKJaMc+4GVfW28xTVK9a-01x+ktLXA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 May 2017 17:17:17 -0700
Message-ID: <CAMKF1sqVEbdMKnqHHwsdWrs6aPDOowreRCZuk2h39J2XQEV8TA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Thu, 01 Jun 2017 00:17:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 31, 2017 at 5:00 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> On Tue, May 30, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com>
>> wrote:
>> > On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.com>
>> > wrote:
>> >> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>> >>
>> >> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com>
>> >> wrote:
>> >>> * use latest revision in rpi-4.11.y branch
>> >>> * using AUTOREV causes bitbake to run git ls-remote on the github.com
>> >>> repository in order
>> >>>   to convert AUTOREV to currently latest SRCREV even when you don't
>> >>> use
>> >>> linux-raspberrypi_dev
>> >>>   at all, just happen to have meta-raspberrypi layer in your
>> >>> bblayers.conf, that's bad for
>> >>>   people who want to be able to build without network access
>> >>> (completely
>> >>> from premirror)
>> >>>
>> >>
>> >> These branches get rebased often so locking SRCREV caused another
>> >> kind of problem. what we can do is.
>> >>
>> >> 1. Let user like you override the SRCREC via a bbappend or conf file.
>> >> so change the assignment to ?=
>> >> 2. Delete the recipe completely. We lose some of upstream testing.
>> >>
>> >> We should be able to skip the recipe if it isn't selected as the
>> >> preferred
>> >> version and/or provider of "virtual/kernel". I'm out at the minute so
>> >> can't
>> >> look at it now but will try to take a look later this week.
>> >
>> > The linux-yocto-dev.bb recipe contains an example of doing that.
>> >
>>
>> ah perfect. Thats what we need here
>>
>>
>> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-kernel/linux/linux-yocto-dev.bb?h=master#n28
>>
>> please rename the recipe to be linux-raspberrypi-dev.bb and add the magic
>> above and send a v2
>>
>
> Using the magic above we still hardcode a revision there. So if a user wants
> to compile the recipe without setting the preferred provider it will fail.

what will be the usecase ? when you have a different kernel selected but
woould like to compile yet another kernel

that rev can be a well known rev like branchpoint. Moreover, I think
if someone wants to use the dev recipe then its expected that they
switch
to using AUTOREV or some other local mechanism for pinning if needed.

>
> --
> Andrei Gherzan

