Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5D17E00D4F; Wed,  8 May 2019 03:51:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31022E00D45
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 03:51:32 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id n4so1143020ljg.4
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 03:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5kF4Aqp0G96rnUavcRnpXW6falcZ8FlYBZr9sUd8Pww=;
	b=H/mFTWzzMnFolpAqgiJJt43d7yijG3/Xb57Ee3FIDfmj0Jfjit4n/BrRlT6HZjfgmd
	QPsSIJukqWmGqlfRmos53YZEo1wvB4ry8qu5WJstZCSIt8wHddyn4dBIcJXbtcEjuYuF
	Cls7rxpQQvvyNWSJcplt0Fur1U9sYuDb6bAPjg3b/MesdjjxDmjBFefwVGOv0ddaT85M
	30E78GBFlAByD1f5pHH+5tJkr9GejDrnUOCRwDvhWsUgvOeshBQL1v9bNNlExB29Py9q
	aYOyqJZQCPhRjSXeak223v1meec4uKe0g8VWAm97q8thozcc0KXa7A5BYVsWouun5r5S
	MrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5kF4Aqp0G96rnUavcRnpXW6falcZ8FlYBZr9sUd8Pww=;
	b=YnDO9j9EVxMREwzfXmSscfToEe5AHGyFDe/3WmIqGMIpz5LTBHT2+v2MwLCc5CeWOh
	q4vuWujUZ4CxFmUuODFexlWadBJW4ADDfnqDeuoKaVK6mtpM3LzA+0JEsq0Er1DCHHxS
	+tiE8k6X2IyhE2FX80GWFO4CJglCyWJJNg9zjNZSQ7f/TKLY9u9/BYPnTKEJfe1/6j41
	tF/J9LoyzjiaN8RZu2FucsrUw1ypkDojoAcE5m6Dp8N80jjuqaXE06L/XJcGyj79r1Nq
	VCmxv8W1eh8UtH1b1wNmQqjGEyVZy4zCcPT7ZXD5uvjCtgURwJVNbrwhynRpwzN13y4n
	tfZA==
X-Gm-Message-State: APjAAAVoPAhglR/oxa30+5mLo/+GL/e4q0o+IvEzzErxphyHMDAwcZi8
	Op41U8h+Tixvb5D0CpNWo4LWJZYSvyjLzcPRmKA=
X-Google-Smtp-Source: APXvYqwPkBdQDE9ZybvR1jNmnkb+mKeuFlxzhj1viNiNw916hWU+TbzsNUsXe6phjwpWKNN7Z4VaTGH8XhY5/FHfpJM=
X-Received: by 2002:a2e:6e0b:: with SMTP id j11mr20385536ljc.46.1557312692129; 
	Wed, 08 May 2019 03:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrrHV-j3dHe8XAdPdKgOHqE28p4__B=U0k9NiTZ0Fz=dWA@mail.gmail.com>
	<e91ee356-42ba-1e7c-8490-49e0ab076da0@mvista.com>
	<CAAmVmroW=-u6NMC5DnEo8UY50bNooqfd7aR_UTk=p-a_OBF6Zw@mail.gmail.com>
	<CAAmVmroRz2Edu76-tBued3_JjJjiweJHCrDL9RsMB+6sb=+m8A@mail.gmail.com>
	<CAAmVmrq_Q_Ykcma6AF8FgJiT1n9mWEjV+DUKfMwpKH_68mOuwg@mail.gmail.com>
	<04e0032b-c1e8-2efb-a9d8-b546cbee9748@gmail.com>
In-Reply-To: <04e0032b-c1e8-2efb-a9d8-b546cbee9748@gmail.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Wed, 8 May 2019 13:51:18 +0300
Message-ID: <CAAmVmrqGm0A86zGKHaaLJB+iyxDvk=tXVfg_faFr51XvH_QCSw@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: SDK build fails at latest thud
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
X-List-Received-Date: Wed, 08 May 2019 10:51:36 -0000
Content-Type: text/plain; charset="UTF-8"

Done. Hopefully it went to right place.

I noticed that core-image-minimal does not fail, but if you add for
example 'bash' to it, it fails like it does on my image.

t. Teemu

