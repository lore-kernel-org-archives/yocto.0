Return-Path: <kergoth@gmail.com>
Received: from mail-ey0-f172.google.com (mail-ey0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A92BE00771
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 08:30:00 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eye4 with SMTP id 4so1303020eye.17
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2011 08:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=oPs6IQQ0q7puw79UxoRLxDIeP1ibDZ/8Azw9+U8wS1Y=;
	b=lJTp3TxRF6xhwAk8YKUor0n8WlyAORLmZCxDmiQuW+HckdcXOnjmbSUZ7tfVg7bI9z
	nHRB7RApe1k8DRQURVZyu+FlNL9Jo3x6c+FADQP7WVqAGi2utpqTtVGexWmRAi09+duX
	DdtWyg5EwelkOjEwqIOv4ZnFqEsoYSubOozR8=
Received: by 10.204.5.199 with SMTP id 7mr349109bkw.219.1312471808262; Thu, 04
	Aug 2011 08:30:08 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.205.82.77 with HTTP; Thu, 4 Aug 2011 08:29:48 -0700 (PDT)
In-Reply-To: <2016626.y3nmSzkdEa@perseus>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<1312469410.14274.0.camel@rex> <4E3AB3B3.7050103@mlbassoc.com>
	<2016626.y3nmSzkdEa@perseus>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 4 Aug 2011 08:29:48 -0700
X-Google-Sender-Auth: hO4jWIUY7Z0s7bHANr3im2bmGQ8
Message-ID: <CABcZANkaSU5v6hKW_vvyDwcE377iRc17-A_50nwc21_UHWWATQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Thu, 04 Aug 2011 15:30:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 4, 2011 at 8:06 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thursday, August 04, 2011 08:58:59 AM Gary Thomas wrote:
>> On 2011-08-04 08:49, Richard Purdie wrote:
>> > On Wed, 2011-08-03 at 23:59 -0500, Kumar Gala wrote:
>> >> On Aug 3, 2011, at 10:12 AM, Richard Purdie wrote:
>> >>> On Wed, 2011-08-03 at 09:50 -0500, Kumar Gala wrote:
>> >>>> On Aug 3, 2011, at 9:22 AM, Richard Purdie wrote:
>> >>>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>> >>>>>> Bug submitted:
>> >>>>>>
>> >>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1323
>> >>>>>>
>> >>>>>> My question still stands even w/o it being in formal docs.
>> >>>>>
>> >>>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core
>> >>>>> changes.
>> >>>>> I'd be interested to know where we've missed the references to
>> >>>>> it and
>> >>>>> get to get those references fixed.
>> >>>>
>> >>>> Ok, but how does one use TCMODE? =C2=A0:)
>> >>>>
>> >>>> is there an example around anywhere?
>> >>>
>> >>> I'll explain on the condition that someone actually documents this
>> >>> ;-).
>> >>>
>> >>> TCMODE determines which of the files in
>> >>> meta/conf/distro/include/tcmode-* is used. It defaults to "default"
>> >>> and
>> >>> our default toolchain definition is in tcmode-default.inc.
>> >>>
>> >>> There is another example there which is "external-csl2008q3". As you
>> >>> can see from the tcmode-external-csl2008q3 file, it sets up the
>> >>> system to use an external toolchain instead.
>> >>>
>> >>> So you can define one of these files in your layer and then the
>> >>> system
>> >>> can select alternative toolchain configurations.
>> >>>
>> >>> Does that help? :)
>> >>>
>> >>> There is a similar TCLIBC variable which controls which libc is used
>> >>> (eglibc or uclibc).
>> >>
>> >> Yes that helps. =C2=A0So it looks as if today there is not a means to=
 point
>> >> to SDK prebuilt toolchain via this means.
>> >
>> > We have supported this in the past but it got messy and I'd really
>> > prefer people to use sstate for this.
>>
>> That would be great, if only it worked for this purpose. =C2=A0Sadly, I'=
ve not
>> had much luck with sharing toolchains like this.
>>
>> Here's my problem - I have a number of different target platforms (MACHI=
NE),
>> all of which are really the same ARM SoC (OMAP/3530=3D=3Darmv7a). =C2=A0=
When I try
>> to share the sstate between them, the toolchain always rebuilds from
>> scratch.
>
> can you post bitbake -e of say gcc-cross gcc-runtime and eglibc
> for both machines ? We somehow need to figure what changes the signatures


No need to use bitbake -e, just use bitbake-diffsigs.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

