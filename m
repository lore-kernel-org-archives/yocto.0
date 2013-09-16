Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D751E0159E
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 12:05:05 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=WILQMPQdEEucg3L4WvyGDoPXxD5CMsw+0mJ/Um801iM6JOCovQbfJHHEMY2/EMvW;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VLe6Z-0008KE-Lb; Mon, 16 Sep 2013 15:05:03 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD><CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com><A713D66A57B545848DDD45415085C8D0@PAULD><CAJTo0LbPx7Gvg8iSqkfesBr9JKZT3E7GovdxjDen5-UwrQfE+g@mail.gmail.com>
	<E11EA2803F3A48F9A3E9C59006A9E37B@PAULD>
In-Reply-To: <E11EA2803F3A48F9A3E9C59006A9E37B@PAULD>
Date: Mon, 16 Sep 2013 12:05:02 -0700
Message-ID: <47198CCB330A4B7B87C3B2CD406E94BD@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6zDEptRSS54ycUQCCcsPVmELVa4wAARglAAACCojA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882b5330cae9f02996bd5568817c77d979350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org, 'Chris Larson' <clarson@kergoth.com>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 19:05:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > From: Burton, Ross
> > 
> > The default DISTRO_FEATURES includes x11, so that's where 
> it's coming
> > from.  If you're using oe-core/poky from git master, you can do
> > DISTRO_FEATURES_remove="x11" in your configuration, or else you'll
> > need to set DISTRO_FEATURES to the current value, minus x11.
> 
> Thanks, but that doesn't work. I still get the same error 
> messages. In the
> bitbake -e output I can see my entry:
> 
> # DISTRO_FEATURES_remove=x11
> DISTRO_FEATURES_remove="x11"
> 
> and I can see the same old DISTRO_FEATURES further down:
> 
> # DISTRO_FEATURES=alsa argp bluetooth ext2 irda largefile
> pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g
> x11 ${DISTRO_FEATURES_LIBC} largefile
> opengl${@oe.utils.features_backfill("DISTRO_FEATURES",d)}
> DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile
> pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g
> x11 ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd
> libc-cxx-tests libc-catgets libc-charsets libc-crypt
> libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt
> libc-fmtmsg libc-fstab libc-ftraverse
> libc-getlogin libc-idn libc-inet-anl libc-libm
> libc-libm-big libc-locales libc-locale-code
> libc-memusage libc-nis libc-nsswitch libc-rcmd
> libc-rtld-debug libc-spawn libc-streams libc-sunrpc
> libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar
> libc-posix-regexp libc-posix-regexp-glibc
> libc-posix-wchar-io largefile opengl pulseaudio"
> 
> Any other ideas?

Is this _remove something new? I'm using the Gumstix-provided metadata and
tools, which are from the Dylan branch. If that's the issue, must I
explicitly set DISTRO_FEATURES to the big long list in local.conf?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


