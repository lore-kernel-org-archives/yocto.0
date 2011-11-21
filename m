Return-Path: <raj.khem@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8615CE00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:04:55 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by faap19 with SMTP id p19so8702501faa.35
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=h6Ak+cQa4H7sVzXhsbKC0CXY+OqGM4/G1phZ0vTulMc=;
	b=bEny7u33oho47s819i8m2rr6VsnyjsafxMjpTZgG6qu0AjDV1HLkQWgxosokTzVwc9
	FbUW12JpqGMhjKM4pFjcVLFzSGnfbIiA2rNem6B6tMMnQvqvfxnNxjuN2I97kRxKOUzB
	tV/akPQp5vusZyQInhTXot0mN1iQRXnY41gpo=
Received: by 10.152.132.39 with SMTP id or7mr9305251lab.14.1321891494231; Mon,
	21 Nov 2011 08:04:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Mon, 21 Nov 2011 08:04:23 -0800 (PST)
In-Reply-To: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
References: <CAMRMzCCzyoJp3JBk94hxmH8tpaAuACCedZnhYPWC6+7=nDqAOw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 21 Nov 2011 08:04:23 -0800
Message-ID: <CAMKF1srwodrwuUUt4aL5paOEkk=Omiz4UwWUR03Ar51wOXcfmQ@mail.gmail.com>
To: Marc Ferland <marc.ferland@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding line to ld.so.conf
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
X-List-Received-Date: Mon, 21 Nov 2011 16:04:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 21, 2011 at 7:35 AM, Marc Ferland <marc.ferland@gmail.com> wrote:
> Hi,
>
> What's the proper way to add a line to the ld.so.conf file for a new library
> I am adding?
>

if the libraries is in standard paths you dont have to add it but if
its in a special path
then just add the absolute path to the library e.g. /opt/lib if your
library is in /opt/lib
and then run ldconfig

> Regards,
>
> Marc
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

