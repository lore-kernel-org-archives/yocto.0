Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05824E0140D
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 17:28:38 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=eI19ksDArJp+JHcoD/nw6BcoYvhRAHe45K3gf3vYonEz1mYZZG7d9pi8UEIkfF7E;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UxnhV-0002HK-EA; Fri, 12 Jul 2013 20:28:37 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Barker'" <paul@paulbarker.me.uk>
References: <5CD486E4007E48769ED69BB9205D327F@PAULD>
	<CANyK_8cCMwSxKmaQvRNmuceOxRwXRun7qaAywaa0sbXQ_g5F3A@mail.gmail.com>
In-Reply-To: <CANyK_8cCMwSxKmaQvRNmuceOxRwXRun7qaAywaa0sbXQ_g5F3A@mail.gmail.com>
Date: Fri, 12 Jul 2013 17:28:35 -0700
Message-ID: <B2EEEC6F05C0450CBEB0BD24085177C0@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac5+3d67EzxMmgA5SmeyBmkt/qXxNwAgaX8w
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606881a835967660976679188de011ea82528350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Mount options for removable drives
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
X-List-Received-Date: Sat, 13 Jul 2013 00:28:39 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > On 12 July 2013 09:30, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> >
> > Can someone point me to the configuration for how removable 
> > drives are
> > mounted? When I plug in a flash drive, it mounts /dev/sdb1 
> > as /media/sdb1,
> > but it uses "relatime" and I'd like to use "noatime". I'd 
> > also like it to
> > mount in "sync" mode, which I would think would be the 
> > default for such a
> > drive, but I've gotten a corrupted FAT when I've yanked the drive.
> >
> > This is basically a core-image-base build, modified to use 
> > systemd, but I
> > don't see any systemd mount unit that handles it, so it 
> > must be some other
> > part of the system.

> From: Paul Barker
> 
> Look in /etc/udev on the image, this is handled by udev.

Thanks. Changing /etc/fstab does bupkis, so I provided my own slightly
modified version of the mount.sh script in udev-extraconf, and that seems to
work fine.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


