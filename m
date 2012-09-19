Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53329E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 16:36:06 -0700 (PDT)
Received: by lboi15 with SMTP id i15so2043852lbo.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 16:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ABS3FIkG9Ow6sudod1sUU/cmUpCzzROs4Fdb4zgWqx0=;
	b=EPGMv6PuHXeHo31WxpUnJZ+tqzxF4UYx6i0vIRotYpAPaAmZbSoXvT5q8a4PBTjei9
	Zj3wa1n6xghm3Z7YqTEA24tiFD+2ibIOzANzOBEMssKjReL/qjKjFBRPThfa2BKpFVgf
	8J68pwyZwsR7+VYXceWzj8D9ONRaka9JVSOKSD1QLh2B7+aGt7jWi0/nOCntfWy851tU
	lIfeinDpihMtm0/XNEXAkpd7MFvMhobrIJbbfAHUqmPPg3wRBVk5hK5yw7PwRNbqeYMb
	/Yy4VlFZ8KU4hM3IxVfq48EQxb2g9j9QWMTnCe/oZZ5tce45/gWsGX1ubE9xUsYqWHQu
	bA5g==
MIME-Version: 1.0
Received: by 10.112.86.232 with SMTP id s8mr70321lbz.117.1348097764793; Wed,
	19 Sep 2012 16:36:04 -0700 (PDT)
Received: by 10.114.68.20 with HTTP; Wed, 19 Sep 2012 16:36:04 -0700 (PDT)
In-Reply-To: <87haqt90nu.fsf@sonatest.com>
References: <87ipb9d9u8.fsf@sonatest.com> <505A2FAF.60609@linux.intel.com>
	<87r4px91jy.fsf@sonatest.com> <505A3245.7070503@linux.intel.com>
	<87haqt90nu.fsf@sonatest.com>
Date: Wed, 19 Sep 2012 19:36:04 -0400
Message-ID: <CADkTA4ONx0E3+a-ijSwjqY-5-Q_PBUhyniawNKz3V44LsZ==Yw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
Cc: yocto@yoctoproject.org
Subject: Re: About bug 2331
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
X-List-Received-Date: Wed, 19 Sep 2012 23:36:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 19, 2012 at 5:13 PM, Marc Ferland <ferlandm@sonatest.com> wrote:
> Saul Wold <sgw@linux.intel.com> writes:
>
>> On 09/19/2012 01:53 PM, Marc Ferland wrote:
>>> Saul Wold <sgw@linux.intel.com> writes:
>>>
>>>> On 09/19/2012 01:41 PM, Marc Ferland wrote:
>>>>> Hi,
>>>>>
>>>>> I'm currently trying to create a "live" system with squashfs+unionfs and
>>>>> I stumbled on the same bug described here:
>>>>>
>>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2331
>>>>>
>>>>> I was wondering if there was a plan to resolve this issue for 1.3?
>>>>>
>>>> Marc,
>>>>
>>>> It seems to be marked as resolved and verified, is there still and
>>>> issue?  If so we need to reopen this bug.  Or are you referring to the
>>>> underlying issue?
>>>>
>>> I was referring to the underlying issue.
>>>
>>>
>> No, unfortunately it seems that did not have visibility, I think bug
>> 1487 is open against that issue, at least with an ISO image, which is
>> what got partially reverted.  I think the issue was upstream unionfs,
>> do you know if any changes to resolve the problem upstream?
>>
> Unfortunately no. Maybe I'll have more chance using aufs or maybe
> overlayfs. Unionfs looks pretty much dead... I'm probably better off
> without it!

If you check the unionfs support I have staged in the 3.4 kernel, it contains
several big usability fixes.

If you look at the yocto dev kernel, I've dropped unionfs and am taking aufs
for a spin (while watching overlayfs and unionmounts as well).

So there are options to try that may address that issue, and also chart a
way forward.

Cheers,

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

