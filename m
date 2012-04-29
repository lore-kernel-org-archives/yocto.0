Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2035E00723
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 08:03:24 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3725444pbb.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 08:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7/zlzMgBr9zSCxroW+16NSc83j3zya3u+xhszWUEQX4=;
	b=Cgvtdx+kPSbLcCL6cv8LkaTtAjwz1XTm7GUI4nC0o2Vt1ebODFD1kIFjRPXWzucZab
	s9vjc4s6H749w8uZFYEV4wPhRYvnBfSeE/zSYe3JJb4aQauTsexIG5L+B0MYVExppIBf
	YZl5g2T9hIIdOyix3SQEZvZh1u5BimnWniSf78uxH5W7P7x0es6922yD9cPorAX5YZRD
	teXCGeTy3PtswLl34Yt/mg1Z+4Ee+UGPNnI29if4+9z5b1vTl2xn0e7S9XoQVZLQF/lY
	3dMbSxyKyp0NIe/mFmpOgOvQMPDX7KWwhVjsu3QeG+F5mEXhAQH0odLT5hYnfhwoImOg
	SX0Q==
MIME-Version: 1.0
Received: by 10.68.191.130 with SMTP id gy2mr5522356pbc.62.1335711804199; Sun,
	29 Apr 2012 08:03:24 -0700 (PDT)
Received: by 10.68.55.104 with HTTP; Sun, 29 Apr 2012 08:03:24 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1204290608390.18791@oneiric>
References: <alpine.DEB.2.02.1204271850580.3661@oneiric>
	<CAMKF1sq+D5vPhm2A=s7+hMkUkX0mw4N57NdDrkdHzGRxQ=-ioQ@mail.gmail.com>
	<alpine.DEB.2.02.1204290608390.18791@oneiric>
Date: Sun, 29 Apr 2012 11:03:24 -0400
Message-ID: <CADkTA4M9gGXZ_D70y7TEZG5SJUpPG-Zyo2mk84XUUKfDr0sNnw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: looking for recom for MIPS dev kit (*not* RS pro)
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
X-List-Received-Date: Sun, 29 Apr 2012 15:03:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 29, 2012 at 6:09 AM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
> On Sat, 28 Apr 2012, Khem Raj wrote:
>
>> On Fri, Apr 27, 2012 at 3:53 PM, Robert P. J. Day <rpjday@crashcourse.ca=
> wrote:
>> >
>> > =A0a potential training client of mine would like an intro embedded
>> > linux course ideally on a MIPS-based dev kit. =A0i'm aware that the
>> > reference BSP for that in yocto is the routerstation pro, but i just
>> > learned today that it's "end of life" so i'd rather get something
>> > newer.
>> >
>> > =A0any recommendations on a decent, not stupidly expensive MIPS dev ki=
t
>>
>> http://www.lemote.com/en/products/Notebook/2010/0310/112.html
>>
>> > that perhaps already has some yocto backing? =A0thanks.
>> >
>>
>> i dont think yocto has a BSP for it though.
>
> =A0interesting. =A0but given that the routerstation pro is end of lifed,
> are there any plans to switch to a different MIPS platform as the
> yocto reference for MIPS? =A0just curious.

Yes there is a plan. The link that Khem sent is one that I've been watching=
 and
considering, but no decision has been made yet. We'll refresh the hardware
reference BSPs in the 1.3 cycle.

Cheers,

Bruce

>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://crashcourse.ca
>
> Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 http://twitter.com/rpjday
> LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 htt=
p://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

