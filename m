Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F1AE002F9
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 13:05:22 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=eC8LjEWQTCxZFG8iqc2wvJ1o+d9DXDmHRyZq4xcGm5RTPLoRZw33bRRmUtyGvk7R;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VAQGv-0006RX-BQ; Fri, 16 Aug 2013 16:05:21 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><2117185.3I4JUhGDnT@helios><8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
	<1855392.ynQjeqAi5O@helios>
In-Reply-To: <1855392.ynQjeqAi5O@helios>
Date: Fri, 16 Aug 2013 13:05:16 -0700
Message-ID: <E9D6791BC9344C0E9BAF72C62185112A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6aYDqKT7oVMwvlSeK2ge6Xx+7hRwAWafYw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a7db8781d9e2479c13ddbd5cc73f6102350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Fri, 16 Aug 2013 20:05:23 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> You didn't mention in your reply to Saul whether the foo 
> package was mentioned 
> in log.do_rootfs or installed_pkgs.txt files in your old 
> tmpdir; was it?

It's in both places. Yet NONE of the various files that were supposed to
be part of that recipe ended up in the rootfs, after several tries, even
though the logs showed that recipe being built.

I think the problem may have been caused by once hitting Ctrl-C at the
beginning of do_rootfs, because I remembered that I had to tweak one of
the files, and I didn't want to wait the fifteen minutes for that to
complete. (I'm running on an Atom.) As it happens, Ctrl-C just sets a flag
that interrupts the process after the task completes, so it didn't really
help, but I think that's when the problem started. Maybe that's a clue.

> > That said, rebuilding tmp (preserving downloads and 
> > sstate-cache) did
> > indeed fix that problem, but it was replaced with another. 
> > Now, do_rootfs
> > is failing, complaining that it "cannot satisfy the 
> > following dependencies
> > for samba: libpam (>= 1.1.6)". Yet there's libpam, version 
> > 1.1.6, right
> > where it's always been in the metadata. Doing a clean and a 
> > cleansstate on
> > libpam didn't help. 
> 
> Does samba.inc used by the samba recipe you are building have 
> a PACKAGECONFIG 
> line referring to pam? I think that was added recently in 
> meta-oe master (and 
> shortly to be merged into the meta-oe dylan branch). Without 
> it there will be 
> a floating dependency on pam, which may account for this latter issue.

No, it's not mentioned in samba.inc, samba-basic.inc or in the recipe
itself.

And cleaning samba and rebuilding fixed the problem. So I suspect what's
been done in the Dylan branch has dealt with that problem, and for now
everything in the Danny branch works fine as long as things get done in
the normal order.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


