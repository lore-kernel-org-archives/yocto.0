Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94EBCE00875; Tue,  7 Aug 2018 12:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC11E007D1
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 12:48:57 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id s12-v6so14417438ljj.0
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2018 12:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PqinynxtH4E8cqi7J2658yzmewrR7z92B8Wmkdg6qV4=;
	b=Re90UANh4og/Tl2SipvN0+m3wtkTzyn9gyVZvJkVmtU48DwUubLcLbwqNL9fyuVXbe
	HshxWgwZxzbQ3LD0R8SLye5XdC7gCtNBoSHK4kvueCFDsq+5+TeY/Kwt86WKLncRySad
	CGKye0uxnC8BL1XPxuAtbBjDlr+uZydSSdOxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PqinynxtH4E8cqi7J2658yzmewrR7z92B8Wmkdg6qV4=;
	b=ZglnFETEOkZGG0QFcRNo1BGgmd3mG3A/q4bYpXoP0DyS8APGKK/bC14gxRz3dC+Vmo
	AG/pW/9s5fw+flsxzgADFkmM87A5C6/eXlSKGGVHOxrCkM9YwFYUro0sBhKK+VG8+B4H
	yKiW5ak9mNKyITXrkaQ7P8Akd2jwH0d0ahsCfG3oLdWWM6iCnvuqkbjVu2RRMQ5978cC
	gqjVxRzQySl+f9VP6AItmyYIkpxBej1ibA5wf3u1DlSLf3QJtGZaOSbeKUwKtA8qc0ra
	MPsJM5jPZiTM8u6kBjXrJ+h0dwWmMuETIhgzmfr7ilznXzMCX8KyzE0WdU0ZvvQbI+mS
	TpqA==
X-Gm-Message-State: AOUpUlFe+1FNM1u29P761HuY7U+y+dEhqp5YpUHfytvY14yvkbXNf2PO
	7B3bSoBH86YYXhKR9eMydvIkVShUhwNlV0yKxNCElA==
X-Google-Smtp-Source: AAOMgpcZj1NbHELBS6J2Oj9BWclqlBgwDUgE4Xb3o7oatdPG3vRSTZvDbMDC2Gtuyt1rNybaAvy1fLiPWaQAK5lmzw0=
X-Received: by 2002:a2e:91d6:: with SMTP id
	u22-v6mr16158014ljg.64.1533671336467; 
	Tue, 07 Aug 2018 12:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+YB3rba5-xUdzRg2jE8oaY6+ZLhu3ROV0O6_=w7Dc+qPVSqpQ@mail.gmail.com>
	<CAGAf8LwBWH7DQPRyTDgzuuJYCYZxHvjrzva3a03DzksYd66shQ@mail.gmail.com>
	<CA+YB3raaF45piohqCHwuxPXBsVYp54g3invvbUcPr29TUMdiuQ@mail.gmail.com>
	<CAGAf8LwA4BKgpfP-n+t+oW-bFcesTH0vN3cRwVnRxxoDehu4xg@mail.gmail.com>
In-Reply-To: <CAGAf8LwA4BKgpfP-n+t+oW-bFcesTH0vN3cRwVnRxxoDehu4xg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 7 Aug 2018 21:48:45 +0200
Message-ID: <CAP71WjyTCzZW-QcdL0vuG_VCtzOWQzg9U46q1XJFLUBBTrYteQ@mail.gmail.com>
To: zoran.stojsavljevic@gmail.com
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	openembedded-members@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Yocto Project changes in progress
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
X-List-Received-Date: Tue, 07 Aug 2018 19:48:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi there,

There have been various changes in the project recently which have
caused concern for some users and contributors. I wanted to update
everyone with the most recent developments. It is worth highlighting
the recent news that:

* The Yocto Project recently welcomed two new platinum members,
Facebook and Arm to the advisory board. See [1] for a full list of the
YP members.
* Richard Purdie is now being funded by the Yocto Project to continue
in his role as the overall project architect.
* Nicolas Dechesne (Linaro) has taken over the community manager role from =
Jefro
* Lieu Ta (WindRiver) has taken over the advisory board chairperson
role from Jefro
* Andreea Volosincu (WindRiver) has taken on the advocacy lead role
from Tracey Erway
* Discussions about the future governance of the project with a view
to modernisation and clarification are now ongoing but are based
upon the strong foundations above.

As usual, the Yocto Project will attend the ELC-E conference in
October, in Edimburgh, and we hope to see you there, so that you can
meet all of us!

Feel free to reach out to me, if you have any specific questions!

[1] https://www.yoctoproject.org/ecosystem/members/

cheers
nico

On Wed, May 9, 2018 at 5:33 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Once I (at least I can speak for myself) embarked on this YOCTO ship,
> voluntarily, I do not consider leaving it. I like the concept,
> although there are problems with it.
>
> I could not commit too much time to it (since I have another
> commitments), but I keep one eye on it, primarily trying to learn,
> and, as abilities allow, to help.
>
> Big IT players' politics is driven primarily by interest. And interest
> is changing over Time, due to Global Policies and Economy shifting...
> Well!
>
> Zoran
> _______
>
> On Tue, May 8, 2018 at 11:20 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote=
:
> > Many projects function this way. It is one of the strengths of the open
> > source process.
> >
> > I'd be happy to answer any questions.
> >
> >
> > On Mon, May 7, 2018 at 9:53 PM, Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Very interesting, indeed! Newer knew that Richard (Purdie) is/was
> >> INTEL employee!?
> >>
> >> This announcement gives several (conspiracy?) theories... Some
> >> official, some unofficial. ;-)
> >>
> >> As independent thinker... IMHO.
> >>
> >> Time Will Tell!
> >>
> >> Zoran Stojsavljevic
> >> _______
> >>
> >> On Mon, May 7, 2018 at 11:53 PM, Jeff Osier-Mixon <jefro@jefro.net> wr=
ote:
> >> > Hello everyone. I'd like to briefly address rumors around Richard
> >> > Purdie's
> >> > transition from Intel to a more neutral position, and Intel's reduct=
ion
> >> > in
> >> > resources for the project.
> >> >
> >> > We set up the Yocto Project in 2010 through Linux Foundation, with o=
ver
> >> > 20
> >> > member organizations, so it would function as a true open source pro=
ject
> >> > -
> >> > neutral, unbiased, and well distributed. Those things are what make =
open
> >> > source projects less vulnerable to any one person or company. This i=
s
> >> > actually a very exciting transitional time for the project, and all
> >> > existing
> >> > member organizations are fully behind the project. We will let peopl=
e
> >> > know
> >> > details as they are available.
> >> >
> >> > Meanwhile, the 2.5 "Sumo" release is on the way and should be releas=
ed
> >> > soon,
> >> > the 2.6 planning process has started in earnest (please participate!=
),
> >> > and
> >> > we are excited to see what the future has in store for the project.
> >> >
> >> > --
> >> > Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
> >> > Open Source Community Ecosystem Strategist
> >> >
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
> >
> >
> > --
> > Jeffrey =E2=80=9CJefro=E2=80=9D Osier-Mixon, Intel Corporation
> > Open Source Community Ecosystem Strategist
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

