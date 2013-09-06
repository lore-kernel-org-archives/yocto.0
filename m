Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4D8E013AD
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 01:59:36 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id o17so3495084oag.7
	for <yocto@yoctoproject.org>; Fri, 06 Sep 2013 01:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=mUrGiV0esMBzq3eSpTsBUr8X+qco/CylKCuRQq/Moh0=;
	b=n2F+kFAuiJCwrlX8MIiVEJkP39Leo4vNVlEJjrie7o6VcdMtv7w2SI46IndVPd533y
	uOfyjR7KBVcvczxICsOw6Wtz6z2sN3X9AH21j94Irq4wqbJPDdArhFYiOt/itotzGd4m
	gVqsw4WDe3VtaQvs3z8L4UtrNJ3i80aYkAKjOoYZqv9PK5wqQt8J/U1JDD0qe0rVEnrA
	JfVBv4RCmVlYhq7f9agjNWLe/WzFFfitEEIfJUU9qfhSv6iDG7iPnS/LfUZBMUSbO9+t
	erEyDfMAZbnlULR1HAC/W2XQ7G2XVqq3MiQLDqo2Wnyfn/elrc/K/e2rC98Ds3T+iyal
	08jA==
MIME-Version: 1.0
X-Received: by 10.182.143.5 with SMTP id sa5mr1069649obb.80.1378457975600;
	Fri, 06 Sep 2013 01:59:35 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Fri, 6 Sep 2013 01:59:35 -0700 (PDT)
In-Reply-To: <1378455954.32427.92.camel@ted>
References: <CAFyqS9ph4qdURC517N7cDr_05KS3kQJMgoQ-tMV+vLUXwMd70A@mail.gmail.com>
	<CAFyqS9qZAsFnXn2CF7-K6fWK3yEMLAZbDTkx_a81=s+Nj=ugUw@mail.gmail.com>
	<5226FF30.9010000@vtkloud.com>
	<CAFyqS9r=urMtznxZphVbnKEHiOrPVBGDtVFH1a8hisY2rcqrDQ@mail.gmail.com>
	<CAFyqS9pRok8XEurH+r0Z6jTNiqADML1b1+xmPRzY49WMjVc6ww@mail.gmail.com>
	<CAFyqS9pWkNq6-yH8DVgqYXZrZKdUBdghogs6iyh+_1AbDdeYKA@mail.gmail.com>
	<CAFyqS9rQ8vNtCtQO-MYQ2Jbr8xHmH-k1JjS6D__ic6PrOfN5Dg@mail.gmail.com>
	<CAFyqS9o+HWcMBBD_=E4Bm-XSO5U0yKmJRtE4RbotiKCdABWO2Q@mail.gmail.com>
	<CAFyqS9rvkdVYnAb2tJdaNaoxav5_5QcPNG0-mxrWN1-qamHcKw@mail.gmail.com>
	<CAFyqS9rJG0T1EAVZ=eTBpoOhO-FVjs28S8eWRtohF3hLzZg1+A@mail.gmail.com>
	<1378455954.32427.92.camel@ted>
Date: Fri, 6 Sep 2013 10:59:35 +0200
Message-ID: <CAFyqS9oSKq4JTTiO9auGpw2XK_z5kfxKnh766gyRQQ1jxntDwg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libtool problem?
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
X-List-Received-Date: Fri, 06 Sep 2013 08:59:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 6, 2013 at 10:25 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2013-09-05 at 17:44 +0200, Hans Beck=E9rus wrote:
>> I have now prepared a patch that will fix this problem i Yocto. Since
>> no one (so far) commented on this issue I interpreted the silence as
>> that nothing has been done about this bug.
>
> I think that coming up to release, we've all be focusing on that. Once
> you'd identified a specific issue like this, filing a bug report in the
> bugzilla can be a good way of getting people's attention, particularly
> when you have a patch.
>
> The key question is the help message:
>
>  --with-libtool-sysroot=3DDIR Search for dependent libraries within DIR
>                        (or the compiler's sysroot if not specified).
>
> so yes, this sounds like a genuine bug in libtool. Would you like to
> send a patch to the OE-Core mailing list which adds your patch, along
> with a description of the problem in the commit messages, a proper patch
> header (description and Upstream-Status:) and signed-off-by line?
>
> If you do, I think we'll likely include it. If not, it will need to wait
> for someone to turn this into a full commit which might take a little
> longer but it does look like a good change.
>
Hi Richard, I am fully aware that people are currently on their toes
for the upcoming release.
I did not mean to sound harsh, if that was how it came out, I am truly
sorry. It is just that I am used to quick feedback :) and since I
heard nothing I though maybe this problem is to specific for anyone to
actually comment on it. As I said, this is really a bug in libtool so
the best solution would of course be an upstream fix. But I needed a
solution to this much quicker than that. I am not really expecting
Yocto to fix a libtool problem. I only wished to flag for the problem
and provide the patch if more people stumble into the same issue. And
sure, I can try to post this patch in a proper way. I will probably
mess it up, but there is a first time for everything ;) Is there some
document that describes the exact procedure for sending a patch for
review in Yocto? I guess you also wish to have some ticket id or
something to connect it to?
As it stands right now we have a .bbappend to workaround this so there
is really no panic.

Thanks.
Hans








> Cheers,
>
> Richard
>
>
>
>> But I am very surprised, to
>> say the least, that this problem has passed unnoticed!
>> The patch goes into meta/recipes-development/libtool/libtool. This
>> patch *must* be applied after Khems patch that renames --with-sysroot
>> to --with-libtool-sysroot (rename-with-sysroot.patch).
>> After applying the patch (and added it to libtool-2.4.2.inc) the
>> populated SDK toolchain works as expected also when
>> --with-libtool-sysroot is not provided, instead it is picked up from
>> $CC --print-sysroot. I have filed a bug report to bug-libtool since
>> the real problem is in libtool itself, not Yocto.
>
>
>

