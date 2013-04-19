Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1870E014F2
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 10:29:43 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hj19so1163799wib.3
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 10:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=QzWh4/jJinxt04aeog/O2BjXr9hR5wuY+OYyMZuF5b4=;
	b=VKbZtK4T7r4ynX0wWRKCPNWVPpzT86SMbfTss0SgEvU4Pp69W43kTY3uXyioRQ5Y0r
	qxIh6XN7E+HVls64ChDEd0+C3/Mmv+Ia9d6XXwaJqXxO7INXZMSgw689JDcnSUJ/TDDX
	jyOk8ytwRaA4Sszyzk+SvlxlksCWJGkcaxIM3XMg3umCs/J5iQxn34V6whj8k2v/jG84
	rI9B5UV2ECodgxkf7C9NqeB/EYExAibMh8RBxP4enFMjqvCpuOy2mEwsihQGlZGcjlqQ
	t3OsZec86+quELoebyDr6whYF66/bkxNa3MzZ5tKcNngHYs42qWS6xlZP4QL+8m6QEuP
	fo+Q==
MIME-Version: 1.0
X-Received: by 10.180.80.3 with SMTP id n3mr4712183wix.20.1366392582072; Fri,
	19 Apr 2013 10:29:42 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Fri, 19 Apr 2013 10:29:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304190827410.4247@oneiric>
References: <alpine.DEB.2.02.1304190827410.4247@oneiric>
Date: Fri, 19 Apr 2013 13:29:41 -0400
Message-ID: <CAHUNapTAXCmZOR-hBSWz-uVSj2Fue8x9TtN3+DerCtQN__G2mQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: clarification about BSP layer names and bblayers.conf file?
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
X-List-Received-Date: Fri, 19 Apr 2013 17:29:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Apr 19, 2013 at 8:37 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> first, it's not actually *required* that a layer name start with the
> prefix "meta-", is it?  pretty sure it's not and, if it isn't, that
> should be made abundantly clear. it's fine to point out that it's a
> well-established convention but it should still be mentioned
> explicitly that it's not necessary.

If we agree that what we currently have is "version 1", and in-line
with the philosophy of always throwing away "version 1", my gut
feeling is that instead of poky being the base of everything and
everything else added on top as layers, I believe the people running
this project would start with openembedded-core as the base, with poky
being simply one (of many) layers on top and therefore (properly)
renamed to meta-poky. My point is that in an ideal world poky should
be renamed, to follow the accepted convention; but since it isn't, it
demonstrates that layers don't have to start with the "meta-*" prefix.

> the fact that meta-yocto is listed
> as NON_REMOVABLE might make readers wonder how they're supposed to
> know that. why not go with something a lot more people will see, like,
> say:
>
>      BBLAYERS = ?" \                  <-- and that looks like a typo
>        /usr/local/src/yocto/meta \
>        /usr/local/src/yocto/meta-ti \
>        "
>
>      BBLAYERS_NON_REMOVABLE ?= " \
>        /usr/local/src/yocto/meta \
>        "

The whole concept of "non-removable" layers seems redundant. If a
person were trying to build an image for i.MX53 that makes use of TI's
work, the meta-ti layer would be just as "non-removable" as any other,
wouldn't it?

