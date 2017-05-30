Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89875E00B3D; Tue, 30 May 2017 10:25:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3D9E00B19
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:25:15 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id 6so4842383wrb.1
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gi6/Cftu7GyEg5qIcsT4Dc1eOfZImygT/g620mfaBtc=;
	b=tnCoPo5jwtFCb+p09isFL+Hy8pWvkAvNm0KWxty23G4Tx+sS/5F+U7/Praitit1vqo
	/Yv/1HTBu6hFKqzcagaypq1O8o5ZhQD6Lx+ug5sNG/eWZtsyRM0hDZwWbav6oMoZpzNi
	OQUSeDNDsCYyu/ekshNL0YfKqS8z+FCWvXucEbbWq3kCcgtFHNJSm1rK/eFfvFOuJxJb
	2O/XzC+gWVsk0jOIsiEYGXGbmTlk6YQS4HcxzKxkch9/LvurUYPN75VVguHHQV58xQ4p
	t4myZ5i4rR7uCOvFPQc8UaLtH2h5red2mXAeBL/IRqw358VKzqGK33PL5SBFQ8ED0R83
	39wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gi6/Cftu7GyEg5qIcsT4Dc1eOfZImygT/g620mfaBtc=;
	b=AsGISwWQxifd17BFaRk2GYAjC3daTOaX+YKoguDSQBwE5AgqXy+tkF6136LM9v5xLr
	76p9t3pBpS9v1jChoKFp5Wg+66yMJLyEDqSljzLVTlySglPZXJ0FO3g/8RfVpazO/J0G
	UVtd/6hJBsowOod7QI/kESTkjTqnAMHMxpfURYozR9K9g9mcR4tp+6XbNPox9SmOxNAt
	VhIVFVhbincwoWmG29PxVb80c92SYV6D2vd2Q8PhXAeEFJNf1awoWhSm9I3daiUpG4zH
	vJRW7+Zl8Rm3YWKybCikpM7+uyPQvvaawXGESnaVgppfQLsApNREM6Z+99rUIvz7B6qe
	ZBcg==
X-Gm-Message-State: AODbwcDHZkGksTjMmKzU+pSCdsIqM8qP0FsqqO85PInMDfEoi2c5Yhv7
	OB1cCQFByi45OxJDQlVFGAeHHRGRAg==
X-Received: by 10.223.179.199 with SMTP id x7mr16971058wrd.72.1496165114894;
	Tue, 30 May 2017 10:25:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Tue, 30 May 2017 10:25:14 -0700 (PDT)
In-Reply-To: <CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
	<CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 30 May 2017 10:25:14 -0700
Message-ID: <CAJ86T=XF11yQjPFHXGHHk28MTQF1FQnEz_D+8s=6vk5AO6oFPQ@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
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
X-List-Received-Date: Tue, 30 May 2017 17:25:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 10:15 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:
>
> On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>> * use latest revision in rpi-4.11.y branch
>> * using AUTOREV causes bitbake to run git ls-remote on the github.com
>> repository in order
>>   to convert AUTOREV to currently latest SRCREV even when you don't use
>> linux-raspberrypi_dev
>>   at all, just happen to have meta-raspberrypi layer in your
>> bblayers.conf, that's bad for
>>   people who want to be able to build without network access (completely
>> from premirror)
>>
>
> These branches get rebased often so locking SRCREV caused another
> kind of problem. what we can do is.
>
> 1. Let user like you override the SRCREC via a bbappend or conf file.
> so change the assignment to ?=
> 2. Delete the recipe completely. We lose some of upstream testing.
>
> We should be able to skip the recipe if it isn't selected as the preferred
> version and/or provider of "virtual/kernel". I'm out at the minute so can't
> look at it now but will try to take a look later this week.

The linux-yocto-dev.bb recipe contains an example of doing that.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

