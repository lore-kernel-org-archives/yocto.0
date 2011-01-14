Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06FE24C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 19:37:01 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so2335181iwn.35
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 17:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Z4fDV0uKWznh5JtKoXA+llX61BKJKgB+QiCJxbXac0I=;
	b=wyOMUFGloqJeOmalO9gl/fxkeP8sh0xmnBmwf69HTeOjFeTPYufVjO8th+a58xmhnv
	YD6bb2ceYuykitmDRr4LPcm9pTVMZXdAWqhpm/1EsndT9J0tUiylTv9EdoQTbWzU2SqY
	CLSLrwiawgGFyUByQtKoOAu0bLHkAe0AYwEzU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=oJrGk6Y2GMBVdfZ+1EZ4sJfRBAqHVOIKkldutEu4UyhSmkuwRw6O9xb2qpm7+XyCpE
	xZxEW/VU2A3tTJxZP8T1VMdutN+yP1RucJKe4HZ3hOo6UXdxf2aetN10G/bkjUl3+2sY
	Gl2AA1G3BxRt9QGVr8DKlnHiajnY8EWlxCAOo=
MIME-Version: 1.0
Received: by 10.42.224.3 with SMTP id im3mr159337icb.341.1294969021578; Thu,
	13 Jan 2011 17:37:01 -0800 (PST)
Received: by 10.42.176.8 with HTTP; Thu, 13 Jan 2011 17:37:01 -0800 (PST)
In-Reply-To: <1294937243.9232.2.camel@elmorro>
References: <4D2F2977.90007@intel.com> <4D2F2A4A.8030305@windriver.com>
	<1294937243.9232.2.camel@elmorro>
Date: Thu, 13 Jan 2011 23:37:01 -0200
Message-ID: <AANLkTime7E3HN64prTXoxfu_yb6BqW56_=jU7L38S_MP@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current Build Failures for d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Fri, 14 Jan 2011 01:37:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I have two build machines:

x86 ubuntu 10.04 at work
x86_64 ubuntu 10.04 at home

At home all things goes ok. But at work perf has failed.

The problem is LIBPERL. I can't understand why but at work the
Makefile from perf does not have the flag NO_LIBPERL.

To 'solve'  it I put:

do_compile_perf() {
	oe_runmake -C ${S}/tools/perf CC=3D"${CC}" LD=3D"${LD}" prefix=3D${prefix}
NO_LIBPERL=3D1
}

in linux-tools.inc

Thanks.

On Thu, Jan 13, 2011 at 2:47 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Thu, 2011-01-13 at 08:37 -0800, Bruce Ashfield wrote:
>> On 11-01-13 11:33 AM, Elizabeth Flanagan wrote:
>> > All,
>> >
>> > The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 =
is
>> > showing 3 build failures so far.
>> >
>> > Machine: qemux86
>> > Failure: intermittent tasks_0.18 failure at do_compile
>> > Description: Tasks_0.18 has failed during one buildset, however it's n=
ot
>> > failing on the other.
>> >
>> >
>> > Machine: arm
>> > Failure: sanity tests time out and cause cascading failures.
>> > Description: I'm patching the autobuilder today so that sanity tests
>> > timing out shouldn't cause a cascading failure, however the arm sanity
>> > tests are still timing out.
>> >
>> > Machine: qemux86-64
>> > Failure: linux-yocto_git failing at do_compile_perf
>> > Description:
>> > | =C2=A0 =C2=A0 CC util/scripting-engines/trace-event-perl.o
>> > | cc1: warnings being treated as errors
>> > | cc1: error: include location "/usr/local/include" is unsafe for
>> > cross-compilation
>>
>> I saw this one as well, but hadn't gone back to look at
>> it yet. Did something change underneath us?
>>
>> I haven't updated any parts of the recipes or kernel that
>> would have triggered the new failure. Or at least nothing
>> that has ever showed up in my testing.
>>
>
> Yeah, it's strange that this starts happening seemingly out of the blue
> - nothing wrt this has changed recently AFAICS.
>
>> Darren/Tom: you guys have been into perf/trace recently,
>> any ideas (or time) for a quick fix ? I'm going to be
>> pegged for the day trying to sort out some other items.
>>
>
> Coincidentally, I was going to look at perf scripting next week - guess
> I'll start this week instead. =C2=A0Don't have a quick fix off the top of=
 my
> head - will start looking into it later today/tonight...
>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>> > | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