On Tue, May 7, 2019 at 11:57 PM akuster808 <akuster808@gmail.com> wrote:
>
> Teemu,
>
>
>
> On 5/1/19 11:50 PM, Teemu K wrote:
> > On Thu, Mar 28, 2019 at 6:36 AM Teemu K <maillinglists18@gmail.com> wrote:
> >> On Mon, Mar 18, 2019 at 7:21 AM Teemu K <maillinglists18@gmail.com> wrote:
> >>> On Fri, Mar 15, 2019 at 2:17 AM akuster <akuster@mvista.com> wrote:
> >>>>
> >>>>
> >>>> On 3/13/19 9:50 PM, Teemu K wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> I noticed that when trying to build sdk on thud it fails on latest
> >>>> version. Actually it broke somewhere between commits:
> >>>>
> >>>> 1cab405d88149fd63322a867c6adb4a80ba68db3 (old)
> >>>> 7c76c5d78b850a9c1adccf8b11ed0164da608f1c (new)
> >>>>
> >>>> I'm using it with meta-freescale - layer to build image to iMX8.
> >>>>
> >>>> I'm using command 'populate_sdk' and it works fine on older version,
> >>>> but newer version it fails with error:
> >>>>
> >>>> Can you provide the steps to reproduce?
> >>> bitbake my-image-name -c populate_sdk
> >>>
> >>>> ==
> >>>> The following packages have unmet dependencies:
> >>>>  target-sdk-provides-dummy : Conflicts: coreutils
> >>>> E: Unable to correct problems, you have held broken packages.
> >>>>
> >>>>
> >>>> There is a change sitting in stable/thud-next:
> >>>>
> >>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=stable/thud-next&id=af5cf78b275ab5226354337d25d8dc1c41a08904
> >>>>
> >>>> which might be related. Can you try that branch?
> >>>>
> >>>> git://git.yoctoproject.org/poky-contrib  stable/thud-next
> >>> That did not solve the problem. I have coreutils in my image and it
> >>> kept conflicting. When I removed coreutils from my image it solved
> >>> that problem, but there were some problems with perl etc. From the
> >>> working version all those are missing from
> >>> target-sdk-provices-dummy.bb and my original image works just fine.
> >> I see that thud-branch has gotten even more 'fixes' for this sdk thing
> >> in last week, but the actual problem still stays. If image-recipe uses
> >> coreutils - recipe sdk build fails there because
> >> target-sdk-provides-dummy.bb has it listed. And if I remove that then
> >> it fails on next package.In my case it's bash-dev.
> >>
> >> Does those changes need something different how sdk is build or how to
> >> build sdk with those changes? I'm not sure why they are listed there
> >> in the first place if it overrides the actual package and does not
> >> provide 'dummy' if/when needed.
> >>
> >> To create sdk I use this command: bitbake <image-recipe> -c populate_sdk
> >>
> >> -Teemu
> > I updated to latest thud and this is still an issue. Isn't anyone else
> > building sdk or what I'm doing wrong?
> >
> > I use command: bitbake <image-recipe> -c populate_sdk to generate sdk.
> >
> > With unedited poky - meta layer it stops at error:
> >
> > --
> > The following packages have unmet dependencies:
> >  target-sdk-provides-dummy : Conflicts: coreutils
> > --
> >
> > If I remove that from poky/meta/recipes-core/meta/target-sdk-provides-dummy.bb
> >
> > The next error is:
> > --
> > The following packages have unmet dependencies:
> >  apt-dev : Depends: apt (= 1.2.24-r0) but it is not going to be installed
> >            Recommends: bash-dev
> > --
> >
> > If I remove that from file mentioned before the next error is about
> > perl-dev. If I remove that it ends up on this error:
> >
> > --
> >
> > The following packages have unmet dependencies:
> >  target-sdk-provides-dummy-dev : Depends: target-sdk-provides-dummy (=
> > 1.0-r0) but it is not going to be installed
> > --
> >
> > For testing purposes I removed everything from that file except bash
> > and after that the sdk generated just fine.
> >
> > I don't know enough about yocto/poky so what is the use of this
> > target-sdk-provides-dummy thingie and why things are added there that
> > keep breaking the sdk generation or do I need to generate sdk now
> > someway differently? Atm. I'm either stuck on that older thud -
> > version or I have to manually edit this
> > target-sdk-provides-dummy-dev.bb - file.
>
> Can you log a bug. We are not seeing this in the AutoBuilders.
>
> https://bugzilla.yoctoproject.org/
> >
> > -Teemu
>

