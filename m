Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16460E00B3D; Tue, 30 May 2017 10:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 128BAE00B19
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:30:08 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id g15so26508316wmc.2
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eSbK3fhCqzTK0RLTR5JjyGWIkCWkAekKCNAjyKzduMc=;
	b=NGP0YjK3oIPVfl65sHnkOnX5i5ciIbvu73T1Zy23lAu/73+rNLGanxvCSKpgjc3eXh
	iloMMU1PXRf1y0zWbBzmVtACMm2C/6RQNGRdiVKbC4l0ha6fgUGKhWTgCljbg4m4S0CF
	ahg11oFn0kE8h4ZgfTkvbHnGECuUCggNeFluFwXcpB3dfzaVs6nHf8ZKWkLTGy58Y66I
	QozIlhJJW2tqzhVqn8D1HbQDvtMV0AfvYoooMEHdg3KXRrH8VoqFJfvAuuQgDtQ2cpjs
	R6po4J5Ll9EEz+8/uZWPcmXsiNLoiJ+9teuRR6ND+3xRcFiUZmou1iSXSnDiGPumeSnB
	pNQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eSbK3fhCqzTK0RLTR5JjyGWIkCWkAekKCNAjyKzduMc=;
	b=Yi/XxEIY++0Zh9SOaqEl+uOb9VV6uHtvSKAJvLEIThuagiACVYjp7rbYmZIGt3GuXK
	ZEp4Urd8OShFVDZ2x9OCabBOSVulwbOM8yKDaD97UqAi5gX0n+tI8cWkSTs/KmOc4cWv
	MWSWwpgZ8HZ5QTIcBHGbGAnH5paE7uMCtme1r89y82QlGMaVugjqQ8SCEEgkpu7occft
	iKhmRD0OLBUR7jQaARhvp3nxP+SL12eP/wrbn4WNOIUoijiVsShs0p9kHSp5fXl3BMHa
	Cguxrr7vP/wDy9slTuiIMobeLD/nsgfjtOcaJkyfK+FN+qwUxqaLWvXHjO88iT3bTTYx
	5wcg==
X-Gm-Message-State: AODbwcBT1XoWKa4/iT80bqaJc+zHRPgRac3AcWTPIn1uJmJMjXOvzMoS
	1mgS9LgUkAqghbbG/bWGjYpO3BLc2w==
X-Received: by 10.80.147.195 with SMTP id o61mr17390123eda.178.1496165407731; 
	Tue, 30 May 2017 10:30:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 30 May 2017 10:29:37 -0700 (PDT)
In-Reply-To: <CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
	<CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 May 2017 10:29:37 -0700
Message-ID: <CAMKF1soe0qjKuyASY+sE4rcvOM-uAqzBVdNbJb2=f0c6gOhZ_w@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
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
X-List-Received-Date: Tue, 30 May 2017 17:30:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 10:25 AM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.com> wrote:
>> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>>
>> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>> * use latest revision in rpi-4.11.y branch
>>> * using AUTOREV causes bitbake to run git ls-remote on the github.com
>>> repository in order
>>>   to convert AUTOREV to currently latest SRCREV even when you don't use
>>> linux-raspberrypi_dev
>>>   at all, just happen to have meta-raspberrypi layer in your
>>> bblayers.conf, that's bad for
>>>   people who want to be able to build without network access (completely
>>> from premirror)
>>>
>>
>> These branches get rebased often so locking SRCREV caused another
>> kind of problem. what we can do is.
>>
>> 1. Let user like you override the SRCREC via a bbappend or conf file.
>> so change the assignment to ?=
>> 2. Delete the recipe completely. We lose some of upstream testing.
>>
>> We should be able to skip the recipe if it isn't selected as the preferred
>> version and/or provider of "virtual/kernel". I'm out at the minute so can't
>> look at it now but will try to take a look later this week.
>
> The linux-yocto-dev.bb recipe contains an example of doing that.
>

ah perfect. Thats what we need here

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-kernel/linux/linux-yocto-dev.bb?h=master#n28

please rename the recipe to be linux-raspberrypi-dev.bb and add the magic
above and send a v2

>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

