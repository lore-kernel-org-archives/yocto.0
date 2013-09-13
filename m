Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57FEEE0154E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 03:04:48 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id wn1so883106obc.24
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 03:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KjJFaAfwtFqw7qjmHF8GPAAycGBEjjpJ3e+OAye9A0g=;
	b=B6hcvfmWZgOBjFpgm626qTs+bQgWVvfi8CXTft6r0WBCxSf/cAW3/BEW9ZBCNX/a8b
	v9xyALz1bYFnQB1JZBKIMzVXXHS2aQZx2uGVPZexAKX5oQu/a+seIe9SSPCBaOPoFoy2
	qle7aA2iQfxmUt80EpRgBh3vpUk0RB1TDYy4FEbfj9I1dNTlbuXfcaqKS4KWdePuaPd6
	1wVq3vcClfUnlIIrv68x/lQOA0r18dn7BNm/c4r/Eho+hMcYq0cT4L2ed+xKFVlMr2MS
	ANbpCBlNat5n6vuaxDwkbdQjonsuFXu+4YydQbPuc6Zr0clKd58U5n368Q6zXHNQjQ4L
	ebPQ==
MIME-Version: 1.0
X-Received: by 10.60.83.46 with SMTP id n14mr11567897oey.34.1379066688159;
	Fri, 13 Sep 2013 03:04:48 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Fri, 13 Sep 2013 03:04:48 -0700 (PDT)
In-Reply-To: <22610256.9HCK7tef9Y@helios>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
	<CABcZAN=QM=Tj=vtsdXERZy=9gcs6vBr1cpw+4Fr9USHuthCxkQ@mail.gmail.com>
	<22610256.9HCK7tef9Y@helios>
Date: Fri, 13 Sep 2013 12:04:48 +0200
Message-ID: <CAFyqS9qE1HRBkjDfnzMaz=pac4B1yUon-9QpJdmEqkznVn3kkQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Fri, 13 Sep 2013 10:04:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 13, 2013 at 11:55 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 12 September 2013 17:23:53 Chris Larson wrote:
>> On Thu, Sep 12, 2013 at 4:53 PM, Brad Litterell <brad@evidence.com> wrote:
>> > I've grown to really appreciate bitbake for compiling code from a myriad
>> > of sources, however, what is the recommended course for source I am
>> > currently doing live development on?  My code base lives in a couple of
>> > git
>> > repos that do NOT map one-to-one with recipes and I don't really want to
>> > store the source mixed in with the recipe meta data anyway, nor do I want
>> > to be forced to commit it to git just to do a build.
>> >
>> >  Currently I run a pre-bitbake script that creates a tarball out of the
>> >
>> > source, but that is easy to forget and makes building a new image a two
>> > step proces.  Since it is a build step I'd like it to be done by bitbake.
>> >
>> >  Is there a recommended way to go about this?
>>
>> See externalsrc.bbclass.
>
> Also the manual section that talks about using it:
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source
>
Does this in any way replace the use of the SDK toolchain? Since that
is what I would be using (and am using) for external development. We
only use bitbake for the integration stages (pkg upgrades/rootfs/SDK
builds etc.).
After a package works and is in some sort of ready state we add it to
a git repo and write a recipe for it. Maybe that is an alternative
too?

Thanks.
Hans


> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

