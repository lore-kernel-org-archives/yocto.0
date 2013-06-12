Return-Path: <twoerner@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB450E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:04:57 -0700 (PDT)
Received: by mail-qa0-f47.google.com with SMTP id i13so633830qae.6
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HSFHmCpKF1KWohNV5h5dW1othn7q/qls5z7mBP9QnCk=;
	b=bPxB13ehah6t7Y+/KbVkpEtPzoAjaJUGuGDcaugiBVoQTH7IWY2QdsJF8SdoTKvWxd
	qC04tS9I1geKFXQdvO5Uo8meaLGxtTbe25bpbcaeuGq0Z8AFHVOmx/A7iquhJk7/Gde5
	u/ooL9jnaovQUHTHd9T5Sk9+CSU2guhRzvQMEW2G23X2yziwWfDqy0PIx7B2E8xGbWif
	3yiPQzyeYgxzJoyzh9n/OSjc6GTfQ1jjx6SzU2eRLei3NlWbP5VA5PdtxY3UqXEgVJFH
	4Im/p0NaXjf2xQ7uObp8RIxhL1ner2p9m5BCW6W6d1rsBr+kYakGwbSFH3kgq1vTnBel
	E/IQ==
MIME-Version: 1.0
X-Received: by 10.49.85.199 with SMTP id j7mr25677290qez.45.1371071096220;
	Wed, 12 Jun 2013 14:04:56 -0700 (PDT)
Received: by 10.224.7.199 with HTTP; Wed, 12 Jun 2013 14:04:56 -0700 (PDT)
In-Reply-To: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios>
	<58DC6CADE1A5492E9E712C310E6C9019@PAULD>
Date: Wed, 12 Jun 2013 17:04:56 -0400
Message-ID: <CAHUNapQwaFgZv58X-MEhMc_x1rDUL2jtGY+irZ=d6fDQDKxC-w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 21:05:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 12, 2013 at 3:51 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> For now, I really just need to know if I'm interested in the SDK, since I
> have no intention of ever running compilations on my target system.

Imagine a company which produces embedded devices running Linux. There
are hardware engineers, and software people. Within the software group
there will always be that person (or group) which is responsible for
creating the Linux filesystem which runs on the device, i.e. the
"base" system, and there is the person or group responsible for
writing the "special sauce", the program which (or programs that) make
the device do the special thing that sets this device apart (i.e. the
application developer group).

Sometimes these people are the one and the same person, other times
they are separate people/groups.

Only the person/group responsible for the base filesystem need to know
about Yocto/OE. The "special sauce" people don't need to know anything
about packages, kernels, udev, /etc, or any of that other stuff. But
what they do need is a "compiler"[1] so they can build the software
for their target device.

The "compiler" they need has to be tied to the base filesystem. They
shouldn't be using a "compiler" that isn't aware of what libraries
(and therefore also be using the correct header files) that are going
to be available on the target, and they shouldn't be using a compiler
that isn't aware of the version of the kernel that will be available
on the target.

In order to help get the Yocto/OE group and the application group in
sync, Yocto/OE has this neat target which allows the platform team to
generate an "compiler" (i.e. the SDK) that the application group can
use which is, through the magic of the Yocto system, perfectly tuned
for the image the platform team is creating. In other words, the
application team doesn't need to perform Yocto builds in order to
write their software, they just need the Yocto people to generate an
SDK for them and produce a new SDK anytime anything on the target
image changes. The Yocto people can generate this SDK using a very
simple one-liner.

For a little more information, please have a look at item 19 of
https://github.com/twoerner/meta-trevor/blob/master/misc/notes


[1] When I say "compiler" here (in quotes) I really mean the
cross-compiler, the necessary header files, the cross-linker, etc,
etc...

