Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18996E013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:20:45 -0700 (PDT)
Received: by qabg1 with SMTP id g1so1657425qab.13
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=pj8bxiWZxcD+v2NAg3QJcGuzXjRwyiaz3KUUFUVdRPs=;
	b=c9dltylrg6QSjTMKk/8Y5+mO/ZeTpxJ2je61Iy4xXJzc8NZWj8DR9abXuOe3oQS8By
	mfpsWTwIPXMQmQh6Jw+97Knd4qGac+wiRC6QM+YFpaNXv9gfHZaIwVTkh/LDskkRlJIL
	Raicihz8G/FLLvwZhzmXDsEJtvSzDRCBlRjcSIx9WgBMAGnJKhPgZdYT/9m5FhYGMwsW
	HG8YJ86+xm9NSB5stRnz09gZgAtglMOajCSVSFz8arVVJjI1HZg8qsuFrBPtofV1aJcM
	GYywDX9RkQhzwAbfPgzAnUw1V9GYVvWOoelVlGzjleVxVpeOCGt1CJjsBjr98QDPiIEf
	7Dfw==
Received: by 10.229.136.66 with SMTP id q2mr8856010qct.50.1340054444346;
	Mon, 18 Jun 2012 14:20:44 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id j12sm23626811qak.15.2012.06.18.14.20.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Jun 2012 14:20:43 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 18 Jun 2012 17:21:16 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: jfabernathy <jfabernathy@gmail.com>
References: <4FDF9720.7080204@gmail.com>
Date: Mon, 18 Jun 2012 17:21:16 -0400
In-Reply-To: <4FDF9720.7080204@gmail.com> (jfabernathy@gmail.com's message of
	"Mon, 18 Jun 2012 17:01:20 -0400")
Message-ID: <87lijkuxir.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.3 (gnu/linux)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic recipe building - iperf
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
X-List-Received-Date: Mon, 18 Jun 2012 21:20:45 -0000
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=

jfabernathy <jfabernathy@gmail.com> writes:

>    I needed to do some network performance testing on a Crownbay board and
>    needed iperf in that environment.  Since I had the core-image-sato-sdk
>    image created, I just booted that and took the tarball from Sourceforge
>    and built it  per the readme file instructions:
>    ./configure
>    make
>    make install
>    After I completed my test, I thought about why not put that in my list
>    of personal recipes.  I found the previous version of iperf in the
>    openembedded collection of benchmark recipes and just copied it over.
>    It built and worked fine.  There were a lot of items in the .bb that I
>    didn't understand, so I thought for fun I'd just try to build a recipe
>    for iperf 2.0.5 and see what happened.  My recipe is simple, mostly
>    taken from the openembedded 2.0.4 version had stripped down:

Hi JF,

I add the same problem you had with the man page stuff, try this patch.

Marc

--=-=-=
Content-Type: text/x-diff
Content-Disposition: inline; filename=0001-fix-makefile.patch
Content-Description: patch

diff --git iperf-2.0.5/man/Makefile.am iperf-2.0.5/man/Makefile.am
index ed97bc6..728873f 100644
--- iperf-2.0.5/man/Makefile.am
+++ iperf-2.0.5/man/Makefile.am
@@ -1,2 +1 @@
-man_MANS = iperf.1
-dist_man_MANS = $(man_MANS)
+dist_man_MANS = iperf.1

--=-=-=--
