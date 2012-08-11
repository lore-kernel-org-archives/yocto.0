Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F51E013F7
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 20:03:15 -0700 (PDT)
Received: by eabd1 with SMTP id d1so639595eab.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 20:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1oiZrQVMl+XRjBdvQYYzHiuyWY0SFyx9vfRbsH97Yy8=;
	b=hUnTQLDhQ46oxS/AslXHg7itzb0s+rSRf95jf2lUnlLqskOYPflTu8vsXgId8RAH0a
	b0d+WNuMQ6m9njlGDz22yh8ce6lsfctwL/ojzoGl0M5PGMMTwAbMihTal2mJ8oq58ncb
	fSzBrEXuqJhwAvUgQUR5LEdNalUjkUQ+d2/OhOubmb7+VU/+KXagIaqCl6xC5FACCyq4
	PJNuL9x/tPuJ6nDMJD5k/R9LZxEhLTRMsXIwf8jjW9Ux3iNrRDicBNTZMiFajGTUQ5CP
	sOeJXZhSu5jEOXQEhUMikierJwICHHtoJTvG4oMq9THq7rbVifAhVjbjQM4IHrTImWKL
	Cqlw==
Received: by 10.14.206.201 with SMTP id l49mr2239810eeo.3.1344654194104; Fri,
	10 Aug 2012 20:03:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Fri, 10 Aug 2012 20:02:43 -0700 (PDT)
In-Reply-To: <55C0D8D6-DA3A-422A-81E6-E1E8C21E4690@gmail.com>
References: <55C0D8D6-DA3A-422A-81E6-E1E8C21E4690@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Aug 2012 20:02:43 -0700
Message-ID: <CAMKF1sqoGjXqCF8eRJ35+gfDDWvO28BB5qVvchbLZ_6YMWbjHA@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Running gcc test suites for current machine configuration architecture (e.g. powerpc), from within yocto
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
X-List-Received-Date: Sat, 11 Aug 2012 03:03:15 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 9, 2012 at 9:29 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>       Is there a way to run the gcc test suites for the current machine configuration architecture (e.g. powerpc), from within yocto?

yes. Go into build dir of gcc-cross and there is a script thats
generated.

./powerpc-oe-linux-testgcc root@<ipaddr of target>

make sure that root or whatever user you have on target
can be connected using passwordless ssh access.

>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

