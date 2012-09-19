Return-Path: <jefro.net@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9282E002AC
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 21:02:13 -0700 (PDT)
Received: by iecs9 with SMTP id s9so1150432iec.35
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 21:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=Cg39rmddlockr++stpq23rd6flLN7C1Jn4wBP7oYRV0=;
	b=jcYKTPEtfh8CBSaVmbf+LcfKeH+jch5jYQAIT3BuueasBkUEhuUkIUaezo6O+j3WFg
	/bbrfdzrtVoa22xproklSkDXG6sUYKNkMmbvR3Lu7PCPO4L+QvdBomeMIl2Z6F9TpHQ6
	K9vGXAPvtQ/uGYJ4bO2Sp3176Z/gwnplJq9Z/5ca6/J1Ke/RafhwO2GFZd5U+Gx5dpIO
	REmK+3DIBtjf0d2/MX3xxwEI8Usedm84vNsG0hFzfiUARcDA2sk6oZTpf6JVhUew2er5
	ge0vGUOwz6MG5aLpm4A/eHzndxFteer/mSBIsgVJOh2ynp4+I680/HaU2nvSM0uLCCyR
	Vriw==
MIME-Version: 1.0
Received: by 10.50.149.137 with SMTP id ua9mr1540687igb.65.1348027328702; Tue,
	18 Sep 2012 21:02:08 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.147.37 with HTTP; Tue, 18 Sep 2012 21:02:08 -0700 (PDT)
In-Reply-To: <CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
	<CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
Date: Tue, 18 Sep 2012 21:02:08 -0700
X-Google-Sender-Auth: iSlFeSO9t97WZtPc6OeytKl3vUk
Message-ID: <CA+YB3rY7Uj+_F=y=p6TEo27yBiN52Lg2YdWf_6LFb5dndvR3Qw@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org, Brian Lloyd <blloyd@familyhonor.net>
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
X-List-Received-Date: Wed, 19 Sep 2012 04:02:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

<snipped>

On Tue, Sep 18, 2012 at 12:04 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Tue, Sep 18, 2012 at 2:23 PM, Brian Lloyd <blloyd@familyhonor.net> wrote:
>> Most of my hits for such an item
>> discuss the packages I will need to install in my host distribution so I
>> can use the yocto project (not surprised, the danger of a term as vague
>> as packages).
>
> In bitbake/yocto/OE/etc. the term "packages" is not vague and has a
> very specific meaning: bitbake processes recipes to produce one or
> more packages. Some of these packages are then assembled into an

This is quite true - but the term itself is overloaded. I have often
heard "package" referred to also as the collection of source code one
would use to create a given piece of software, e.g. "the busybox
package". This is no doubt the result of downloading numerous
"packages" from the net in binary form rather than source. It doesn't
help that there are "source packages" in the RPM world
(http://www.rpm.org/max-rpm/s1-rpm-miscellania-srpms.html) and in the
Debian world (http://www.debian.org/doc/manuals/apt-howto/ch-sourcehandling.en.html),
so the confusion is natural.

In OE-based systems like the Yocto Project, the term refers to the
results of a build rather than the ingredients. I agree with you that
we should continue to push the correct usage to unload the term.
Anyone have a good term for "source packages"?

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

