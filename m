Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E2BCE0140C
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:10:50 -0700 (PDT)
Received: by dadz8 with SMTP id z8so122418dad.35
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JM5TIxoLhe+jUoLengB7LkNYwHvHXrTHj52LzgWpfm8=;
	b=JttkQpVtmsnS7h+PCs9iKJkBV94I/4sUHonsn0TFChBfcFfUqSHEy9YjDgsGkOeSex
	R2+XPIpbqqF1hM2LNbYrtMLZxE7pKU2TbQ47/og+w7ST3tR7aqMmI4wFHPZDnlHGJVJd
	n65qCsUYRpWaArwnqSbXHLT0cDx2H8W+pWE4nMykNRnwa0mUiqP+7300neiahUEa7o+3
	JzPKq+W1eZDLtEYRy43PBO1jamnKVVuEKsiQkQAXbf5GOHSVNHlH0r8HkykrsNqmHf6i
	rB7LGkkl7oHorMZ5vVkaL/An2vC+/y/O/dgKDJmoEdPMw7fRvjLB/3IfQweZH59ybuVm
	4YKA==
MIME-Version: 1.0
Received: by 10.68.231.40 with SMTP id td8mr44294408pbc.150.1339542649714;
	Tue, 12 Jun 2012 16:10:49 -0700 (PDT)
Received: by 10.68.197.4 with HTTP; Tue, 12 Jun 2012 16:10:49 -0700 (PDT)
In-Reply-To: <loom.20120613T005341-535@post.gmane.org>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<4F7D2E45.2020408@r-finger.com>
	<loom.20120613T005341-535@post.gmane.org>
Date: Tue, 12 Jun 2012 19:10:49 -0400
Message-ID: <CADkTA4NZ_Z81-AhvQww4tiY3d0qjE1Ryyes_BuCGJFfGwQ3bew@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Ryan Julian <ryanjulian@berkeley.edu>
Cc: yocto@yoctoproject.org
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Tue, 12 Jun 2012 23:10:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 12, 2012 at 7:00 PM, Ryan Julian <ryanjulian@berkeley.edu> wrote:
> Tomas Frydrych <tf+lists.yocto@...> writes:
>> This is a different issue. I get this too with one particular MMC card,
>> but with 2.6.37 kernel, if I unplug this card and plug it back in the
>> boot resumes and completes successfully. If I do this with the 3.0.2
>> kernel, the bug I described with the associated kernel panic then kicks in.
>>
>> Tomas
>>
>> >
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@...
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
> Bruce and Tomas,
> Did you ever find a solution to this issue?
>
> I'm encountering the same issue on the BB-xM Rev C. I've tested on two different
> boards from different production runs, both with an error identical to Tomas'.
> I'd be happy to run tests/provide logs if given instructions.

We did. Denys provided us a fix, the only one that was available at the time:

commit a49b0ec1356bb15a6a8c76b76c464ab3f1f61840
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Tue Apr 17 13:45:47 2012 -0400

    meta/beagleboard: disable CONFIG_PREEMPT

    The boot hangs with the message:
    mmc0: error -110 whilst initialising SD card

    The MMC driver has issues initializing when PREEMPT is enabled
(either forced
    or voluntary). Unplugging and then plugging the card back will reset the
    driver and continue booting. Alternatively, disable preemption.

    Signed-off-by: Denys Dmytriyenko <denys@ti.com>
    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:000000 100644 0000000... 0cbeb5a... A  bsp/beagleboard/no-preempt.cfg
:000000 100644 0000000... 1e75e15... A  bsp/beagleboard/no-preempt.scc

Cheers,

Bruce

>
> Thanks!
>
> -Ryan
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

