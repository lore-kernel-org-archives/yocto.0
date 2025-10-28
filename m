Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B71CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 14:16:09 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.12915.1761660962626257744
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 07:16:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=gLEVZ3yK;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NxVjh191vYzmCietjtxfLxGYxWWUTVOYa13Zy2A3NF0=; b=gLEVZ3yKO2auBw7700vKdAszv1
	bkm3lUL1XfQ1l4S+LT6JNSTs9BlIaZI1R0dGrOYViGC4xY7i24Qml9j0VymZJcI6UxS5EwfemkaTY
	43CGPS+G6eNj8KyC8iF2Cd+T6ZT7KZwIeg3udnths8eRYdYcXEl4MCTPbhkcylrGnvZgCkkclRKMA
	saK49jD1R7L4YKG9IR7IrFYwp0g7wfKw4dEXeE757ycjvaoLsg2M2woTOR4QwWMIMcedYG1v/z7LX
	UPX5tBIyKs02lzbISTWLrd+0AXGq+u00u5vFIPYmE7Md//3hYmXrPbD1kcyQ5lm8RQhJUlRXssrG7
	n17yac0g==;
Received: from [147.129.179.166] (port=35742 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vDkUO-0000000CxMk-0ozB;
	Tue, 28 Oct 2025 10:16:00 -0400
Date: Tue, 28 Oct 2025 10:18:41 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Martin Jansa <martin.jansa@gmail.com>
cc: yocto@lists.yoctoproject.org, leon@sidebranch.com
Subject: Re: [yocto] pedantic nitpickery: coding style with
 "FILESEXTRAPATHS:prepend"
In-Reply-To: <CA+chaQd_v95ssGF0tLJC99+oNNc7z-2pNXdsOCs5ceuBDcJGNA@mail.gmail.com>
Message-ID: <e041d4d3-9844-958c-b99d-1e74732f7a65@crashcourse.ca>
References: <253a0731-97d0-10ef-aef8-2f56328a81f9@crashcourse.ca> <CAMjhiJibGPcqNB2ERP=Gxo44VTqnW+BXxQ8HjBOjHemQ_pjmJQ@mail.gmail.com> <CA+chaQd_v95ssGF0tLJC99+oNNc7z-2pNXdsOCs5ceuBDcJGNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-755421792-1761661129=:2298128"
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 14:16:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65977

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-755421792-1761661129=:2298128
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 28 Oct 2025, Martin Jansa wrote:

> On Tue, Oct 28, 2025 at 2:14 PM Leon Woestenberg via
> lists.yoctoproject.org <leon=sidebranch.com@lists.yoctoproject.org>
> wrote:
> >
> > On Tue, Oct 28, 2025 at 12:37 PM Robert P. J. Day via
> > lists.yoctoproject.org <rpjday=crashcourse.ca@lists.yoctoproject.org>
> > wrote:
> > >
> > >   (spoiler: turns out this is fine, but it's non-intuitive)
> > > arm-ffa-transport.inc:FILESEXTRAPATHS:prepend := "${ARMFILESPATHS}"
> > > linux-yocto%.bbappend:ARMFILESPATHS := "${THISDIR}/files:"
> >
> > Indeed, I would have written this, as the trailing double colon is
> > needed in the prepend context of using the variable.
> >
> > arm-ffa-transport.inc:FILESEXTRAPATHS:prepend := "${ARMFILESPATHS}:"
> > linux-yocto%.bbappend:ARMFILESPATHS := "${THISDIR}/files"
> >
> > But as you said, it works, so that's typically enough barrier to keep as-is.
>
> I agree, but only until there is an exception where you don't want to
> prepend anything (by setting ARMFILESPATHS to empty) and then having
> extra double colon will be worse than the currently used syntax.
> Similarly when there are multiple paths in ARMFILESPATHS variable and
> first one will need own double colon as separator, but the last one
> not. In all cases bitbake-getvar or bitbake -e is your friend (when
> git grep isn't enough).

  i didn't mean to make such a big deal of a triviality, but martin
explained it in a way that made me realize why this bothered me so
much -- it's that by adding that trailing colon in the setting of
ARMFILESPATHS, you're making an assumption that it will only ever be
used in a context like prepending, and in no other context.

  so, sure, it works fine in the current, very localized situation,
but it's not generalizable to use that variable elsewhere.

  anyway, i'll shut up now.

rday
--8323329-755421792-1761661129=:2298128--

