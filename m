Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7375E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 12:08:38 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by laam7 with SMTP id m7so236603laa.35
	for <yocto@yoctoproject.org>; Fri, 09 Dec 2011 12:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gB0Er7NkdfWl5AKA7l/hmVQZ77mrdSXu0+GHiQLQZUw=;
	b=T1gh9GGYuJdfYjM5E4tNkeqimFG8wXPT6ndbJm8xyroC+bMsL23y+RZ/x6HMYmklzr
	kqBHjanqy+NvyPpoG7zBXFP5NakjFQIDkegxlF7ZKQtDslrZdLFvwT6C2vtmisiVtZuV
	W9iwXzbc/eBOGYX267H3bGnUN6WRZtpWxOADk=
Received: by 10.152.104.206 with SMTP id gg14mr5824682lab.41.1323461317314;
	Fri, 09 Dec 2011 12:08:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Fri, 9 Dec 2011 12:08:06 -0800 (PST)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D651C@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D651C@POCITMSEXMB03.LntUniverse.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 9 Dec 2011 12:08:06 -0800
Message-ID: <CAMKF1sqdzs8GNCE+FidZ=qPrF8CDVgHLPbXGFy9F8OHcqV=FfA@mail.gmail.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem related to moc and uic binaries
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
X-List-Received-Date: Fri, 09 Dec 2011 20:08:39 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 9, 2011 at 2:41 AM, Navani Kamal Srivastava
<NAVANI.Srivastava@lnties.com> wrote:
> Hi,
>
>
>
> I am compiling Qt-4.6.3 with yocto for ARM architecture. Can you please tell
> me which and all utilities I am supposed to compile to get moc and uic
> binaries. I tried bitbake -b meta-toolchain.bb to get theses binaries but it
> it giving me following error-


they come with QT so bitbake meta-toolchain-qte

-b option to bitbake will not build dependencies. read through bitbake
--help output


> This Email may contain confidential or privileged information for the
> intended recipient (s) If you are not the intended recipient, please do not
> use or disseminate the information, notify the sender and delete it from
> your system.

you are interacting on a public mailing list. Please avoid attaching
these notices in future.

