Return-Path: <raj.khem@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 868AEE011C5
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 23:33:43 -0700 (PDT)
Received: by wibhm2 with SMTP id hm2so1562531wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 23:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Pei3NU+LXrvgneNCwlyV2fyJ4A2+DmK0tp/b9AZOBeQ=;
	b=jNWkQX0ju1CV1pGeEpSw4EXOCSIEKmLSrylcSbju36adVG5YL9kCA5PLnuvkN2TBb8
	Vz9oDr/SwHBdR2RC5ERwvsBUzOhWYQiBJCFnEW0NMwI9TstQxBFL2cDHLoZkbse5SKIg
	e4IG1fg2xULpJr3qf4BHxl0JlVkLEzUlhpUOm6eEMO4nfbBfLYHcWTO9xp+nl9TUJ5OT
	YoKTC/11g2Nsr21YXlFowywqnFEAbpdvwOWvuZYRvCAiLDI+XMNaVA5Cko0Pxr5VYjHc
	5E7T/4R9b0olBN6W+WHC4kJfxy9a7gtZxBfQDL88E9ztAGex5vbGFj16vCl0Q9PQrvow
	3UoA==
Received: by 10.216.204.139 with SMTP id h11mr645047weo.128.1349246022641;
	Tue, 02 Oct 2012 23:33:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.28.38 with HTTP; Tue, 2 Oct 2012 23:33:12 -0700 (PDT)
In-Reply-To: <CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
	<506B23D1.5030901@r-finger.com>
	<CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Oct 2012 23:33:12 -0700
Message-ID: <CAMKF1sqRhwgiAmLzH7ev4yuviff3JF5w7GBf5gpjZ_FXbPfPSg@mail.gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Wed, 03 Oct 2012 06:33:43 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 2, 2012 at 11:45 AM, Jerrod Peach <peachj@lexmark.com> wrote:
> Tomas,
>
>>
>> Sounds to me like your situation implies a single distro + multiple
>> machines, one for each distinct printer model; you can then specify
>> revisions on per-machine basis.
>
>
> I don't think that's actually what we want.  The architecture of each
> machine will be the same.  That is, one ASIC will generally be on all the
> printers in a family of products.  I think I actually have one machine +
> multiple distros.  Or, should I really be counting each different printer as
> its own machine?

well if machine is same then it should be so. But you can have
different images meant for same image. e.g. image-printer1
image-printer2 etc. however this may not be best if you want two
different versions of same package X in those two images. You could
also look into package groups and IMAGE_FEATURES. I think if you need
to put two different revs of same package then branching may be better
approach or you could have multiple recipes X-printerA.bb
X-printerB.bb
and so on and chose the right one into image-printerA and so on.

There are many ways you can use. You have to look into what fits best
to your needs


>
>>
>> Whether you specify the machine specific
>> revisions in the bb files, or whether you pull it together into an
>> include file is a matter of taste more than anything else I suspect, as
>> long as everyone knows what the deal is. But I'd advise not to specify
>> package revisions local.conf, that's really for the developer/user to
>> tweak, and it should not be stored in vcs, doings so just causes pain.
>
>
> That's something that's come up in our side conversations here: local.conf
> is really for developers to tweak.  I will try to take care and not use
> local.conf for such a thing, and I will not store it in a VCS unless I can
> think of a really compelling reason to do so.  Thanks for the advice there.
>
>>
>>
>> I use the unified include file in Guacamayo for the packages that we
>> maintain; this is for convenience, as during the development cycle I use
>> AUTOREV for these packages, but for an actual release specify the
>> revisions explicitly and having them all in one place makes this easier
>> to do and not forget anything. See,
>>
>> https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-guacamayo/conf/
>> for how we got it set up.
>
>
> So, to me it looks like you're using conf/distro/guacamayo.conf to set those
> revisions.  That seems like that might work when there's only a handful of
> revisions to set.  However, we'll likely have at least a hundred packages
> for which we need to set/manipulate revisions.  I would think that would get
> cumbersome, and in an organization the size of ours (500 or so developers
> across two sites), there's not really going to be one person or team who
> knows what should go in that file for a release.  Moreover, that still
> leaves the problem of all those developers needing to know there are at
> least two places in which their package revisions may be controlled.  Is
> your organization significantly smaller than that or are we doing something
> wrong?
>
> Kind regards,
>
> Jerrod
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

