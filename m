Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 280FDE014DB
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2013 19:09:40 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id ek20so2877866lab.30
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2013 19:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=lWWMIysZDIZJrnnRQ4ShIVvxvYGcPyy+4BmRhz4QaEk=;
	b=FQkYCX9haejFPxc7rAyvnmnoiacJjchz5L27QzMr5tQYhltyb8oPEkJEuhB2cormc8
	AV584IkJsTECViFf5AL3fvexhay2hFs29IMH6D8VKosUxHqfDaO9oBBZRAgz5n0vhnxn
	zNDVUpMpw0tuQVefboyknaQDClKiYcjZIeXtV38nU74tYZMWAEcXi5lO8moThXS66CZo
	GEgHscVowmGlpdXfSX1rNY4uGWi69g2w0iG+VKc8lotQxESvb1RH9yJwFHS/ZgYct4+5
	xndJcEpbe6F+SQLW+b+2LCDyrS2uUh9BXev8qjkGrwndAAblMDLRK9cy24tf7E447zzs
	KtyQ==
MIME-Version: 1.0
X-Received: by 10.112.50.169 with SMTP id d9mr2874016lbo.57.1362884979424;
	Sat, 09 Mar 2013 19:09:39 -0800 (PST)
Received: by 10.112.61.3 with HTTP; Sat, 9 Mar 2013 19:09:39 -0800 (PST)
In-Reply-To: <CACeGjnUFunobYrY-VZeU+WNqJ2t5ieb7+wq9R6ABiwGCncxOPg@mail.gmail.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<CACeGjnUFunobYrY-VZeU+WNqJ2t5ieb7+wq9R6ABiwGCncxOPg@mail.gmail.com>
Date: Sat, 9 Mar 2013 22:09:39 -0500
Message-ID: <CADkTA4NUtic4QcCqTxk8+UEVOAGYPJZy1U68GsO3x-BgfoB16w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Vin Shelton <acs@alumni.princeton.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	David Mulder <dmulder@lasx.com>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Sun, 10 Mar 2013 03:09:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 9, 2013 at 12:12 PM, Vin Shelton <acs@alumni.princeton.edu> wro=
te:
> On Fri, Mar 8, 2013 at 10:28 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>> On 13-03-08 5:36 PM, David Mulder wrote:
>>> I=92m running a 10us control loop by (under vxWorks) setting one thread=
=92s
>>> priority to max and not yielding ever (letting other tasks run on other
>>> cores), but Linux seems to thwart that capability: Ubuntu swaps out my
>>> thread occasionally for hundreds of microseconds; Yocto prints a
>>> =93[sched_delayed] sched: RT throttling activated=94 message as soon as=
 I
>>> start my thread, so it seems likely that it will swap out my thread
>>> periodically (I=92m not quite able to confirm that yet), and even the
>>> fastest thread swap that I=92ve heard of is too slow.
>>
>>
>> You are looking for kernel functionality that doesn't exist yet. In
>> any SMP system there are sources of cross cpu interference that can't
>> be removed, if you do, the global state machines of the kernel will
>> break and the system will eventually come to a halt.
>>
>> The system is trying to save you from yourself, by throttling the
>> RT task from taking the entire system down.
>>
>> There is work in the mainline kernel and -rt communities around cpu
>> and cpu isolation (some of which we'll try and make available via
>> the yocto meta-virtualization or meta-realtime layer, when they are
>> ready), it goes by names such as task_nohz or adaptive_nohz. It's
>> a complex problem to solve (interrupts, rcu, lapic), and there's not
>> likely to be anything available in the short term.
>
> At ELC, Steve Rostedt said that this feature is currently targeted at
> the June mainline kernel release, but there's a lot of work still to
> be done, so that's not a firm date.

Absolutely. There's no such thing as a firm date for anything, I (among
others) are following the development closely, testing, and helping whereve=
r
possible.

Cheers,

Bruce

>
> Regards,
>   Vin Shelton
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

