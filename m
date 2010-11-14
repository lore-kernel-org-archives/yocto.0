Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1D4A4C80815
	for <yocto@yoctoproject.org>; Sun, 14 Nov 2010 10:32:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so6289512iwn.35
	for <yocto@yoctoproject.org>; Sun, 14 Nov 2010 08:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=2fkpuZCjWF4BGXauXeBE9sWtMZzl68Gz8PYGpwTqAHg=;
	b=EPkLDFpfD+8eqNq/ojiFKh9ZOuq2+/KR778J3eQZXooI3I1Io2VPBRoLHjeojXcoko
	DAmd61KHZVbrj6JXKnWVEKlFDWZg0xbBmvn59x36wQ++8f87oHsFtoq9yAtw06qevYvj
	RdzNf9WYW2EVXrsH+PPUuRfIIjRtzOrWShOs4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=JDZPbWRKIodl8FOq4M/mffvaHYfYgQorWt0vnGHudS9frGwLqhP2MYZkKbR3awkclH
	gULSVsHOqxIJyr8wawH3ThbGcX1FRcekSlaehsVDqiW5xXMTYYamvYbh5/i0wnJggz60
	ZMjRnJMj7vgDbrXk/xxyXdddUANh0DlZEdQhM=
MIME-Version: 1.0
Received: by 10.231.17.203 with SMTP id t11mr3651718iba.1.1289752335254; Sun,
	14 Nov 2010 08:32:15 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Sun, 14 Nov 2010 08:32:15 -0800 (PST)
In-Reply-To: <4CD5CF37.3030903@linux.intel.com>
References: <4CCBDAF8.70209@linux.intel.com> <4CD06441.5060407@linux.intel.com>
	<4CD5CF37.3030903@linux.intel.com>
Date: Sun, 14 Nov 2010 17:32:15 +0100
Message-ID: <AANLkTin7sr=qOXPgcQgcuLeDyYQ-eRXU8ASt_pfTMa9A@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: World Package List
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
X-List-Received-Date: Sun, 14 Nov 2010 16:32:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/11/6 Saul Wold <sgw@linux.intel.com>:
>
> Please find enclosed the annotated list of recipes that are not currently
> built as part of any task or image. There are a some basic options that
> could occur with these recipes, do nothing, move the recipe to a layer, o=
r
> add the recipe to an existing image. The notes indicate a number of
> different options for the recipes that we chose.
>
> The major changes to recipes are to moving them =A0to meta-extras,
> meta-demoapps or meta-m2. Meta-extras is a location that will ultimately =
be
> deprecated, meta-demoapps is a staging area for further review and items
> that are more vertical oriented recipes.
>
> Additional notes such as LSB or gmae SDK would move into those tasks or
> images as appropriate. There are additional notes which will be used for
> future discussion.
>
> Please review the attached list and provide feedback.


I suggest to keep at least libexif, libsndfile1, libsamplerate0,
taglib and the gupnp* packages (and probably also alsa-tools)
The lib things are used by mythtv, a package that I maintain in OE,
and eventually I would like to contribute that recipe to yocto.
gupnp* is probably required for my media server project (which could
be an additional overlay).
As far as the location of the files, I have no opinion.

Frans

