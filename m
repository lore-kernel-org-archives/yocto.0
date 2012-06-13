Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BB8E01436
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 19:34:00 -0700 (PDT)
Received: by dadz8 with SMTP id z8so353810dad.35
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 19:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=/Nk6ckl94SNbq3U/viQkDwIbLnhtmhRPZClysithSyk=;
	b=TxOQhdZat6vm9zxb/m08Cwn/2tMVrgt6USQpgaIb+XuM1KABIWYkOciwgCCawcrBme
	4kx3nwaJ4aY2hqr042sIs52rlkKPEZcuLzPjQgH2P6hHWgi3F1bqv0LBYI4+04fH2SAN
	jzxiB+W/rd6asv9qAf40fg/4TxxlnYlivDdkQ3SLamC3OTb00kUz6TCyTKIVdALcUf7m
	vPmt0LNc7UKtOVyu5oI8Ip3SRfT14GMQ0ozqvB29SURwWrd6PbERCL17sYsgYXbtxWG0
	QsCnJvGjNpcLC0IUh0yU3Q7xUZIlaM73AZFN8ZvityR0ceQ34J0XlTPtwVmoc/9lSXGs
	oDLA==
MIME-Version: 1.0
Received: by 10.68.222.163 with SMTP id qn3mr44973992pbc.135.1339554840042;
	Tue, 12 Jun 2012 19:34:00 -0700 (PDT)
Received: by 10.68.197.4 with HTTP; Tue, 12 Jun 2012 19:34:00 -0700 (PDT)
In-Reply-To: <CAGV0yjPO-roFgDxEY8J6Zo0THAOCHNgf1dTEzPHuAR-sc3h58w@mail.gmail.com>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<4F7D2E45.2020408@r-finger.com>
	<loom.20120613T005341-535@post.gmane.org>
	<CADkTA4NZ_Z81-AhvQww4tiY3d0qjE1Ryyes_BuCGJFfGwQ3bew@mail.gmail.com>
	<CAGV0yjPO-roFgDxEY8J6Zo0THAOCHNgf1dTEzPHuAR-sc3h58w@mail.gmail.com>
Date: Tue, 12 Jun 2012 22:34:00 -0400
Message-ID: <CADkTA4OASbns5iwu2m7ECa6C2BANteT3+qOKizxHEEef0iaCzA@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Jun 2012 02:34:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 12, 2012 at 7:38 PM, Ryan Julian <ryanjulian@berkeley.edu> wrot=
e:
> Hi Bruce,
>
> The build I'm using already includes Denys' patch.
>
> I was referring to Tomas' original problem, in which the MMC card
> successfully initialized, but the kernel still panics while trying to mou=
nt
> mmcblk0p2. These two seem unrelated, unless I'm mistaken.

The two issues that we worked with ended up both being resolved by the pree=
mpt
disable patch. Both stemmed from the MMC card not being recognized, and tha=
t
was due to in kernel preemption.

So we may be seeing something different yet again here ..

Cheers,

Bruce

>
> On Tue, Jun 12, 2012 at 4:10 PM, Bruce Ashfield <bruce.ashfield@gmail.com=
>
> wrote:
>>
>> On Tue, Jun 12, 2012 at 7:00 PM, Ryan Julian <ryanjulian@berkeley.edu>
>> wrote:
>> > Tomas Frydrych <tf+lists.yocto@...> writes:
>> >> This is a different issue. I get this too with one particular MMC car=
d,
>> >> but with 2.6.37 kernel, if I unplug this card and plug it back in the
>> >> boot resumes and completes successfully. If I do this with the 3.0.2
>> >> kernel, the bug I described with the associated kernel panic then kic=
ks
>> >> in.
>> >>
>> >> Tomas
>> >>
>> >> >
>> >> >
>> >> >
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@...
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >>
>> >
>> > Bruce and Tomas,
>> > Did you ever find a solution to this issue?
>> >
>> > I'm encountering the same issue on the BB-xM Rev C. I've tested on two
>> > different
>> > boards from different production runs, both with an error identical to
>> > Tomas'.
>> > I'd be happy to run tests/provide logs if given instructions.
>>
>> We did. Denys provided us a fix, the only one that was available at the
>> time:
>>
>> commit a49b0ec1356bb15a6a8c76b76c464ab3f1f61840
>> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>> Date: =A0 Tue Apr 17 13:45:47 2012 -0400
>>
>> =A0 =A0meta/beagleboard: disable CONFIG_PREEMPT
>>
>> =A0 =A0The boot hangs with the message:
>> =A0 =A0mmc0: error -110 whilst initialising SD card
>>
>> =A0 =A0The MMC driver has issues initializing when PREEMPT is enabled
>> (either forced
>> =A0 =A0or voluntary). Unplugging and then plugging the card back will re=
set
>> the
>> =A0 =A0driver and continue booting. Alternatively, disable preemption.
>>
>> =A0 =A0Signed-off-by: Denys Dmytriyenko <denys@ti.com>
>> =A0 =A0Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>>
>> :000000 100644 0000000... 0cbeb5a... A =A0bsp/beagleboard/no-preempt.cfg
>> :000000 100644 0000000... 1e75e15... A =A0bsp/beagleboard/no-preempt.scc
>>
>> Cheers,
>>
>> Bruce
>>
>> >
>> > Thanks!
>> >
>> > -Ryan
>> >
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

