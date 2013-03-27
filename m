Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3163AE01487
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 06:22:50 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id m17so7215879oag.40
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 06:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=r8j6PJt7LkWm1Rh9opMvQhDFfK/NPDAEH/J1KUF0bGU=;
	b=nmRY2sXnvKPIaQjin9VXBYgT92cr+tXF9idBSrJMDXtqrppWgJmzR9Njh77Q53UjAr
	1TOKYGLVXNqCQH4equ4cnIQQRZ1B8159v2zSMUt9vkrJDiWToJl1hElhFy8+HRPdLfXC
	p4E3MToNQQXEuf/taVE9w1RSY5xpy14tCIYMTVE+PHbjstm1oujh68L0iw7uhuwUvYdX
	GPnURwoBfnxTKIsxFhHFxYJpPFu4aPaVRIjC8NSXCuGJ6Uxh+SIl+h3GmSz1DbeXTr16
	nMnBVhYD/7wInasRZxkjRKPKnVYTtArbAMXOsof61/iktSkYTF9/2Z5HqivVt1chB9RQ
	GCaA==
MIME-Version: 1.0
X-Received: by 10.60.24.136 with SMTP id u8mr15741760oef.9.1364390569677; Wed,
	27 Mar 2013 06:22:49 -0700 (PDT)
Received: by 10.60.76.199 with HTTP; Wed, 27 Mar 2013 06:22:49 -0700 (PDT)
In-Reply-To: <CA+QkY1Dc_AgQ+3sQGGxRAE7hLGvogm+C=VHcyQQsu47qm2Dp8w@mail.gmail.com>
References: <CA+QkY1DZCJnYH-3wUc_z+SXOBtBS7NQU3GV+kCaTTeK8Co+8eA@mail.gmail.com>
	<5151F532.70304@windriver.com>
	<CA+QkY1Dc_AgQ+3sQGGxRAE7hLGvogm+C=VHcyQQsu47qm2Dp8w@mail.gmail.com>
Date: Wed, 27 Mar 2013 14:22:49 +0100
Message-ID: <CAGiJk9d-OmasN5R-Kz9HU14qiRpCNRGARZRhar6nxSAs9nAq0A@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Jerrod Peach <peachj@lexmark.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Building "restricted" source code
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
X-List-Received-Date: Wed, 27 Mar 2013 13:22:50 -0000
Content-Type: text/plain; charset=UTF-8

While this may not resolve your problem, these are my 0.2 cents.

I assume you already know this:
The hash does not need to be permuted between dependency updates, as
(e.g.) eglibc "promises" ABI and API stability between major releases
(like most Linux libraries).
This means that the hash has to change _only_  if the major version of
the dependency changes (you need to recompile your "restricted" code
anyway in this case), or if the configuration of the dependency
changes in an incompatible way (ouch!).
Of course this is only true for library dependencies.

I am not sure if it is possible to just "configure" the hashing
algorithm of bitbake to consider only ABI / API breakage instead of
"always rehashing every change recursively".
Some other thoughts: It may be possible to inject packages during the
build via binary package feed...

Both ideas would require expanding the bitbake code though.

2013/3/27 Jerrod Peach <peachj@lexmark.com>:
> Mark,
>
> Option 1 isn't a very big concern since it's likely only developers working
> on the restricted code will cause its hashes to permute.
>
> Option 2 is precisely what we were thinking about doing.  The concern,
> though, is what happens when a developer who doesn't have access to the code
> changes a dependency of the restricted code in such a way that it actually
> affects the restricted code.  That developer is unable to test the effects
> of his changes without pushing them to a back-end build, which would involve
> pushing untested changes somewhere.  I don't love that thought.
>
> Another option would be to make the recipe smart enough to build restricted
> source on a different machine from the user's using an SDK (which is what I
> think you were suggesting), but that involves transferring the user's
> uncommitted code and/or built objects to the separate machine, adding a
> fairly significant layer of complexity (and likely a significant amount of
> time) to what is otherwise a relatively straightforward build process.
>
> I'm not the biggest fan of any of these options presently, but if we have to
> choose one of these routes, we will.  (We were likely going to use what you
> presented as your second option, but that's still going to involve someone
> updating recipes for restricted source every time new binaries become
> available.)  I do very much appreciate the input and I'm glad to know the
> ideas we came up with aren't completely crazy, since someone else has
> thought of them too ;-)  Any other thoughts on this issue?
>
> Kind regards,
>
> Jerrod
>
>
> On Tue, Mar 26, 2013 at 3:21 PM, Mark Hatle <mark.hatle@windriver.com>
> wrote:
>>
>> On 3/26/13 7:53 AM, Jerrod Peach wrote:
>>>
>>> As part of my company's firmware builds, we have to build some code that
>>> only a
>>> handful of developers are allowed to view.  We call this restricted
>>> source code.
>>>   Getting our official "system" builds to build this code isn't a
>>> problem.  What
>>> is a problem is a regular developer's build of this code.
>>>
>>> Imagine this scenario: The restricted source depends upon eglibc.  Our
>>> low-level
>>> team, who doesn't have access to the restricted source, updates the
>>> recipe for
>>> eglibc.  The hash for the restricted package is permuted, and so they
>>> can't get
>>> an sstate hit and are required to rebuild the source.  But, since they
>>> can't
>>> check out the source, they can't build it.  This would cause a build
>>> failure.
>>>
>>> Is anyone dealing with this scenario while using Yocto currently?  If so,
>>> how?
>>>   I know it may be unlikely that many people are hitting this since Yocto
>>> is
>>> primarily used to build open-source code, but I thought I'd take a shot
>>> in the
>>> dark and hope for the best.  :-)
>>>
>>
>> Two ways I know of doing this.  Slightly different way of doing things:
>>
>> 1) If the code does -not- rely on outside influences, such as eglibc.
>> Configure the recipe and pretty much ignore everything else with a
>> vardepsexp.  Then ship the sstate-cache files that cover the compiled code.
>> (Along with the original recipe...)
>>
>> 2) For code that DOES rely on outside influences.. create a custom recipe
>> that either downloads the source and builds it [if the user has access to
>> the source], or will pull the binaries from a specific location and simply
>> install/package them.   This is actually the more common approach.
>>
>> (To seed that location, you can extract the items from your restricted
>> build -- or build it outside the tree using an SDK or similar.)
>>
>> --Mark
>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Regards
Samuel

