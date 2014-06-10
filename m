Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B003E00BEC; Tue, 10 Jun 2014 08:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD21E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:42:23 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id wm4so7719987obc.40
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=zoM+QQVTrUWS5R/TxBiD8HguIyzxZi3n7Q5mA9IlekI=;
	b=UiPQHlz3zWENMjB3oGukpTK0SjEiBptToSzpfqatO5zGEjXi9Qr/z/glsZvLAaVwc2
	3r5KxC26na7qXw6CWWVNT4ZWNl7p8xsqse18LtnCRqeJgmLW9XBZa8WvLh1GAffuTlZT
	EXJTZw+lJV8VzOe8Z59QsbZdU3MSlTW4tyC7DVg1hRsLN4NppAdVoIg8Vj8AMS+NAQLT
	WYOYQmJvLGJ+/P2ST6vfRXlngeiQSIx1aMPGn5pJZUGuX0XHgeRwo5pXFset9MGsQCe8
	TAZfXSwTfsjXss1eA1gHx0CF48HXOp9UWusMR0IxCElp5aXdt5SYJB2etPWlJjlVM/Uo
	TNcw==
X-Gm-Message-State: ALoCoQn2LC1GY+XP3RQ0r2R75TWvcteSf45nJ3zaIdwbazySz0X05n+pAhS5hCv1dyBw987aEtRV
X-Received: by 10.182.171.7 with SMTP id aq7mr10370070obc.67.1402414942168;
	Tue, 10 Jun 2014 08:42:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.115.164 with HTTP; Tue, 10 Jun 2014 08:42:02 -0700 (PDT)
In-Reply-To: <539718B9.9030604@mindchasers.com>
References: <1402354370.9385.9.camel@marlon-Z68X-UD3H-B3>
	<20140610103736.GC24880@gmail.com>
	<CAALGJZaBFLsX3Knt35fGkvxh0uTz0-TQMZnveQh7paPZ9h438g@mail.gmail.com>
	<539718B9.9030604@mindchasers.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 10 Jun 2014 17:42:02 +0200
Message-ID: <CAP71Wjy3uBiWuzPgaT7pfAd=rW2qh0R44srPY41GAPG9CMMD2Q@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Why use Yocto?
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
X-List-Received-Date: Tue, 10 Jun 2014 15:42:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2014 at 4:39 PM, Bob Cochran <yocto@mindchasers.com> wrote:
>
> How dp you plan to sell/market/license your Ubuntu based machine?
>
> Would you become an Ubuntu hardware partner?
> http://www.ubuntu.com/partners/find-a-partner/hardware
>
> The scope of this partnership seems to be servers and desktops.  I assume
> they also have something in the works for smart phone partners.
>
> However, I'm guessing you're building something that doesn't fit these
> categories.
>
> I remember seeing various demo images over the years of Ubuntu running on
> embedded hardware, but it always seems to fizzle out.  EmbeddedUbuntu on =
the
> Ubuntu Wiki was last updated in 2009.
>
> But maybe you're talking with people at Canonical and they are telling yo=
u
> something different? If so, please share.

i guess this is of interest for the discussion (from [1]):

=3D=3D=3D
2. Your use of Ubuntu

You can download, install and receive updates to Ubuntu for free.
Ubuntu is freely available to all users for personal, or in the case
of organisations, internal use. It is provided for this use without
warranty. All implied warranties are disclaimed to the fullest extent
permitted at law.

You can modify Ubuntu for personal or internal use.
You can make changes to Ubuntu for your own personal use or for your
organisation=E2=80=99s own internal use.

You can redistribute Ubuntu, but only where there has been no
modification to it.
You can redistribute Ubuntu in its unmodified form, complete with the
installer images and packages provided by Canonical (this includes the
publication or launch of virtual machine images).

Any redistribution of modified versions of Ubuntu must be approved,
certified or provided by Canonical if you are going to associate it
with the Trademarks. Otherwise you must remove and replace the
Trademarks and will need to recompile the source code to create your
own binaries. This does not affect your rights under any open source
licence applicable to any of the components of Ubuntu. If you need us
to approve, certify or provide modified versions for redistribution
you will require a licence agreement from Canonical, for which you may
be required to pay. For further information, please contact us (as set
out below).
=3D=3D=3D

IANAL... but i guess the last paragraph clarifies what you can do (or not).

[1] http://www.canonical.com/intellectual-property-rights-policy

