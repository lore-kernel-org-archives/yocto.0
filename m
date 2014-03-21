Return-Path: <kapare@rogue-research.com>
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 752BBE00881
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 06:42:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 68EC0361C50E
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 09:45:12 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id jF6Kvc+AvifS for <yocto@yoctoproject.org>;
	Fri, 21 Mar 2014 09:45:11 -0400 (EDT)
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 7E878361C4F6
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 09:45:11 -0400 (EDT)
Received: by mail-ve0-f181.google.com with SMTP id oy12so2527711veb.40
	for <yocto@yoctoproject.org>; Fri, 21 Mar 2014 06:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XvXogF/nQBX7rYZpMP1T27Ev26S9uud9shEpjwhhEdM=;
	b=IDVCrOkwvNP1/Kblo+w7GMSt4AfWN5a1BlQTX0apSjgF88CYhe5+DC4syLa7f3BW9Y
	sx4+J8AEqhx3hmcUhCBIKYuVZnG5AKJshppp34dEQi0NfP/jlRPhpXbXt9C/3esGBYDy
	CMqSMefo7a+Sh9eOmSZEo134W7CSMiR8xC0mm/7t/LMdkCuKcTuLIpwd3qQR8+MRnQNd
	mULXZsCgTPQRzQe1sTHOmHV0XjD5bTm6OVTV7ZDwM4foiX3BUicvHkJ3pM2NhnJSlr5Q
	6dKF0COlzAbGW793bUqKDNBwNgBV1f3Z+58CwJAY5wFg65Jzm8zg7HRGi1eTjc+Ic5WD
	LOrw==
MIME-Version: 1.0
X-Received: by 10.52.104.33 with SMTP id gb1mr3559395vdb.45.1395409367448;
	Fri, 21 Mar 2014 06:42:47 -0700 (PDT)
Received: by 10.58.95.36 with HTTP; Fri, 21 Mar 2014 06:42:47 -0700 (PDT)
In-Reply-To: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
Date: Fri, 21 Mar 2014 09:42:47 -0400
Message-ID: <CACgAsMf1N6KjR=sKbbxYcMOi9iQ6nYe957LdLfpCSZ3hzSERuQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= <kapare@rogue-research.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OpenEmbedded and musl-libc
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
X-List-Received-Date: Fri, 21 Mar 2014 13:42:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

I will be interested for sure!

I have added it to bugzilla as an enhancement. They were suggesting
new feature for 1.7 in the last meeting and suggesting to add them in
bugzilla as new feature.

Please review if I filed the bug properly
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6024

-KA

On Fri, Mar 21, 2014 at 8:34 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> Hi all,
>
> musl-libc hit version 1.0.0 yesterday and is starting to look good to
> me. It's basically a really small but very functional libc that would
> suit embedded environments very well as an alternative to
> eglibc/uclibc. I'm personally very interested in using it in my
> projects and I also think it could fit in well with the aims of
> poky-tiny.
>
> http://www.etalabs.net/compare_libcs.html gives some pretty useful info.
>
> I'm basically emailing to see if anyone else is interested in this or
> if anyone has looked at using it before in OpenEmbedded as a google
> for previous discussions didn't turn anything up.
>
> I'm currently very busy between various projects so I don't have time
> to hack together a musl-libc recipe myself but I should have time to
> help test it.
>
> Thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

