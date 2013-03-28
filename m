Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA1A3E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 13:52:30 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id hj8so3640639wib.2
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 13:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=02qEWpVFm0VxKtfFW04UiU6yI7UsYk8Xm0N6qB9OuKI=;
	b=W3fkNpzo39m8vl4dKc5TP9ZBVGzzOfB4EaEHSzx+Xx2swS4Dbo/xb3/WfqnEbDK8IO
	TvpvE++ZIFTyRxvFQnla0dekBJH07PEO4GY2a2ETuvJnVcX7Gov+fASGBU/MtQuHtP3Y
	BB/vRBdBx2kDxUWjGjGajR1OFOuYb7cBraZkx0C/2D2jm+NRtSd3m4XmFzsStUb4ZOov
	vlcxirXA9gL7x9xNzxvyggPJfQOJqf6pnyvjCPuON3bbykLOrx2+mym09g544jwahaxe
	7TGySYdyzGGO6VbwxvOhHkknP66zc7ASQYV41qy9xQ7puji3i0/yrdUrN497CvSkEn4j
	gftQ==
MIME-Version: 1.0
X-Received: by 10.180.39.207 with SMTP id r15mr105673wik.16.1364503950147;
	Thu, 28 Mar 2013 13:52:30 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 28 Mar 2013 13:52:29 -0700 (PDT)
In-Reply-To: <20130328142134.GA94584@gmail.com>
References: <20130328142134.GA94584@gmail.com>
Date: Thu, 28 Mar 2013 16:52:29 -0400
Message-ID: <CAHUNapQk-9TfTg=M0QH-25bW624VyhQmdU3F3QfKScAfsY11bA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: OE/Yocto Talk in Free Software and Linux Days in Turkey
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
X-List-Received-Date: Thu, 28 Mar 2013 20:52:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

If I expected that my audience would be mostly made up of people who
have been using *nix for years and are comfortable with the cmdline,
then I would show how I use Yocto/OE via the cmdline. If I expected
that most of them would be more accustomed to Eclipse/GUI-based
development, then I would try to introduce them to the Yocto Project
via Hob or the ADT.

While it is true that using Yocto is an absolutely amazing tool for
building embedded distributions, in the grand scheme of things
building a kernel+filesystem for your target is not something that
you're going to be doing 3 times every day. In fact there's probably
only one member of any development team who needs to know how to
create the kernel+fs. The rest of the team is probably involved with
writing the "magic sauce" that'll make your product stand out. For
those members (the majority of the team) showing how Yocto can also
create an SDK that helps them cross-develop their code is more likely
to be the stand-out feature that'll pull them in.

If I had to create a talk I'd probably spend no more than 40% of the
time showing them how neat Yocto is in that you can add various
packages to an image and how the package list is independent of the
target CPU. For example, you can have 2 different devices, but build
an image for both that contains the same packages and all that's
needed is a one-line, local, configuration change. I'd then spend the
rest of the talk discussing the SDK that can be generated and deployed
to the various team members. Then, if a package is added, a new SDK is
generated, the team members install the new SDK, update their
environment, and "voila!" they can now build an application that uses
sqlite3 (for example).

There are many previous Yocto/OE talks from which you can draw
inspiration. free-electrons.com has archives of many such talks from
various embedded linux conferences. These archives include videos as
well as slides. Maybe something in that pile can help you get ready?

E.g. http://free-electrons.com/blog/elc-2012-videos/

