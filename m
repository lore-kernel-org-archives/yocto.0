Return-Path: <ethersoft@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 560EFE014E1
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2013 09:12:55 -0800 (PST)
Received: by mail-ve0-f179.google.com with SMTP id da11so1870551veb.24
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2013 09:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=2MELJXvud7/Pb1bCLyS42oU/N+BW2i9sdRozPKyZG3w=;
	b=N8Zut8LmMZPS/RQ7rG/0E0t0cfD1xJ9napFsja0/bGEfcpjO5qlm6MGuuRmi7KpQWA
	7cETbYyQMVPhwDOopJu/1gk5262E4svK9UgKofFV0tu383V7nTiPpgCg0RZR1ANX7wcc
	fCeE3zKP/rBt0nBvSXrojSEnpAx0QgbsLcV/prF3r5rC39+hLL45yiODuvd9z8s5b6VI
	Y8Cj699WGSQ1mt7//2gfC73wcxYVn0UbG4XXQtMFnkjEt/BwIwl5tz+Rq84ZUU3GOciL
	wGYXZ1+QKgmrjfP2nWtZ7VZhoHqAzXuHKjuKfxjCS83kR5UUlZp91/yUMY88IIhKYk96
	jk/g==
MIME-Version: 1.0
X-Received: by 10.220.151.76 with SMTP id b12mr2569234vcw.16.1362849174406;
	Sat, 09 Mar 2013 09:12:54 -0800 (PST)
Sender: ethersoft@gmail.com
Received: by 10.58.196.236 with HTTP; Sat, 9 Mar 2013 09:12:54 -0800 (PST)
In-Reply-To: <513AAC65.1050002@windriver.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
Date: Sat, 9 Mar 2013 12:12:54 -0500
X-Google-Sender-Auth: AQCawxEmyEJSabds6vJs7OsX1t0
Message-ID: <CACeGjnUFunobYrY-VZeU+WNqJ2t5ieb7+wq9R6ABiwGCncxOPg@mail.gmail.com>
From: Vin Shelton <acs@alumni.princeton.edu>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Sat, 09 Mar 2013 17:12:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 8, 2013 at 10:28 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-03-08 5:36 PM, David Mulder wrote:
>> I=92m running a 10us control loop by (under vxWorks) setting one thread=
=92s
>> priority to max and not yielding ever (letting other tasks run on other
>> cores), but Linux seems to thwart that capability: Ubuntu swaps out my
>> thread occasionally for hundreds of microseconds; Yocto prints a
>> =93[sched_delayed] sched: RT throttling activated=94 message as soon as =
I
>> start my thread, so it seems likely that it will swap out my thread
>> periodically (I=92m not quite able to confirm that yet), and even the
>> fastest thread swap that I=92ve heard of is too slow.
>
>
> You are looking for kernel functionality that doesn't exist yet. In
> any SMP system there are sources of cross cpu interference that can't
> be removed, if you do, the global state machines of the kernel will
> break and the system will eventually come to a halt.
>
> The system is trying to save you from yourself, by throttling the
> RT task from taking the entire system down.
>
> There is work in the mainline kernel and -rt communities around cpu
> and cpu isolation (some of which we'll try and make available via
> the yocto meta-virtualization or meta-realtime layer, when they are
> ready), it goes by names such as task_nohz or adaptive_nohz. It's
> a complex problem to solve (interrupts, rcu, lapic), and there's not
> likely to be anything available in the short term.

At ELC, Steve Rostedt said that this feature is currently targeted at
the June mainline kernel release, but there's a lot of work still to
be done, so that's not a firm date.

Regards,
  Vin Shelton

