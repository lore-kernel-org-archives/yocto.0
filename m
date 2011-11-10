Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88D0EE00307
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 06:11:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi36 with SMTP id 36so1876623wwi.11
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 06:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=thiaCxSJeEm0Xs7jw01341lwKwBxmP//2vuPfzIj8bA=;
	b=vwpuyw4CZ36vXdL0D8WAn0gFlVvqKlOEKmtWqzN2dcIWNceHHVO7SdFdrSkAMjyEIu
	uLAu8TG1/hRbVqIbDFl1TQF5f6pdG9JJ7Bya5nh+INDDZNV30Fv0GDKb6ftl9s52GMej
	QHERnJyFOvUnSoYc9LRCjlheWca5kjDylMGnA=
Received: by 10.216.221.163 with SMTP id r35mr1400461wep.21.1320934266194;
	Thu, 10 Nov 2011 06:11:06 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.28.138 with HTTP; Thu, 10 Nov 2011 06:10:45 -0800 (PST)
In-Reply-To: <CALs2vtdqmVTy9MXJSfrBoFPXkLmVuJ8=SmY-nYTce4UbOxHd7Q@mail.gmail.com>
References: <CALs2vtdqmVTy9MXJSfrBoFPXkLmVuJ8=SmY-nYTce4UbOxHd7Q@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 10 Nov 2011 07:10:45 -0700
X-Google-Sender-Auth: F1Hk32UZJmXxYIScYblyIZIp-Es
Message-ID: <CABcZANnJ0=4vyDFwy25kg4XKLt2RhxY3tG_jeDvCDzRh0Rjj7Q@mail.gmail.com>
To: Mike Tsukerman <miketsukerman@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: setscene package versions
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
X-List-Received-Date: Thu, 10 Nov 2011 14:11:08 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 10, 2011 at 5:05 AM, Mike Tsukerman <miketsukerman@gmail.com> wrote:
> How can i change package version in setscene tasks?
> In usual tasks PREFERRED_VERSION_pn working well,
> but not affects setscene tasks

Can you please elaborate? Setscene isn't handled any differently than
anything else with regard to preferences and version selection. I'd
suggest going back and explaining the real problem you're hitting.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

