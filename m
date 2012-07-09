Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4141FE006AD
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 10:02:19 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so11647936ggn.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 10:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=I+Z12ByWuJ9ZaI9JYgRPkERUqljHCxqzoyDtQEpjbz4=;
	b=IhQOu0W8x5l1GnbaBo+NzY6+ayMOgLiyAjLIQG4w4AM93kp3QKeFFIl/iMgG7ubIku
	520fwIZ6X00J4T5qw9U2iyxaLZGeq54zqFbxMVJpFC6DG9ilMRyh5iYz5rQrfuCu7giq
	mL5BuIVx260iIJd/zIHXTDYU4x9DKyENfFL/fLLT+FJOsDtglI75l3xRmSNSzis/sFmo
	lOb//1NTAE4qxnYgAA5VMc6HmmZzbg6XQ+mt+1Swm3e1yHB8x2x8lUkFYVh6U5Q6dowQ
	OSxaI8BJt7Axfh+bQClZKZNpyyvnt2lnEA5u8RgnGtF9wk+mpQwUplLZN3bkLJIhQdh/
	VTeg==
MIME-Version: 1.0
Received: by 10.60.172.143 with SMTP id bc15mr42482425oec.73.1341853338696;
	Mon, 09 Jul 2012 10:02:18 -0700 (PDT)
Received: by 10.182.42.4 with HTTP; Mon, 9 Jul 2012 10:02:18 -0700 (PDT)
In-Reply-To: <CAMKF1soaqxAO5+m6D+fYv6e=WPw4PmuwLR-FSTfz6N657+=11w@mail.gmail.com>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<CAMKF1soaqxAO5+m6D+fYv6e=WPw4PmuwLR-FSTfz6N657+=11w@mail.gmail.com>
Date: Mon, 9 Jul 2012 13:02:18 -0400
Message-ID: <CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi mailing list?
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
X-List-Received-Date: Mon, 09 Jul 2012 17:02:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 10:56 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Monday, July 9, 2012, r10kindsofpeople <r10kindsofpeople@gmail.com>
> wrote:
>> There was some discussion of setting up a mailing list for Raspberry
>> PI back in May...did anything come of this?
>>
>> Or is this [Yocto] the best place to post build questions regarding
>> meta-raspberrypi ?
>
> Build related makes sense for yocto to ml I think
>

I suspect they're more tightly related to the meta-raspberrypi than
general Yocto, but here goes with an example.  (Apologies in advance
if I have terminology wrong, I'm still getting up to speed with
Yocto).

To begin, I did a git clone of the Yocto master, then a git-clone of
meta-raspberrypi from github djwillis, then (after setting MACHINE and
DISTRO per readme) bitbake rpi-hwup-image.

Is this a silly thing to do?  Should I be using an earlier release of
Yocto?  Or...?

The first sign of trouble was an error message saying there were no
recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).
Noting that meta was at netbase-5.0 and that the .bbappend at a glance
did not look to be version specific, I renamed the meta-raspberrypi
recipe and directory to netbase-5.0, and the build was off and
running.

Now I'm getting fetch failures for a variety of libraries, and, I
think kernel-3.1.9.

I can probably sort out some of these using the same process, but the
larger question is whether I'm on the right track.

John

