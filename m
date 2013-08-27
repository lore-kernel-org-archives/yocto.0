Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A371EE0155B
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 05:42:19 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id v1so3500560lbd.10
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 05:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=zx6f0cqEHVumIVqtvbYj/zMwpfeFHuZBqfcijpgsZG8=;
	b=jXJOsahjV1l1mzq+21QuLFmkeChChZERBKUw3n2Hu765VZWGMNTH3c+uvBdQhRTym8
	OPsdq8TWcQJuWb34Z1Gpmeh6xwFBVv4l42YBtm41jaF7QakE6W94ILHHC1XtxksCqsK/
	5xO6LNJiyzImF8PvYGpU8w0xlTJGvROIdAL5imbuiRthKh053t/nQJFbhJSG1BsrgAkR
	bPEtHH0tZLU1kaJy7iCjdgzQirmiXjZeoegsOh++9i8d6/ykX0iVJYjgriqXX65/w7Dj
	ESBxyzCpCif1D/bjPu10JqGJBGglWbytB1+MYSqwvheZMSOgw8+EjSTunaaP2KNP8Ms/
	ZKAQ==
MIME-Version: 1.0
X-Received: by 10.152.26.72 with SMTP id j8mr18626030lag.19.1377607338301;
	Tue, 27 Aug 2013 05:42:18 -0700 (PDT)
Received: by 10.112.12.103 with HTTP; Tue, 27 Aug 2013 05:42:18 -0700 (PDT)
In-Reply-To: <2196360.bXPOIJBs5j@helios>
References: <1377552450-29358-1-git-send-email-yang.shi@windriver.com>
	<521C5608.3020202@enea.com> <2196360.bXPOIJBs5j@helios>
Date: Tue, 27 Aug 2013 08:42:18 -0400
Message-ID: <CADkTA4OOqQvh7mBqQQo-GTikTsOmuZ-fZKV7t5aA-++-uGWWfw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-virtulization] [PATCH] irqbalance: Uprev to 1.0.6
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
X-List-Received-Date: Tue, 27 Aug 2013 12:42:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2013 at 4:33 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 27 August 2013 09:32:24 David Nystr=F6m wrote:
>> On Mon 26 Aug 2013 11:27:30 PM CEST, Yang Shi wrote:
>> > Add recipe for 1.0.6 version. And, add status and reload commands into
>> > init script.
>> >
>> > Signed-off-by: Yang Shi <yang.shi@windriver.com>
>> > ---
>> >
>> >   ...irqbalance-Add-status-and-reload-commands.patch |   55
>> >   ++++++++++++++++++++ recipes-extended/irqbalance/irqbalance_1.0.6.bb
>> >   |   15 +++++
>> >   2 files changed, 70 insertions(+), 0 deletions(-)
>> >   create mode 100644
>> >   recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-rel=
oad
>> >   -commands.patch create mode 100644
>> >   recipes-extended/irqbalance/irqbalance_1.0.6.bb>
>> > diff --git
>> > a/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-rel=
oad
>> > -commands.patch
>> > b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-rel=
oad
>> > -commands.patch new file mode 100644
>> > index 0000000..d853d0b
>> > --- /dev/null
>> > +++
>> > b/recipes-extended/irqbalance/irqbalance/irqbalance-Add-status-and-rel=
oad
>> > -commands.patch @@ -0,0 +1,55 @@
>> > +From dc7366896dd5a5bae82be4b11530bc9fdb7cbcdd Mon Sep 17 00:00:00 200=
1
>> > +From: Yang Shi <yang.shi@windriver.com>
>> > +Date: Mon, 26 Aug 2013 10:58:02 -0700
>> > +Subject: [PATCH] irqbalance: Add status and reload commands
>> > +
>> > +Add status and reload commands for irqbalanced init script
>> > +
>> > +Signed-off-by: Yang Shi <yang.shi@windriver.com>
>> > +---
>> > + irqbalance.init |   12 +++++++++---
>> > + 1 files changed, 9 insertions(+), 3 deletions(-)
>> > +
>> > +diff --git a/irqbalance.init b/irqbalance.init
>> > +index d12d62c..f58bf55 100644
>> > +--- a/irqbalance.init
>> > ++++ b/irqbalance.init
>> > +@@ -1,6 +1,6 @@
>> > + #!/bin/sh
>> > + #
>> > +-# Copyright (c) 2012 Wind River Systems, Inc.
>> > ++# Copyright (c) 2013 Wind River Systems, Inc
>>
>> What is this ?, as far as I understand it, the script + recipe is
>> proprietary licensed to windriver.
>>
>> I see the windriver copyright notice was introduced with commit:
>> 43b438f06897a390e16709b3f9e11355f325e2e9
>> I seem to remember that we agreed that all contents of
>> meta-virtualization should be MIT.
>
> I'm not a lawyer, but as far as I am aware MIT licensing does not preclud=
e
> having a copyright owner; in fact the standard form of the MIT license te=
xt
> begins with a copyright statement.

Right. Copyright !=3D proprietary. You see copyright on pretty much any typ=
e of
licensed file, and I've seen plenty of MIT and GPL copyrighted files.

But otherwise, David is correct .. this should have gone to the
meta-virtualization
list, not the yocto list.

Cheers,

Bruce



>
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



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

