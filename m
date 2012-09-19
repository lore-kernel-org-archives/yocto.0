Return-Path: <jefro.net@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46C7AE013EF
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:45:18 -0700 (PDT)
Received: by ieak12 with SMTP id k12so321650iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 13:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=xOMKSw3G8eKbipYupuYBmzBN/ZaEjwZGlVUI3TOZimo=;
	b=gZhv5PkfjwTdiIXbj9jZCU7nVGapJGYiFzxQhrdMlro6wLpw85ZhkeW7dNPKNCRRdD
	sNBco2AOY0JVl8YWf+BGRyq+qLt5luwSDyl5FbY9uvc0ratuZjiJ4N6sMDrXzTw3b4Oo
	TXV9ssdICfJ7BhI01gAliXbGJTxQvXQQwUkJ2d1sFARtTEnMZz9CyV0toDSD5Sn9Z8jb
	FcCjKcisRJqExdoDZJ0diTFbGarM7/DHPd7vUKlWdiLgJwOlGtyluUBY8jmwceLck/dB
	7J98R/OlrC2316QMO0ZuCEQsZv7JuZfErF/t3TPEa2BXjc2MgKcdEU75z7DKuq9iPgSk
	dVAw==
MIME-Version: 1.0
Received: by 10.50.189.200 with SMTP id gk8mr396967igc.65.1348087517684; Wed,
	19 Sep 2012 13:45:17 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.147.37 with HTTP; Wed, 19 Sep 2012 13:45:17 -0700 (PDT)
In-Reply-To: <1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
	<CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
	<CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
	<1348069852.1829.20.camel@omclinuxballt.devnet.ordermatic.net>
Date: Wed, 19 Sep 2012 13:45:17 -0700
X-Google-Sender-Auth: Fjt1rzhZRhnNR94bfSGntO9EZy4
Message-ID: <CA+YB3rZwSjD6GK5-FV1yc7umAe8=HdxoMruUq9NcEtcOgda_BQ@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Brian Lloyd <blloyd@familyhonor.net>
Cc: yocto@yoctoproject.org
Subject: Re: All incompassing documentation
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
X-List-Received-Date: Wed, 19 Sep 2012 20:45:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm afraid "source tarball" doesn't quite work, as not all are
required to be tarballs, e.g. if something is in a git repo or in a
local CVS repo.

Can it be true that there is no single term that refers to the
collection of pieces that, when built, create a discrete package?

On Wed, Sep 19, 2012 at 8:50 AM, Brian Lloyd <blloyd@familyhonor.net> wrote:
> I would like to point out Yocto's own documentation uses it for two
> separate items, which is the point I was making.  Neither of which are
> source tarballs....
>
> It is a product produced by Yocto.
> It is the items to be installed from the host system.

I think these actually refer to the same thing. "Packages" are
products of the Yocto Project build process whose purpose is to be
installed on the target. They are "packaged" using a specific format
(.rpm, .deb, .ipk). This is a universal development term, at least
within the wider Linux community, not a specific Yocto Project term.
Unless I misunderstand what you are saying?

> That may be right, but if so, we can't say that for Yocto it only means
> the first, as we use it for the second as well.  If we want it to only
> be the first, then we must use a different term for the second, such as
> host applications, and the user should be notified of the unusual word
> choice and why early in the documentation.  I believe there are several
> locations where terms are explained already in the documentation, even
> if we later use the term in a way other than that identified as it's
> meaning (3.4. Yocto Project Terms comes to mind).  Discussing Package
> meaning there, perhaps we should identify the term that will be used for
> host package, or how we will identify when the term is used with a
> different meaning than the one just given.

There shouldn't be any applications on your host (meaning: built for
your host) that end up being installed on the target. There may be
"packages" that you have downloaded that you'd like to install on your
target, but that

> Or if we concede that packages is what the user expects to see when
> discussing what to install, we need to disambiguate in some way to
> differentiate the two uses.  Indexes are good at this.  The biggest
> advantage to an index over straight search is that author's can use
> context to differentiate the different uses when a word has them.
> Another option could be prepending to both the context at each location
> used, so we use Yocto package and host package or where we always prefix
> context to one of the two for every use.  However, doing only one with a
> context makes for more manual searches, where we are making a document
> with the goal of making searching for information more effective.

Can you tell us what you mean by "host package"?

>
> On Tue, 2012-09-18 at 21:02 -0700, Jeff Osier-Mixon wrote:
>> <snipped>
>>
>> On Tue, Sep 18, 2012 at 12:04 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>> > On Tue, Sep 18, 2012 at 2:23 PM, Brian Lloyd <blloyd@familyhonor.net> wrote:
>> >> Most of my hits for such an item
>> >> discuss the packages I will need to install in my host distribution so I
>> >> can use the yocto project (not surprised, the danger of a term as vague
>> >> as packages).
>> >
>> > In bitbake/yocto/OE/etc. the term "packages" is not vague and has a
>> > very specific meaning: bitbake processes recipes to produce one or
>> > more packages. Some of these packages are then assembled into an
>>
>> This is quite true - but the term itself is overloaded. I have often
>> heard "package" referred to also as the collection of source code one
>> would use to create a given piece of software, e.g. "the busybox
>> package". This is no doubt the result of downloading numerous
>> "packages" from the net in binary form rather than source. It doesn't
>> help that there are "source packages" in the RPM world
>> (http://www.rpm.org/max-rpm/s1-rpm-miscellania-srpms.html) and in the
>> Debian world (http://www.debian.org/doc/manuals/apt-howto/ch-sourcehandling.en.html),
>> so the confusion is natural.
>>
>> In OE-based systems like the Yocto Project, the term refers to the
>> results of a build rather than the ingredients. I agree with you that
>> we should continue to push the correct usage to unload the term.
>> Anyone have a good term for "source packages"?
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

