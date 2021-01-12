Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web10.10287.1610464748914889695
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 07:19:09 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DFZ3t6kDvz5tlB;
	Tue, 12 Jan 2021 16:19:06 +0100 (CET)
Date: Tue, 12 Jan 2021 16:19:05 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Sergey Ivanov <icegood1980@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] remove particular device from QB_OPT_APPEND: per-word manner
Message-ID: <20210112151905.az5iriu77woea4x2@qschulz>
References: <CAJCbrz4YKYNenmMDPb7jMTq_=mv3h0sVjMCFq4+-Anirbv5yug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJCbrz4YKYNenmMDPb7jMTq_=mv3h0sVjMCFq4+-Anirbv5yug@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sergey,

On Tue, Jan 12, 2021 at 05:09:25PM +0200, Sergey Ivanov wrote:
> Hi there.
> 
> I'm working with arm64 target and i want to take control on usb buses on it.
> What i'm trying to do is tro remove both bus and hid devices on it via
> QB_OPT_APPEND_remove = " -show-cursor -device qemu-xhci -device usb-tablet
> -device usb-kbd "
> 
> Of course, it doesn't work properly since it removes ALL occurrences of
> each word above. In particular, i had "-device VGA,edid=on" that i wanted
> to stay.
> Instead, i obtained "VGA,edid=on" that lead to boot error. OK, it is clear.
> I also tried smth. like
> 
> QB_OPT_APPEND_remove = " -show-cursor '-device qemu-xhci' '-device
> usb-tablet' '-device usb-kbd -device' "
> 
> however nothing was removed here. Can i workaround given issue under *Zeus?*

A "hack" I'm thinking about right now would be to remove those variables
by hand in a python anonymous function. You want to expand the variable
first, then do some python regex or however you like, to remove what you
want. Python anonymous functions are run at parsing time.

Otherwise, if you know pretty much exactly what the content of the
variable should be for you, you can always use the following:
QB_OPT_APPEND_<my-machine> = "<content>"

Hope this can give you some ideas,
Cheers,
Quentin
