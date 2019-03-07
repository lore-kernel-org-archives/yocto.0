Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA5BBE00C43; Wed,  6 Mar 2019 16:03:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
	[209.85.217.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB865E0090C
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 16:03:52 -0800 (PST)
Received: by mail-vs1-f65.google.com with SMTP id y19so3395321vsc.4
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 16:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Vqdcu0EzHvRO9SRJtLI7pUP+4L9GIWvNaPefIYsvano=;
	b=lUGZK31L5H4OjBBqtdoOSFPT2uSk81xFsOt382yOKJHhMNBugdgCCJA0ir5CRtQMuM
	1RLVLGMXQ4XE0WcG7kOPlVEHatsF3pmhO61F1ohJankBqbLZw18hL9kDXKzMSaJGQrah
	c4UQPEInsiYsCSqD+jtalKXbLxo+LIMp72UVvRUfc9jLk4WpaopdrLRBPSAAPdu74AKf
	bufurQRfYRUlDdxEkVbYboIV3kcPFpEWcE+gNtGfnGHkcKOC0QBC1Kyb//7fOIuGkjCn
	M7qEFGqAMg2jjhbY0QZk2F2+D5pEiLMlsjfuhioGL4fL4lHn12tlpY+HGr10o1gSy/j/
	CcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vqdcu0EzHvRO9SRJtLI7pUP+4L9GIWvNaPefIYsvano=;
	b=YnV2ayYY5MpGR92D3GZ67ADxWghKmdyE8HAHIzDItMPvLBoKDQ/cjnvKYtWuKBm49V
	UoI89e5Cnkw9xcdyFPF462o4hwxw5Kcs088HuY56WFzc5OzJcstpZRPPYJnZ8nsPzLHt
	xP/M+9ySSry80CYwP9NntuxiK4YzZYojvveWHk4+LTKMTr1qIp8NchHNKa6d0smuth2x
	I7pq1OMGo+QKct8vhUhDqYaOrJsrJbbglJv2e8/9V69EYldWI0WR/5owMNmc7hZhe7hI
	3mWrGO3PhdjZQ9s6OJ3wP4nuq+H5L4qMynOGYOMV1cB5TNxwriYdmebg6er5p5gvmT0L
	QKQQ==
X-Gm-Message-State: APjAAAWw4ZDlu8mFW9x3NKmCDsny8N8/gKIyIHxrEbfW7JbMcuVB+F0F
	Mw8wJQ2qncAxeMoKaAwqqj7aDiAKF7bhd/9FSVA=
X-Google-Smtp-Source: APXvYqz2U4VKZWCCSNqq3WZ0Eh26zoetdUZeM0pQ2Jftn5he2EIoS0O4c86UEBBjLKCOLuUd9+KH2DyqXW5wdWKJ2Kc=
X-Received: by 2002:a67:8448:: with SMTP id g69mr5336031vsd.77.1551917032042; 
	Wed, 06 Mar 2019 16:03:52 -0800 (PST)
MIME-Version: 1.0
References: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
	<90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
	<905307c29324d701044d2d1b2fd0952edd3fbc36.camel@linuxfoundation.org>
	<CAO5Uq5T=uC7qQ3y0cYEG5iFyeA6hhvwz4bV9SOUyRnvtSEqAbQ@mail.gmail.com>
	<2811a12e-cbc0-5f19-04b5-f3ba725a3424@windriver.com>
In-Reply-To: <2811a12e-cbc0-5f19-04b5-f3ba725a3424@windriver.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Thu, 7 Mar 2019 00:03:40 +0000
Message-ID: <CAO5Uq5R2O-e1yFFh=-uPBhX+UL06p=PD=3tBVAOO4b34E6NqoQ@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] [opkg-utils] Question: why update-alternatives from opkg-utils chooses /usr/lib to hold database?
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
X-List-Received-Date: Thu, 07 Mar 2019 00:03:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 11:37 PM Mark Hatle <mark.hatle@windriver.com> wrote:
>
> On 3/5/19 10:44 PM, Alex Kiernan wrote:
> > On Tue, Mar 5, 2019 at 10:50 PM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> >>
> >> On Tue, 2019-03-05 at 16:05 +0000, Alejandro Del Castillo wrote:
> >>>
> >>> On 3/5/19 12:11 AM, ChenQi wrote:
> >>>> Hi All,
> >>>>
> >>>> Recently I'm dealing with issue from which some discussion raises.
> >>>> I'd like to ask why update-alternatives from opkg-utils chooses
> >>>> /usr/lib
> >>>> to hold its alternatives database?
> >>>> I looked into debian, its update-alternatives chooses /var/lib by
> >>>> default.
> >>>> Is there some design consideration? Or some historical reason?
> >>>
> >>> Update-alternatives used to be on the opkg repo. I did a search
> >>> there
> >>> all the way to the first commit on 2008-12-15 [1], but even then
> >>> /usr/lib was used. I can't think of a design consideration that
> >>> would
> >>> make /usr/lib more palatable than the Debian default.
> >>>
> >>> Maybe someone with more knowledge of the previous history can chime
> >>> in?
> >>>
> >>> [1]
> >>> http://git.yoctoproject.org/clean/cgit.cgi/opkg/commit/?id=8bf49d16a637cca0cd116450dfcabc4c941baf6c
> >>
> >> I think the history is that the whole of /var was considered volatile
> >> and we wanted the alternatives data to stick around so it was put under
> >> /usr.
> >>
> >> That decision doesn't really make sense now since only parts of /var
> >> are volatile..
> >>
> >
> > I don't use opkg (or in fact any package manager on a target), but I
> > do use OSTree, where my /var isn't part of what gets deployed to a
> > device (https://ostree.readthedocs.io/en/latest/manual/adapting-existing/#adapting-existing-package-managers)
> > so having the option to keep it in /usr would be important to anyone
> > who has mechanisms like that.
> >
>
> Do you allow a device that has been sent an update via OSTree to then run
> update-alternatives to change what has been set by the update mechanism?
>

No.

> In my own uses of both OSTree and update-alternatives, I set this on a global
> basis and use it that way.  So no individual user (device) would be different
> then what was globally sent out.
>

Sounds like our use case is similar... variation is exactly what we're
trying to avoid, so we don't allow changes like that.

> If this is desired, then continuing to have a mechanism to allow it to be
> overridden for legacy or your purposes seems reasonable... but I think moving
> the default still makes a lot of sense.
>

I'd agree, it's clearly valuable for some, it's just how you accommodate both.

I guess so long as it's still changeable, it's not a problem.

-- 
Alex Kiernan

