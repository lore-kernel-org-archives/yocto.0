Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76F85E0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 01:30:56 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=hgAbSHP6Ts/g6df5OKrYlml4jcaFUELRGK6B3/o2+77Rg3bCS0/y/JDuCc2zKCp3;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UuISl-00038O-4a; Wed, 03 Jul 2013 04:30:55 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <7AFA3235764547DFB27795FD58368F44@PAULD>
	<5920025.Pkuta78FWt@helios>
In-Reply-To: <5920025.Pkuta78FWt@helios>
Date: Wed, 3 Jul 2013 01:30:58 -0700
Message-ID: <C3261A4DDAE14224A3A0383263427237@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac53ceqGnbHb3mhHQWK8xTI+deLVQgAVSK5A
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068816098dff3bab8832a34a9772914ecb21350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: systemd configuration
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
X-List-Received-Date: Wed, 03 Jul 2013 08:30:58 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com] 
> 
> That's entirely up to what you put into your image. busybox 
> should provide a very basic version of "vi" out of the box.

Ah, vi. I guess it's time to learn vi.

> Sure, you can find in the "rootfs" subdirectory of the 
> image's WORKDIR (which you can find out using:
> 
>  bitbake -e imagename | grep ^WORKDIR=
> 
> One way to look at this is to launch a devshell for the image:
> 
>  bitbake -c devshell imagename
> 
> In 1.4+ using a devshell has the advantage of showing you the correct 
> permission/ownership of files within the root filesystem.

For my purpose, the first choice turned out to be sufficient.

> > Or perhaps someone can just tell me what target gets 
> > activated on bootup,
> > where its .wants directory is, and what directory I should 
> > put my daemon's unit file into.
> 
> I'm sure someone more knowledgeable about systemd will pipe 
> up with further 
> information, but I would suggest looking at other recipes for 
> examples. AFAICT 
> systemd units for daemons should be installed into 
> ${systemd_unitdir}/system.

Turns out I was confused by the fact that there is no multi-user.target
file, since it's just an empty unit. But there is a multi-user.target.wants
directory, so I'm all set.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


