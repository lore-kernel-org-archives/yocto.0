Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35212E0030B
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 14:41:38 -0700 (PDT)
Received: by dajx4 with SMTP id x4so1577975daj.28
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 14:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=C4e2Jk5qOI/BaWhH3yiAxl577rOQdRCk5SBBjgFue3Y=;
	b=zrupID7TZwEsUIu8exhi0rWRyBreHdm1PgwL2VYRk4nYG1wf0Gnb0o/55+JHmOtC5O
	OhZp70m8/jGrJ08/Gu+XF6jc+bi+K7n0fU0ynHN33SMi4FxsTZgMMECCRcMER/2uBUi4
	PwBfeQtiHXz73TqehFbRbGRZI/M2qOTrSz0qp8RniL7VDVSTG5WvKIfTUq84+Ng1PP6o
	FX2yQy5WIhGgXWeR1w2KmLwYKtFO+D2foRHTWD/4+7t0JBkWutJ27lc0uSpUB3COsB8E
	Y4+2Q6ln5A92RD+XR0X5QoNb33PC91YWspsyBSetXPLbZgliezft8uFhJkT1YsKBmGSQ
	/XIQ==
MIME-Version: 1.0
Received: by 10.68.239.102 with SMTP id vr6mr682083pbc.62.1335562897882; Fri,
	27 Apr 2012 14:41:37 -0700 (PDT)
Received: by 10.68.55.104 with HTTP; Fri, 27 Apr 2012 14:41:37 -0700 (PDT)
In-Reply-To: <m6pgwr51yllj.fsf@tfitzsim-lnx.cisco.com>
References: <m6pgwr51yllj.fsf@tfitzsim-lnx.cisco.com>
Date: Fri, 27 Apr 2012 17:41:37 -0400
Message-ID: <CADkTA4PrUJeCUGPWccRRiENzqm8+dOAgbkTXj7Kxn4hZTUtSLw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Thomas Fitzsimmons <fitzsim@cisco.com>
Cc: yocto@yoctoproject.org
Subject: Re: Experimenting with kgit-scc
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
X-List-Received-Date: Fri, 27 Apr 2012 21:41:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 27, 2012 at 4:18 PM, Thomas Fitzsimmons <fitzsim@cisco.com> wro=
te:
> Hi,
>
> Are there plans in the Yocto roadmap to make the meta/scripts/kgit tools
> generally usable?
>
> I like the organization of the Yocto kernel repository and for my
> embedded project I'm considering using the Yocto build system along with
> a Yocto-style kernel tree instead of maintaining my kernel patches as
> recipe add-ons. =A0The Yocto-style kernel repo could be either a local
> clone of Yocto's kernel repo with extra machine-specific branches, or a
> kernel.org tree locally post-processed by kgit-scc.
>
> I experimented with meta/scripts/kgit-scc from linux-yocto-dev but the
> kgit tools don't seem to be intended for general use yet (e.g. the -meta
> files contain hard-coded home directory paths, and guilt-push complains
> that guilt-init must be run first). =A0The official Yocto documentation
> says as much, but I was wondering if there are future plans to
> generalize these tools.

I've got a series of patches that aren't yet published that make things mor=
e
generic + some documentation about how to use them to create repositories
from scratch.

Both those changes are largely prep'd and I should have them out in the
next few weeks (i.e. early in the 1.3 cycle).

Cheers,

Bruce

>
> Thanks,
> Thomas
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

