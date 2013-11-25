Return-Path: <marc.ferland@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D4AE0076F
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:29:52 -0800 (PST)
Received: by mail-qe0-f41.google.com with SMTP id gh4so1381152qeb.28
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:reply-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=gJqUvu5Mz5yFGXD7eq1XY5iFUzVlccSt1yCc+eTQcIE=;
	b=1EfRtQiIN7SIcngujLIFH0lL0CwkwSiqX/54sHv3i5rQlMLIlddiCEQGAsXW3W9Qqm
	2S8gIcB++rnIqm7qRurpYRb0i9qpvTyLkK0WUAe/OQA/oRCrRMo0TAr3uRFoe3qdelh6
	MIJVXbG83mR54CAlM3EWJfdU13qhJgJHO/nSEvSBmXZJ0gftKyeWVJESydEGa2kqvaWk
	4IkzRjF/C41DPdEOO7Be3fo4PU2s19N4BtQHVqjSN23/b30mHYOLn/a2ThX+22e1TKSJ
	OZCjIkUqFn/CJbWTc4q4BAi83QItWvN9G2KIlY6398Z5wVuB1NYvfhPWbYH99ymE08yf
	Z/mQ==
X-Received: by 10.49.116.141 with SMTP id jw13mr45962864qeb.2.1385389791389;
	Mon, 25 Nov 2013 06:29:51 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id u17sm39645614qeb.4.2013.11.25.06.29.48
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 25 Nov 2013 06:29:50 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 25 Nov 2013 09:30:01 -0500
Date: Mon, 25 Nov 2013 09:30:01 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: Michael Gloff <mgloff@emacinc.com>
Message-ID: <20131125143001.GF9177@marc-desktop>
References: <CALXw4G5YLnDW2Ys8kbrJv0sqYUuSAdsQRhu=aSO32gNJJYPe8w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALXw4G5YLnDW2Ys8kbrJv0sqYUuSAdsQRhu=aSO32gNJJYPe8w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Boot loader/boot times
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ferlandm@sonatest.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Nov 2013 14:29:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 24, 2013 at 06:28:40PM -0600, Michael Gloff wrote:
>    What bootloaders are most people here using (x86)? I'm using lilo and
>    it seems slow. Even skipping the data check it sits for about 5-8 secs
>    on a D525 Atom board. Total boot is about 20-25 secs, but I would like
>    to minimize it as much as possible. I know where the other delays are,
>    but Ubuntu on the same machine gives a login in about 5 sec total.

I think the default bootloader for x86 machines on yocto is
syslinux.

To reduce the bootloader time try reducing your kernel/initrd sizes,
also check if there isn't any default timeout value configured in.

Marc

